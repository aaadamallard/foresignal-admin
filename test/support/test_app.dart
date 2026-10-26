import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/app.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/device_id.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/theme_mode.dart';
import 'package:foresignal_admin/features/alerts/area_editor.dart';
import 'package:foresignal_admin/features/connect/connect_controller.dart';
import 'package:foresignal_admin/features/notifications/presence.dart';
import 'package:foresignal_admin/features/notifications/push_arrival.dart';
import 'package:foresignal_admin/features/notifications/push_token.dart';
import 'package:foresignal_admin/features/setup/setup_wizard_store.dart';

import 'fake_adapter.dart';

/// The device id every test container uses.
const String testDeviceId = '0f8e2d3c-1b4a-4c5d-8e6f-7a8b9c0d1e2f';

/// A [ProviderContainer] with in-memory stores (a signed-in session only when
/// [sessionStore] holds one — restore it with `SessionController.restore`),
/// a fixed [formFactor], and
/// every backend call answered by [adapter] (connection probes included).
/// The device id is [testDeviceId]; presence reporting is off unless
/// [reportPresence]; [pushTokens] and [pushArrivals] stand in for Firebase
/// (no pushes arrive unless [pushArrivals] is given).
ProviderContainer testContainer({
  required FakeAdapter adapter,
  FormFactor formFactor = FormFactor.desktop,
  InMemoryConnectionStore? store,
  InMemorySessionStore? sessionStore,
  Uri? connectedTo,
  InMemorySetupWizardStore? wizardStore,
  bool reportPresence = false,
  PushTokenSource? pushTokens,
  PushArrivalSource pushArrivals = const NoPushArrivals(),
}) {
  final connection = store ?? InMemoryConnectionStore();
  final container = ProviderContainer(
    // Riverpod retries a failed provider on a timer; a fake that answers a
    // call 404 would leave that timer pending when the test ends.
    retry: (_, _) => null,
    overrides: [
      connectionStoreProvider.overrideWithValue(connection),
      adminTokenStoreProvider.overrideWithValue(connection),
      sessionStoreProvider.overrideWithValue(sessionStore ?? InMemorySessionStore()),
      themePreferenceStoreProvider.overrideWithValue(InMemoryThemeStore()),
      setupWizardStoreProvider.overrideWithValue(wizardStore ?? InMemorySetupWizardStore()),
      formFactorProvider.overrideWithValue(formFactor),
      deviceIdStoreProvider.overrideWithValue(InMemoryDeviceIdStore(testDeviceId)),
      presenceReportingProvider.overrideWithValue(reportPresence),
      if (pushTokens != null) pushTokenSourceProvider.overrideWithValue(pushTokens),
      pushArrivalSourceProvider.overrideWithValue(pushArrivals),
      // No tile requests from tests: the area map draws on a plain background.
      areaMapTilesProvider.overrideWithValue(false),
      connectionProbeApiProvider.overrideWithValue(
        (baseUrl, token) => ForesignalApi(
          dio: createBackendDio(baseUrl: baseUrl, tokenStore: InMemoryAdminTokenStore(token))
            ..httpClientAdapter = adapter,
          interceptors: const <Interceptor>[],
          serializers: tolerantSerializers,
        ),
      ),
      backendDioProvider.overrideWith((ref) {
        final dio = createBackendDio(
          baseUrl: ref.watch(backendEndpointProvider),
          tokenStore: ref.watch(adminTokenStoreProvider),
          sessionStore: ref.watch(sessionStoreProvider),
          onSessionEnded: () => ref.read(sessionControllerProvider.notifier).ended(),
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
  'version': '2.0.0',
  'apiVersion': '2.0.0',
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
/// answering [serverSettings], answers 401 to any other token, and reports
/// [apiVersion].
FakeAdapter connectBackend({
  String adminToken = 'fsr_good',
  String apiVersion = '2.0.0',
  int badTokenStatus = 401,
  Map<String, Object?> serverSettings = serverSettingsBody,
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
          return FakeResponse.json(serverSettings);
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
