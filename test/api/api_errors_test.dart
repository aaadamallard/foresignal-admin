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
