import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';

/// A request the [FakeAdapter] received.
class RecordedRequest {
  /// Records [options] and the decoded request [body].
  RecordedRequest(this.options, this.body);

  /// The request as Dio sent it.
  final RequestOptions options;

  /// The JSON-decoded request body, or `null` when there was none.
  final Object? body;

  /// The HTTP method.
  String get method => options.method;

  /// The path with query.
  Uri get uri => options.uri;
}

/// A canned response.
class FakeResponse {
  /// A JSON response.
  FakeResponse.json(Object? body, {this.status = 200, Map<String, String>? headers})
    : bytes = utf8.encode(jsonEncode(body)),
      chunks = null,
      headers = <String, String>{'content-type': 'application/json', ...?headers};

  /// A ProblemDetail response.
  FakeResponse.problem(
    Map<String, Object?> problem, {
    required this.status,
    Map<String, String>? headers,
  }) : bytes = utf8.encode(jsonEncode(problem)),
       chunks = null,
       headers = <String, String>{'content-type': 'application/problem+json', ...?headers};

  /// A plain-text (or other) response.
  FakeResponse.text(String body, {this.status = 200, String contentType = 'text/plain'})
    : bytes = utf8.encode(body),
      chunks = null,
      headers = <String, String>{'content-type': contentType};

  /// An empty response (204 by default).
  FakeResponse.empty({this.status = 204})
    : bytes = const <int>[],
      chunks = null,
      headers = const <String, String>{};

  /// A streamed `text/event-stream` response sent in [chunks].
  FakeResponse.eventStream(List<String> this.chunks, {this.status = 200})
    : bytes = const <int>[],
      headers = <String, String>{'content-type': 'text/event-stream'};

  /// The HTTP status.
  final int status;

  /// The body bytes (for non-streamed responses).
  final List<int> bytes;

  /// The body chunks (for streamed responses).
  final List<String>? chunks;

  /// The response headers.
  final Map<String, String> headers;
}

/// A Dio [HttpClientAdapter] that answers from a handler and records every
/// request, so a test can assert exactly what the app sent.
class FakeAdapter implements HttpClientAdapter {
  /// Creates an adapter answering with [handler].
  FakeAdapter(this.handler);

  /// Produces the response for a request. Throwing simulates a network error.
  FutureOr<FakeResponse> Function(RecordedRequest request) handler;

  /// Every request received, in order.
  final List<RecordedRequest> requests = <RecordedRequest>[];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    Object? body;
    if (requestStream != null) {
      final bytes = <int>[];
      await for (final chunk in requestStream) {
        bytes.addAll(chunk);
      }
      if (bytes.isNotEmpty) {
        final text = utf8.decode(bytes);
        try {
          body = jsonDecode(text);
        } on FormatException {
          body = text;
        }
      }
    }
    final request = RecordedRequest(options, body);
    requests.add(request);
    final response = await handler(request);
    final headers = <String, List<String>>{
      for (final entry in response.headers.entries) entry.key: <String>[entry.value],
    };
    final chunks = response.chunks;
    if (chunks != null) {
      return ResponseBody(
        Stream<Uint8List>.fromIterable(chunks.map((c) => Uint8List.fromList(utf8.encode(c)))),
        response.status,
        headers: headers,
      );
    }
    return ResponseBody.fromBytes(response.bytes, response.status, headers: headers);
  }

  @override
  void close({bool force = false}) {}
}

/// Builds a [Dio] at `http://backend.test` answering through [adapter].
Dio fakeDio(FakeAdapter adapter) {
  final dio = Dio(BaseOptions(baseUrl: 'http://backend.test'));
  dio.httpClientAdapter = adapter;
  return dio;
}
