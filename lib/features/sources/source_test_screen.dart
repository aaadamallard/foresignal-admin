import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import 'source_detail_screen.dart';
import 'source_providers.dart';
import 'source_test_results.dart';
import 'source_validate.dart';

/// The tabs of the test-and-validate screen.
enum SourceTestTab {
  /// `fetchSourceNow` and the fetch log.
  fetch('Fetch Now'),

  /// `probeSource`.
  probe('Probe'),

  /// `runSourceDoctor` and past reports.
  doctor('Doctor'),

  /// `getSourceHealth`.
  health('Health'),

  /// `getSourceUsage`.
  usage('Usage');

  const SourceTestTab(this.label);

  /// The tab text.
  final String label;
}

/// Proves a source pulls → stores → is retrievable (Screens §B "Test &
/// validate", mock B4): fetch now with the per-fetch log, probe, doctor,
/// health and usage, beside a small preview of the newest stored records.
class SourceTestScreen extends ConsumerStatefulWidget {
  /// Creates the screen for [sourceId].
  const SourceTestScreen({super.key, required this.sourceId});

  /// The source.
  final String sourceId;

  @override
  ConsumerState<SourceTestScreen> createState() => _SourceTestScreenState();
}

class _SourceTestScreenState extends ConsumerState<SourceTestScreen> {
  SourceTestTab _tab = SourceTestTab.fetch;

  @override
  Widget build(BuildContext context) {
    final id = widget.sourceId;
    final name = ref.watch(sourceDetailProvider(id)).value?.descriptor.name ?? id;
    return LayoutBuilder(
      builder: (context, constraints) {
        final wide = constraints.maxWidth >= 1100;
        final main = Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DefaultTabController(
              length: SourceTestTab.values.length,
              initialIndex: _tab.index,
              child: TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                onTap: (i) => setState(() => _tab = SourceTestTab.values[i]),
                tabs: <Widget>[
                  for (final tab in SourceTestTab.values)
                    Tab(key: Key('test.tab.${tab.name}'), text: tab.label),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // The three action panels stay mounted while another tab shows, so a
            // fetch, probe or doctor run started on one finishes there: its
            // outcome is still on screen on return, and the lists it changes
            // are re-read.
            for (final (tab, panel) in <(SourceTestTab, Widget)>[
              (SourceTestTab.fetch, FetchNowPanel(sourceId: id)),
              (SourceTestTab.probe, ProbePanel(sourceId: id)),
              (SourceTestTab.doctor, DoctorPanel(sourceId: id)),
            ])
              Offstage(
                key: Key('test.panel.${tab.name}'),
                offstage: _tab != tab,
                child: panel,
              ),
            switch (_tab) {
              SourceTestTab.health => AsyncView<SourceHealth>(
                value: ref.watch(sourceHealthOneProvider(id)),
                onRetry: () => ref.invalidate(sourceHealthOneProvider(id)),
                data: (h) => SourceHealthView(health: h),
              ),
              SourceTestTab.usage => UsagePanel(sourceId: id),
              _ => const SizedBox.shrink(),
            },
          ],
        );
        final records = LatestRecordsCard(sourceId: id);
        return ListView(
          padding: const EdgeInsets.all(28),
          children: <Widget>[
            PageHeader(
              title: 'Test & Validate',
              crumbs: <Crumb>[
                const Crumb('Sources', sourcesPath),
                Crumb(name, sourceDetailPath(id)),
                const Crumb('Test & Validate'),
              ],
            ),
            if (wide)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: main),
                  const SizedBox(width: 20),
                  SizedBox(width: 320, child: records),
                ],
              )
            else ...<Widget>[main, const SizedBox(height: 20), records],
          ],
        );
      },
    );
  }
}

/// Re-reads what a fetch changes.
void _invalidateAfterFetch(WidgetRef ref, String id) {
  ref
    ..invalidate(sourceFetchesProvider(id))
    ..invalidate(sourceRecordsProvider(id))
    ..invalidate(sourceHealthOneProvider(id));
  invalidateSources(ref, id);
}

/// Fetch now (`fetchSourceNow`), its outcome, and the recent fetches.
class FetchNowPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const FetchNowPanel({super.key, required this.sourceId});

  /// The source.
  final String sourceId;

  @override
  ConsumerState<FetchNowPanel> createState() => _FetchNowPanelState();
}

class _FetchNowPanelState extends ConsumerState<FetchNowPanel> {
  bool _busy = false;
  FetchOutcome? _outcome;
  Object? _error;

