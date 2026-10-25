import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/format/duration_text.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_test_results.dart';
import 'analysis_drafts.dart';
import 'analysis_providers.dart';

/// The tabs of the Analysis section (mocks E1 and E2).
enum AnalysisTab {
  /// The intelligence board.
  overview('Overview'),

  /// Correlation recipes (E1).
  recipes('Recipes'),

  /// Intelligence events.
  events('Events'),

  /// Scheduled analysis cycles (E2).
  cycles('Cycles'),

  /// Published assessments and feedback.
  assessments('Assessments'),

  /// Confidence calibration (151).
  calibration('Calibration'),

  /// The corroboration policy (154).
  corroboration('Corroboration');

  const AnalysisTab(this.label);

  /// The tab text.
  final String label;
}

/// The tone of an event or board severity.
StatusTone severityTone(Severity s) => switch (wireOf(s)) {
  'critical' => StatusTone.error,
  'warning' => StatusTone.warning,
  _ => StatusTone.info,
};

/// The tone of a status shown by its wire name.
StatusTone statusTone(String wire) => switch (wire) {
  'active' || 'ok' || 'done' || 'pass' || 'healthy' => StatusTone.ok,
  'emerging' || 'partial' || 'digest-only' || 'running' || 'queued' || 'warn' => StatusTone.warning,
  'failed' || 'fail' => StatusTone.error,
  _ => StatusTone.neutral,
};

/// A probability as a percentage.
String percent(num? p) => p == null ? '—' : '${(p * 100).round()}%';

/// Correlation, scheduled analysis, calibration and corroboration (Screens
/// §E, desktop).
class AnalysisScreen extends ConsumerStatefulWidget {
  /// Creates the screen, opening [initialTab].
  const AnalysisScreen({super.key, this.initialTab = AnalysisTab.overview});

  /// The tab shown first.
  final AnalysisTab initialTab;

  @override
  ConsumerState<AnalysisScreen> createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends ConsumerState<AnalysisScreen> {
  late AnalysisTab _tab = widget.initialTab;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: 'Analysis',
          subtitle:
              'How the engine correlates evidence into events, runs scheduled analysis, '
              'and decides what to trust.',
          actions: <Widget>[
            if (_tab == AnalysisTab.recipes)
              FilledButton.icon(
                key: const Key('analysis.newRecipe'),
                onPressed: () => context.go(analysisNewRecipePath),
                icon: const Icon(Icons.add),
                label: const Text('New Recipe'),
              ),
            if (_tab == AnalysisTab.cycles)
              FilledButton.icon(
                key: const Key('analysis.newCycle'),
                onPressed: () => context.go(analysisNewCyclePath),
                icon: const Icon(Icons.add),
                label: const Text('New Cycle'),
              ),
          ],
        ),
        DefaultTabController(
          length: AnalysisTab.values.length,
          initialIndex: _tab.index,
          child: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            onTap: (i) => setState(() => _tab = AnalysisTab.values[i]),
            tabs: <Widget>[
              for (final tab in AnalysisTab.values)
                Tab(key: Key('analysis.tab.${tab.name}'), text: tab.label),
            ],
          ),
        ),
        const SizedBox(height: 20),
        switch (_tab) {
          AnalysisTab.overview => const BoardPanel(),
          AnalysisTab.recipes => const RecipesPanel(),
          AnalysisTab.events => const EventsPanel(),
          AnalysisTab.cycles => const CyclesPanel(),
          AnalysisTab.assessments => const AssessmentsPanel(),
          AnalysisTab.calibration => const CalibrationPanel(),
          AnalysisTab.corroboration => const CorroborationPanel(),
        },
      ],
    );
  }
}

