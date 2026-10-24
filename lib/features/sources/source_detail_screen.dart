import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/format/duration_text.dart';
import '../../core/format/money_text.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../vetting/vetting_providers.dart';
import 'source_config.dart';
import 'source_providers.dart';
import 'source_test_results.dart';
import 'source_widgets.dart';

/// The tabs of the source detail screen.
enum SourceDetailTab {
  /// The descriptor: what the source is.
  overview('Overview'),

  /// The editable settings.
  configuration('Configuration'),

  /// Health and today's usage.
  health('Health & Usage');

  const SourceDetailTab(this.label);

  /// The tab text.
  final String label;
}

/// One source (Screens §B "Source detail & config", mock B2): its descriptor,
/// its settings edited within the descriptor's constraints and saved with
/// `updateSource` then re-read to confirm, and its health. Desktop only.
class SourceDetailScreen extends ConsumerStatefulWidget {
  /// Creates the screen for [sourceId].
  const SourceDetailScreen({super.key, required this.sourceId});

  /// The source shown.
  final String sourceId;

  @override
  ConsumerState<SourceDetailScreen> createState() => _SourceDetailScreenState();
}

class _SourceDetailScreenState extends ConsumerState<SourceDetailScreen> {
  SourceDetailTab _tab = SourceDetailTab.overview;
  bool _toggling = false;
  Object? _toggleError;

  Future<void> _setEnabled(bool enabled) async {
    setState(() {
      _toggling = true;
      _toggleError = null;
    });
    try {
      await ref.read(sourceWritesProvider).setEnabled(widget.sourceId, enabled: enabled);
    } on Object catch (error) {
      if (mounted) {
        setState(() => _toggleError = error);
      }
    } finally {
      if (mounted) {
        setState(() => _toggling = false);
        invalidateSources(ref, widget.sourceId);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final detail = ref.watch(sourceDetailProvider(widget.sourceId));
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<SourceDetail>(
          value: detail,
          onRetry: () => invalidateSources(ref, widget.sourceId),
          data: (d) => _body(context, d),
        ),
      ],
    );
  }

  Widget _body(BuildContext context, SourceDetail detail) {
    final d = detail.descriptor;
    final s = detail.settings;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        PageHeader(
          title: d.name,
          crumbs: <Crumb>[const Crumb('Sources', sourcesPath), Crumb(d.name)],
          titleTrailing: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Switch(
                  key: const Key('source.enabled'),
                  value: s.enabled,
                  onChanged: _toggling ? null : _setEnabled,
                ),
                const SizedBox(width: 6),
                Text(s.enabled ? 'Enabled' : 'Disabled'),
              ],
            ),
            // A disabled source's health is "disabled"; the switch says so.
            if (s.enabled)
              HealthLabel(status: detail.health.status, tooltip: healthTooltip(detail.health)),
          ],
          actions: <Widget>[
            if (d.custom ?? false)
              TonalButton(
                key: const Key('source.pushSetup'),
                label: 'Push setup',
                icon: Icons.upload,
                onPressed: () => context.go(customSourcePath(d.id)),
              ),
            if (d.credentialFields.isNotEmpty)
              TonalButton(
                key: const Key('source.credentials'),
                label: 'Credentials',
                icon: Icons.key,
                onPressed: () => context.go(sourceCredentialsPath(d.id)),
              ),
            FilledButton.icon(
              key: const Key('source.test'),
              onPressed: () => context.go(sourceTestPath(d.id)),
              icon: const Icon(Icons.play_arrow, size: 18),
              label: const Text('Test Source'),
            ),
          ],
        ),
        if (_toggleError case final error?) ...<Widget>[
          ErrorBanner(error: error),
          const SizedBox(height: 16),
        ],
        DefaultTabController(
          length: SourceDetailTab.values.length,
          initialIndex: _tab.index,
          child: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            onTap: (i) => setState(() => _tab = SourceDetailTab.values[i]),
            tabs: <Widget>[
              for (final tab in SourceDetailTab.values)
                Tab(key: Key('source.tab.${tab.name}'), text: tab.label),
            ],
          ),
        ),
        const SizedBox(height: 20),
        switch (_tab) {
          SourceDetailTab.overview => SourceOverview(detail: detail),
          SourceDetailTab.configuration => SourceConfigForm(
            key: ValueKey<String>('config.${detail.descriptor.id}'),
            detail: detail,
          ),
          SourceDetailTab.health => SourceHealthView(health: detail.health),
        },
      ],
    );
  }
}

