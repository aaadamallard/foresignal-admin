import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';

import '../support/fake_adapter.dart';

void main() {
  late FakeAdapter adapter;

  setUp(() {
    adapter = FakeAdapter((_) => FakeResponse.json(<String, Object?>{}));
  });

  test('a read without a token is sent without Authorization', () async {
    final dio = createBackendDio(
      baseUrl: Uri.parse('http://backend.test'),
      tokenStore: InMemoryAdminTokenStore(),
    )..httpClientAdapter = adapter;
    await dio.get<Object?>('/v1/system');
    expect(adapter.requests.single.options.headers.containsKey('Authorization'), isFalse);
    expect(adapter.requests.single.uri.toString(), 'http://backend.test/v1/system');
  });

  test('a stored token is sent as a bearer token on reads and writes', () async {
    final dio = createBackendDio(
      baseUrl: Uri.parse('http://backend.test'),
      tokenStore: InMemoryAdminTokenStore('fsr_abc'),
    )..httpClientAdapter = adapter;
    await dio.get<Object?>('/v1/system');
    await dio.put<Object?>(
      '/v1/settings/collector',
      data: <String, Object?>{'maxConcurrentPulls': 4},
    );
    for (final request in adapter.requests) {
      expect(request.options.headers['Authorization'], 'Bearer fsr_abc');
    }
    expect(adapter.requests.last.body, <String, Object?>{'maxConcurrentPulls': 4});
  });

  test('a write without a token is refused before it is sent', () async {
    final dio = createBackendDio(
      baseUrl: Uri.parse('http://backend.test'),
      tokenStore: InMemoryAdminTokenStore(),
    )..httpClientAdapter = adapter;
    for (final method in <String>['POST', 'PUT', 'PATCH', 'DELETE']) {
      try {
        await dio.request<Object?>('/v1/sources/x', options: Options(method: method));
        fail('$method was sent');
      } on Object catch (error) {
        expect(toApiException(error), isA<AdminTokenRequiredException>());
      }
    }
    expect(adapter.requests, isEmpty);
  });

  test('isWrite', () {
    expect(AdminAuthInterceptor.isWrite('GET'), isFalse);
    expect(AdminAuthInterceptor.isWrite('head'), isFalse);
    expect(AdminAuthInterceptor.isWrite('OPTIONS'), isFalse);
    expect(AdminAuthInterceptor.isWrite('POST'), isTrue);
    expect(AdminAuthInterceptor.isWrite('delete'), isTrue);
  });

  group('with a signed-in session', () {
    StoredSession session(String token) =>
        StoredSession(token: token, userId: 'u-1', expiresAt: DateTime.utc(2099, 1, 1));

    test('the session token wins over the admin token', () async {
      final dio = createBackendDio(
        baseUrl: Uri.parse('http://backend.test'),
        tokenStore: InMemoryAdminTokenStore('fsr_admin'),
        sessionStore: InMemorySessionStore(session('fss_user')),
      )..httpClientAdapter = adapter;
      await dio.get<Object?>('/v1/sources');
      await dio.put<Object?>('/v1/settings/collector', data: <String, Object?>{'maxConcurrentPulls': 4});
      for (final request in adapter.requests) {
        expect(request.options.headers['Authorization'], 'Bearer fss_user');
        expect(request.options.extra[AdminAuthInterceptor.credentialKey], RequestCredential.session);
      }
    });

    test('the admin token still authorizes a write when no session is present', () async {
      final dio = createBackendDio(
        baseUrl: Uri.parse('http://backend.test'),
        tokenStore: InMemoryAdminTokenStore('fsr_admin'),
        sessionStore: InMemorySessionStore(),
      )..httpClientAdapter = adapter;
      await dio.put<Object?>('/v1/settings/collector', data: <String, Object?>{'maxConcurrentPulls': 4});
      expect(adapter.requests.single.options.headers['Authorization'], 'Bearer fsr_admin');
    });

    test('the open sign-in operations are sent with no credential, even with none stored', () async {
      final dio = createBackendDio(
        baseUrl: Uri.parse('http://backend.test'),
        tokenStore: InMemoryAdminTokenStore(),
        sessionStore: InMemorySessionStore(session('fss_stale')),
      )..httpClientAdapter = adapter;
      for (final path in AdminAuthInterceptor.openWritePaths) {
        await dio.post<Object?>(path, data: <String, Object?>{});
      }
      expect(adapter.requests.map((r) => r.uri.path), AdminAuthInterceptor.openWritePaths.toList());
      for (final request in adapter.requests) {
        expect(request.options.headers.containsKey('Authorization'), isFalse);
      }
    });

    test('a 401 to a session request clears the session and reports it once', () async {
      final sessions = InMemorySessionStore(session('fss_user'));
      var ended = 0;
      final dio = createBackendDio(
        baseUrl: Uri.parse('http://backend.test'),
        tokenStore: InMemoryAdminTokenStore('fsr_admin'),
        sessionStore: sessions,
        onSessionEnded: () => ended++,
      )..httpClientAdapter = FakeAdapter(
          (_) => FakeResponse.problem(<String, Object?>{'title': 'Unauthorized', 'status': 401}, status: 401),
        );
      for (var i = 0; i < 2; i++) {
        try {
          await dio.get<Object?>('/v1/sources');
        } on DioException {
          // Expected.
        }
      }
      expect(await sessions.read(), isNull);
      expect(ended, 1);
    });

    test('a 401 to an admin-token request leaves the session store alone', () async {
      final sessions = InMemorySessionStore();
      var ended = 0;
      final dio = createBackendDio(
        baseUrl: Uri.parse('http://backend.test'),
        tokenStore: InMemoryAdminTokenStore('fsr_admin'),
        sessionStore: sessions,
        onSessionEnded: () => ended++,
      )..httpClientAdapter = FakeAdapter(
          (_) => FakeResponse.problem(<String, Object?>{'title': 'Unauthorized', 'status': 401}, status: 401),
        );
      try {
        await dio.get<Object?>('/v1/sources');
      } on DioException {
        // Expected.
      }
      expect(ended, 0);
    });
  });
}
