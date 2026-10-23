// Runs the real app against a fake backend that answers from the contract's
// schemas, so screens can be shown and screenshotted without any live
// ForeSignal. Nothing here ships: it is a separate entry point.
//
//   flutter build linux -t tool/preview/preview_main.dart \
//     --dart-define=THEME=light --dart-define=CONNECTED=true
//
// CONNECTED=true starts already connected with the preview token, and the
// setup wizard counts as never run. FORM_FACTOR=mobile shows the mobile
// companion's shell and screens in the desktop window.
//
// The fake accepts the admin token `fsr_preview`; any other token is
// answered 401, as `getServerSettings` would.
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/app.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/theme_mode.dart';
import 'package:foresignal_admin/features/connect/connect_controller.dart';
import 'package:foresignal_admin/features/setup/setup_wizard_store.dart';

import 'preview_analysis.dart';
import 'preview_forecasting.dart';
import 'preview_llm.dart';
import 'preview_sources.dart';
import 'preview_usage.dart';
import 'preview_validate.dart';
import 'preview_vetting.dart';

/// The token the fake backend accepts.
const String previewToken = 'fsr_preview';

/// Contract-shaped bodies for the operations the preview answers, keyed by
/// path. Each follows its `components.schemas` entry in openapi/OpenAPI.json.
final Map<String, Object?> previewBodies = <String, Object?>{
  // SystemInfo
  '/v1/system': <String, Object?>{
    'version': '1.3.0',
    'apiVersion': '1.3.0',
    'startedAt': '2026-10-22T13:00:00Z',
    'uptimeSeconds': 12600,
    'status': 'ok',
    'mode': 'full',
    'features': <String, bool>{
      'notifications': true,
      'retention': true,
      'llm': true,
      'search': true,
      'push': true,
      'mcp': true,
      'federation': false,
      'weather': true,
    },
    'security': <String, Object?>{'openReads': true},
  },
  // Contract
  '/v1/contract': <String, Object?>{
    'contractVersion': '1.5',
    'objectTypes': <String>['record', 'alert', 'entity'],
    'relationTypes': <String>['mentions'],
    'contextSchemaVersion': 1,
    'deepLinkVersion': 1,
  },
  // ServerSettings
  '/v1/settings/server': <String, Object?>{
    'publicBaseUrl': 'http://foresignal.local:8080',
    'timezone': 'America/Chicago',
  },
  // TriggerRule[]
  '/v1/triggers': <Object?>[
    <String, Object?>{
      'id': '7b0e7f0c-3c55-4a43-9f53-0d9b1f0b6a01',
      'name': 'M5+ earthquakes',
      'enabled': true,
      'createdAt': '2026-10-20T10:00:00Z',
      'updatedAt': '2026-10-20T10:00:00Z',
    },
  ],
  // Channel[]
  '/v1/channels': <Object?>[],
  // PushProvider[]
  '/v1/push/providers': <Object?>[
    <String, Object?>{
      'id': 'fcm-main',
      'type': 'fcm',
      'appIds': <String>['com.foresignal.admin'],
      'config': <String, Object?>{
        'projectId': 'foresignal-home',
        'clientEmail': 'push@foresignal-home.iam.example',
      },
      'enabled': true,
    },
  ],
  // PushDevice[]
  '/v1/push/devices': <Object?>[],
};

/// A preview answer: a JSON body and its status.
typedef PreviewReply = ({int status, Object? body});

final PreviewCustom _custom = PreviewCustom();
final PreviewSettings _settings = PreviewSettings();
final PreviewLlm _llm = PreviewLlm();
final PreviewAnalysis _analysis = PreviewAnalysis();
final PreviewVetting _vetting = PreviewVetting();
final PreviewForecasting _forecasting = PreviewForecasting();