/// The descriptor, read-only.
class SourceOverview extends StatelessWidget {
  /// Creates the overview of [detail].
  const SourceOverview({super.key, required this.detail});

  /// The source.
  final SourceDetail detail;

  @override
  Widget build(BuildContext context) {
    final d = detail.descriptor;
    final s = detail.settings;
    // us-english-allow-start: `licence` is the contract's own field name.
    final terms = d.licenceTerms;
    // us-english-allow-end
    return _Pair(
      SectionCard(
        title: 'Source information',
        child: KeyValueList(
          entries: <MapEntry<String, Object>>[
            MapEntry<String, Object>('ID', d.id),
            MapEntry<String, Object>('Kind', d.kinds.join(', ')),
            if (d.description case final text? when text.isNotEmpty)
              MapEntry<String, Object>('Description', text),
            MapEntry<String, Object>('Mode', d.mode.name),
            if (d.historyTier case final tier?) MapEntry<String, Object>('History', tier.name),
            MapEntry<String, Object>(
              'Requires credentials',
              d.credentialFields.any((f) => f.required_)
                  ? 'Yes (${d.credentialFields.map((f) => f.name).join(', ')})'
                  : (d.credentialFields.isEmpty ? 'No' : 'Optional'),
            ),
            if (d.defaultInterval != null)
              MapEntry<String, Object>(
                'Default interval',
                displayDurationText(d.defaultInterval),
              ),
            if (d.minInterval != null)
              MapEntry<String, Object>('Minimum interval', displayDurationText(d.minInterval)),
            MapEntry<String, Object>(
              'Default budget',
              '${d.defaultBudget.perMinute}/min, ${d.defaultBudget.perDay}/day',
            ),
            if (d.recordTtl != null)
              MapEntry<String, Object>('Record TTL', displayDurationText(d.recordTtl)),
            if (s.effectiveRetention != null)
              MapEntry<String, Object>(
                'Retention in effect',
                displayDurationText(s.effectiveRetention),
              ),
            if (s.updatedAt case final at?)
              MapEntry<String, Object>('Settings updated', utcText(at)),
          ],
        ),
      ),
      SectionCard(
        title: 'Access and terms',
        child: KeyValueList(
          entries: <MapEntry<String, Object>>[
            if (d.homepage case final url?) MapEntry<String, Object>('Homepage', url),
            if (d.attribution case final text? when text.isNotEmpty)
              MapEntry<String, Object>('Attribution', text),
            // us-english-allow-start: `licence` is the contract's own field name.
            if (d.licence case final id?) MapEntry<String, Object>('License', id),
            // us-english-allow-end
            if (terms?.name case final name?) MapEntry<String, Object>('Terms', name),
            if (d.termsUrl case final url?) MapEntry<String, Object>('Terms URL', url),
            if (d.access case final access?) ...<MapEntry<String, Object>>[
              MapEntry<String, Object>('Access route', access.route.name),
              if (access.fragility case final f?) MapEntry<String, Object>('Fragility', f.name),
            ],
            MapEntry<String, Object>(
              'Egress',
              '${s.egress?.name ?? d.egress?.name ?? 'OPEN'}'
                  '${d.egressOverridable == true ? ' (overridable)' : ''}',
            ),
            MapEntry<String, Object>(
              'Reliability',
              s.reliability?.name ?? d.reliability?.name ?? 'F',
            ),
            MapEntry<String, Object>(
              'Private',
              (s.private ?? d.private ?? false) ? 'Yes' : 'No',
            ),
          ],
        ),
      ),
    );
  }
}

/// Two cards side by side when there is room, stacked when there is not.
class _Pair extends StatelessWidget {
  const _Pair(this.first, this.second);

  final Widget first;
  final Widget second;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) => constraints.maxWidth >= 860
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: first),
              const SizedBox(width: 20),
              Expanded(child: second),
            ],
          )
        : Column(children: <Widget>[first, const SizedBox(height: 20), second]),
  );
}

/// Health and today's usage, read-only.
class SourceHealthView extends StatelessWidget {
  /// Creates the view of [health].
  const SourceHealthView({super.key, required this.health});

  /// The source's health.
  final SourceHealth health;

