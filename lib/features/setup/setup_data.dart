import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';

/// The alerting state the wizard's "Configure alerts" step reflects: trigger
/// rules (`listTriggers`) and notification channels (`listChannels`, admin),
/// read as JSON (see [jsonCall]): the generated client cannot read a rule
/// with a window.
class AlertingSetup {
  /// Creates the state.
  const AlertingSetup({required this.triggers, required this.channels, this.channelsError});

  /// Every trigger rule.
  final List<Map<String, Object?>> triggers;

  /// Every channel, or empty when they could not be read.
  final List<Map<String, Object?>> channels;

  /// Why channels could not be read (no admin token), if so.
  final ApiException? channelsError;

  /// Rules that are enabled (a rule with no `enabled` flag counts as enabled).
  int get enabledTriggers => triggers.where((t) => t['enabled'] != false).length;
}

/// The wizard's alerting state.
final alertingSetupProvider = FutureProvider<AlertingSetup>((ref) async {
  final dio = ref.watch(backendDioProvider);
  final triggers = await jsonArrayCall(dio, '/v1/triggers');
  try {
    final channels = await jsonArrayCall(dio, '/v1/channels');
    return AlertingSetup(triggers: triggers, channels: channels);
  } on ApiException catch (error) {
    return AlertingSetup(
      triggers: triggers,
      channels: const <Map<String, Object?>>[],
      channelsError: error,
    );
  }
});

/// The push state the wizard's "Configure push" step reflects: native push
/// providers (`listPushProviders`, admin) and registered devices
/// (`listPushDevices`, which always needs a token).
class PushSetup {
  /// Creates the state.
  const PushSetup({required this.providers, required this.devices, this.error});

  /// The configured providers (APNs, FCM).
  final List<PushProvider> providers;

  /// The registered devices.
  final List<PushDevice> devices;

  /// Why push could not be read (no admin token), if so.
  final ApiException? error;
}

/// The wizard's push state.
final pushSetupProvider = FutureProvider<PushSetup>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  try {
    final providers = await callApiRequired(() => api.getPushApi().listPushProviders());
    final devices = await callApiRequired(() => api.getPushApi().listPushDevices());
    return PushSetup(providers: providers.toList(), devices: devices.toList());
  } on ApiException catch (error) {
    return PushSetup(
      providers: const <PushProvider>[],
      devices: const <PushDevice>[],
      error: error,
    );
  }
});

/// Whether [source] still needs a provider key before it can run.
bool needsCredentials(SourceSummary source) =>
    (source.credentialsRequired ?? false) && !(source.credentialsSet ?? false);
