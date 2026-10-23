import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_widgets.dart';
import 'collector_gauges.dart';
import 'settings_drafts.dart';
import 'usage_providers.dart';

/// The collector's pull governor (mock C2): how many polling fetches may
/// pull from upstream at once, 1 to 16 (`getCollectorSettings` /
/// `updateCollectorSettings`), with the governor's live state beside it
/// ([CollectorGauges]). Retries and fetch timeouts are deliberately
/// not here: retries honor each upstream's `Retry-After` on their own, and
/// a timeout belongs to each source's descriptor.
class CollectorPanel extends ConsumerWidget {
  /// Creates the panel.
  const CollectorPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncView<CollectorSettings>(
      value: ref.watch(collectorSettingsProvider),
      onRetry: () => ref.invalidate(collectorSettingsProvider),
      data: (stored) => CollectorForm(stored: stored),
    );
  }
}

/// The governor slider and its save.
class CollectorForm extends ConsumerStatefulWidget {
  /// Creates the form over [stored].
  const CollectorForm({super.key, required this.stored});

  /// The settings as last read.
  final CollectorSettings stored;

  @override
  ConsumerState<CollectorForm> createState() => _CollectorFormState();
}

class _CollectorFormState extends ConsumerState<CollectorForm> {
  late int _pulls = widget.stored.maxConcurrentPulls.clamp(1, 16);
  WriteState _write = const WriteIdle();

  @override
  void didUpdateWidget(CollectorForm old) {
    super.didUpdateWidget(old);
    if (old.stored != widget.stored) {
      _pulls = widget.stored.maxConcurrentPulls.clamp(1, 16);
    }
  }

