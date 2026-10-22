import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';

import '../support/fake_adapter.dart';

void main() {
  test('getSystem goes through the configured Dio and deserializes SystemInfo', () async {
    final adapter = FakeAdapter(
      (_) => FakeResponse.json(<String, Object?>{
        'version': '1.3.0',
        'startedAt': '2026-10-22T10:00:00Z',
        'apiVersion': '1.3.0',
      }),
    );
    final container = ProviderContainer(
      overrides: [adminTokenStoreProvider.overrideWithValue(InMemoryAdminTokenStore('fsr_t'))],
    );
    addTearDown(container.dispose);
    container.read(backendEndpointProvider.notifier).set(Uri.parse('http://backend.test'));
    container.read(backendDioProvider).httpClientAdapter = adapter;

    final api = container.read(foresignalApiProvider);
    final info = await callApiRequired(() => api.getSystemApi().getSystem());

    expect(info.version, '1.3.0');
    expect(info.apiVersion, '1.3.0');
    final request = adapter.requests.single;
    expect(request.uri.toString(), 'http://backend.test/v1/system');
    expect(request.options.headers['Authorization'], 'Bearer fsr_t');
  });

  test('a problem from a generated call surfaces as ProblemException', () async {
    final adapter = FakeAdapter(
      (_) =>
          FakeResponse.problem(<String, Object?>{'title': 'Not found', 'status': 404}, status: 404),
    );
    final container = ProviderContainer();
    addTearDown(container.dispose);
    container.read(backendEndpointProvider.notifier).set(Uri.parse('http://backend.test'));
    container.read(backendDioProvider).httpClientAdapter = adapter;

    final api = container.read(foresignalApiProvider);
    await expectLater(
      callApi(() => api.getSourcesApi().getSource(sourceId: 'missing')),
      throwsA(isA<ProblemException>().having((e) => e.status, 'status', 404)),
    );
  });
}