PreviewReply? _answer(RequestOptions options, Object? requestBody) {
  final sources = answerSources(options.method, options.uri.path, requestBody);
  if (sources != null) {
    return sources;
  }
  final validate = answerValidate(
    options.method,
    options.uri.path,
    options.uri.queryParametersAll,
    requestBody,
    previewSources,
    _custom,
  );
  if (validate != null) {
    return validate;
  }
  final usage = answerUsage(
    options.method,
    options.uri.path,
    options.uri.queryParametersAll,
    requestBody,
    previewSources,
    _settings,
  );
  if (usage != null) {
    return usage;
  }
  final llm = answerLlm(
    options.method,
    options.uri.path,
    options.uri.queryParametersAll,
    requestBody,
    _llm,
  );
  if (llm != null) {
    return llm;
  }
  final analysis = answerAnalysis(
    options.method,
    options.uri.path,
    options.uri.queryParametersAll,
    options.headers,
    requestBody,
    _analysis,
  );
  if (analysis != null) {
    return analysis;
  }
  final vetting = answerVetting(
    options.method,
    options.uri.path,
    options.uri.queryParametersAll,
    requestBody,
    _vetting,
  );
  if (vetting != null) {
    return vetting;
  }
  final forecasting = answerForecasting(
    options.method,
    options.uri.path,
    options.uri.queryParametersAll,
    requestBody,
    _forecasting,
  );
  if (forecasting != null) {
    return forecasting;
  }
  final body = previewBodies[options.uri.path];
  return body == null ? null : (status: 200, body: body);
}

class _PreviewAdapter implements HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
    final path = options.uri.path;
    if (path == '/v1/settings/server' &&
        options.headers['Authorization'] != 'Bearer $previewToken') {
      return _json(
        <String, Object?>{'title': 'Unauthorized', 'status': 401, 'code': 'UNAUTHORIZED'},
        401,
        problem: true,
      );
    }
    Object? requestBody;
    if (requestStream != null) {
      final bytes = <int>[];
      await for (final chunk in requestStream) {
        bytes.addAll(chunk);
      }
      if (bytes.isNotEmpty) {
        final text = utf8.decode(bytes, allowMalformed: true);
        // A multipart upload stays text; everything else is JSON.
        requestBody = '${options.contentType}'.startsWith('multipart/') ? text : jsonDecode(text);
      }
    }
    final reply = _answer(options, requestBody);
    if (reply == null) {
      return _json(<String, Object?>{'title': 'Not found', 'status': 404}, 404, problem: true);
    }
    return _json(reply.body, reply.status, problem: reply.status >= 400);
  }

  ResponseBody _json(Object? body, int status, {bool problem = false}) => ResponseBody.fromBytes(
    utf8.encode(jsonEncode(body)),
    status,
    headers: <String, List<String>>{
      'content-type': <String>[problem ? 'application/problem+json' : 'application/json'],
      'date': <String>['Thu, 22 Oct 2026 16:30:00 GMT'],
    },
  );

  @override
  void close({bool force = false}) {}
}

Dio _previewDio(Uri baseUrl, String? token) =>
    createBackendDio(baseUrl: baseUrl, tokenStore: InMemoryAdminTokenStore(token))
      ..httpClientAdapter = _PreviewAdapter();

void main() {
  const theme = String.fromEnvironment('THEME', defaultValue: 'dark');
  const connected = bool.fromEnvironment('CONNECTED');
  const mobile = String.fromEnvironment('FORM_FACTOR') == 'mobile';
  WidgetsFlutterBinding.ensureInitialized();
  final previewUrl = Uri.parse('http://foresignal.local:8080');
  final store = connected
      ? InMemoryConnectionStore(url: previewUrl, token: previewToken)
      : InMemoryConnectionStore();
  final container = ProviderContainer(
    overrides: [
      if (mobile) formFactorProvider.overrideWithValue(FormFactor.mobile),
      connectionStoreProvider.overrideWithValue(store),
      adminTokenStoreProvider.overrideWithValue(store),
      themePreferenceStoreProvider.overrideWithValue(InMemoryThemeStore()),
      setupWizardStoreProvider.overrideWithValue(InMemorySetupWizardStore()),
      backendDioProvider.overrideWith(
        (ref) => createBackendDio(
          baseUrl: ref.watch(backendEndpointProvider),
          tokenStore: ref.watch(adminTokenStoreProvider),
        )..httpClientAdapter = _PreviewAdapter(),
      ),
      connectionProbeApiProvider.overrideWithValue(
        (baseUrl, token) =>
            ForesignalApi(dio: _previewDio(baseUrl, token), interceptors: const <Interceptor>[]),
      ),
    ],
  );
  container
      .read(themeModeProvider.notifier)
      .restore(theme == 'light' ? ThemeMode.light : ThemeMode.dark);
  runApp(UncontrolledProviderScope(container: container, child: const ForeSignalAdminApp()));
}