  Future<void> _fetch() async {
    setState(() {
      _busy = true;
      _outcome = null;
      _error = null;
    });
    try {
      final outcome = await callApiRequired(
        () => ref
            .read(foresignalApiProvider)
            .getSourcesApi()
            .fetchSourceNow(
              sourceId: widget.sourceId,
            ),
      );
      if (mounted) {
        setState(() => _outcome = outcome);
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _error = error);
      }
    } finally {
      if (mounted) {
        setState(() => _busy = false);
        _invalidateAfterFetch(ref, widget.sourceId);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text('Fetch the latest records from this source.', style: TextStyle(color: muted)),
        const SizedBox(height: 12),
        Align(
          alignment: Alignment.centerLeft,
          child: FilledButton.icon(
            key: const Key('test.fetchNow'),
            onPressed: _busy ? null : _fetch,
            icon: _busy
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.download, size: 18),
            label: const Text('Fetch Now'),
          ),
        ),
        const SizedBox(height: 16),
        if (_outcome case final o?) ...<Widget>[
          FetchOutcomeView(outcome: o),
          const SizedBox(height: 16),
        ],
        if (_error case final e?) ...<Widget>[ErrorBanner(error: e), const SizedBox(height: 16)],
        Text('Recent fetches', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        AsyncView<List<FetchLogEntry>>(
          value: ref.watch(sourceFetchesProvider(widget.sourceId)),
          onRetry: () => ref.invalidate(sourceFetchesProvider(widget.sourceId)),
          data: (entries) => FetchLogTable(entries: entries),
        ),
      ],
    );
  }
}

/// Probe (`probeSource`): the raw upstream exchange and the records it
/// parses to, without storing anything.
class ProbePanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const ProbePanel({super.key, required this.sourceId});

  /// The source.
  final String sourceId;

  @override
  ConsumerState<ProbePanel> createState() => _ProbePanelState();
}

class _ProbePanelState extends ConsumerState<ProbePanel> {
  bool _busy = false;
  ProbeResult? _result;
  Object? _error;
  int _seconds = 10;

  Future<void> _probe() async {
    setState(() {
      _busy = true;
      _result = null;
      _error = null;
    });
    try {
      final result = await callApiRequired(
        () => ref
            .read(foresignalApiProvider)
            .getSourcesApi()
            .probeSource(
              sourceId: widget.sourceId,
              seconds: _seconds,
            ),
      );
      if (mounted) {
        setState(() => _result = result);
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _error = error);
      }
    } finally {
      if (mounted) {
        setState(() => _busy = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final streaming =
        wireOfOrNull(ref.watch(sourceDetailProvider(widget.sourceId)).value?.descriptor.mode) == 'streaming';
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Call the upstream once and parse the answer, without storing anything.',
          style: TextStyle(color: muted),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            FilledButton.icon(
              key: const Key('test.probe'),
              onPressed: _busy ? null : _probe,
              icon: const Icon(Icons.network_check, size: 18),
              label: const Text('Probe'),
            ),
            if (streaming)
              FilterDropdown<int>(
                value: _seconds,
                options: const <FilterOption<int>>[
                  FilterOption<int>(5, 'Listen 5 s'),
                  FilterOption<int>(10, 'Listen 10 s'),
                  FilterOption<int>(30, 'Listen 30 s'),
                  FilterOption<int>(60, 'Listen 60 s'),
                ],
                onChanged: (v) => setState(() => _seconds = v ?? 10),
              ),
          ],
        ),
        const SizedBox(height: 16),
        if (_busy) const LinearProgressIndicator(),
        if (_error case final e?) ErrorBanner(error: e),
        if (_result case final r?) ProbeResultView(result: r),
      ],
    );
  }
}

/// The doctor (`runSourceDoctor`, `getDoctorReport`,
/// `listSourceDoctorReports`): run it, read the report, open past ones.
class DoctorPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const DoctorPanel({super.key, required this.sourceId});

  /// The source.
  final String sourceId;

  @override
  ConsumerState<DoctorPanel> createState() => _DoctorPanelState();
}

class _DoctorPanelState extends ConsumerState<DoctorPanel> {
  bool _busy = false;
  String? _runningId;
  DoctorReport? _report;
  Object? _error;
  bool _probe = true;
  String _llm = 'auto';

