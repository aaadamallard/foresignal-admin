import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/app.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/theme_mode.dart';
import 'package:foresignal_admin/features/connect/connect_controller.dart';

import 'fake_adapter.dart';

/// A [ProviderContainer] with in-memory stores, a fixed [formFactor], and
/// every backend call answered by [adapter] (connection probes included).
ProviderContainer testContainer({
  required FakeAdapter adapter,
  FormFactor formFactor = FormFactor.desktop,
  InMemoryConnectionStore? store,
  Uri? connectedTo,
}) {
  final connection = store ?? InMemoryConnectionStore();
  final container = ProviderContainer(
    overrides: [
      connectionStoreProvider.overrideWithValue(connection),
      adminTokenStoreProvider.overrideWithValue(connection),
      themePreferenceStoreProvider.overrideWithValue(InMemoryThemeStore()),
      formFactorProvider.overrideWithValue(formFactor),
      connectionProbeApiProvider.overrideWithValue(
        (baseUrl, token) => ForesignalApi(
          dio: createBackendDio(baseUrl: baseUrl, tokenStore: InMemoryAdminTokenStore(token))
            ..httpClientAdapter = adapter,
          interceptors: const <Interceptor>[],
        ),
      ),
      backendDioProvider.overrideWith((ref) {
        final dio = createBackendDio(
          baseUrl: ref.watch(backendEndpointProvider),
          tokenStore: ref.watch(adminTokenStoreProvider),
        )..httpClientAdapter = adapter;
        return dio;
      }),
    ],
  );
  if (connectedTo != null) {
    container.read(backendEndpointProvider.notifier).set(connectedTo);
  }
  return container;
}

/// The app inside [container].
Widget testApp(ProviderContainer container) =>
    UncontrolledProviderScope(container: container, child: const ForeSignalAdminApp());

/// Contract-shaped bodies (SystemInfo, Contract, ServerSettings) for the
/// three Connect probe operations.
const Map<String, Object?> systemBody = <String, Object?>{
  'version': '1.3.0',
  'apiVersion': '1.3.0',
  'startedAt': '2026-10-22T13:00:00Z',
  'status': 'ok',
  'mode': 'full',
  'features': <String, bool>{'notifications': true, 'llm': false},
  'security': <String, Object?>{'openReads': true},
};

/// A Contract body.
const Map<String, Object?> contractBody = <String, Object?>{
  'contractVersion': '1.5',
  'objectTypes': <String>['record'],
  'relationTypes': <String>[],
  'contextSchemaVersion': 1,
  'deepLinkVersion': 1,
};

/// A ServerSettings body.
const Map<String, Object?> serverSettingsBody = <String, Object?>{
  'publicBaseUrl': 'http://foresignal.local:8080',
  'timezone': 'UTC',
};

/// A fake backend for Connect: accepts [adminToken] for getServerSettings,
/// answers 401 to any other token, and reports [apiVersion].
FakeAdapter connectBackend({
  String adminToken = 'fsr_good',
  String apiVersion = '1.3.0',
  int badTokenStatus = 401,
}) {
  return FakeAdapter((request) {
    switch (request.uri.path) {
      case '/v1/system':
        return FakeResponse.json(
          <String, Object?>{...systemBody, 'apiVersion': apiVersion},
          headers: <String, String>{'date': 'Thu, 22 Oct 2026 16:30:00 GMT'},
        );
      case '/v1/contract':
        return FakeResponse.json(contractBody);
      case '/v1/settings/server':
        if (request.options.headers['Authorization'] == 'Bearer $adminToken') {
          return FakeResponse.json(serverSettingsBody);
        }
        return FakeResponse.problem(
          <String, Object?>{'title': 'Refused', 'status': badTokenStatus},
          status: badTokenStatus,
        );
    }
    return FakeResponse.problem(<String, Object?>{
      'title': 'Not found',
      'status': 404,
    }, status: 404);
  });
}