  Future<void> _save() async {
    final api = ref.read(foresignalApiProvider).getSettingsApi();
    final value = _pulls;
    setState(() => _write = const WriteInProgress());
    try {
      await writeThenConfirm<CollectorSettings>(
        write: () => api.updateCollectorSettings(
          collectorSettings: CollectorSettings((b) => b.maxConcurrentPulls = value),
        ),
        reread: () => callApiRequired(api.getCollectorSettings),
        confirm: (s) =>
            s.maxConcurrentPulls == value ? null : 'sent $value, read back ${s.maxConcurrentPulls}',
      );
      ref.invalidate(collectorSettingsProvider);
      if (mounted) {
        setState(() => _write = WriteConfirmed(DateTime.now()));
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _write = WriteFailed(error));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final stored = widget.stored.maxConcurrentPulls;
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 760),
        child: SectionCard(
          title: 'Collector / load governor',
          subtitle: 'Tune the paced ingestion to this machine.',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              LabeledField(
                label: 'Max concurrent pulls',
                help:
                    'How many polling fetches may pull from upstream at once, across every '
                    'source. Streams are not counted.',
                field: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Slider(
                            key: const Key('collector.slider'),
                            min: 1,
                            max: 16,
                            divisions: 15,
                            value: _pulls.toDouble(),
                            label: '$_pulls',
                            onChanged: (v) => setState(() {
                              _pulls = v.round();
                              _write = const WriteIdle();
                            }),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('1', style: TextStyle(color: palette.muted, fontSize: 12)),
                                Text('16', style: TextStyle(color: palette.muted, fontSize: 12)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      child: Text(
                        '$_pulls',
                        key: const Key('collector.value'),
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              const CollectorGauges(),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  'The change applies at once: a larger value admits waiting fetches '
                  'immediately; a smaller one admits no new pull until enough running ones '
                  'finish. No running pull is interrupted. Per-source intervals, host pacing '
                  'and budgets still apply beneath it.',
                  style: TextStyle(color: palette.muted),
                ),
              ),
              FormActions(
                busy: _write is WriteInProgress,
                onSave: _save,
                onReset: _pulls == stored
                    ? null
                    : () => setState(() {
                        _pulls = stored.clamp(1, 16);
                        _write = const WriteIdle();
                      }),
                leading: <Widget>[WriteStatusLine(state: _write)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// A form over a [SettingsDraft]: one text field per member, validated
/// before it is sent, with the write confirmed by a re-read.
class SettingsDraftForm extends StatefulWidget {
  /// Creates the form.
  const SettingsDraftForm({
    super.key,
    required this.draft,
    required this.onSave,
    this.extra,
    this.extraErrors = const <String>{},
    this.confirmedAt,
    this.onConfirmed,
  });

  /// The draft edited in place.
  final SettingsDraft draft;

  /// Sends the draft and confirms it; throws on failure.
  final Future<void> Function() onSave;

  /// Builds the fields after the draft's own from the current errors (they
  /// write into the draft themselves).
  final List<Widget> Function(Map<String, String> errors)? extra;

  /// Error keys that [extra] shows itself.
  final Set<String> extraErrors;

  /// When the last save was confirmed. The re-read after a save rebuilds the
  /// form from the stored values; this carries its confirmation across.
  final DateTime? confirmedAt;

  /// Called when a save is confirmed.
  final ValueChanged<DateTime>? onConfirmed;

  @override
  State<SettingsDraftForm> createState() => _SettingsDraftFormState();
}

class _SettingsDraftFormState extends State<SettingsDraftForm> {
  Map<String, String> errors = const <String, String>{};
  late WriteState _write = switch (widget.confirmedAt) {
    final at? => WriteConfirmed(at),
    null => const WriteIdle(),
  };

  Future<void> _save() async {
    final found = widget.draft.validate();
    setState(() => errors = found);
    if (found.isNotEmpty) {
      return;
    }
    setState(() => _write = const WriteInProgress());
    try {
      await widget.onSave();
      final at = DateTime.now();
      widget.onConfirmed?.call(at);
      if (mounted) {
        setState(() => _write = WriteConfirmed(at));
      }
    } on Object catch (error) {
      if (!mounted) {
        return;
      }
      setState(() {
        _write = WriteFailed(error);
        if (error is ProblemException) {
          errors = <String, String>{for (final f in error.fieldErrors) f.field: f.message};
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final d = widget.draft;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        for (final f in d.fields)
          LabeledField(
            label: f.label,
            help: f.help,
            field: TextFormField(
              key: Key('settings.${f.key}'),
              initialValue: d.text[f.key],
              decoration: InputDecoration(errorText: errors[f.key], errorMaxLines: 3),
              onChanged: (v) {
                d.text[f.key] = v;
                if (_write is! WriteIdle) {
                  setState(() => _write = const WriteIdle());
                }
              },
            ),
          ),
        ...?widget.extra?.call(errors),
        if (errors.keys.any(
          (k) => !d.fields.any((f) => f.key == k) && !widget.extraErrors.contains(k),
        ))
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              errors.entries
                  .where((e) => !d.fields.any((f) => f.key == e.key))
                  .map((e) => '${e.key}: ${e.value}')
                  .join('\n'),
              style: TextStyle(color: AdminPalette.of(context).error),
            ),
          ),
        FormActions(
          busy: _write is WriteInProgress,
          onSave: _save,
          leading: <Widget>[WriteStatusLine(state: _write)],
        ),
      ],
    );
  }
}

/// Per-class rate limits, requests per minute per client
/// (`getRateLimits` / `updateRateLimits`).
class RateLimitsPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const RateLimitsPanel({super.key});

  @override
  ConsumerState<RateLimitsPanel> createState() => _RateLimitsPanelState();
}

class _RateLimitsPanelState extends ConsumerState<RateLimitsPanel> {
  DateTime? _confirmedAt;

  @override
  Widget build(BuildContext context) {
    return AsyncView<RateLimitSettings>(
      value: ref.watch(rateLimitsProvider),
      onRetry: () => ref.invalidate(rateLimitsProvider),
      // Keyed by value, so the form shows what was read back after a save.
      data: (stored) => RateLimitsForm(
        key: ValueKey<RateLimitSettings>(stored),
        stored: stored,
        confirmedAt: _confirmedAt,
        onConfirmed: (at) => _confirmedAt = at,
      ),
    );
  }
}

/// The rate-limit form over [stored].
class RateLimitsForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const RateLimitsForm({super.key, required this.stored, this.confirmedAt, this.onConfirmed});

  /// The limits as last read.
  final RateLimitSettings stored;

  /// See [SettingsDraftForm.confirmedAt].
  final DateTime? confirmedAt;

  /// See [SettingsDraftForm.onConfirmed].
  final ValueChanged<DateTime>? onConfirmed;

  @override
  ConsumerState<RateLimitsForm> createState() => _RateLimitsFormState();
}

class _RateLimitsFormState extends ConsumerState<RateLimitsForm> {
  late final RateLimitsDraft _draft = RateLimitsDraft(
    widget.stored,
    ref.read(foresignalApiProvider).serializers,
  );

  @override
  Widget build(BuildContext context) {
    final api = ref.watch(foresignalApiProvider);
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 760),
        child: SectionCard(
          title: 'Rate limits',
          subtitle: 'Requests per minute per client: its token, else its feed key, else its IP.',
          child: SettingsDraftForm(
            draft: _draft,
            confirmedAt: widget.confirmedAt,
            onConfirmed: widget.onConfirmed,
            onSave: () async {
              final settings = api.getSettingsApi();
              await writeThenConfirm<RateLimitSettings>(
                write: () =>
                    settings.updateRateLimits(rateLimitSettings: _draft.toModel(api.serializers)),
                reread: () => callApiRequired(settings.getRateLimits),
                confirm: (s) => _draft.confirm(RateLimitsDraft.jsonOf(s, api.serializers)),
              );
              ref.invalidate(rateLimitsProvider);
            },
          ),
        ),
      ),
    );
  }
}

/// Retention windows and run-now (`getRetention` / `updateRetention` /
/// `runRetention`). The update replaces the whole object and takes effect at
/// the next hourly run, or at once with Run Retention Now.
class RetentionPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const RetentionPanel({super.key});

  @override
  ConsumerState<RetentionPanel> createState() => _RetentionPanelState();
}

class _RetentionPanelState extends ConsumerState<RetentionPanel> {
  DateTime? _confirmedAt;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 900),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AsyncView<RetentionSettings>(
              value: ref.watch(retentionProvider),
              onRetry: () => ref.invalidate(retentionProvider),
              data: (stored) => RetentionForm(
                key: ValueKey<RetentionSettings>(stored),
                stored: stored,
                confirmedAt: _confirmedAt,
                onConfirmed: (at) => _confirmedAt = at,
              ),
            ),
            const SizedBox(height: 16),
            const RetentionRunCard(),
          ],
        ),
      ),
    );
  }
}

