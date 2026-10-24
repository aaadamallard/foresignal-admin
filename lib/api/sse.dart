import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api_client.dart';
import 'api_errors.dart';

/// One server-sent event.
class SseEvent {
  /// Creates an event.
  const SseEvent({required this.event, required this.data, this.id});

  /// The event type; `message` when the server named none.
  final String event;

  /// The event's data, with multi-line data joined by `\n`.
  final String data;

  /// The last event id in effect when this event was dispatched.
  final String? id;

  /// Decodes [data] as JSON.
  Object? decodeJson() => jsonDecode(data);

  @override
  String toString() => 'SseEvent($event, id: $id, data: $data)';
}

/// An incremental `text/event-stream` parser following the WHATWG HTML
/// event-stream interpretation rules. Feed it decoded text in any chunking;
/// it returns the events each chunk completes.
class SseParser {
  final StringBuffer _line = StringBuffer();
  final StringBuffer _data = StringBuffer();
  bool _hasData = false;
  String _eventType = '';
  bool _sawCarriageReturn = false;
  bool _atStart = true;

  /// The last event id the stream set (persists across events, as specified).
  String? lastEventId;

  /// The reconnection delay the server last asked for with `retry:`.
  Duration? retry;

  /// Parses [chunk] and returns the events it completes, in order.
  List<SseEvent> add(String chunk) {
    final events = <SseEvent>[];
    var text = chunk;
    if (_atStart && text.isNotEmpty) {
      if (text.codeUnitAt(0) == 0xFEFF) {
        text = text.substring(1);
      }
      _atStart = false;
    }
    for (var i = 0; i < text.length; i++) {
      final char = text[i];
      if (char == '\n') {
        if (_sawCarriageReturn) {
          // The `\n` of a `\r\n` pair; the line ended at the `\r`.
          _sawCarriageReturn = false;
          continue;
        }
        _endLine(events);
      } else if (char == '\r') {
        _sawCarriageReturn = true;
        _endLine(events);
      } else {
        _sawCarriageReturn = false;
        _line.write(char);
      }
    }
    return events;
  }

  /// Discards a partially received event (used when a connection drops).
  void resetPending() {
    _line.clear();
    _data.clear();
    _hasData = false;
    _eventType = '';
    _sawCarriageReturn = false;
  }

  void _endLine(List<SseEvent> events) {
    final line = _line.toString();
    _line.clear();
    if (line.isEmpty) {
      _dispatch(events);
      return;
    }
    if (line.startsWith(':')) {
      return;
    }
    final colon = line.indexOf(':');
    final String field;
    var value = '';
    if (colon == -1) {
      field = line;
    } else {
      field = line.substring(0, colon);
      value = line.substring(colon + 1);
      if (value.startsWith(' ')) {
        value = value.substring(1);
      }
    }
    switch (field) {
      case 'event':
        _eventType = value;
      case 'data':
        if (_hasData) {
          _data.write('\n');
        }
        _data.write(value);
        _hasData = true;
      case 'id':
        if (!value.contains('\u0000')) {
          lastEventId = value;
        }
      case 'retry':
        if (value.isNotEmpty && RegExp(r'^[0-9]+$').hasMatch(value)) {
          retry = Duration(milliseconds: int.parse(value));
        }
      default:
        break;
    }
  }

  void _dispatch(List<SseEvent> events) {
    if (!_hasData) {
      _eventType = '';
      return;
    }
    events.add(
      SseEvent(
        event: _eventType.isEmpty ? 'message' : _eventType,
        data: _data.toString(),
        id: lastEventId,
      ),
    );
    _data.clear();
    _hasData = false;
    _eventType = '';
  }
}

/// The reconnect delay schedule: [initial], multiplied by [factor] after each
/// failed attempt, capped at [max]. A server `retry:` replaces [initial].
class SseBackoff {
  /// Creates a schedule.
  const SseBackoff({
    this.initial = const Duration(seconds: 1),
    this.max = const Duration(seconds: 30),
    this.factor = 2,
  });

  /// The first delay.
  final Duration initial;

  /// The longest delay.
  final Duration max;

  /// The growth factor between attempts.
  final double factor;

  /// The delay before reconnect attempt [attempt] (0-based), starting from
  /// [base] when the server set one.
  Duration delay(int attempt, {Duration? base}) {
    final start = (base ?? initial).inMilliseconds;
    final grown = start * math.pow(factor, attempt);
    return Duration(milliseconds: math.min(grown, max.inMilliseconds).round());
  }
}

/// The backend's `text/event-stream` operations the admin app consumes, by
/// operationId and path.
enum SseStream {
  /// `streamAlerts` — alert lifecycle (`alert`, `alert.updated`, `alert.resolved`, ...).
  alerts('streamAlerts', '/v1/alerts/stream'),

  /// `streamNotifications` — the operator's notification inbox.
  notifications('streamNotifications', '/v1/notifications/stream'),

  /// `streamChanges` — the change feed.
  changes('streamChanges', '/v1/changes/stream'),

  /// `streamEvents` — the event stream.
  events('streamEvents', '/v1/events/stream'),

  /// `streamFederation` — federation replication.
  federation('streamFederation', '/v1/federation/stream');

  const SseStream(this.operationId, this.path);

  /// The contract's operationId.
  final String operationId;

  /// The path under the backend base URL.
  final String path;
}

