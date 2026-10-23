import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/device_id.dart';
import '../../core/form_factor.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap;

/// How often presence is refreshed while the app stays in one state.
const Duration presenceInterval = Duration(seconds: 120);

/// How long a report holds (`ttlSeconds`), a little past [presenceInterval]
/// so a live app never lapses.
const int presenceTtlSeconds = 180;

/// Whether this app reports its presence (`updatePresence`). Tests turn it
/// off, so no screen test sees a write it did not make.
final presenceReportingProvider = Provider<bool>((ref) => true);

/// The last presence report: the state sent, when, and the failure if it
/// was refused.
typedef PresenceReport = ({String state, DateTime at, Object? error});

/// The last presence report, or `null` before the first.
class PresenceStatus extends Notifier<PresenceReport?> {
  @override
  PresenceReport? build() => null;

  /// Records a report.
  void record(PresenceReport report) => state = report;
}

/// The last presence report, shown on the notification screens.
final presenceStatusProvider = NotifierProvider<PresenceStatus, PresenceReport?>(PresenceStatus.new);

/// The presence state of an app lifecycle [state]: in front and focused is
/// `active`, visible but unfocused is `idle`, and hidden is `background`.
String presenceStateOf(AppLifecycleState state) => switch (state) {
  AppLifecycleState.resumed => 'active',
  AppLifecycleState.inactive => 'idle',
  _ => 'background',
};

/// Reports this device's presence to the backend while the app runs: on
/// connecting, on every lifecycle change and every [presenceInterval]. While any desktop
/// is active, the backend defers non-critical phone notifications. Presence
/// is best effort: a refusal is recorded in [presenceStatusProvider] and
/// otherwise ignored, and nothing is sent without a backend and a token.
class PresenceReporter extends ConsumerStatefulWidget {
  /// Creates the reporter.
  const PresenceReporter({super.key});

  @override
  ConsumerState<PresenceReporter> createState() => _PresenceReporterState();
}

class _PresenceReporterState extends ConsumerState<PresenceReporter> with WidgetsBindingObserver {
  Timer? _timer;
  String _state = 'active';

  @override
  void initState() {
    super.initState();
    if (!ref.read(presenceReportingProvider)) {
      return;
    }
    WidgetsBinding.instance.addObserver(this);
    final now = WidgetsBinding.instance.lifecycleState;
    _state = now == null ? 'active' : presenceStateOf(now);
    _timer = Timer.periodic(presenceInterval, (_) => unawaited(_report()));
    unawaited(_report());
  }

  @override
  void dispose() {
    _timer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final next = presenceStateOf(state);
    if (next != _state) {
      _state = next;
      unawaited(_report());
    }
  }

  Future<void> _report() async {
    if (ref.read(backendEndpointProvider) == null) {
      return;
    }
    final token = await ref.read(adminTokenStoreProvider).read();
    if (token == null || token.isEmpty || !mounted) {
      return;
    }
    final state = _state;
    final kind = ref.read(formFactorProvider) == FormFactor.desktop ? 'desktop' : 'mobile';
    Object? error;
    try {
      final api = ref.read(foresignalApiProvider);
      final deviceId = await ref.read(deviceIdProvider.future);
      await callApiRequired(
        () => api.getNotificationsApi().updatePresence(
          clientPresenceInput: fromJsonMap<ClientPresenceInput>(api.serializers, <String, Object?>{
            'kind': kind,
            'state': state,
            'ttlSeconds': presenceTtlSeconds,
          }),
          foresignalDeviceId: deviceId,
        ),
      );
    } on Object catch (e) {
      error = e;
    }
    if (mounted) {
      ref.read(presenceStatusProvider.notifier).record((state: state, at: DateTime.now(), error: error));
    }
  }

  @override
  Widget build(BuildContext context) {
    // A new connection is reported at once rather than at the next tick.
    ref.listen<Uri?>(backendEndpointProvider, (previous, next) {
      if (next != null && next != previous && _timer != null) {
        unawaited(_report());
      }
    });
    return const SizedBox.shrink();
  }
}