/// The retention form over [stored].
class RetentionForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const RetentionForm({super.key, required this.stored, this.confirmedAt, this.onConfirmed});

  /// The windows as last read.
  final RetentionSettings stored;

  /// See [SettingsDraftForm.confirmedAt].
  final DateTime? confirmedAt;

  /// See [SettingsDraftForm.onConfirmed].
  final ValueChanged<DateTime>? onConfirmed;

  @override
  ConsumerState<RetentionForm> createState() => _RetentionFormState();
}

class _RetentionFormState extends ConsumerState<RetentionForm> {
  late final RetentionDraft _draft = RetentionDraft(
    widget.stored,
    ref.read(foresignalApiProvider).serializers,
  );

  @override
  Widget build(BuildContext context) {
    final api = ref.watch(foresignalApiProvider);
    return SectionCard(
      title: 'Retention windows',
      subtitle:
          'How long each kind of data is kept. Durations such as 7d, 12h or P30D; at least 1h. '
          'Changes take effect at the next hourly run.',
      child: SettingsDraftForm(
        draft: _draft,
        confirmedAt: widget.confirmedAt,
        onConfirmed: widget.onConfirmed,
        extraErrors: const <String>{'sources', 'kinds'},
        extra: (errors) => <Widget>[
          _OverridesField(
            fieldKey: 'sources',
            label: 'Per-source windows',
            help: 'One "source-id = duration" per line. Not for TRACK sources.',
            initial: _draft.sourceOverrides,
            onChanged: (v) => _draft.sourceOverrides = v,
            hint: 'usgs-earthquakes = 3650d',
            error: errors['sources'],
          ),
          _OverridesField(
            fieldKey: 'kinds',
            label: 'Per-kind windows',
            help: 'One "kind = duration" per line; checked first. STANDARD only.',
            initial: _draft.kindOverrides,
            onChanged: (v) => _draft.kindOverrides = v,
            hint: 'satellite-pass = 365d',
            error: errors['kinds'],
          ),
        ],
        onSave: () async {
          final settings = api.getSettingsApi();
          await writeThenConfirm<RetentionSettings>(
            write: () =>
                settings.updateRetention(retentionSettings: _draft.toModel(api.serializers)),
            reread: () => callApiRequired(settings.getRetention),
            confirm: (s) => _draft.confirm(RetentionDraft.jsonOf(s, api.serializers)),
          );
          ref.invalidate(retentionProvider);
        },
      ),
    );
  }
}

class _OverridesField extends StatelessWidget {
  const _OverridesField({
    required this.fieldKey,
    required this.label,
    required this.help,
    required this.initial,
    required this.onChanged,
    required this.hint,
    this.error,
  });

