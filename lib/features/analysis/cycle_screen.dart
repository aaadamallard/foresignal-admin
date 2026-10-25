import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_test_results.dart';
import 'analysis_drafts.dart';
import 'analysis_providers.dart';
import 'analysis_screen.dart';

const Crumb _analysis = Crumb('Analysis', analysisPath);

/// Creates or edits one analysis cycle, starts a run, lists its runs and
/// deletes it (`createAnalysisCycle`, `updateAnalysisCycle`,
/// `runAnalysisCycle`, `listCycleRuns`, `deleteAnalysisCycle`).
class CycleScreen extends ConsumerWidget {
  /// Creates the page; a `null` [cycleId] creates a cycle.
  const CycleScreen({super.key, this.cycleId});

  /// The cycle edited, or `null` to create one.
  final String? cycleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = cycleId;
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        if (id == null) ...<Widget>[
          const PageHeader(title: 'New cycle', crumbs: <Crumb>[_analysis, Crumb('New cycle')]),
          CycleForm(draft: CycleDraft.create()),
        ] else
          AsyncView<AnalysisCycle>(
            value: ref.watch(cycleProvider(id)),
            onRetry: () => ref.invalidate(cycleProvider(id)),
            data: (c) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                PageHeader(
                  title: c.name,
                  crumbs: <Crumb>[_analysis, Crumb(c.name)],
                  subtitle:
                      '${wireLabel(c.cadence, c, 'cadence')} · ${c.schedule.cron} ${c.schedule.timezone}'
                      '${c.enabled ? ' · next ${utcText(c.nextRunAt)}' : ''}',
                  titleTrailing: <Widget>[
                    StatusLabel(
                      key: const Key('cycle.status'),
                      label: c.enabled ? 'Active' : 'Disabled',
                      tone: c.enabled ? StatusTone.ok : StatusTone.neutral,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 880),
                    child: CycleRunsCard(cycle: c),
                  ),
                ),
                const SizedBox(height: 24),
                CycleForm(
                  key: ValueKey<String>('cycle.${c.id}'),
                  draft: CycleDraft.edit(c, ref.read(foresignalApiProvider).serializers),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

/// The cycle form: schedule, roles, scope, limits, notification, and
/// delete for a saved cycle.
class CycleForm extends ConsumerStatefulWidget {
  /// Creates the form over [draft].
  const CycleForm({super.key, required this.draft});

  /// The draft edited.
  final CycleDraft draft;

  @override
  ConsumerState<CycleForm> createState() => _CycleFormState();
}

class _CycleFormState extends ConsumerState<CycleForm> {
  late CycleDraft _d = widget.draft;
  late final Map<String, TextEditingController> _text = <String, TextEditingController>{
    for (final key in const <String>[
      'name',
      'cron',
      'timezone',
      'analystProfileId',
      'forecasterProviders',
      'samples',
      'maxQuestions',
      'maxTokensPerCycle',
      'channelIds',
      'regionCodes',
      'themes',
      'situationIds',
      'hypothesisSetIds',
      'sourceIds',
      'categories',
    ])
      key: TextEditingController(text: _d.text[key] ?? ''),
  };
  Map<String, String> _errors = const <String, String>{};
  WriteState _write = const WriteIdle();
  bool _confirmDelete = false;
  bool _deleting = false;
  Object? _deleteError;

  @override
  void dispose() {
    for (final c in _text.values) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  void didUpdateWidget(CycleForm old) {
    super.didUpdateWidget(old);
    // A save re-reads the cycle: adopt it, keeping the confirmation shown.
    if (widget.draft.stored != old.draft.stored) {
      _d = widget.draft;
      for (final e in _text.entries) {
        e.value.text = _d.text[e.key] ?? '';
      }
    }
  }

  void _changed() {
    if (_write is! WriteIdle) {
      setState(() => _write = const WriteIdle());
    }
  }

  Future<void> _save() async {
    for (final e in _text.entries) {
      _d.text[e.key] = e.value.text;
    }
    final errors = _d.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final assessments = api.getAssessmentsApi();
    final body = _d.toModel(api.serializers);
    setState(() => _write = const WriteInProgress());
    String? id = _d.stored?.id;
    try {
      await writeThenConfirm<AnalysisCycle>(
        write: () async {
          if (id == null) {
            final created = await callApiRequired(
              () => assessments.createAnalysisCycle(analysisCycleInput: body),
            );
            id = created.id;
          } else {
            await assessments.updateAnalysisCycle(cycleId: id!, analysisCycleInput: body);
          }
        },
        reread: () => callApiRequired(() => assessments.getAnalysisCycle(cycleId: id!)),
        confirm: _d.confirm,
      );
      if (!mounted) {
        return;
      }
      setState(() => _write = WriteConfirmed(DateTime.now()));
      ref.invalidate(cyclesProvider);
      if (_d.stored == null) {
        context.go(analysisCyclePath(id!));
      } else {
        ref.invalidate(cycleProvider(id!));
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _write = WriteFailed(e));
      }
    }
  }

  Future<void> _delete() async {
    final id = _d.stored!.id;
    final assessments = ref.read(foresignalApiProvider).getAssessmentsApi();
    setState(() {
      _confirmDelete = false;
      _deleting = true;
      _deleteError = null;
    });
    try {
      await writeThenConfirm<AnalysisCyclePage>(
        write: () => assessments.deleteAnalysisCycle(cycleId: id),
        reread: () => callApiRequired(() => assessments.listAnalysisCycles(limit: 500)),
        confirm: (page) => page.items.any((c) => c.id == id) ? 'the cycle is still listed' : null,
      );
      if (!mounted) {
        return;
      }
      ref.invalidate(cyclesProvider);
      context.go(analysisPath);
    } on Object catch (e) {
      if (mounted) {
        setState(() {
          _deleting = false;
          _deleteError = e;
        });
      }
    }
  }

  Widget _field(String key, String label, {String? help, String? hint}) => LabeledField(
    label: label,
    help: help,
    field: TextField(
      key: Key('cycle.$key'),
      controller: _text[key],
      decoration: InputDecoration(hintText: hint, errorText: _errors[key], errorMaxLines: 3),
      onChanged: (_) => _changed(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final stored = _d.stored;
    final palette = AdminPalette.of(context);
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 880),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SectionCard(
              title: 'Schedule',
              subtitle: 'Saving replaces the whole cycle: an empty field takes its default.',
              child: Column(
                children: <Widget>[
                  _field('name', 'Name'),
                  LabeledField(
                    label: 'Cadence',
                    help: 'The assessment period this cycle produces.',
                    field: DropdownButtonFormField<String>(
                      key: const Key('cycle.cadence'),
                      style: Theme.of(context).textTheme.bodyMedium,
                      initialValue: _d.cadence,
                      items: withCurrentItem(<DropdownMenuItem<String>>[
                        for (final c in const <String>['daily', 'weekly', 'monthly'])
                          DropdownMenuItem<String>(value: c, child: Text(wireText(c))),
                      ], _d.cadence),
                      onChanged: (v) {
                        _d.cadence = v ?? _d.cadence;
                        _changed();
                      },
                    ),
                  ),
                  _field(
                    'cron',
                    'Cron',
                    help: 'Five fields: minute hour day month weekday.',
                    hint: '0 7 * * *',
                  ),
                  _field('timezone', 'Time zone', hint: 'UTC or Europe/London'),
                  SwitchListTile(
                    key: const Key('cycle.enabled'),
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Enabled'),
                    value: _d.enabled,
                    onChanged: (v) => setState(() {
                      _d.enabled = v;
                      _changed();
                    }),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SectionCard(
              title: 'Roles',
              subtitle: 'Which LLM roles take part, in order.',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Wrap(
                    spacing: 8,
                    children: <Widget>[
                      for (final r in cycleRoles)
                        FilterChip(
                          key: Key('cycle.role.$r'),
                          label: Text(wireText(r)),
                          selected: _d.roles.contains(r),
                          onSelected: (on) => setState(() {
                            on ? _d.roles.add(r) : _d.roles.remove(r);
                            _changed();
                          }),
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  _field(
                    'analystProfileId',
                    'Analyst profile',
                    hint: 'A profile id; empty for the default',
                  ),
                  _field(
                    'forecasterProviders',
                    'Forecaster providers',
                    hint: 'Provider ids, comma separated',
                  ),
                  _field('samples', 'Forecast samples', hint: '1 to 7'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SectionCard(
              title: 'Scope',
              subtitle: 'What the cycle looks at. Empty lists mean everything.',
              child: Column(
                children: <Widget>[
                  _field('regionCodes', 'Regions', hint: 'Comma separated'),
                  _field('themes', 'Themes', hint: 'Comma separated'),
                  _field('situationIds', 'Situations', hint: 'Ids, comma separated'),
                  SwitchListTile(
                    key: const Key('cycle.cadenceMatchSets'),
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Hypothesis sets matching this cadence'),
                    value: _d.cadenceMatchSets,
                    onChanged: (v) => setState(() {
                      _d.cadenceMatchSets = v;
                      _changed();
                    }),
                  ),
                  if (!_d.cadenceMatchSets)
                    _field('hypothesisSetIds', 'Hypothesis sets', hint: 'Ids, comma separated'),
                  _field('sourceIds', 'Sources', hint: 'Comma separated'),
                  _field('categories', 'Categories', hint: 'Comma separated'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SectionCard(
              title: 'Limits and notification',
              child: Column(
                children: <Widget>[
                  _field('maxQuestions', 'Maximum questions'),
                  _field('maxTokensPerCycle', 'Maximum tokens per run'),
                  _field('channelIds', 'Notify channels', hint: 'Channel ids, comma separated'),
                  LabeledField(
                    label: 'Notify at priority',
                    field: DropdownButtonFormField<String?>(
                      key: const Key('cycle.notifyMinPriority'),
                      style: Theme.of(context).textTheme.bodyMedium,
                      initialValue: _d.notifyMinPriority,
                      items: withCurrentItem(<DropdownMenuItem<String?>>[
                        const DropdownMenuItem<String?>(child: Text('Default')),
                        for (final p in const <String>['low', 'normal', 'high'])
                          DropdownMenuItem<String?>(value: p, child: Text(wireText(p))),
                      ], _d.notifyMinPriority),
                      onChanged: (v) {
                        _d.notifyMinPriority = v;
                        _changed();
                      },
                    ),
                  ),
                ],
              ),
            ),
            FormActions(
              busy: _write is WriteInProgress,
              saveLabel: stored == null ? 'Create Cycle' : 'Save Changes',
              onSave: _save,
              leading: <Widget>[
                if (stored != null) ...<Widget>[
                  if (!_confirmDelete)
                    DangerButton(
                      key: const Key('cycle.delete'),
                      label: 'Delete Cycle',
                      onPressed: _deleting ? null : () => setState(() => _confirmDelete = true),
                    )
                  else ...<Widget>[
                    DangerButton(
                      key: const Key('cycle.confirmDelete'),
                      label: 'Delete ${stored.name}',
                      onPressed: _delete,
                    ),
                    TextButton(
                      onPressed: () => setState(() => _confirmDelete = false),
                      child: const Text('Cancel'),
                    ),
                  ],
                  const SizedBox(width: 12),
                ],
                if (_errors.isNotEmpty)
                  Text('Fix the marked fields.', style: TextStyle(color: palette.error))
                else
                  WriteStatusLine(state: _write),
              ],
            ),
            if (_deleteError case final e?) ...<Widget>[
              const SizedBox(height: 12),
              ErrorBanner(error: e, title: 'The cycle was not deleted'),
            ],
          ],
        ),
      ),
    );
  }
}

/// A cycle's recent runs and Run Now.
class CycleRunsCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const CycleRunsCard({super.key, required this.cycle});

  /// The cycle.
  final AnalysisCycle cycle;

  @override
  ConsumerState<CycleRunsCard> createState() => _CycleRunsCardState();
}

class _CycleRunsCardState extends ConsumerState<CycleRunsCard> {
  bool _starting = false;
  Object? _refused;

  Future<void> _run() async {
    final id = widget.cycle.id;
    setState(() {
      _starting = true;
      _refused = null;
    });
    try {
      final run = await callApiRequired(
        () => ref.read(foresignalApiProvider).getAssessmentsApi().runAnalysisCycle(cycleId: id),
      );
      if (mounted) {
        context.go(analysisRunPath(run.id));
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _refused = e);
      }
    } finally {
      if (mounted) {
        setState(() => _starting = false);
        ref.invalidate(cycleRunsProvider(id));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final id = widget.cycle.id;
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('cycle.runs'),
      title: 'Runs',
      actions: <Widget>[
        IconButton(
          tooltip: 'Refresh',
          onPressed: () => ref.invalidate(cycleRunsProvider(id)),
          icon: const Icon(Icons.refresh),
        ),
        FilledButton.icon(
          key: const Key('cycle.runNow'),
          onPressed: _starting ? null : _run,
          icon: const Icon(Icons.play_arrow),
          label: Text(_starting ? 'Starting…' : 'Run Now'),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_refused case final e?) ...<Widget>[
            ErrorBanner(error: e, title: 'The run was refused'),
            const SizedBox(height: 12),
          ],
          AsyncView<List<CycleRun>>(
            value: ref.watch(cycleRunsProvider(id)),
            onRetry: () => ref.invalidate(cycleRunsProvider(id)),
            data: (runs) => DataTableCard<CycleRun>(
              rows: runs,
              empty: 'No runs yet.',
              onTap: (r) => context.go(analysisRunPath(r.id)),
              columns: <TableColumnSpec<CycleRun>>[
                TableColumnSpec<CycleRun>(
                  label: 'Started',
                  cell: (r) => Text(utcText(r.startedAt)),
                ),
                TableColumnSpec<CycleRun>(
                  label: 'Period',
                  cell: (r) => Text(
                    '${utcText(r.periodStart)} – ${utcText(r.periodEnd)}',
                    style: TextStyle(color: muted),
                  ),
                ),
                TableColumnSpec<CycleRun>(
                  label: 'Trigger',
                  cell: (r) => Text(wireLabel(r.trigger, r, 'trigger')),
                ),
                TableColumnSpec<CycleRun>(
                  label: 'Status',
                  cell: (r) => StatusLabel(
                    label: wireLabel(r.status, r, 'status'),
                    tone: statusTone(wireOf(r.status, r, 'status')),
                    tooltip: r.error,
                  ),
                ),
                TableColumnSpec<CycleRun>(
                  label: 'Tokens',
                  numeric: true,
                  cell: (r) => Text(r.tokensUsed == null ? '—' : '${r.tokensUsed}'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// One cycle run: what each role did, what the packet held, and any
/// maintenance it ran (`getCycleRun`).
class RunScreen extends ConsumerWidget {
  /// Creates the page for [runId].
  const RunScreen({super.key, required this.runId});

  /// The run shown.
  final String runId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<CycleRun>(
          value: ref.watch(cycleRunProvider(runId)),
          onRetry: () => ref.invalidate(cycleRunProvider(runId)),
          data: (r) {
            final muted = AdminPalette.of(context).muted;
            final packet = r.packet;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                PageHeader(
                  title: 'Run ${r.id}',
                  crumbs: <Crumb>[
                    _analysis,
                    if (r.cycleId case final c?) Crumb('Cycle', analysisCyclePath(c)),
                    const Crumb('Run'),
                  ],
                  subtitle:
                      '${wireLabel(r.cadence, r, 'cadence')} · ${wireLabel(r.trigger, r, 'trigger')} · '
                      '${utcText(r.periodStart)} – ${utcText(r.periodEnd)}',
                  titleTrailing: <Widget>[
                    StatusLabel(
                      key: const Key('run.status'),
                      label: wireLabel(r.status, r, 'status'),
                      tone: statusTone(wireOf(r.status, r, 'status')),
                    ),
                  ],
                  actions: <Widget>[
                    IconButton(
                      tooltip: 'Refresh',
                      onPressed: () => ref.invalidate(cycleRunProvider(runId)),
                      icon: const Icon(Icons.refresh),
                    ),
                  ],
                ),
                if (r.error case final e?) ...<Widget>[
                  ResultPanel(title: 'The run failed', tone: StatusTone.error, message: e),
                  const SizedBox(height: 16),
                ],
                Align(
                  alignment: Alignment.topLeft,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SectionCard(
                          title: 'Summary',
                          child: KeyValueList(
                            entries: <MapEntry<String, Object>>[
                              MapEntry<String, Object>('Started', utcText(r.startedAt)),
                              MapEntry<String, Object>('Finished', utcText(r.finishedAt)),
                              MapEntry<String, Object>(
                                'Tokens used',
                                r.tokensUsed == null ? '—' : '${r.tokensUsed}',
                              ),
                              if (r.assessmentId case final a?)
                                MapEntry<String, Object>('Assessment', a),
                              if (r.previousRunId case final p?)
                                MapEntry<String, Object>(
                                  'Previous run',
                                  TextButton(
                                    key: const Key('run.previous'),
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.centerLeft,
                                    ),
                                    onPressed: () => context.go(analysisRunPath(p)),
                                    child: Text(p),
                                  ),
                                ),
                              if (r.manifestId case final m?)
                                MapEntry<String, Object>('Manifest', m),
                              if (r.warnings case final w? when w.isNotEmpty)
                                MapEntry<String, Object>('Warnings', w.join('\n')),
                            ],
                          ),
                        ),
                        if (r.roles case final roles? when roles.isNotEmpty) ...<Widget>[
                          const SizedBox(height: 16),
                          SectionCard(
                            key: const Key('run.roles'),
                            title: 'Roles',
                            child: DataTableCard<CycleRunRolesInner>(
                              rows: roles.toList(),
                              columns: <TableColumnSpec<CycleRunRolesInner>>[
                                TableColumnSpec<CycleRunRolesInner>(
                                  label: 'Role',
                                  cell: (x) => Text(
                                    wireLabel(x.role, x, 'role'),
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                TableColumnSpec<CycleRunRolesInner>(
                                  label: 'Status',
                                  cell: (x) => StatusLabel(
                                    label: wireLabel(x.status, x, 'status'),
                                    tone: statusTone(wireOf(x.status, x, 'status')),
                                    tooltip: x.reason,
                                  ),
                                ),
                                TableColumnSpec<CycleRunRolesInner>(
                                  label: 'Model',
                                  cell: (x) => Text(
                                    '${x.provider ?? '—'} · ${x.model ?? '—'}'
                                    '${x.effort == null ? '' : ' · ${wireOf(x.effort!, x, 'effort')}'}',
                                  ),
                                ),
                                TableColumnSpec<CycleRunRolesInner>(
                                  label: 'Tokens in / out',
                                  numeric: true,
                                  cell: (x) => Text(
                                    '${x.inputTokens ?? 0} / ${x.outputTokens ?? 0}'
                                    '${(x.cachedTokens ?? 0) > 0 ? ' (${x.cachedTokens} cached)' : ''}',
                                  ),
                                ),
                                TableColumnSpec<CycleRunRolesInner>(
                                  label: 'Output',
                                  cell: (x) => Text(
                                    <String>[
                                      if (x.forecastsSubmitted != null)
                                        '${x.forecastsSubmitted} forecasts',
                                      if (x.proposalIds case final p? when p.isNotEmpty)
                                        '${p.length} proposals',
                                      if (x.warnings case final w? when w.isNotEmpty) w.join('; '),
                                    ].join(' · '),
                                    style: TextStyle(color: muted),
                                  ),
                                ),
                                TableColumnSpec<CycleRunRolesInner>(
                                  label: 'Prompt',
                                  cell: (x) => Text(
                                    x.promptTemplate == null
                                        ? '—'
                                        : '${x.promptTemplate!.id}@${x.promptTemplate!.version}',
                                    style: TextStyle(
                                      color: muted,
                                      fontFamily: 'monospace',
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                        if (packet != null) ...<Widget>[
                          const SizedBox(height: 16),
                          SectionCard(
                            key: const Key('run.packet'),
                            title: 'Packet',
                            subtitle: 'What the roles were given.',
                            child: KeyValueList(
                              entries: <MapEntry<String, Object>>[
                                MapEntry<String, Object>(
                                  'Window',
                                  '${utcText(packet.since)} – ${utcText(packet.until)}',
                                ),
                                MapEntry<String, Object>('Version', packet.version),
                                if (packet.firstRun == true)
                                  const MapEntry<String, Object>('First run', 'Yes'),
                                MapEntry<String, Object>(
                                  'Findings',
                                  '${packet.findings?.length ?? 0}',
                                ),
                                MapEntry<String, Object>(
                                  'Verdicts',
                                  '${packet.verdicts?.length ?? 0}',
                                ),
                                MapEntry<String, Object>(
                                  'Collection gaps',
                                  '${packet.collectionGaps?.length ?? 0}',
                                ),
                                MapEntry<String, Object>(
                                  'Previous judgments',
                                  '${packet.previousJudgments?.length ?? 0}',
                                ),
                                if (packet.truncatedForLlm case final t? when t.isNotEmpty)
                                  MapEntry<String, Object>(
                                    'Shortened for the model',
                                    t.entries.map((e) => '${e.key}: ${e.value}').join(', '),
                                  ),
                              ],
                            ),
                          ),
                        ],
                        if (r.maintenance case final m?) ...<Widget>[
                          const SizedBox(height: 16),
                          SectionCard(
                            title: 'Maintenance',
                            child: MaintenanceRunView(run: m),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