/// Opens an [SseStream] and keeps it open: on a dropped connection it waits
/// per [SseBackoff] (or the server's `retry:` / `Retry-After`) and reconnects
/// with `Last-Event-ID`, so events resume where they stopped. Refusals that a
/// retry cannot fix (400, 401, 403, 404, 410) end the stream with an
/// [ApiException].
class SseClient {
  /// Creates a client over [dio] (which carries the base URL and auth).
  SseClient(this.dio, {this.backoff = const SseBackoff(), Future<void> Function(Duration)? delay})
    : _delay = delay ?? Future<void>.delayed;

  /// The configured backend [Dio].
  final Dio dio;

  /// The reconnect schedule.
  final SseBackoff backoff;

  final Future<void> Function(Duration) _delay;

  static const Set<int> _fatalStatuses = <int>{400, 401, 403, 404, 405, 410};

  /// Subscribes to [stream] with [query] parameters and extra [headers]
  /// (such as `Foresignal-Device-Id`), resuming after [lastEventId] when
  /// given. [onOpen] runs each time the backend accepts the stream, before
  /// any event arrives (the backend opens with a comment, not an event).
  /// Cancel the subscription to close it.
  Stream<SseEvent> connect(
    SseStream stream, {
    Map<String, Object?> query = const <String, Object?>{},
    Map<String, Object> headers = const <String, Object>{},
    String? lastEventId,
    void Function()? onOpen,
  }) => connectPath(stream.path, query: query, headers: headers, lastEventId: lastEventId, onOpen: onOpen);

  /// Like [connect], for a `text/event-stream` path not listed in [SseStream].
  Stream<SseEvent> connectPath(
    String path, {
    Map<String, Object?> query = const <String, Object?>{},
    Map<String, Object> headers = const <String, Object>{},
    String? lastEventId,
    void Function()? onOpen,
  }) {
    late final StreamController<SseEvent> controller;
    var closed = false;
    CancelToken? cancelToken;

    Future<void> run() async {
      final parser = SseParser()..lastEventId = lastEventId;
      var attempt = 0;
      while (!closed) {
        Duration? waitHint;
        cancelToken = CancelToken();
        try {
          final response = await dio.get<ResponseBody>(
            path,
            queryParameters: <String, Object?>{
              for (final entry in query.entries)
                if (entry.value != null) entry.key: entry.value,
            },
            cancelToken: cancelToken,
            options: Options(
              responseType: ResponseType.stream,
              receiveTimeout: Duration.zero,
              headers: <String, Object>{
                ...headers,
                'Accept': 'text/event-stream',
                'Cache-Control': 'no-cache',
                if (parser.lastEventId != null && parser.lastEventId!.isNotEmpty)
                  'Last-Event-ID': parser.lastEventId!,
              },
            ),
          );
          final body = response.data;
          if (body == null) {
            throw NetworkException('The event stream answered without a body.');
          }
          if (!closed) {
            onOpen?.call();
          }
          await for (final text in utf8.decoder.bind(body.stream)) {
            if (closed) {
              break;
            }
            for (final event in parser.add(text)) {
              attempt = 0;
              controller.add(event);
            }
          }
          parser.resetPending();
        } on Object catch (error) {
          parser.resetPending();
          if (closed) {
            break;
          }
          final apiError = toApiException(await _withReadBody(error));
          final status = switch (apiError) {
            ProblemException(:final status) => status,
            HttpStatusException(:final status) => status,
            _ => null,
          };
          if (apiError is AdminTokenRequiredException ||
              (status != null && _fatalStatuses.contains(status))) {
            controller.addError(apiError);
            await controller.close();
            return;
          }
          waitHint = apiError.retryAfter;
        }
        if (closed) {
          break;
        }
        final wait = waitHint ?? backoff.delay(attempt, base: parser.retry);
        attempt++;
        await _delay(wait);
      }
      if (!controller.isClosed) {
        await controller.close();
      }
    }

    controller = StreamController<SseEvent>(
      onListen: () => unawaited(run()),
      onCancel: () {
        closed = true;
        cancelToken?.cancel();
      },
    );
    return controller.stream;
  }
}

/// The app's [SseClient] over the configured backend.
final sseClientProvider = Provider<SseClient>((ref) => SseClient(ref.watch(backendDioProvider)));

/// The most bytes of a refused stream's body read to decode its problem.
const int _maxErrorBodyBytes = 64 * 1024;

/// [error] with a refused stream's body read into bytes. A stream request
/// gets its error body as a [ResponseBody] too, which [toApiException] cannot
/// decode; read it (up to [_maxErrorBodyBytes]) so a `400 INVALID_CURSOR`
/// reaches the listener as the backend's problem, not a bare status.
Future<Object> _withReadBody(Object error) async {
  if (error is! DioException) {
    return error;
  }
  final response = error.response;
  final data = response?.data;
  if (response == null || data is! ResponseBody) {
    return error;
  }
  final bytes = <int>[];
  try {
    await for (final chunk in data.stream) {
      bytes.addAll(chunk);
      if (bytes.length >= _maxErrorBodyBytes) {
        break;
      }
    }
  } on Object {
    return error;
  }
  return error.copyWith(
    response: Response<Object?>(
      requestOptions: response.requestOptions,
      data: bytes,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      headers: response.headers,
    ),
  );
}