  Future<void> _run() async {
    setState(() {
      _busy = true;
      _runningId = null;
      _report = null;
      _error = null;
    });
    try {
      final report = await ref
          .read(sourceDoctorProvider)
          .run(
            widget.sourceId,
            DoctorOptions(
              (b) => b
                ..probe = _probe
                ..llm = DoctorOptionsLlmEnum.valueOf(_llm),
            ),
            onRunning: (id) {
              if (mounted) {
                setState(() => _runningId = id);
              }
            },
          );
      if (mounted) {
        setState(() => _report = report);
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _error = error);
      }
    } finally {
      if (mounted) {
        setState(() => _busy = false);
        ref.invalidate(sourceDoctorReportsProvider(widget.sourceId));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Diagnose the source: what changed upstream, and what to do about it.',
          style: TextStyle(color: muted),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 16,
          runSpacing: 12,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            FilledButton.icon(
              key: const Key('test.doctor'),
              onPressed: _busy ? null : _run,
              icon: const Icon(Icons.medical_services_outlined, size: 18),
              label: const Text('Run Doctor'),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Switch(value: _probe, onChanged: (v) => setState(() => _probe = v)),
                const Text('Probe the upstream'),
              ],
            ),
            FilterDropdown<String>(
              value: _llm,
              options: const <FilterOption<String>>[
                FilterOption<String>('auto', 'Explanation: auto'),
                FilterOption<String>('on', 'Explanation: on'),
                FilterOption<String>('off', 'Explanation: off'),
              ],
              onChanged: (v) => setState(() => _llm = v ?? 'auto'),
              width: 200,
            ),
          ],
        ),
        const SizedBox(height: 16),
        if (_busy) ...<Widget>[
          const LinearProgressIndicator(),
          if (_runningId case final id?)
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text('Running ($id)…', style: TextStyle(color: muted)),
            ),
        ],
        if (_error case final e?) ErrorBanner(error: e),
        if (_report case final r?) DoctorReportView(report: r),
        const SizedBox(height: 20),
        Text('Past reports', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        AsyncView<List<DoctorReport>>(
          value: ref.watch(sourceDoctorReportsProvider(widget.sourceId)),
          onRetry: () => ref.invalidate(sourceDoctorReportsProvider(widget.sourceId)),
          data: (reports) => DataTableCard<DoctorReport>(
            rows: reports,
            empty: 'The doctor has not run on this source. Run Doctor runs it.',
            onTap: (r) => setState(() {
              _report = r;
              _error = null;
            }),
            columns: <TableColumnSpec<DoctorReport>>[
              TableColumnSpec<DoctorReport>(label: 'Time', cell: (r) => Text(utcText(r.createdAt))),
              TableColumnSpec<DoctorReport>(label: 'Trigger', cell: (r) => Text(wireShown(r.trigger, r, 'trigger'))),
              TableColumnSpec<DoctorReport>(
                label: 'Status',
                cell: (r) => StatusLabel(label: wireShown(r.status, r, 'status'), tone: doctorTone(r.status)),
              ),
              TableColumnSpec<DoctorReport>(
                label: 'Findings',
                numeric: true,
                cell: (r) => Text('${r.findings.length}'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Usage over a chosen window (`getSourceUsage`).
class UsagePanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const UsagePanel({super.key, required this.sourceId});

  /// The source.
  final String sourceId;

  @override
  ConsumerState<UsagePanel> createState() => _UsagePanelState();
}

class _UsagePanelState extends ConsumerState<UsagePanel> {
  UsageWindow _window = UsageWindow.day;

  @override
  Widget build(BuildContext context) {
    final key = (widget.sourceId, _window);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: FilterDropdown<UsageWindow>(
            key: const Key('test.usageWindow'),
            value: _window,
            options: <FilterOption<UsageWindow>>[
              for (final w in UsageWindow.values) FilterOption<UsageWindow>(w, w.label),
            ],
            onChanged: (v) => setState(() => _window = v ?? UsageWindow.day),
            width: 200,
          ),
        ),
        const SizedBox(height: 16),
        AsyncView<UsageSeries>(
          value: ref.watch(sourceUsageProvider(key)),
          onRetry: () => ref.invalidate(sourceUsageProvider(key)),
          data: (series) => UsageSeriesView(series: series),
        ),
      ],
    );
  }
}

/// The newest stored records (`listRecords?source=`), as proof the source
/// is retrievable.
class LatestRecordsCard extends ConsumerWidget {
  /// Creates the card.
  const LatestRecordsCard({super.key, required this.sourceId});

  /// The source.
  final String sourceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final records = ref.watch(sourceRecordsProvider(sourceId));
    final refresh = IconButton(
      key: const Key('test.refreshRecords'),
      tooltip: 'Refresh',
      icon: const Icon(Icons.refresh, size: 18),
      onPressed: () => ref.invalidate(sourceRecordsProvider(sourceId)),
    );
    return AsyncView<List<Record>>(
      value: records,
      onRetry: () => ref.invalidate(sourceRecordsProvider(sourceId)),
      data: (list) => RecordPreviewList(
        key: const Key('test.records'),
        title: 'Latest records (${list.length})',
        actions: <Widget>[refresh],
        items: <RecordPreviewItem>[
          for (final r in list)
            RecordPreviewItem(
              title: r.title ?? titleOfPayload(r.payload) ?? r.externalId,
              subtitle: '${r.kind} · ${utcText(r.observedAt)}',
            ),
        ],
      ),
    );
  }
}
