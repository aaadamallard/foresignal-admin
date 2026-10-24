import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';

import '../support/fake_adapter.dart';

Future<ApiException> _failure(FakeResponse response) async {
  final adapter = FakeAdapter((_) => response);
  final dio = fakeDio(adapter);
  try {
    await dio.get<Object?>('/v1/anything');
  } on Object catch (error) {
    return toApiException(error);
  }
  fail('the request succeeded');
}

void main() {
  group('ProblemDetail mapping', () {
    test('maps every Problem field', () async {
      final error = await _failure(
        FakeResponse.problem(<String, Object?>{
          'type': 'https://foresignal.dev/problems/credentials-required',
          'title': 'Credentials required',
          'status': 422,
          'detail': 'Source acled needs an API key',
          'instance': '/v1/sources/acled',
          'code': 'CREDENTIALS_REQUIRED',
          'errors': <Object?>[
            <String, Object?>{'field': 'apiKey', 'message': 'is required'},
          ],
        }, status: 422),
      );
      expect(error, isA<ProblemException>());
      final problem = error as ProblemException;
      expect(problem.status, 422);
      expect(problem.title, 'Credentials required');
      expect(problem.detail, 'Source acled needs an API key');
      expect(problem.code, 'CREDENTIALS_REQUIRED');
      expect(problem.type, 'https://foresignal.dev/problems/credentials-required');
      expect(problem.instance, '/v1/sources/acled');
      expect(problem.fieldErrors.single.field, 'apiKey');
      expect(problem.fieldErrors.single.message, 'is required');
      expect(problem.message, 'Credentials required: Source acled needs an API key');
      expect(problem.isAuthFailure, isFalse);
    });

    test('a 401 problem is an auth failure', () async {
      final error = await _failure(
        FakeResponse.problem(<String, Object?>{
          'title': 'Unauthorized',
          'status': 401,
        }, status: 401),
      );
      expect((error as ProblemException).isAuthFailure, isTrue);
      expect(error.message, 'Unauthorized');
    });

    test('Retry-After seconds on a 429 problem', () async {
      final error = await _failure(
        FakeResponse.problem(
          <String, Object?>{'title': 'Too many requests', 'status': 429, 'code': 'RATE_LIMITED'},
          status: 429,
          headers: <String, String>{'retry-after': '12'},
        ),
      );
      expect(error.retryAfter, const Duration(seconds: 12));
    });

    test('falls back to retryAfterSeconds in the body', () async {
      final error = await _failure(
        FakeResponse.problem(<String, Object?>{
          'title': 'Too many requests',
          'status': 429,
          'retryAfterSeconds': 7,
        }, status: 429),
      );
      expect(error.retryAfter, const Duration(seconds: 7));
      expect((error as ProblemException).body['retryAfterSeconds'], 7);
    });
  });

  group('non-problem failures', () {
    test('an HTML 502 maps to HttpStatusException', () async {
      final error = await _failure(
        FakeResponse.text('<html>Bad gateway</html>', status: 502, contentType: 'text/html'),
      );
      expect(error, isA<HttpStatusException>());
      expect((error as HttpStatusException).status, 502);
    });

    test('a connection failure maps to NetworkException', () async {
      final adapter = FakeAdapter(
        (request) => throw DioException.connectionError(
          requestOptions: request.options,
          reason: 'refused',
        ),
      );
      try {
        await fakeDio(adapter).get<Object?>('/v1/system');
        fail('the request succeeded');
      } on Object catch (error) {
        expect(toApiException(error), isA<NetworkException>());
      }
    });

    test('a 200 whose reply cannot be read names the decode error, not the status', () {
      final request = RequestOptions(path: '/v1/settings/server');
      final error = toApiException(
        DioException(
          requestOptions: request,
          response: Response<Object?>(requestOptions: request, statusCode: 200),
          error: StateError('null for non-nullable field "publicBaseUrl"'),
        ),
      );
      // A reply that arrived is not an unreachable backend (this was a
      // NetworkException, shown as "Backend unreachable", before the UI fix pass).
      expect(error, isA<RequestFailedException>());
      expect((error as RequestFailedException).failure, RequestFailure.unexpectedReply);
      expect(error.status, 200);
      expect(error.message, contains('could not read the reply'));
      expect(error.message, contains('publicBaseUrl'));
    });

    test('a receive or send timeout is a request that failed, not an unreachable backend', () {
      final request = RequestOptions(
        path: '/v1/intel/events',
        sendTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 60),
      );
      final limits = <DioExceptionType, String>{
        DioExceptionType.receiveTimeout: 'got no answer within 60 s',
        DioExceptionType.sendTimeout: 'could not be sent within 30 s',
      };
      for (final MapEntry(key: type, value: said) in limits.entries) {
        final error = toApiException(DioException(requestOptions: request, type: type));
        expect(error, isA<RequestFailedException>(), reason: '$type');
        expect((error as RequestFailedException).failure, RequestFailure.timeout);
        // The message names the request and its limit, not the heading again.
        expect(error.message, startsWith('GET /v1/intel/events $said.'));
        expect(error.message, isNot(RequestFailure.timeout.heading));
      }
    });

    test('only connection failures are NetworkException', () {
      final request = RequestOptions(path: '/v1/system');
      for (final type in <DioExceptionType>[
        DioExceptionType.connectionError,
        DioExceptionType.connectionTimeout,
        DioExceptionType.badCertificate,
      ]) {
        expect(toApiException(DioException(requestOptions: request, type: type)), isA<NetworkException>());
      }
      expect(
        toApiException(
          DioException(requestOptions: request, error: const SocketException('Connection refused')),
        ),
        isA<NetworkException>(),
      );
      expect(toApiException(const SocketException('Failed host lookup')), isA<NetworkException>());
      // An error the app raised is not a connection failure.
      expect(toApiException(StateError('bad state')), isA<RequestFailedException>());
      expect(
        toApiException(DioException(requestOptions: request, type: DioExceptionType.cancel)),
        isA<RequestFailedException>().having((e) => e.failure, 'failure', RequestFailure.canceled),
      );
    });

    test('json_calls name the shape they got instead of the one they expected', () async {
      final dio = fakeDio(FakeAdapter((_) => FakeResponse.json(<String, Object?>{'items': <Object?>[]})));
      try {
        await jsonArrayCall(dio, '/v1/triggers');
        fail('the call succeeded');
      } on RequestFailedException catch (error) {
        expect(error.failure, RequestFailure.unexpectedReply);
        expect(error.status, 200);
        expect(error.message, 'GET /v1/triggers answered HTTP 200 with a JSON object, not the expected JSON array.');
      }
      final list = fakeDio(FakeAdapter((_) => FakeResponse.json(<Object?>[])));
      await expectLater(
        jsonObjectCall(list, 'GET', '/v1/system'),
        throwsA(isA<RequestFailedException>().having((e) => e.message, 'message', contains('with a JSON array'))),
      );
    });

    test('an ApiException passes through unchanged', () {
      const error = AdminTokenRequiredException();
      expect(identical(toApiException(error), error), isTrue);
    });
  });

  group('parseRetryAfter', () {
    test('delay-seconds', () {
      expect(parseRetryAfter('30'), const Duration(seconds: 30));
      expect(parseRetryAfter(' 0 '), Duration.zero);
    });

    test('HTTP-date relative to now', () {
      final now = DateTime.utc(2026, 10, 22, 12);
      expect(
        parseRetryAfter('Thu, 22 Oct 2026 12:01:00 GMT', now: now),
        const Duration(minutes: 1),
      );
      expect(parseRetryAfter('Thu, 22 Oct 2026 11:00:00 GMT', now: now), Duration.zero);
    });

    test('missing or malformed', () {
      expect(parseRetryAfter(null), isNull);
      expect(parseRetryAfter(''), isNull);
      expect(parseRetryAfter('soon'), isNull);
      expect(parseRetryAfter('-5'), isNull);
    });
  });
}