  final String fieldKey;
  final String label;
  final String help;
  final String initial;
  final ValueChanged<String> onChanged;
  final String hint;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return LabeledField(
      label: label,
      help: help,
      field: TextFormField(
        key: Key('settings.$fieldKey'),
        initialValue: initial,
        minLines: 2,
        maxLines: 8,
        style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
        decoration: InputDecoration(
          hintText: hint,
          errorText: error,
          errorMaxLines: 3,
        ),
        onChanged: onChanged,
      ),
    );
  }
}

/// Runs the retention job now (`runRetention`), after a confirmation, and
/// shows what it deleted.
class RetentionRunCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const RetentionRunCard({super.key});

  @override
  ConsumerState<RetentionRunCard> createState() => _RetentionRunCardState();
}

class _RetentionRunCardState extends ConsumerState<RetentionRunCard> {
  bool _confirming = false;
  bool _running = false;
  RetentionRunResult? _result;
  Object? _error;

  Future<void> _run() async {
    setState(() {
      _confirming = false;
      _running = true;
      _error = null;
    });
    try {
      final api = ref.read(foresignalApiProvider).getSettingsApi();
      final result = await callApiRequired(api.runRetention);
      if (mounted) {
        setState(() => _result = result);
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _error = error);
      }
    } finally {
      if (mounted) {
        setState(() => _running = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final r = _result;
    return SectionCard(
      title: 'Run retention now',
      subtitle: 'Deletes everything older than its window, now instead of at the next hourly run.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            spacing: 10,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              if (!_confirming)
                OutlinedButton.icon(
                  key: const Key('retention.run'),
                  onPressed: _running ? null : () => setState(() => _confirming = true),
                  icon: const Icon(Icons.delete_sweep_outlined, size: 18),
                  label: const Text('Run Retention Now'),
                )
              else ...<Widget>[
                Text(
                  'Expired data is deleted and cannot be recovered.',
                  style: TextStyle(color: AdminPalette.of(context).warning),
                ),
                FilledButton(
                  key: const Key('retention.confirmRun'),
                  style: FilledButton.styleFrom(
                    backgroundColor: AdminPalette.of(context).danger,
                  ),
                  onPressed: _run,
                  child: const Text('Delete Expired Data'),
                ),
                TextButton(
                  onPressed: () => setState(() => _confirming = false),
                  child: const Text('Cancel'),
                ),
              ],
            ],
          ),
          if (_running) ...<Widget>[const SizedBox(height: 12), const LinearProgressIndicator()],
          if (_error case final e?) ...<Widget>[
            const SizedBox(height: 12),
            ErrorBanner(error: e, title: 'Retention did not run'),
          ],
          if (r != null) ...<Widget>[
            const SizedBox(height: 12),
            ResultPanel(
              key: const Key('retention.result'),
              title: 'Retention ran',
              tone: (r.skippedSources?.isNotEmpty ?? false) ? StatusTone.warning : StatusTone.ok,
              details: <MapEntry<String, Object>>[
                if (r.durationMs case final ms?)
                  MapEntry<String, Object>('Duration', '${(ms / 1000).toStringAsFixed(1)} s'),
                MapEntry<String, Object>('Versions deleted', compactCount(r.versionsDeleted)),
                MapEntry<String, Object>(
                  'Heads purged',
                  compactCount(r.headsPurged ?? r.headsDeleted),
                ),
                if (r.alertsDeleted case final n?)
                  MapEntry<String, Object>('Alerts deleted', compactCount(n)),
                if (r.usageRowsDeleted case final n?)
                  MapEntry<String, Object>('Usage rows deleted', compactCount(n)),
                if (r.fetchLogDeleted case final n?)
                  MapEntry<String, Object>('Fetch log deleted', compactCount(n)),
                if (r.notificationsDeleted case final n?)
                  MapEntry<String, Object>('Notifications deleted', compactCount(n)),
                if (r.partitionsDropped case final n?)
                  MapEntry<String, Object>('Partitions dropped', '$n'),
                if (r.skippedSources case final s? when s.isNotEmpty)
                  MapEntry<String, Object>('Skipped after a failed delete', s.join(', ')),
                if (r.consumerClamp?.active ?? false)
                  MapEntry<String, Object>(
                    'Held back for',
                    r.consumerClamp?.consumer ?? 'a consumer cursor',
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
