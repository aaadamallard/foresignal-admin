import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/features/connect/connect_controller.dart';

import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';

void main() {
  test('an accepted admin token: reachable, admin, saved to the store', () async {
    final adapter = connectBackend();
    final store = InMemoryConnectionStore();
    final container = testContainer(adapter: adapter, store: store);
    addTearDown(container.dispose);

    await container
        .read(connectControllerProvider.notifier)
        .testAndSave(urlText: 'foresignal.local:8080/', token: ' fsr_good ');

    final state = container.read(connectControllerProvider) as ConnectTested;
    expect(state.saved, isTrue);
    expect(state.report.tokenStatus, TokenStatus.admin);
    expect(state.report.versionMatch, VersionMatch.exact);
    expect(state.report.contract!.contractVersion, '1.5');
    expect(state.report.serverSettings!.publicBaseUrl, 'http://foresignal.local:8080');
    expect(state.report.serverTime, DateTime.utc(2026, 10, 22, 16, 30));
    expect(state.report.canConfigure, isTrue);
    expect(await store.read(), 'fsr_good');
    expect(await store.readBackendUrl(), Uri.parse('http://foresignal.local:8080'));
    expect(container.read(backendEndpointProvider), Uri.parse('http://foresignal.local:8080'));
    expect(
      adapter.requests.map((r) => r.uri.path),
      <String>['/v1/system', '/v1/contract', '/v1/settings/server'],
    );
  });

  test('a rejected token (401) is reported and nothing is saved', () async {
    final store = InMemoryConnectionStore();
    final container = testContainer(adapter: connectBackend(), store: store);
    addTearDown(container.dispose);

    await container
        .read(connectControllerProvider.notifier)
        .testAndSave(urlText: 'http://foresignal.local:8080', token: 'fsr_wrong');

    final state = container.read(connectControllerProvider) as ConnectTested;
    expect(state.saved, isFalse);
    expect(state.report.tokenStatus, TokenStatus.rejected);
    expect(state.report.tokenError, isA<ProblemException>());
    expect(await store.read(), isNull);
    expect(await store.readBackendUrl(), isNull);
    expect(container.read(backendEndpointProvider), isNull);
  });

  test('a 403 means the token lacks admin scope; it is still saved', () async {
    final container = testContainer(adapter: connectBackend(badTokenStatus: 403));
    addTearDown(container.dispose);
    await container
        .read(connectControllerProvider.notifier)
        .testAndSave(urlText: 'http://h:8080', token: 'fsr_read');
    final state = container.read(connectControllerProvider) as ConnectTested;
    expect(state.report.tokenStatus, TokenStatus.insufficientScope);
    expect(state.saved, isTrue);
    expect(state.report.canConfigure, isFalse);
  });

  test('no token: read-only, getServerSettings is not called, stored token cleared', () async {
    final adapter = connectBackend();
    final store = InMemoryConnectionStore(token: 'fsr_old');
    final container = testContainer(adapter: adapter, store: store);
    addTearDown(container.dispose);
    await container
        .read(connectControllerProvider.notifier)
        .testAndSave(urlText: 'http://h:8080', token: '');
    final state = container.read(connectControllerProvider) as ConnectTested;
    expect(state.report.tokenStatus, TokenStatus.missing);
    expect(adapter.requests.any((r) => r.uri.path == '/v1/settings/server'), isFalse);
    expect(await store.read(), isNull);
  });

  test('"Save token" unticked holds the token for the session only', () async {
    final store = _SessionTrackingStore();
    final container = testContainer(adapter: connectBackend(), store: store);
    addTearDown(container.dispose);
    await container
        .read(connectControllerProvider.notifier)
        .testAndSave(urlText: 'http://h:8080', token: 'fsr_good', saveToken: false);
    expect(store.sessionToken, 'fsr_good');
    expect(store.persisted, isFalse);
  });

  test('an older major API version is incompatible', () async {
    final container = testContainer(adapter: connectBackend(apiVersion: '2.0.0'));
    addTearDown(container.dispose);
    await container
        .read(connectControllerProvider.notifier)
        .testAndSave(urlText: 'http://h:8080', token: 'fsr_good');
    final state = container.read(connectControllerProvider) as ConnectTested;
    expect(state.report.versionMatch, VersionMatch.incompatible);
    expect(state.report.canConfigure, isFalse);
  });

  test('an unreachable backend fails with a NetworkException', () async {
    final adapter = FakeAdapter(
      (request) =>
          throw DioException.connectionError(requestOptions: request.options, reason: 'refused'),
    );
    final container = testContainer(adapter: adapter);
    addTearDown(container.dispose);
    await container
        .read(connectControllerProvider.notifier)
        .testAndSave(urlText: 'http://h:8080', token: 'x');
    final state = container.read(connectControllerProvider) as ConnectFailed;
    expect(state.error, isA<NetworkException>());
  });

  test('a malformed URL fails without any request', () async {
    final adapter = connectBackend();
    final container = testContainer(adapter: adapter);
    addTearDown(container.dispose);
    await container
        .read(connectControllerProvider.notifier)
        .testAndSave(urlText: 'ftp://x', token: '');
    expect(container.read(connectControllerProvider), isA<ConnectFailed>());
    expect(adapter.requests, isEmpty);
  });
}

class _SessionTrackingStore extends InMemoryConnectionStore {
  String? sessionToken;
  bool persisted = false;

  @override
  Future<void> write(String token) async {
    persisted = true;
    await super.write(token);
  }

  @override
  Future<void> useForSession(String token) async {
    sessionToken = token;
  }
}
