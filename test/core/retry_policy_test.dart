import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/core/retry_policy.dart';

/// How many times [_load] ran, and what it throws.
int _calls = 0;
Exception _error = Exception();

final FutureProvider<String> _load = FutureProvider<String>((ref) async {
  _calls++;
  throw _error;
});

/// Watches [_load] under the app's retry policy, as `main` installs it.
Widget _app() => ProviderScope(
  retry: appRetry,
  child: MaterialApp(
    home: Consumer(builder: (context, ref, _) => Text(ref.watch(_load).hasError ? 'failed' : 'loading')),
  ),
);

/// Shows [_app], then lets a minute of fake time pass.
Future<int> _callsOverAMinute(WidgetTester tester, Exception error) async {
  _calls = 0;
  _error = error;
  await tester.pumpWidget(_app());
  for (var i = 0; i < 60; i++) {
    await tester.pump(const Duration(seconds: 1));
  }
  return _calls;
}

void main() {
  group('appRetry', () {
    test('retries once, after the delay, when the backend may not have seen the request', () {
      expect(appRetry(0, NetworkException('Connection refused')), automaticRetryDelay);
      expect(appRetry(0, HttpStatusException(status: 502)), automaticRetryDelay);
      expect(appRetry(0, HttpStatusException(status: 504)), automaticRetryDelay);
      expect(automaticRetryDelay, const Duration(seconds: 5));
    });

    test('never retries a second time', () {
      expect(appRetry(1, NetworkException('Connection refused')), isNull);
      expect(appRetry(5, HttpStatusException(status: 502)), isNull);
    });

    test('leaves a busy, failing or misread request to the Retry button', () {
      expect(appRetry(0, RequestFailedException(RequestFailure.timeout, 'no answer within 60 s')), isNull);
      expect(appRetry(0, HttpStatusException(status: 503)), isNull);
      expect(appRetry(0, ProblemException(status: 503, title: 'Service Unavailable', code: 'QUERY_TIMEOUT')), isNull);
      expect(appRetry(0, ProblemException(status: 500, title: 'Internal Server Error')), isNull);
      expect(appRetry(0, ProblemException(status: 404, title: 'Not Found')), isNull);
      expect(appRetry(0, RequestFailedException(RequestFailure.unexpectedReply, 'a JSON array')), isNull);
      expect(appRetry(0, StateError('a bug')), isNull);
    });
  });

  testWidgets('a load the backend never saw is sent twice in a minute, not ten times', (tester) async {
    expect(await _callsOverAMinute(tester, NetworkException('Connection refused')), 2);
    expect(find.text('failed'), findsOneWidget);
  });

  testWidgets('a load that timed out is sent once; the Retry button asks again', (tester) async {
    expect(await _callsOverAMinute(tester, RequestFailedException(RequestFailure.timeout, 'no answer')), 1);
    expect(find.text('failed'), findsOneWidget);
  });
}
