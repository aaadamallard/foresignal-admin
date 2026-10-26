import 'dart:io' show HttpDate;

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/access.dart';
import '../../core/connection_store.dart';

/// What the stored (or entered) admin token is good for.
enum TokenStatus {
  /// No token: reads only; every change is refused before it is sent.
  missing,

  /// The backend accepted it with admin scope.
  admin,

  /// The backend rejected it (401).
  rejected,

  /// The backend accepted it but it lacks admin scope (403).
  insufficientScope,
}

/// The outcome of testing a backend: what it reported and what the token is
/// good for.
class ConnectionReport {
  /// Creates a report.
  const ConnectionReport({
    required this.baseUrl,
    required this.system,
    required this.tokenStatus,
    required this.versionMatch,
    this.contract,
    this.contractError,
    this.serverSettings,
    this.tokenError,
    this.serverTime,
  });

  /// The backend tested.
  final Uri baseUrl;

  /// `getSystem`.
  final SystemInfo system;

  /// `getContract`, when it succeeded.
  final Contract? contract;

  /// Why `getContract` failed, when it did.
  final ApiException? contractError;

  /// `getServerSettings`, when the token has admin scope.
  final ServerSettings? serverSettings;

  /// What the token is good for.
  final TokenStatus tokenStatus;

  /// The `getServerSettings` failure behind a rejected or insufficient token.
  final ApiException? tokenError;

  /// How the backend's API version compares to this build's.
  final VersionMatch versionMatch;

  /// The backend's clock, from the `Date` header of the `getSystem` response.
  final DateTime? serverTime;

  /// Whether the app can configure this backend: reachable, compatible, and
  /// holding an admin token.
  bool get canConfigure =>
      tokenStatus == TokenStatus.admin && versionMatch != VersionMatch.incompatible;
}

/// The Connect screen's state.
sealed class ConnectState {
  const ConnectState();
}

/// Nothing tested yet this session.
class ConnectIdle extends ConnectState {
  /// Creates the idle state.
  const ConnectIdle();
}

/// A test is running.
class ConnectTesting extends ConnectState {
  /// Creates the testing state.
  const ConnectTesting();
}

/// The backend answered; [report] says what it is and what the token can do.
class ConnectTested extends ConnectState {
  /// Creates the tested state.
  const ConnectTested(this.report, {required this.saved});

  /// The report.
  final ConnectionReport report;

  /// Whether the URL and token were saved (a rejected token is not).
  final bool saved;
}

/// The test failed before the backend could describe itself.
class ConnectFailed extends ConnectState {
  /// Creates the failed state.
  const ConnectFailed(this.error);

  /// Why: a [FormatException] for a bad URL, or an [ApiException].
  final Object error;
}

/// Builds the [ForesignalApi] used to test a candidate connection, before it
/// is saved. Tests override it to answer from a fake adapter.
final connectionProbeApiProvider = Provider<ForesignalApi Function(Uri baseUrl, String? token)>(
  (ref) =>
      (baseUrl, token) => ForesignalApi(
        dio: createBackendDio(baseUrl: baseUrl, tokenStore: InMemoryAdminTokenStore(token)),
        interceptors: const <Interceptor>[],
        serializers: tolerantSerializers,
      ),
);

/// Tests a backend URL and admin token with `getSystem`, `getContract` and
/// `getServerSettings`, and saves them to the secure store when the backend
/// is reachable and the token (if any) is accepted.
class ConnectController extends Notifier<ConnectState> {
  @override
  ConnectState build() => const ConnectIdle();

  /// Tests [urlText] with [token] (blank for read-only) and, on success,
  /// saves the URL and either saves the token to the secure store
  /// ([saveToken]) or holds it for this session only.
  Future<void> testAndSave({
    required String urlText,
    required String token,
    bool saveToken = true,
  }) async {
    final Uri baseUrl;
    try {
      baseUrl = parseBackendUrl(urlText);
    } on FormatException catch (error) {
      state = ConnectFailed(error);
      return;
    }
    state = const ConnectTesting();
    final trimmedToken = token.trim();
    final api = ref.read(connectionProbeApiProvider)(
      baseUrl,
      trimmedToken.isEmpty ? null : trimmedToken,
    );
    try {
      final report = await probe(api, baseUrl, hasToken: trimmedToken.isNotEmpty);
      final saved = report.tokenStatus != TokenStatus.rejected;
      if (saved) {
        final store = ref.read(connectionStoreProvider);
        await store.writeBackendUrl(baseUrl);
        if (trimmedToken.isEmpty) {
          await store.clear();
        } else if (saveToken) {
          await store.write(trimmedToken);
        } else {
          await store.useForSession(trimmedToken);
        }
        ref.read(backendEndpointProvider.notifier).set(baseUrl);
        ref.invalidate(backendDioProvider);
        ref.invalidate(adminTokenPresentProvider);
      }
      state = ConnectTested(report, saved: saved);
    } on Object catch (error) {
      state = ConnectFailed(toApiException(error));
    }
  }

  /// Removes the stored admin token, leaving the app read-only.
  Future<void> forgetToken() async {
    await ref.read(connectionStoreProvider).clear();
    ref.invalidate(backendDioProvider);
    ref.invalidate(adminTokenPresentProvider);
    state = const ConnectIdle();
  }

  /// Runs the three probe calls against [api]. Throws an [ApiException] when
  /// `getSystem` fails (the backend is unreachable or not ForeSignal).
  static Future<ConnectionReport> probe(
    ForesignalApi api,
    Uri baseUrl, {
    required bool hasToken,
  }) async {
    final Response<SystemInfo> systemResponse;
    try {
      systemResponse = await api.getSystemApi().getSystem();
    } on Object catch (error) {
      throw toApiException(error);
    }
    final system = systemResponse.data;
    if (system == null) {
      throw RequestFailedException(
        RequestFailure.unexpectedReply,
        'The backend answered getSystem with HTTP ${systemResponse.statusCode} and no body.',
        status: systemResponse.statusCode,
      );
    }
    DateTime? serverTime;
    final dateHeader = systemResponse.headers.value('date');
    if (dateHeader != null) {
      try {
        serverTime = HttpDate.parse(dateHeader);
      } on Object {
        serverTime = null;
      }
    }

    Contract? contract;
    ApiException? contractError;
    try {
      contract = await callApiRequired(() => api.getObjectsApi().getContract());
    } on ApiException catch (error) {
      contractError = error;
    }

    var tokenStatus = TokenStatus.missing;
    ServerSettings? serverSettings;
    ApiException? tokenError;
    if (hasToken) {
      try {
        serverSettings = await callApiRequired(() => api.getSettingsApi().getServerSettings());
        tokenStatus = TokenStatus.admin;
      } on ProblemException catch (error) {
        tokenError = error;
        tokenStatus = switch (error.status) {
          401 => TokenStatus.rejected,
          403 => TokenStatus.insufficientScope,
          _ => throw error,
        };
      } on HttpStatusException catch (error) {
        tokenError = error;
        tokenStatus = switch (error.status) {
          401 => TokenStatus.rejected,
          403 => TokenStatus.insufficientScope,
          _ => throw error,
        };
      }
    }

    return ConnectionReport(
      baseUrl: baseUrl,
      system: system,
      contract: contract,
      contractError: contractError,
      serverSettings: serverSettings,
      tokenStatus: tokenStatus,
      tokenError: tokenError,
      versionMatch: compareApiVersion(system.apiVersion),
      serverTime: serverTime,
    );
  }
}

/// The Connect screen's controller.
final connectControllerProvider = NotifierProvider<ConnectController, ConnectState>(
  ConnectController.new,
);
