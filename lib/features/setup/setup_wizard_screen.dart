import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/connection_store.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../connect/connect_screen.dart';
import '../sources/source_providers.dart';
import '../sources/source_widgets.dart';
import 'setup_data.dart';
import 'setup_wizard_store.dart';

/// One step of the setup wizard.
enum SetupStep {
  /// Point the app at the backend.
  connect('Connect', 'Connect to your backend', 'Enter the backend URL and admin token.'),

  /// `enableCoreSources`.
  coreSources(
    'Enable core sources',
    'Enable the core sources',
    'Turn on the core live-tracking set that runs without any keys.',
  ),

  /// Sources that still need a provider key.
  providerKeys(
    'Set provider keys',
    'Set provider keys',
    'Sources that need an API key before they can run. Keys go straight to the backend vault.',
  ),

  /// Prove the enabled sources work.
  validate(
    'Validate sources',
    'Validate your sources',
    'Check that each enabled source is pulling data.',
  ),

  /// Trigger rules and channels.
  alerts(
    'Configure alerts',
    'Configure alerts',
    'Trigger rules turn signal into alerts; channels deliver them.',
  ),

  /// Native push.
  push(
    'Configure push',
    'Configure push',
    'Native push providers (APNs, FCM) and the devices registered with them.',
  ),

  /// Summary.
  review('Review and finish', 'Review and finish', 'Where your instance stands.');

  const SetupStep(this.label, this.title, this.description);

  /// The stepper label.
  final String label;

  /// The step card title.
  final String title;

  /// The step card description.
  final String description;
}

/// The first-run wizard (Screens.md §A, mock "First-run wizard"): an optional,
/// skippable, re-openable guided path that chains the real screens. Each step
/// shows live backend state and links into the screen that does the work;
/// the wizard itself owns no logic.
class SetupWizardScreen extends ConsumerStatefulWidget {
  /// Creates the wizard.
  const SetupWizardScreen({super.key, this.initialStep = SetupStep.connect});

  /// The step shown first.
  final SetupStep initialStep;

  @override
  ConsumerState<SetupWizardScreen> createState() => _SetupWizardScreenState();
}

class _SetupWizardScreenState extends ConsumerState<SetupWizardScreen> {
  late SetupStep _step = widget.initialStep;

  void _go(SetupStep step) => setState(() => _step = step);

  Future<void> _close(SetupWizardStatus status) async {
    await ref.read(setupWizardStoreProvider).write(status);
    if (mounted) {
      context.go(sourcesPath);
    }
  }

