import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';

import '../support/fake_adapter.dart';

void main() {
  test('streams events and reconnects with Last-Event-ID after a drop', () async {
    var call = 0;
    final adapter = FakeAdapter((request) {
      call++;
      if (call == 1) {
        return FakeResponse.eventStream(<String>['id: 1\nevent: alert\ndata: {"n":1}\n\n']);
      }
      return FakeResponse.eventStream(<String>['id: 2\nevent: alert\ndata: {"n":2}\n\n']);
    });
    final delays = <Duration>[];
    final client = SseClient(
      fakeDio(adapter),
      delay: (d) async => delays.add(d),
    );
    final events = await client.connect(SseStream.alerts).take(2).toList();
    expect(events.map((e) => e.id), <String?>['1', '2']);
    expect(adapter.requests[0].uri.path, '/v1/alerts/stream');
    expect(adapter.requests[0].options.headers['Accept'], 'text/event-stream');
    expect(adapter.requests[0].options.headers.containsKey('Last-Event-ID'), isFalse);
    expect(adapter.requests[1].options.headers['Last-Event-ID'], '1');
    expect(delays, isNotEmpty);
  });

  test('passes query parameters and an initial Last-Event-ID', () async {
    final adapter = FakeAdapter((_) => FakeResponse.eventStream(<String>['data: x\n\n']));
    final client = SseClient(fakeDio(adapter), delay: (_) async {});
    await client
        .connect(
          SseStream.notifications,
          query: <String, Object?>{'minSeverity': 'warning', 'unused': null},
          lastEventId: '99',
        )
        .first;
    final request = adapter.requests.first;
    expect(request.uri.path, '/v1/notifications/stream');
    expect(request.uri.queryParameters, <String, String>{'minSeverity': 'warning'});
    expect(request.options.headers['Last-Event-ID'], '99');
  });

  test('sends extra headers with every attempt', () async {
    final adapter = FakeAdapter((_) => FakeResponse.eventStream(<String>['data: x\n\n']));
    final client = SseClient(fakeDio(adapter), delay: (_) async {});
    await client
        .connect(
          SseStream.notifications,
          headers: <String, Object>{'Foresignal-Device-Id': '0f8e2d3c-1b4a-4c5d-8e6f-7a8b9c0d1e2f'},
        )
        .first;
    final request = adapter.requests.first;
    expect(request.options.headers['Foresignal-Device-Id'], '0f8e2d3c-1b4a-4c5d-8e6f-7a8b9c0d1e2f');
    expect(request.options.headers['Accept'], 'text/event-stream');
  });

  test('backs off between failed attempts and honors Retry-After', () async {
    var call = 0;
    final adapter = FakeAdapter((request) {
      call++;
      if (call == 1) {
        throw DioException.connectionError(requestOptions: request.options, reason: 'down');
      }
      if (call == 2) {
        return FakeResponse.problem(
          <String, Object?>{'title': 'Unavailable', 'status': 503},
          status: 503,
          headers: <String, String>{'retry-after': '5'},
        );
      }
      return FakeResponse.eventStream(<String>['data: ok\n\n']);
    });
    final delays = <Duration>[];
    final client = SseClient(
      fakeDio(adapter),
      backoff: const SseBackoff(initial: Duration(seconds: 1)),
      delay: (d) async => delays.add(d),
    );
    final event = await client.connect(SseStream.alerts).first;
    expect(event.data, 'ok');
    expect(delays, <Duration>[const Duration(seconds: 1), const Duration(seconds: 5)]);
  });

  test('a 400 (for example INVALID_CURSOR) ends the stream with the problem', () async {
    final adapter = FakeAdapter(
      (_) => FakeResponse.problem(
        <String, Object?>{'title': 'Bad cursor', 'status': 400, 'code': 'INVALID_CURSOR'},
        status: 400,
      ),
    );
    final client = SseClient(fakeDio(adapter), delay: (_) async {});
    final completer = Completer<Object>();
    client
        .connect(SseStream.alerts, lastEventId: 'nope')
        .listen(
          (_) {},
          onError: completer.complete,
        );
    final error = await completer.future;
    expect(error, isA<ProblemException>());
    expect((error as ProblemException).code, 'INVALID_CURSOR');
    expect(adapter.requests, hasLength(1));
  });

  test('canceling the subscription stops reconnecting', () async {
    final adapter = FakeAdapter((_) => FakeResponse.eventStream(<String>['data: x\n\n']));
    final client = SseClient(fakeDio(adapter), delay: (_) async {});
    final subscription = client.connect(SseStream.changes).listen((_) {});
    await Future<void>.delayed(Duration.zero);
    await subscription.cancel();
    final count = adapter.requests.length;
    await Future<void>.delayed(const Duration(milliseconds: 50));
    expect(adapter.requests.length, count);
  });

  test('every SseStream names its operationId and path', () {
    expect(SseStream.alerts.operationId, 'streamAlerts');
    expect(SseStream.notifications.path, '/v1/notifications/stream');
    expect(SseStream.values.map((s) => s.operationId).toSet(), hasLength(SseStream.values.length));
  });
}
