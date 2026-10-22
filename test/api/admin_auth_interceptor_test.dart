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
}