  @override
  Widget build(BuildContext context) {
    final h = health;
    return _Pair(
      SectionCard(
        title: 'Health',
        child: KeyValueList(
          entries: <MapEntry<String, Object>>[
            MapEntry<String, Object>('Status', HealthLabel(status: h.status)),
            if (h.statusReason case final r? when r.isNotEmpty)
              MapEntry<String, Object>('Reason', r),
            MapEntry<String, Object>('Last attempt', utcText(h.lastAttemptAt)),
            MapEntry<String, Object>('Last success', utcText(h.lastSuccessAt)),
            MapEntry<String, Object>('Last data', utcText(h.lastDataAt)),
            if (h.lastErrorAt != null)
              MapEntry<String, Object>('Last error at', utcText(h.lastErrorAt)),
            if (h.lastError case final e? when e.isNotEmpty)
              MapEntry<String, Object>('Last error', e),
            if (h.lastHttpStatus case final code?)
              MapEntry<String, Object>('Last HTTP status', '$code'),
            MapEntry<String, Object>('Consecutive failures', '${h.consecutiveFailures}'),
            if (h.backoffUntil != null)
              MapEntry<String, Object>('Backing off until', utcText(h.backoffUntil)),
          ],
        ),
      ),
      SectionCard(
        title: 'Usage',
        child: KeyValueList(
          entries: <MapEntry<String, Object>>[
            MapEntry<String, Object>('Requests today', usageText(h.budgetUsedToday, h.budget)),
            if (h.budgetRemainingToday case final n?)
              MapEntry<String, Object>('Remaining today', compactCount(n)),
            if (h.budgetHoursRemaining case final n?)
              MapEntry<String, Object>(
                'Budget lasts',
                '${n.toStringAsFixed(1)} h at the last hour\'s rate',
              ),
            if (h.requestsLastHour case final n?)
              MapEntry<String, Object>('Requests last hour', '$n'),
            if (h.refusedLastHour case final n?)
              MapEntry<String, Object>('Refused last hour', '$n'),
            if (h.errorRateLastHour case final r?)
              MapEntry<String, Object>(
                'Error rate last hour',
                '${(r * 100).toStringAsFixed(1)}%',
              ),
            if (h.bytesLastHour case final n?)
              MapEntry<String, Object>('Bytes last hour', compactCount(n)),
            if (h.lastRecordsSeen case final n?)
              MapEntry<String, Object>('Records last fetch', '$n'),
            if (h.lastRecordsChanged case final n?)
              MapEntry<String, Object>('Changed last fetch', '$n'),
            if (h.spentUsdThisMonth case final n?)
              MapEntry<String, Object>('Spent this month', '\$${n.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}

/// The settings form: every setting the descriptor allows, validated against
/// its constraints, saved with `updateSource` (only what changed) and
/// confirmed by re-reading the source.
class SourceConfigForm extends ConsumerStatefulWidget {
  /// Creates the form over [detail].
  const SourceConfigForm({super.key, required this.detail});

  /// The source as last read.
  final SourceDetail detail;

  @override
  ConsumerState<SourceConfigForm> createState() => _SourceConfigFormState();
}

class _SourceConfigFormState extends ConsumerState<SourceConfigForm> {
  late SourceConfigDraft _draft;
  Map<String, String> _errors = const <String, String>{};
  WriteState _write = const WriteIdle();
  int _generation = 0;

  @override
  void initState() {
    super.initState();
    _reset();
  }

  @override
  void didUpdateWidget(SourceConfigForm oldWidget) {
    super.didUpdateWidget(oldWidget);
    // A re-read (after a save, or a refresh) refills the form; the save's
    // status line stays.
    if (oldWidget.detail != widget.detail) {
      _reset();
    }
  }

  void _reset() {
    _draft = SourceConfigDraft.fromDetail(
      widget.detail,
      ref.read(foresignalApiProvider).serializers,
    );
    _errors = const <String, String>{};
    _generation++;
  }

  Future<void> _save() async {
    final errors = _draft.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final changed = _draft.toUpdate();
    final clears = _draft.clears;
    if (changed == null && clears.isEmpty) {
      setState(() => _write = WriteConfirmed(DateTime.now()));
      return;
    }
    final update = changed ?? SourceSettingsUpdate();
    setState(() => _write = const WriteInProgress());
    try {
      await ref
          .read(sourceWritesProvider)
          .update(
            widget.detail.descriptor.id,
            update,
            clears: clears,
            confirm: (confirmed) => _draft.confirm(update, confirmed, cleared: clears),
          );
      if (!mounted) {
        return;
      }
      setState(() => _write = WriteConfirmed(DateTime.now()));
      invalidateSources(ref, widget.detail.descriptor.id);
    } on Object catch (error) {
      if (!mounted) {
        return;
      }
      setState(() {
        _write = WriteFailed(error);
        if (error is ProblemException) {
          _errors = <String, String>{
            for (final f in error.fieldErrors) f.field: f.message,
          };
        }
      });
    }
  }

  /// Applies [change] to the draft. Editing the field named [key] drops its
  /// stale problem, and any edit retires the last save's outcome, which no
  /// longer describes the form.
  void _edit(void Function() change, [String? key]) => setState(() {
    change();
    if (key != null) {
      _errors = <String, String>{..._errors}..remove(key);
    }
    if (_write is! WriteInProgress) {
      _write = const WriteIdle();
    }
  });

  Widget _text(
    String key,
    String value,
    ValueChanged<String> onChanged, {
    String? hint,
    bool numeric = false,
    int maxLines = 1,
  }) {
    return TextFormField(
      key: ValueKey<String>('config.$key.$_generation'),
      initialValue: value,
      maxLines: maxLines,
      keyboardType: numeric ? TextInputType.number : null,
      inputFormatters: numeric
          ? <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))]
          : null,
      decoration: InputDecoration(hintText: hint, errorText: _errors[key], errorMaxLines: 3),
      onChanged: (v) => _edit(() => onChanged(v), key),
    );
  }

  Widget _switch(String key, bool value, ValueChanged<bool>? onChanged) => Align(
    alignment: Alignment.centerLeft,
    child: Switch(
      key: Key('config.$key'),
      value: value,
      onChanged: onChanged == null ? null : (v) => _edit(() => onChanged(v), key),
    ),
  );

  Widget _dropdown(
    String key,
    String? value,
    List<FilterOption<String>> options,
    ValueChanged<String?> onChanged,
  ) {
    return DropdownButtonFormField<String?>(
      key: ValueKey<String>('config.$key.$_generation'),
      initialValue: value,
      isExpanded: true,
      decoration: InputDecoration(errorText: _errors[key]),
      items: <DropdownMenuItem<String?>>[
        for (final o in options) DropdownMenuItem<String?>(value: o.value, child: Text(o.label)),
      ],
      onChanged: (v) => _edit(() => onChanged(v), key),
    );
  }

  /// The source's own monthly cap in force: as stored, else its default.
  num? _sourceCap() =>
      widget.detail.health.budget?.monthlyCapUsd ??
      widget.detail.settings.budget.monthlyCapUsd ??
      widget.detail.descriptor.defaultBudget.monthlyCapUsd;

  /// The monthly cap of the social platform this source is, if it has one.
  num? _platformCap() {
    final id = widget.detail.descriptor.id;
    for (final p in ref.watch(socialPlatformsProvider).value ?? const <SocialPlatform>[]) {
      if (wireOf(p.id) == id) {
        return p.spend?.monthlyCapUsd;
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final draft = _draft;
    final d = widget.detail.descriptor;
    final muted = AdminPalette.of(context).muted;
    final capHelp = <String>[
      if (d.defaultBudget.monthlyCapUsd case final c?) 'Default ${usdText(c)}',
      // A social platform with a money cap of its own (X): both apply, and
      // the lower one stops the source.
      ?capReasonText(platformCap: _platformCap(), sourceCap: _sourceCap()),
    ].join(' · ');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionCard(
          title: 'Collection',
          child: Column(
            children: <Widget>[
              LabeledField(
                label: 'Enabled',
                field: _switch('enabled', draft.enabled, (v) => draft.enabled = v),
              ),
              if (draft.polled)
                LabeledField(
                  label: 'Polling interval',
                  help: <String>[
                    if (d.minInterval != null) 'At least ${displayDurationText(d.minInterval)}',
                    if (d.defaultInterval != null)
                      'default ${displayDurationText(d.defaultInterval)}',
                  ].join(', '),
                  field: _text('interval', draft.interval, (v) => draft.interval = v, hint: '15m'),
                ),
              LabeledField(
                label: 'Budget (requests/minute)',
                help: 'Default ${d.defaultBudget.perMinute}',
                field: _text(
                  'budget.perMinute',
                  draft.perMinute,
                  (v) => draft.perMinute = v,
                  numeric: true,
                ),
              ),
              LabeledField(
                label: 'Budget (requests/day)',
                help: 'Default ${d.defaultBudget.perDay}',
                field: _text('budget.perDay', draft.perDay, (v) => draft.perDay = v, numeric: true),
              ),
              if (draft.paid)
                LabeledField(
                  label: 'Monthly cap (USD)',
                  help: capHelp.isEmpty ? null : capHelp,
                  field: _text(
                    'budget.monthlyCapUsd',
                    draft.monthlyCapUsd,
                    (v) => draft.monthlyCapUsd = v,
                    numeric: true,
                  ),
                ),
            ],
          ),
        ),
        if (d.params.isNotEmpty) ...<Widget>[
          const SizedBox(height: 20),
          SectionCard(
            title: 'Parameters',
            child: Column(children: <Widget>[for (final p in draft.params) _param(p)]),
          ),
        ],
        const SizedBox(height: 20),
        SectionCard(
          title: 'Storage and sharing',
          child: Column(
            children: <Widget>[
              if (draft.standardHistory)
                LabeledField(
                  label: 'Retention',
                  help: d.defaultRetention == null
                      ? 'Empty uses the default'
                      : 'Default ${displayDurationText(d.defaultRetention)}; empty uses it',
                  field: _text(
                    'retention',
                    draft.retention,
                    (v) => draft.retention = v,
                    hint: d.defaultRetention == null ? '365d' : displayDurationText(d.defaultRetention),
                  ),
                )
              else
                LabeledField(
                  label: 'Downsample interval',
                  help: 'Track sources only; empty clears the override',
                  field: _text(
                    'downsampleInterval',
                    draft.downsampleInterval,
                    (v) => draft.downsampleInterval = v,
                    hint: '1m',
                  ),
                ),
              LabeledField(
                label: 'Region tagging',
                field: _dropdown(
                  'regionTagging',
                  draft.regionTagging,
                  <FilterOption<String>>[
                    if (draft.regionTagging == null) const FilterOption<String>(null, 'Default'),
                    const FilterOption<String>('eager', 'Eager'),
                    const FilterOption<String>('lazy', 'Lazy'),
                    const FilterOption<String>('off', 'Off'),
                  ],
                  (v) => draft.regionTagging = v,
                ),
              ),
              if (draft.embeddable)
                LabeledField(
                  label: 'Semantic search',
                  help: 'Turning this off deletes the source\'s record documents',
                  field: _switch('embed', draft.embed, (v) => draft.embed = v),
                ),
              LabeledField(
                label: 'Include in activity stats',
                field: _switch('statsEnabled', draft.statsEnabled, (v) => draft.statsEnabled = v),
              ),
              LabeledField(
                label: 'Private',
                help: draft.privateByDescriptor
                    ? 'Private by its descriptor'
                    : 'Personal data: kept out of anonymous reads, tiles and egress',
                field: _switch(
                  'private',
                  draft.private,
                  draft.privateByDescriptor ? null : (v) => draft.private = v,
                ),
              ),
              if (draft.private)
                LabeledField(
                  label: 'Stats include private records',
                  field: _switch(
                    'statsIncludePrivate',
                    draft.statsIncludePrivate,
                    (v) => draft.statsIncludePrivate = v,
                  ),
                ),
              if (draft.egressOverridable)
                LabeledField(
                  label: 'Egress',
                  help: 'Descriptor default ${d.egress?.name ?? 'OPEN'}',
                  field: _dropdown(
                    'egress',
                    draft.egress,
                    <FilterOption<String>>[
                      const FilterOption<String>(null, 'Descriptor default'),
                      const FilterOption<String>('OPEN', 'Open'),
                      const FilterOption<String>('LOCAL_ONLY', 'Local only'),
                    ],
                    (v) => draft.egress = v,
                  ),
                ),
              LabeledField(
                label: 'Reliability',
                help: 'Admiralty grade; descriptor default ${d.reliability?.name ?? 'F'}',
                field: _dropdown(
                  'reliability',
                  draft.reliability,
                  <FilterOption<String>>[
                    const FilterOption<String>(null, 'Descriptor default'),
                    for (final grade in const <String>['A', 'B', 'C', 'D', 'E', 'F'])
                      FilterOption<String>(grade, grade),
                  ],
                  (v) => draft.reliability = v,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SectionCard(
          title: 'Ingest policy',
          subtitle: 'Which upstream changes are kept as versions',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              LabeledField(
                label: 'Override the default',
                help: widget.detail.settings.ingestPolicy != null
                    ? 'Switching it off clears the override; the descriptor default applies'
                    : null,
                field: _switch(
                  'overridePolicy',
                  draft.overridePolicy,
                  (v) => draft.overridePolicy = v,
                ),
              ),
              if (!draft.overridePolicy)
                Text(
                  'In effect: ${_policySummary(draft.policyJson(widget.detail.settings.effectiveIngestPolicy))}',
                  style: TextStyle(color: muted),
                )
              else
                ..._policyFields(draft),
            ],
          ),
        ),
        FormActions(
          busy: _write is WriteInProgress,
          onReset: () => setState(() {
            _reset();
            _write = const WriteIdle();
          }),
          onSave: _save,
          leading: <Widget>[WriteStatusLine(state: _write)],
        ),
      ],
    );
  }

  List<Widget> _policyFields(SourceConfigDraft draft) => <Widget>[
    LabeledField(
      label: 'Mode',
      field: _dropdown(
        'ingestPolicy.mode',
        draft.policyMode.wire,
        <FilterOption<String>>[
          for (final m in IngestMode.values) FilterOption<String>(m.wire, m.wire),
        ],
        (v) => draft.policyMode = IngestMode.fromWire(v),
      ),
    ),
    LabeledField(
      label: 'Keyframe',
      help: 'A duration, or none',
      field: _text(
        'ingestPolicy.keyframe',
        draft.policyKeyframe,
        (v) => draft.policyKeyframe = v,
        hint: '240s',
      ),
    ),
    if (draft.policyMode != IngestMode.all) ...<Widget>[
      LabeledField(
        label: 'Minimum interval',
        help: '2 s up to the keyframe',
        field: _text(
          'ingestPolicy.minInterval',
          draft.policyMinInterval,
          (v) => draft.policyMinInterval = v,
          hint: '60s',
        ),
      ),
      LabeledField(
        label: 'Edge minimum interval',
        field: _text(
          'ingestPolicy.edgeMinInterval',
          draft.policyEdgeMinInterval,
          (v) => draft.policyEdgeMinInterval = v,
          hint: '30s',
        ),
      ),
    ],
    if (draft.policyMode == IngestMode.sampled) ...<Widget>[
      LabeledField(
        label: 'Minimum deviation (m)',
        field: _text(
          'ingestPolicy.minDeviationMeters',
          draft.policyMinDeviation,
          (v) => draft.policyMinDeviation = v,
          numeric: true,
        ),
      ),
      LabeledField(
        label: 'Sample on thresholds',
        field: _switch(
          'ingestPolicy.thresholds',
          draft.policyThresholds,
          (v) => draft.policyThresholds = v,
        ),
      ),
    ],
  ];

  Widget _param(ParamDraft p) {
    final key = 'params.${p.spec.name}';
    final label = p.spec.required_ == true ? '${p.spec.name} *' : p.spec.name;
    final Widget field = switch (p.editor) {
      ParamEditor.toggle => _switch(key, p.toggle, (v) => p.toggle = v),
      ParamEditor.choice => _dropdown(key, p.text.isEmpty ? null : p.text, <FilterOption<String>>[
        if (p.text.isEmpty) const FilterOption<String>(null, 'Not set'),
        for (final v in p.spec.allowed!) FilterOption<String>(v, v),
      ], (v) => p.text = v ?? ''),
      ParamEditor.json => _text(key, p.text, (v) => p.text = v, maxLines: 4),
      ParamEditor.integer ||
      ParamEditor.number => _text(key, p.text, (v) => p.text = v, numeric: true),
      _ => _text(
        key,
        p.text,
        (v) => p.text = v,
        hint: p.editor == ParamEditor.list ? 'a, b, c' : null,
      ),
    };
    return LabeledField(label: label, help: p.spec.description, field: field);
  }
}

String _policySummary(Map<String, Object?>? json) {
  if (json == null) {
    return '—';
  }
  return json.entries
      .where((e) => e.value != null)
      .map((e) => e.key == 'mode' ? '${e.value}' : '${e.key} ${e.value}')
      .join(', ');
}