  @override
  Widget build(BuildContext context) {
    const steps = SetupStep.values;
    final index = steps.indexOf(_step);
    final last = index == steps.length - 1;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          PageHeader(
            title: 'Welcome to ForeSignal',
            subtitle: 'Let\'s get your ForeSignal instance configured.',
            actions: <Widget>[
              TextButton(
                key: const Key('setup.skip'),
                onPressed: () => _close(SetupWizardStatus.skipped),
                child: const Text('Skip setup'),
              ),
            ],
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              final stepper = SetupStepper(current: _step, onSelect: _go);
              final card = Card(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Step ${index + 1} of ${steps.length}',
                        style: TextStyle(color: AdminPalette.of(context).muted),
                      ),
                      const SizedBox(height: 6),
                      Text(_step.title, style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: 8),
                      Text(
                        _step.description,
                        style: TextStyle(color: AdminPalette.of(context).muted),
                      ),
                      const SizedBox(height: 20),
                      _StepBody(step: _step),
                      const SizedBox(height: 24),
                      Row(
                        children: <Widget>[
                          OutlinedButton(
                            key: const Key('setup.back'),
                            onPressed: index == 0 ? null : () => _go(steps[index - 1]),
                            child: const Text('Back'),
                          ),
                          const Spacer(),
                          FilledButton(
                            key: const Key('setup.next'),
                            onPressed: last
                                ? () => _close(SetupWizardStatus.completed)
                                : () => _go(steps[index + 1]),
                            child: Text(last ? 'Finish' : 'Next'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
              if (constraints.maxWidth < 760) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[stepper, const SizedBox(height: 16), card],
                );
              }
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 240, child: stepper),
                  const SizedBox(width: 24),
                  Expanded(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 760),
                      child: card,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

/// The mock's vertical stepper: numbered circles joined by a line, the
/// current step in blue. Any step can be opened directly.
class SetupStepper extends StatelessWidget {
  /// Creates the stepper.
  const SetupStepper({super.key, required this.current, required this.onSelect});

  /// The current step.
  final SetupStep current;

  /// Called with the tapped step.
  final ValueChanged<SetupStep> onSelect;

  @override
  Widget build(BuildContext context) {
    final p = AdminPalette.of(context);
    const steps = SetupStep.values;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (var i = 0; i < steps.length; i++)
          InkWell(
            key: Key('setup.step.${steps[i].name}'),
            borderRadius: BorderRadius.circular(8),
            onTap: () => onSelect(steps[i]),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        width: 32,
                        height: 32,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: steps[i] == current ? p.primary : p.tonal,
                        ),
                        child: Text(
                          '${i + 1}',
                          style: TextStyle(
                            color: steps[i] == current ? Colors.white : p.muted,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      if (i < steps.length - 1) Container(width: 2, height: 14, color: p.border),
                    ],
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: i < steps.length - 1 ? 14 : 0),
                      child: Text(
                        steps[i].label,
                        style: TextStyle(
                          color: steps[i] == current
                              ? p.primaryText
                              : p.text.withValues(alpha: 0.8),
                          fontWeight: steps[i] == current ? FontWeight.w600 : FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class _StepBody extends ConsumerWidget {
  const _StepBody({required this.step});

  final SetupStep step;

  @override
  Widget build(BuildContext context, WidgetRef ref) => switch (step) {
    SetupStep.connect => const ConnectForm(),
    SetupStep.coreSources => const CoreSourcesStep(),
    SetupStep.providerKeys => const ProviderKeysStep(),
    SetupStep.validate => const ValidateStep(),
    SetupStep.alerts => const AlertsStep(),
    SetupStep.push => const PushStep(),
    SetupStep.review => const ReviewStep(),
  };
}

/// Step 2: how many sources are on, and `enableCoreSources`.
class CoreSourcesStep extends ConsumerStatefulWidget {
  /// Creates the step.
  const CoreSourcesStep({super.key});

  @override
  ConsumerState<CoreSourcesStep> createState() => _CoreSourcesStepState();
}

class _CoreSourcesStepState extends ConsumerState<CoreSourcesStep> {
  bool _busy = false;
  EnableCoreSourcesResult? _result;
  Object? _error;

  Future<void> _enable() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final api = ref.read(foresignalApiProvider);
      final result = await callApiRequired(() => api.getSourcesApi().enableCoreSources());
      ref.invalidate(sourceListProvider);
      setState(() => _result = result);
    } on ApiException catch (error) {
      setState(() => _error = error);
    } finally {
      if (mounted) {
        setState(() => _busy = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final sources = ref.watch(sourceListProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        AsyncView<List<SourceSummary>>(
          value: sources,
          onRetry: () => ref.invalidate(sourceListProvider),
          data: (list) => KeyValueList(
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>('Sources registered', '${list.length}'),
              MapEntry<String, Object>('Enabled now', '${list.where((s) => s.enabled).length}'),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: FilledButton.icon(
            key: const Key('setup.enableCore'),
            onPressed: _busy ? null : _enable,
            icon: _busy
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.add),
            label: const Text('Enable Core Sources'),
          ),
        ),
        if (_result != null) ...<Widget>[
          const SizedBox(height: 16),
          ResultPanel(
            title: _result!.count == 0
                ? 'Nothing to enable — the core set is already on'
                : 'Enabled ${_result!.count} source${_result!.count == 1 ? '' : 's'}',
            details: <MapEntry<String, Object>>[
              if (_result!.enabled.isNotEmpty)
                MapEntry<String, Object>('Enabled', _result!.enabled.join(', ')),
              MapEntry<String, Object>(
                'Left disabled',
                '${_result!.skipped} (outside the core set, or waiting for a key)',
              ),
            ],
          ),
        ],
        if (_error != null) ...<Widget>[const SizedBox(height: 16), ErrorBanner(error: _error!)],
      ],
    );
  }
}

/// Step 3: sources whose required key is not set, each linking to its
/// credentials screen.
class ProviderKeysStep extends ConsumerWidget {
  /// Creates the step.
  const ProviderKeysStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncView<List<SourceSummary>>(
      value: ref.watch(sourceListProvider),
      onRetry: () => ref.invalidate(sourceListProvider),
      data: (list) {
        final pending = list.where(needsCredentials).toList()
          ..sort(
            (a, b) => a.enabled == b.enabled ? a.name.compareTo(b.name) : (a.enabled ? -1 : 1),
          );
        if (pending.isEmpty) {
          return const ResultPanel(title: 'Every source that needs a key has one');
        }
        return DataTableCard<SourceSummary>(
          rows: pending,
          columns: <TableColumnSpec<SourceSummary>>[
            TableColumnSpec<SourceSummary>(label: 'Source', cell: (s) => Text(s.name)),
            TableColumnSpec<SourceSummary>(
              label: 'Enabled',
              cell: (s) => StatusLabel(
                label: s.enabled ? 'Enabled' : 'Disabled',
                tone: s.enabled ? StatusTone.ok : StatusTone.neutral,
              ),
            ),
            TableColumnSpec<SourceSummary>(
              label: 'Credentials',
              cell: (_) =>
                  const StatusLabel(label: 'Not set', tone: StatusTone.error, showIcon: false),
            ),
            TableColumnSpec<SourceSummary>(
              label: '',
              cell: (s) => TonalButton(
                label: 'Set key',
                onPressed: () => context.go(sourceCredentialsPath(s.id)),
              ),
            ),
          ],
        );
      },
    );
  }
}

/// Step 4: each enabled source's health, linking to its test page.
class ValidateStep extends ConsumerWidget {
  /// Creates the step.
  const ValidateStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncView<List<SourceSummary>>(
      value: ref.watch(sourceListProvider),
      onRetry: () => ref.invalidate(sourceListProvider),
      data: (list) {
        final enabled = list.where((s) => s.enabled).toList()
          ..sort((a, b) => a.name.compareTo(b.name));
        if (enabled.isEmpty) {
          return const ResultPanel(title: 'No source is enabled yet', tone: StatusTone.warning);
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () => ref.invalidate(sourceListProvider),
                icon: const Icon(Icons.refresh, size: 16),
                label: const Text('Refresh'),
              ),
            ),
            DataTableCard<SourceSummary>(
              rows: enabled,
              columns: <TableColumnSpec<SourceSummary>>[
                TableColumnSpec<SourceSummary>(label: 'Source', cell: (s) => Text(s.name)),
                TableColumnSpec<SourceSummary>(
                  label: 'Health',
                  cell: (s) => HealthLabel(status: s.status),
                ),
                TableColumnSpec<SourceSummary>(
                  label: '',
                  cell: (s) =>
                      TonalButton(label: 'Test', onPressed: () => context.go(sourceTestPath(s.id))),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

/// Step 5: trigger rules and channels, linking to their screens.
class AlertsStep extends ConsumerWidget {
  /// Creates the step.
  const AlertsStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncView<AlertingSetup>(
      value: ref.watch(alertingSetupProvider),
      onRetry: () => ref.invalidate(alertingSetupProvider),
      data: (setup) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          KeyValueList(
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>(
                'Trigger rules',
                '${setup.triggers.length} (${setup.enabledTriggers} enabled)',
              ),
              MapEntry<String, Object>(
                'Channels',
                setup.channelsError == null ? '${setup.channels.length}' : 'Needs an admin token',
              ),
            ],
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: <Widget>[
              TonalButton(
                label: 'Trigger rules',
                icon: Icons.rule,
                onPressed: () => context.go(alertTriggersPath),
              ),
              TonalButton(
                label: 'Channels',
                icon: Icons.send,
                onPressed: () => context.go(alertChannelsPath),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Step 6: native push providers and devices, linking to push setup.
class PushStep extends ConsumerWidget {
  /// Creates the step.
  const PushStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncView<PushSetup>(
      value: ref.watch(pushSetupProvider),
      onRetry: () => ref.invalidate(pushSetupProvider),
      data: (setup) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (setup.error != null)
            ErrorBanner(error: setup.error!, title: 'Push settings could not be read')
          else
            KeyValueList(
              entries: <MapEntry<String, Object>>[
                MapEntry<String, Object>(
                  'Providers',
                  setup.providers.isEmpty
                      ? 'None configured'
                      : setup.providers
                            .map((p) => '${p.type.name}${p.enabled ? '' : ' (off)'}')
                            .join(', '),
                ),
                MapEntry<String, Object>('Registered devices', '${setup.devices.length}'),
              ],
            ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: TonalButton(
              label: 'Push settings',
              icon: Icons.notifications,
              onPressed: () => context.go(pushPath),
            ),
          ),
        ],
      ),
    );
  }
}

/// Step 7: one line per area, from the same live reads.
class ReviewStep extends ConsumerWidget {
  /// Creates the step.
  const ReviewStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = ref.watch(backendEndpointProvider);
    final sources = ref.watch(sourceListProvider).asData?.value;
    final alerting = ref.watch(alertingSetupProvider).asData?.value;
    final push = ref.watch(pushSetupProvider).asData?.value;
    return FutureBuilder<String?>(
      future: ref.watch(connectionStoreProvider).read(),
      builder: (context, token) {
        final hasToken = token.data?.isNotEmpty ?? false;
        final enabled = sources?.where((s) => s.enabled).toList();
        final missingKeys = sources?.where(needsCredentials).length;
        final unhealthy = enabled
            ?.where((s) => HealthLabel.toneOf(s.status) != StatusTone.ok)
            .length;
        Widget line(String label, bool? ok, String detail) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: <Widget>[
              SizedBox(width: 170, child: Text(label)),
              StatusLabel(
                label: detail,
                tone: ok == null ? StatusTone.neutral : (ok ? StatusTone.ok : StatusTone.warning),
              ),
            ],
          ),
        );
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            line(
              'Connection',
              url != null && hasToken,
              url == null ? 'Not connected' : (hasToken ? '$url' : '$url (read-only)'),
            ),
            line(
              'Sources',
              enabled?.isNotEmpty,
              enabled == null ? '—' : '${enabled.length} enabled',
            ),
            line(
              'Provider keys',
              missingKeys == null ? null : missingKeys == 0,
              missingKeys == null ? '—' : (missingKeys == 0 ? 'All set' : '$missingKeys missing'),
            ),
            line(
              'Health',
              unhealthy == null ? null : unhealthy == 0,
              unhealthy == null ? '—' : (unhealthy == 0 ? 'All healthy' : '$unhealthy not healthy'),
            ),
            line(
              'Alerts',
              alerting == null
                  ? null
                  : alerting.enabledTriggers > 0 && alerting.channels.isNotEmpty,
              alerting == null
                  ? '—'
                  : '${_count(alerting.enabledTriggers, 'rule')}, ${_count(alerting.channels.length, 'channel')}',
            ),
            line(
              'Push',
              push?.providers.isNotEmpty,
              push == null
                  ? '—'
                  : '${_count(push.providers.length, 'provider')}, ${_count(push.devices.length, 'device')}',
            ),
          ],
        );
      },
    );
  }
}

/// [n] followed by [noun], pluralized with a trailing s when [n] is not 1.
String _count(int n, String noun) => '$n $noun${n == 1 ? '' : 's'}';