/// The intelligence board (`getIntelBoard`): top situations, band changes,
/// forecasts due, the latest assessments, calibration and benchmarks.
class BoardPanel extends ConsumerWidget {
  /// Creates the panel.
  const BoardPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    Widget none(String text) => Text(text, style: TextStyle(color: muted));
    return AsyncView<IntelBoard>(
      value: ref.watch(intelBoardProvider),
      onRetry: () => ref.invalidate(intelBoardProvider),
      data: (b) {
        final cards = <Widget>[
          SectionCard(
            title: 'Top situations',
            child: b.situations.isEmpty
                ? none('No situations.')
                : Column(
                    children: <Widget>[
                      // Each row opens the situation: why it is warning,
                      // its evidence, assessment and timeline.
                      for (final s in b.situations)
                        InkWell(
                          key: Key('board.situation.${s.id}'),
                          onTap: () => context.go(analysisSituationPath(s.id)),
                          child: _row(
                            context,
                            StatusLabel(label: wireLabel(s.severity, s, 'severity'), tone: severityTone(s.severity)),
                            s.title,
                            s.status == null ? null : wireText(s.status!),
                            link: true,
                          ),
                        ),
                    ],
                  ),
          ),
          SectionCard(
            title: 'Latest assessments',
            child: b.latestAssessments.isEmpty
                ? none('No assessments yet.')
                : Column(
                    children: <Widget>[
                      for (final a in b.latestAssessments)
                        _row(
                          context,
                          Text(
                            wireLabel(a.cadence, a, 'cadence'),
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          a.headline ?? 'No headline',
                          utcText(a.createdAt),
                        ),
                    ],
                  ),
          ),
          SectionCard(
            title: 'Forecasts due in 7 days',
            child: b.forecastsDue.isEmpty
                ? none('None due.')
                : Column(
                    children: <Widget>[
                      for (final f in b.forecastsDue)
                        _row(context, Text(percent(f.probability)), f.title, utcText(f.dueAt)),
                    ],
                  ),
          ),
          SectionCard(
            title: 'Band changes in 24 hours',
            child: b.bandChanges.isEmpty
                ? none('No band changes.')
                : Column(
                    children: <Widget>[
                      for (final c in b.bandChanges)
                        _row(
                          context,
                          Text(percent(c.probability)),
                          c.question ?? c.label ?? c.hypothesisId,
                          '${c.fromTerm == null ? '—' : wireLabel(c.fromTerm!, c, 'fromTerm')} → ${wireLabel(c.toTerm, c, 'toTerm')}',
                        ),
                    ],
                  ),
          ),
        ];
        final calibration = b.calibration;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Generated ${utcText(b.generatedAt)}', style: TextStyle(color: muted)),
            const SizedBox(height: 12),
            LayoutBuilder(
              builder: (context, c) => Wrap(
                spacing: 16,
                runSpacing: 16,
                children: <Widget>[
                  for (final card in cards)
                    SizedBox(
                      width: c.maxWidth >= 900 ? (c.maxWidth - 16) / 2 : c.maxWidth,
                      child: card,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SectionCard(
              title: 'Forecast skill and benchmarks',
              subtitle:
                  'Brier skill over the last ${_days(calibration?.window ?? 'P90D')}, the ensemble '
                  'next to the operator.',
              child: KeyValueList(
                entries: <MapEntry<String, Object>>[
                  MapEntry<String, Object>(
                    'Ensemble',
                    calibration?.ensemble == null
                        ? '—'
                        : 'Brier skill ${calibration!.ensemble!.brierSkill?.toStringAsFixed(3) ?? '—'}'
                              ' · ${calibration.ensemble!.calibration ?? 'no calibration label'}'
                              ' · n = ${calibration.ensemble!.n}',
                  ),
                  MapEntry<String, Object>(
                    'Operator',
                    calibration?.operator_ == null
                        ? '—'
                        : 'Brier skill ${calibration!.operator_!.brierSkill?.toStringAsFixed(3) ?? '—'}'
                              ' · ${calibration.operator_!.calibration ?? 'no calibration label'}'
                              ' · n = ${calibration.operator_!.n}',
                  ),
                  if (b.benchmarks case final benchmarks? when benchmarks.isNotEmpty)
                    MapEntry<String, Object>(
                      'Benchmarks',
                      Wrap(
                        spacing: 12,
                        runSpacing: 6,
                        children: <Widget>[
                          for (final m in benchmarks)
                            StatusLabel(
                              label: '${m.component}: ${wireOf(m.status, m, 'status')}',
                              tone: statusTone(wireOf(m.status, m, 'status')),
                            ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            if (b.truncated case final t? when t.isNotEmpty) ...<Widget>[
              const SizedBox(height: 8),
              Text('Shortened to fit: ${t.join(', ')}', style: TextStyle(color: muted)),
            ],
          ],
        );
      },
    );
  }

  static String _days(String window) {
    final d = parseDurationText(window);
    return d == null ? window : '${d.inDays} days';
  }

  static Widget _row(BuildContext context, Widget lead, String title, String? trailing, {bool link = false}) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Row(
      children: <Widget>[
        SizedBox(width: 96, child: lead),
        Expanded(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: link ? TextStyle(color: AdminPalette.of(context).primaryText) : null,
          ),
        ),
        if (trailing != null) ...<Widget>[
          const SizedBox(width: 12),
          Text(trailing, style: TextStyle(color: AdminPalette.of(context).muted, fontSize: 12)),
        ],
      ],
    ),
  );
}

/// The correlation recipes (mock E1).
class RecipesPanel extends ConsumerWidget {
  /// Creates the panel.
  const RecipesPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    return AsyncView<List<CorrelationRecipe>>(
      value: ref.watch(recipesProvider),
      onRetry: () => ref.invalidate(recipesProvider),
      data: (recipes) => DataTableCard<CorrelationRecipe>(
        key: const Key('analysis.recipes'),
        rows: recipes,
        empty: 'No recipes.',
        onTap: (r) => context.go(analysisRecipePath(r.id)),
        columns: <TableColumnSpec<CorrelationRecipe>>[
          TableColumnSpec<CorrelationRecipe>(
            label: 'Name',
            cell: (r) => Text(r.id, style: const TextStyle(fontWeight: FontWeight.w600)),
          ),
          TableColumnSpec<CorrelationRecipe>(
            label: 'Type',
            cell: (r) => Text(wireLabel(r.definition.type, r.definition, 'type')),
          ),
          TableColumnSpec<CorrelationRecipe>(
            label: 'Seeds',
            cell: (r) => BoundedText(
              <String>[...?r.definition.seed.kinds, ...?r.definition.seed.sources].join(', '),
              maxWidth: 140,
            ),
          ),
          TableColumnSpec<CorrelationRecipe>(
            label: 'Origin',
            cell: (r) => Text(
              r.origin == null
                  ? (r.builtIn == true ? 'Bundled' : 'Operator')
                  : wireLabel(r.origin!, r, 'origin'),
              style: TextStyle(color: muted),
            ),
          ),
          TableColumnSpec<CorrelationRecipe>(
            label: 'Version',
            numeric: true,
            cell: (r) => Text('${r.version}'),
          ),
          TableColumnSpec<CorrelationRecipe>(
            label: 'Status',
            cell: (r) => StatusLabel(
              label: r.lastError != null
                  ? 'Error'
                  : r.enabled
                  ? 'Active'
                  : 'Disabled',
              tone: r.lastError != null
                  ? StatusTone.error
                  : r.enabled
                  ? StatusTone.ok
                  : StatusTone.neutral,
              tooltip: r.lastError ?? r.disabledReason,
            ),
          ),
          TableColumnSpec<CorrelationRecipe>(
            label: 'Last run',
            cell: (r) => Text(utcText(r.lastRunAt), style: TextStyle(color: muted)),
          ),
          TableColumnSpec<CorrelationRecipe>(
            label: 'Actions',
            // An icon, so all eight columns fit a 1280-wide window.
            cell: (r) => IconButton(
              key: Key('analysis.recipe.${r.id}'),
              tooltip: 'Edit & Test',
              onPressed: () => context.go(analysisRecipePath(r.id)),
              icon: const Icon(Icons.edit_outlined, size: 20),
            ),
          ),
        ],
      ),
    );
  }
}

/// Intelligence events, filtered by status and type (`listIntelEvents`).
class EventsPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const EventsPanel({super.key});

  @override
  ConsumerState<EventsPanel> createState() => _EventsPanelState();
}

class _EventsPanelState extends ConsumerState<EventsPanel> {
  EventFilter _filter = const EventFilter(statuses: <String>{'emerging', 'active'});

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Wrap(
          spacing: 8,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            for (final s in const <String>['emerging', 'active', 'resolved', 'dismissed'])
              FilterChip(
                key: Key('analysis.events.status.$s'),
                label: Text(wireText(s)),
                selected: _filter.statuses.contains(s),
                onSelected: (on) => setState(
                  () => _filter = EventFilter(
                    statuses: on
                        ? <String>{..._filter.statuses, s}
                        : (<String>{..._filter.statuses}..remove(s)),
                    type: _filter.type,
                  ),
                ),
              ),
            const SizedBox(width: 12),
            SizedBox(
              width: 240,
              child: DropdownButtonFormField<String?>(
                key: const Key('analysis.events.type'),
                style: Theme.of(context).textTheme.bodyMedium,
                initialValue: _filter.type,
                items: withCurrentItem(<DropdownMenuItem<String?>>[
                  const DropdownMenuItem<String?>(value: null, child: Text('All types')),
                  for (final t in recipeTypes)
                    DropdownMenuItem<String?>(value: t, child: Text(wireText(t))),
                ], _filter.type),
                onChanged: (t) => setState(
                  () => _filter = EventFilter(statuses: _filter.statuses, type: t),
                ),
              ),
            ),
            IconButton(
              tooltip: 'Refresh',
              onPressed: () => ref.invalidate(intelEventsProvider(_filter)),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        const SizedBox(height: 16),
        AsyncView<IntelEventPage>(
          value: ref.watch(intelEventsProvider(_filter)),
          onRetry: () => ref.invalidate(intelEventsProvider(_filter)),
          data: (page) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              DataTableCard<IntelEventSummary>(
                key: const Key('analysis.events'),
                rows: page.items.toList(),
                empty: 'No events match.',
                onTap: (e) => context.go(analysisEventPath(e.id)),
                columns: <TableColumnSpec<IntelEventSummary>>[
                  TableColumnSpec<IntelEventSummary>(
                    label: 'Event',
                    cell: (e) => ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 360),
                      child: Text(e.title, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  TableColumnSpec<IntelEventSummary>(
                    label: 'Type',
                    cell: (e) => Text(wireLabel(e.type, e, 'type'), style: TextStyle(color: muted)),
                  ),
                  TableColumnSpec<IntelEventSummary>(
                    label: 'Status',
                    cell: (e) =>
                        StatusLabel(label: wireLabel(e.status, e, 'status'), tone: statusTone(wireOf(e.status, e, 'status'))),
                  ),
                  TableColumnSpec<IntelEventSummary>(
                    label: 'Severity',
                    cell: (e) =>
                        StatusLabel(label: wireLabel(e.severity, e, 'severity'), tone: severityTone(e.severity)),
                  ),
                  TableColumnSpec<IntelEventSummary>(
                    label: 'Confidence',
                    numeric: true,
                    cell: (e) => Tooltip(
                      message: e.calibrated == true
                          ? 'Calibrated probability'
                          : 'Raw score; not yet calibrated',
                      child: Text('${percent(e.confidence)}${e.calibrated == true ? '' : '*'}'),
                    ),
                  ),
                  TableColumnSpec<IntelEventSummary>(
                    label: 'Evidence',
                    cell: (e) => Text('${wireLabel(e.evidenceQuality, e, 'evidenceQuality')} · ${e.memberCount} members'),
                  ),
                  TableColumnSpec<IntelEventSummary>(
                    label: 'Updated',
                    cell: (e) => Text(utcText(e.updatedAt), style: TextStyle(color: muted)),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                '* a raw score: the scope has too few resolved outcomes to be calibrated.'
                '${page.nextCursor == null ? '' : ' Showing the 100 most recently updated.'}',
                style: TextStyle(color: muted, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// The analysis cycles (mock E2), and run-now of maintenance.
class CyclesPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const CyclesPanel({super.key});

  @override
  ConsumerState<CyclesPanel> createState() => _CyclesPanelState();
}

class _CyclesPanelState extends ConsumerState<CyclesPanel> {
  final Set<String> _running = <String>{};
  final Map<String, Object> _runResults = <String, Object>{};
  bool _maintenanceBusy = false;
  Object? _maintenance;

  Future<void> _run(AnalysisCycle cycle) async {
    setState(() {
      _running.add(cycle.id);
      _runResults.remove(cycle.id);
    });
    try {
      final run = await callApiRequired(
        () =>
            ref.read(foresignalApiProvider).getAssessmentsApi().runAnalysisCycle(cycleId: cycle.id),
      );
      if (mounted) {
        setState(() => _runResults[cycle.id] = run);
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _runResults[cycle.id] = e);
      }
    } finally {
      if (mounted) {
        setState(() => _running.remove(cycle.id));
        ref
          ..invalidate(cyclesProvider)
          ..invalidate(cycleRunsProvider(cycle.id));
      }
    }
  }

  Future<void> _runMaintenance() async {
    setState(() {
      _maintenanceBusy = true;
      _maintenance = null;
    });
    try {
      final run = await callApiRequired(
        () => ref.read(foresignalApiProvider).getAssessmentsApi().runAnalysisMaintenance(),
      );
      if (mounted) {
        setState(() => _maintenance = run);
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _maintenance = e);
      }
    } finally {
      if (mounted) {
        setState(() => _maintenanceBusy = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        AsyncView<List<AnalysisCycle>>(
          value: ref.watch(cyclesProvider),
          onRetry: () => ref.invalidate(cyclesProvider),
          data: (cycles) => DataTableCard<AnalysisCycle>(
            key: const Key('analysis.cycles'),
            rows: cycles,
            empty: 'No cycles.',
            onTap: (c) => context.go(analysisCyclePath(c.id)),
            columns: <TableColumnSpec<AnalysisCycle>>[
              TableColumnSpec<AnalysisCycle>(
                label: 'Name',
                cell: (c) => Text(c.name, style: const TextStyle(fontWeight: FontWeight.w600)),
              ),
              TableColumnSpec<AnalysisCycle>(
                label: 'Schedule',
                cell: (c) => Text(
                  '${wireLabel(c.cadence, c, 'cadence')} · ${c.schedule.cron} ${c.schedule.timezone}',
                ),
              ),
              TableColumnSpec<AnalysisCycle>(
                label: 'Roles',
                cell: (c) => Text(c.roles.map(wireOf).join(', '), style: TextStyle(color: muted)),
              ),
              TableColumnSpec<AnalysisCycle>(
                label: 'Next run',
                cell: (c) => Text(c.enabled ? utcText(c.nextRunAt) : '—'),
              ),
              TableColumnSpec<AnalysisCycle>(
                label: 'Status',
                cell: (c) => StatusLabel(
                  label: c.enabled ? 'Active' : 'Disabled',
                  tone: c.enabled ? StatusTone.ok : StatusTone.neutral,
                ),
              ),
              TableColumnSpec<AnalysisCycle>(
                label: 'Actions',
                cell: (c) => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TonalButton(
                      key: Key('analysis.run.${c.id}'),
                      label: _running.contains(c.id) ? 'Starting…' : 'Run',
                      onPressed: _running.contains(c.id) ? null : () => _run(c),
                    ),
                    const SizedBox(width: 8),
                    if (_runResults[c.id] case final r?)
                      r is CycleRun
                          ? TextButton(
                              key: Key('analysis.runResult.${c.id}'),
                              onPressed: () => context.go(analysisRunPath(r.id)),
                              child: Text('Run ${wireOf(r.status, r, 'status')} · view it'),
                            )
                          : Tooltip(
                              message: r is ApiException ? r.message : '$r',
                              child: const StatusLabel(label: 'Refused', tone: StatusTone.error),
                            ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        SectionCard(
          title: 'Maintenance',
          subtitle:
              'Re-estimation, benchmarks, base rates, refits and weights, run in order; a '
              'failed step does not stop later ones. It also runs with the monthly cycle.',
          actions: <Widget>[
            TonalButton(
              key: const Key('analysis.maintenance'),
              label: 'Run Maintenance',
              icon: Icons.build,
              onPressed: _maintenanceBusy ? null : _runMaintenance,
            ),
          ],
          child: switch (_maintenance) {
            null when _maintenanceBusy => const LinearProgressIndicator(),
            null => Text('Not run from here yet.', style: TextStyle(color: muted)),
            final MaintenanceRun m => MaintenanceRunView(run: m),
            final Object e => ErrorBanner(error: e, title: 'Maintenance was refused'),
          },
        ),
      ],
    );
  }
}

/// A maintenance run and its steps.
class MaintenanceRunView extends StatelessWidget {
  /// Creates the view.
  const MaintenanceRunView({super.key, required this.run});

  /// The run.
  final MaintenanceRun run;

  @override
  Widget build(BuildContext context) {
    return Column(
      key: const Key('analysis.maintenanceRun'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        StatusLabel(
          label: 'Maintenance ${wireOf(run.status, run, 'status')} · started ${utcText(run.startedAt)}',
          tone: statusTone(wireOf(run.status, run, 'status')),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 12,
          runSpacing: 6,
          children: <Widget>[
            for (final s in run.steps)
              Tooltip(
                message: s.error ?? '',
                child: StatusLabel(
                  label: '${wireText(wireOf(s.step, s, 'step'))}: ${wireOf(s.status, s, 'status')}',
                  tone: statusTone(wireOf(s.status, s, 'status')),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

/// Assessments, newest first, with feedback (`listAssessments`,
/// `getLatestAssessment`, `submitAssessmentFeedback`).
class AssessmentsPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const AssessmentsPanel({super.key});

  @override
  ConsumerState<AssessmentsPanel> createState() => _AssessmentsPanelState();
}

class _AssessmentsPanelState extends ConsumerState<AssessmentsPanel> {
  String? _cadence;
  String? _openId;

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(
              width: 220,
              child: DropdownButtonFormField<String?>(
                key: const Key('analysis.assessments.cadence'),
                isExpanded: true,
                style: Theme.of(context).textTheme.bodyMedium,
                initialValue: _cadence,
                items: withCurrentItem(<DropdownMenuItem<String?>>[
                  const DropdownMenuItem<String?>(value: null, child: Text('Every cadence')),
                  for (final c in const <String>['daily', 'weekly', 'monthly', 'on-demand'])
                    DropdownMenuItem<String?>(value: c, child: Text(wireText(c))),
                ], _cadence),
                onChanged: (c) => setState(() {
                  _cadence = c;
                  _openId = null;
                }),
              ),
            ),
            const Spacer(),
            IconButton(
              tooltip: 'Refresh',
              onPressed: () => ref
                ..invalidate(assessmentsProvider(_cadence))
                ..invalidate(latestAssessmentProvider(_cadence)),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        const SizedBox(height: 16),
        AsyncView<Assessment?>(
          value: ref.watch(latestAssessmentProvider(_cadence)),
          onRetry: () => ref.invalidate(latestAssessmentProvider(_cadence)),
          data: (latest) => latest == null
              ? Text('No assessment published yet.', style: TextStyle(color: muted))
              : AssessmentCard(
                  key: ValueKey<String>('latest.${latest.id}'),
                  assessment: latest,
                  latest: true,
                ),
        ),
        const SizedBox(height: 24),
        Text('Earlier', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        AsyncView<List<Assessment>>(
          value: ref.watch(assessmentsProvider(_cadence)),
          onRetry: () => ref.invalidate(assessmentsProvider(_cadence)),
          data: (list) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (list.isEmpty) Text('None.', style: TextStyle(color: muted)),
              for (final a in list.skip(1))
                _openId == a.id
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: AssessmentCard(key: ValueKey<String>('open.${a.id}'), assessment: a),
                      )
                    : Card(
                        child: ListTile(
                          key: Key('analysis.assessment.${a.id}'),
                          title: Text(
                            a.headline ?? 'No headline',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            '${wireLabel(a.cadence, a, 'cadence')} · ${utcText(a.periodStart)} – ${utcText(a.periodEnd)}',
                          ),
                          trailing: StatusLabel(
                            label: wireLabel(a.status, a, 'status'),
                            tone: statusTone(wireOf(a.status, a, 'status')),
                          ),
                          onTap: () => setState(() => _openId = a.id),
                        ),
                      ),
            ],
          ),
        ),
      ],
    );
  }
}

/// One assessment: BLUF judgments, sections, and the feedback form.
class AssessmentCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const AssessmentCard({super.key, required this.assessment, this.latest = false});

  /// The assessment.
  final Assessment assessment;

  /// Whether it is the newest of its cadence.
  final bool latest;

  @override
  ConsumerState<AssessmentCard> createState() => _AssessmentCardState();
}

class _AssessmentCardState extends ConsumerState<AssessmentCard> {
  final TextEditingController _comment = TextEditingController();
  String? _rating;
  bool _sending = false;
  Object? _result;

  @override
  void dispose() {
    _comment.dispose();
    super.dispose();
  }

  Future<void> _send() async {
    final rating = _rating;
    if (rating == null) {
      return;
    }
    setState(() {
      _sending = true;
      _result = null;
    });
    try {
      final api = ref.read(foresignalApiProvider);
      final body =
          api.serializers.deserialize(
                <String, Object?>{
                  'rating': rating,
                  if (_comment.text.trim().isNotEmpty) 'comment': _comment.text.trim(),
                },
                specifiedType: const FullType(AssessmentFeedbackInput),
              )!
              as AssessmentFeedbackInput;
      final recorded = await callApiRequired(
        () => api.getAssessmentsApi().submitAssessmentFeedback(
          assessmentId: widget.assessment.id,
          assessmentFeedbackInput: body,
        ),
      );
      if (mounted) {
        setState(() => _result = recorded);
        _comment.clear();
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _result = e);
      }
    } finally {
      if (mounted) {
        setState(() => _sending = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final a = widget.assessment;
    final palette = AdminPalette.of(context);
    return SectionCard(
      key: Key('analysis.assessmentCard.${a.id}'),
      title: '${widget.latest ? 'Latest' : 'Assessment'} · ${wireLabel(a.cadence, a, 'cadence')}',
      subtitle:
          '${utcText(a.periodStart)} – ${utcText(a.periodEnd)}'
          '${a.model == null ? '' : ' · ${a.model}'}',
      actions: <Widget>[
        StatusLabel(label: wireLabel(a.status, a, 'status'), tone: statusTone(wireOf(a.status, a, 'status'))),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (a.headline case final h?) Text(h, style: Theme.of(context).textTheme.titleSmall),
          if (a.bluf.isNotEmpty) ...<Widget>[
            const SizedBox(height: 8),
            for (final j in a.bluf)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 140,
                      child: Text(
                        j.estimativeTerm == null
                            ? percent(j.probability)
                            : '${wireLabel(j.estimativeTerm!, j, 'estimativeTerm')} (${percent(j.probability)})',
                        style: TextStyle(color: palette.muted, fontSize: 12),
                      ),
                    ),
                    Expanded(child: Text(j.text)),
                  ],
                ),
              ),
          ],
          if (a.sections.isNotEmpty) ...<Widget>[
            const SizedBox(height: 8),
            for (final s in a.sections.where((s) => wireOf(s.key, s, 'key') != 'bluf'))
              ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(s.title),
                subtitle: wireOf(s.textOrigin, s, 'textOrigin') == 'deterministic'
                    ? null
                    : Text(
                        wireOf(s.textOrigin, s, 'textOrigin') == 'mixed'
                            ? 'Partly written by an LLM'
                            : 'Written by an LLM',
                        style: TextStyle(color: palette.muted, fontSize: 12),
                      ),
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SelectableText(s.markdown),
                  ),
                ],
              ),
          ],
          if (a.footer case final f?) ...<Widget>[
            const SizedBox(height: 8),
            Text(f, style: TextStyle(color: palette.muted, fontSize: 12)),
          ],
          const Divider(height: 24),
          Text('Was this useful?', style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: <Widget>[
              for (final (wire, label) in const <(String, String)>[
                ('useful', 'Useful'),
                ('not_useful', 'Not useful'),
                ('wrong', 'Wrong'),
              ])
                ChoiceChip(
                  key: Key('analysis.feedback.$wire'),
                  label: Text(label),
                  selected: _rating == wire,
                  onSelected: (_) => setState(() => _rating = wire),
                ),
            ],
          ),
          const SizedBox(height: 8),
          TextField(
            key: const Key('analysis.feedback.comment'),
            controller: _comment,
            maxLines: 2,
            maxLength: 4000,
            decoration: const InputDecoration(hintText: 'Comment (optional)'),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: switch (_result) {
                  final AssessmentFeedback f => Align(
                    alignment: Alignment.centerLeft,
                    child: StatusChip(
                      key: const Key('analysis.feedback.recorded'),
                      label: 'Recorded ${wireText(wireOf(f.rating, f, 'rating'))} at ${utcText(f.at)}',
                      tone: StatusTone.ok,
                    ),
                  ),
                  final Object e => ErrorBanner(error: e, title: 'Feedback was not recorded'),
                  null => const SizedBox.shrink(),
                },
              ),
              FilledButton(
                key: const Key('analysis.feedback.send'),
                onPressed: _rating == null || _sending ? null : _send,
                child: const Text('Send Feedback'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// How calibrated intelligence confidence is, per scope (151).
class CalibrationPanel extends ConsumerWidget {
  /// Creates the panel.
  const CalibrationPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncView<List<IntelCalibration>>(
      value: ref.watch(intelCalibrationProvider),
      onRetry: () => ref.invalidate(intelCalibrationProvider),
      data: (scopes) => scopes.isEmpty
          ? Text(
              key: const Key('calibration.empty'),
              'No calibration yet: confidence stays raw until resolved events give a scope '
              'a sample.',
              style: TextStyle(color: AdminPalette.of(context).muted),
            )
          : Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          for (final c in scopes) ...<Widget>[
            CalibrationCard(calibration: c),
            const SizedBox(height: 16),
          ],
        ],
      ),
    );
  }
}

/// One scope's calibration: the state, Brier score, sample size and the
/// reliability table, each bin's observed frequency beside its mean forecast.
class CalibrationCard extends StatelessWidget {
  /// Creates the card.
  const CalibrationCard({super.key, required this.calibration});

  /// The scope's calibration.
  final IntelCalibration calibration;

  @override
  Widget build(BuildContext context) {
    final c = calibration;
    final bins = (c.bins ?? BuiltList<IntelCalibrationBinsInner>()).toList();
    return SectionCard(
      key: Key('analysis.calibration.${wireOf(c.scope, c, 'scope')}'),
      title: wireLabel(c.scope, c, 'scope'),
      subtitle: c.calibrated
          ? 'Calibrated: confidence is a probability fitted to resolved outcomes.'
          : 'Not calibrated yet: the raw score is reported until ${c.minSamples} outcomes resolve.',
      actions: <Widget>[
        StatusLabel(
          label: c.calibrated ? 'Calibrated' : 'Uncalibrated',
          tone: c.calibrated ? StatusTone.ok : StatusTone.warning,
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          KeyValueList(
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>(
                'Resolved outcomes',
                c.calibrated
                    ? '${c.sampleN} (${c.minSamples} needed)'
                    : '${c.sampleN} of ${c.minSamples} needed',
              ),
              MapEntry<String, Object>(
                'Brier score',
                c.brier == null
                    ? '—'
                    : '${c.brier!.toStringAsFixed(3)} (lower is better; 0.25 is a coin flip)',
              ),
              MapEntry<String, Object>('Fitted', utcText(c.fittedAt)),
            ],
          ),
          if (bins.isNotEmpty) ...<Widget>[
            const SizedBox(height: 12),
            DataTableCard<IntelCalibrationBinsInner>(
              rows: bins,
              columns: <TableColumnSpec<IntelCalibrationBinsInner>>[
                TableColumnSpec<IntelCalibrationBinsInner>(
                  label: 'Score bin',
                  cell: (b) => Text('${percent(b.lower)} – ${percent(b.upper)}'),
                ),
                TableColumnSpec<IntelCalibrationBinsInner>(
                  label: 'Outcomes',
                  numeric: true,
                  cell: (b) => Text('${b.n ?? 0}'),
                ),
                TableColumnSpec<IntelCalibrationBinsInner>(
                  label: 'Mean forecast',
                  numeric: true,
                  cell: (b) => Text(percent(b.meanForecast)),
                ),
                TableColumnSpec<IntelCalibrationBinsInner>(
                  label: 'Observed',
                  numeric: true,
                  cell: (b) => Text(percent(b.observedFrequency)),
                ),
                TableColumnSpec<IntelCalibrationBinsInner>(
                  label: 'Observed against forecast',
                  cell: (b) => ReliabilityBar(
                    forecast: b.meanForecast?.toDouble(),
                    observed: b.observedFrequency?.toDouble(),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}


/// The corroboration policy (154): when an event is strong or moderate,
/// when a situation activates, and how a lone event looks for corroboration.
class CorroborationPanel extends ConsumerWidget {
  /// Creates the panel.
  const CorroborationPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncView<IntelCorroboration>(
      value: ref.watch(corroborationProvider),
      onRetry: () => ref.invalidate(corroborationProvider),
      data: (stored) =>
          CorroborationForm(key: const ValueKey<String>('corroboration'), stored: stored),
    );
  }
}

/// The corroboration form.
class CorroborationForm extends ConsumerStatefulWidget {
  /// Creates the form over [stored].
  const CorroborationForm({super.key, required this.stored});

  /// The policy as last read.
  final IntelCorroboration stored;

  @override
  ConsumerState<CorroborationForm> createState() => _CorroborationFormState();
}

class _CorroborationFormState extends ConsumerState<CorroborationForm> {
  late CorroborationDraft _draft = CorroborationDraft(
    widget.stored,
    ref.read(foresignalApiProvider).serializers,
  );
  late final Map<String, TextEditingController> _text = <String, TextEditingController>{
    for (final f in CorroborationDraft.fields)
      f.key: TextEditingController(text: _draft.text[f.key]),
  };
  Map<String, String> _errors = const <String, String>{};
  WriteState _write = const WriteIdle();

  @override
  void dispose() {
    for (final c in _text.values) {
      c.dispose();
    }
    super.dispose();
  }

  void _reset() => setState(() {
    _draft = CorroborationDraft(widget.stored, ref.read(foresignalApiProvider).serializers);
    for (final f in CorroborationDraft.fields) {
      _text[f.key]!.text = _draft.text[f.key]!;
    }
    _errors = const <String, String>{};
    _write = const WriteIdle();
  });

  Future<void> _save() async {
    for (final f in CorroborationDraft.fields) {
      _draft.text[f.key] = _text[f.key]!.text;
    }
    final errors = _draft.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    setState(() => _write = const WriteInProgress());
    final api = ref.read(foresignalApiProvider);
    final intel = api.getIntelligenceApi();
    try {
      await writeThenConfirm<IntelCorroboration>(
        write: () =>
            intel.updateIntelCorroboration(intelCorroboration: _draft.toModel(api.serializers)),
        reread: () => callApiRequired(intel.getIntelCorroboration),
        confirm: (got) => _draft.confirm(got, api.serializers),
      );
      if (mounted) {
        setState(() => _write = WriteConfirmed(DateTime.now()));
        ref.invalidate(corroborationProvider);
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _write = WriteFailed(e));
      }
    }
  }

  Widget _group(
    String title,
    String subtitle,
    String group, {
    List<Widget> lead = const <Widget>[],
  }) {
    return SectionCard(
      title: title,
      subtitle: subtitle,
      child: Column(
        children: <Widget>[
          ...lead,
          for (final f in CorroborationDraft.fields.where((f) => f.group == group))
            LabeledField(
              label: f.label,
              field: TextField(
                key: Key('corroboration.${f.key}'),
                controller: _text[f.key],
                decoration: InputDecoration(
                  hintText: 'Default ${f.defaultText}',
                  errorText: _errors[f.key],
                ),
                onChanged: (_) {
                  if (_write is! WriteIdle) {
                    setState(() => _write = const WriteIdle());
                  }
                },
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 820),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Saving replaces the whole policy: an empty field returns to its default.',
              style: TextStyle(color: AdminPalette.of(context).muted),
            ),
            const SizedBox(height: 12),
            _group(
              'Event evidence quality',
              'What a strong or moderate intelligence event needs. Families are distinct signal '
                  'families; groups are independent originators.',
              'eventQuality',
            ),
            const SizedBox(height: 16),
            _group(
              'Situation activation',
              'What moves a situation from emerging to active.',
              'situationActivation',
            ),
            const SizedBox(height: 16),
            _group(
              'Automatic corroboration',
              'A lone agent, analyst or operator event searches for independent observations near '
                  'it in space and time when created.',
              'autoCorroborate',
              lead: <Widget>[
                SwitchListTile(
                  key: const Key('corroboration.autoCorroborate.enabled'),
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Search for corroboration'),
                  value: _draft.autoCorroborate,
                  onChanged: (v) => setState(() {
                    _draft.autoCorroborate = v;
                    _write = const WriteIdle();
                  }),
                ),
              ],
            ),
            FormActions(
              busy: _write is WriteInProgress,
              onSave: _save,
              onReset: _reset,
              leading: <Widget>[WriteStatusLine(state: _write)],
            ),
          ],
        ),
      ),
    );
  }
}
