import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:flutter/material.dart';

import '../../api/api.dart';
import '../../core/format/display_zone.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import 'source_widgets.dart';

/// An instant as `2026-10-22 16:30:00` in UTC, or, once the signed-in
/// user's timezone is known, in that zone with its abbreviation (see
/// [DisplayZone]); `—` for `null`.
String utcText(DateTime? t) => t == null ? '—' : DisplayZone.format(t);

/// [ms] as `340 ms` or `3.4 s`.
String durationMsText(int? ms) {
  if (ms == null) {
    return '—';
  }
  return ms < 1000 ? '$ms ms' : '${(ms / 1000).toStringAsFixed(1)} s';
}

/// The outcome of `fetchSourceNow`, as mock B4's green "Fetch completed".
class FetchOutcomeView extends StatelessWidget {
  /// Creates the view of [outcome].
  const FetchOutcomeView({super.key, required this.outcome});

  /// The outcome.
  final FetchOutcome outcome;

  @override
  Widget build(BuildContext context) {
    final o = outcome;
    return ResultPanel(
      key: const Key('test.fetchOutcome'),
      title: o.success ? 'Fetch completed' : 'Fetch failed',
      tone: o.success ? StatusTone.ok : StatusTone.error,
      message: o.error,
      details: <MapEntry<String, Object>>[
        MapEntry<String, Object>('Started', utcText(o.startedAt)),
        MapEntry<String, Object>('Records fetched', '${o.recordsSeen}'),
        MapEntry<String, Object>('Persisted', '${o.persisted ?? o.recordsChanged}'),
        if (o.live case final n? when n > 0) MapEntry<String, Object>('Live updates', '$n'),
        if (o.rejected case final n? when n > 0) MapEntry<String, Object>('Rejected', '$n'),
        if (o.skipped case final n? when n > 0) MapEntry<String, Object>('Skipped', '$n'),
        if (o.late_ case final n? when n > 0) MapEntry<String, Object>('Late', '$n'),
        MapEntry<String, Object>('Duration', durationMsText(o.durationMs)),
        if (o.fetchId case final id?) MapEntry<String, Object>('Fetch id', '$id'),
      ],
    );
  }
}

/// The outcome of `probeSource`: the upstream requests (URLs redacted by the
/// backend) and the records they parse to.
class ProbeResultView extends StatelessWidget {
  /// Creates the view; [compact] shows only the verdict.
  const ProbeResultView({super.key, required this.result, this.compact = false});

  /// The probe result.
  final ProbeResult result;

  /// Whether to leave out the request and record tables.
  final bool compact;

  /// Whether every request answered 2xx and the body parsed.
  static bool passed(ProbeResult r) =>
      r.parseError == null &&
      r.requests.isNotEmpty &&
      r.requests.every((q) => (q.status ?? 0) >= 200 && (q.status ?? 0) < 300);

  @override
  Widget build(BuildContext context) {
    final r = result;
    final ok = passed(r);
    final last = r.requests.isEmpty ? null : r.requests.last;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ResultPanel(
          key: const Key('test.probeResult'),
          title: ok ? 'Probe succeeded' : 'Probe found a problem',
          tone: ok ? StatusTone.ok : StatusTone.error,
          message: r.parseError ?? (r.requests.isEmpty ? 'The probe made no request.' : null),
          details: <MapEntry<String, Object>>[
            MapEntry<String, Object>('Requests', '${r.requests.length}'),
            if (last?.status case final status?) MapEntry<String, Object>('Last status', '$status'),
            MapEntry<String, Object>('Records parsed', '${r.records.length}'),
          ],
        ),
        if (!compact && r.requests.isNotEmpty) ...<Widget>[
          const SizedBox(height: 16),
          DataTableCard<ProbeResultRequestsInner>(
            rows: r.requests.toList(),
            columns: <TableColumnSpec<ProbeResultRequestsInner>>[
              TableColumnSpec<ProbeResultRequestsInner>(
                label: 'Method',
                cell: (q) => Text(q.method ?? '—'),
              ),
              TableColumnSpec<ProbeResultRequestsInner>(
                label: 'URL (redacted)',
                cell: (q) => ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 420),
                  child: Text(q.url ?? '—', overflow: TextOverflow.ellipsis),
                ),
              ),
              TableColumnSpec<ProbeResultRequestsInner>(
                label: 'Status',
                cell: (q) => Text('${q.status ?? '—'}'),
              ),
              TableColumnSpec<ProbeResultRequestsInner>(
                label: 'Type',
                cell: (q) => Text(q.contentType ?? '—'),
              ),
              TableColumnSpec<ProbeResultRequestsInner>(
                label: 'Bytes',
                cell: (q) => Text(q.bytes == null ? '—' : byteText(q.bytes!)),
              ),
              TableColumnSpec<ProbeResultRequestsInner>(
                label: 'Time',
                cell: (q) => Text(durationMsText(q.durationMs)),
              ),
            ],
          ),
        ],
        if (!compact && r.records.isNotEmpty) ...<Widget>[
          const SizedBox(height: 16),
          RecordPreviewList(
            title: 'Parsed records (${r.records.length})',
            items: <RecordPreviewItem>[
              for (final p in r.records.take(12))
                RecordPreviewItem(
                  title: titleOfPayload(p.payload) ?? p.externalId,
                  subtitle: '${p.kind} · ${utcText(p.observedAt)}',
                ),
            ],
          ),
        ],
      ],
    );
  }
}

/// A display title from a record payload, if it carries one.
String? titleOfPayload(Object? payload) {
  final map = payload is BuiltMap ? payload.asMap() : payload;
  if (map is! Map) {
    return null;
  }
  final payload_ = map;
  for (final key in const <String>['title', 'name', 'headline', 'place']) {
    final value = payload_[key];
    final text = value is JsonObject ? value.value : value;
    if (text is String && text.isNotEmpty) {
      return text;
    }
  }
  return null;
}

/// One row of a small record preview.
class RecordPreviewItem {
  /// Creates the row.
  const RecordPreviewItem({required this.title, required this.subtitle});

  /// The record's title (or external id).
  final String title;

  /// Kind and time.
  final String subtitle;
}

/// A short list of records, as mock B4's "Sample records" column. It exists
/// to prove a source stores retrievable data, not to explore it.
class RecordPreviewList extends StatelessWidget {
  /// Creates the list.
  const RecordPreviewList({
    super.key,
    required this.title,
    required this.items,
    this.actions = const <Widget>[],
  });

  /// The card title.
  final String title;

  /// The rows.
  final List<RecordPreviewItem> items;

  /// Card actions (a refresh button).
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      title: title,
      actions: actions,
      child: items.isEmpty
          ? Text('No records yet.', style: TextStyle(color: muted))
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                for (final item in items)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(item.title, maxLines: 2, overflow: TextOverflow.ellipsis),
                        const SizedBox(height: 2),
                        Text(item.subtitle, style: TextStyle(color: muted, fontSize: 12)),
                      ],
                    ),
                  ),
              ],
            ),
    );
  }
}

/// The per-fetch provenance log (`listSourceFetches`).
class FetchLogTable extends StatelessWidget {
  /// Creates the table of [entries].
  const FetchLogTable({super.key, required this.entries});

  /// The fetches, newest first.
  final List<FetchLogEntry> entries;

  static StatusTone _tone(FetchLogEntryStatusEnum s) => switch (wireOf(s)) {
    'OK' => StatusTone.ok,
    'NOT_MODIFIED' => StatusTone.neutral,
    'FAILED' => StatusTone.error,
    _ => StatusTone.warning,
  };

  @override
  Widget build(BuildContext context) {
    return DataTableCard<FetchLogEntry>(
      rows: entries,
      empty: 'No fetches recorded yet.',
      columns: <TableColumnSpec<FetchLogEntry>>[
        TableColumnSpec<FetchLogEntry>(label: 'Time', cell: (f) => Text(utcText(f.startedAt))),
        TableColumnSpec<FetchLogEntry>(label: 'Trigger', cell: (f) => Text(wireShown(f.trigger, f, 'trigger'))),
        TableColumnSpec<FetchLogEntry>(
          label: 'Status',
          cell: (f) => StatusLabel(
            label: wireShown(f.status, f, 'status'),
            tone: _tone(f.status),
            showIcon: false,
            tooltip: f.error,
          ),
        ),
        TableColumnSpec<FetchLogEntry>(label: 'HTTP', cell: (f) => Text('${f.httpStatus ?? '—'}')),
        TableColumnSpec<FetchLogEntry>(
          label: 'Records',
          numeric: true,
          cell: (f) => Text('${f.recordsSeen ?? 0}'),
        ),
        TableColumnSpec<FetchLogEntry>(
          label: 'Versions',
          numeric: true,
          cell: (f) => Text('${f.versionsWritten ?? 0}'),
        ),
        TableColumnSpec<FetchLogEntry>(
          label: 'Bytes',
          numeric: true,
          cell: (f) => Text(f.bytes == null ? '—' : byteText(f.bytes!)),
        ),
      ],
    );
  }
}

/// The verdict tone of a doctor report.
StatusTone doctorTone(DoctorReportStatusEnum status) => switch (wireOf(status)) {
  'OK' => StatusTone.ok,
  'DEGRADED_INFO' => StatusTone.warning,
  _ => StatusTone.error,
};

/// A doctor report: the verdict, each finding with its evidence and
/// suggested action, the probe summary, and the LLM explanation when there is
/// one.
class DoctorReportView extends StatelessWidget {
  /// Creates the view of [report].
  const DoctorReportView({super.key, required this.report});

  /// The report.
  final DoctorReport report;

  static StatusTone _severity(Severity s) => switch (wireOf(s)) {
    'critical' => StatusTone.error,
    'warning' => StatusTone.warning,
    _ => StatusTone.neutral,
  };

  @override
  Widget build(BuildContext context) {
    final r = report;
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ResultPanel(
          key: const Key('test.doctorReport'),
          title: switch (wireOf(r.status, r, 'status')) {
            'OK' => 'Doctor: no problems found',
            'DEGRADED_INFO' => 'Doctor: working, with notes',
            _ => 'Doctor: broken',
          },
          tone: doctorTone(r.status),
          details: <MapEntry<String, Object>>[
            MapEntry<String, Object>('Run', '${utcText(r.createdAt)} (${wireShown(r.trigger, r, 'trigger')})'),
            MapEntry<String, Object>('Findings', '${r.findings.length}'),
            if (r.probe case final p?)
              MapEntry<String, Object>(
                'Probe',
                p.skipped
                    ? 'skipped${p.skipReason == null ? '' : ' (${wireShown(p.skipReason!, p, 'skipReason')})'}'
                    : '${p.status ?? '—'}${p.httpStatus == null ? '' : ', HTTP ${p.httpStatus}'}'
                          '${p.records == null ? '' : ', ${p.records} records'}',
              ),
            if (r.adapterVersion case final v?) MapEntry<String, Object>('Adapter', v),
          ],
        ),
        for (final f in r.findings) ...<Widget>[
          const SizedBox(height: 12),
          SectionCard(
            title: wireShown(f.code, f, 'code'),
            actions: <Widget>[
              StatusChip(label: wireShown(f.severity, f, 'severity'), tone: _severity(f.severity)),
              if (f.heuristic ?? false)
                const StatusChip(label: 'heuristic', tone: StatusTone.neutral),
            ],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (f.path case final path?)
                  Text(
                    path,
                    style: TextStyle(color: muted, fontFamily: 'monospace'),
                  ),
                for (final e in f.evidence) Text('• $e'),
                const SizedBox(height: 6),
                Text('Suggested: ${f.suggestedAction}'),
              ],
            ),
          ),
        ],
        if (r.llm case final llm? when llm.summary != null || llm.likelyCause != null) ...<Widget>[
          const SizedBox(height: 12),
          SectionCard(
            title: 'Explanation',
            subtitle: <String>[
              if (llm.provider != null) llm.provider!,
              if (llm.model != null) llm.model!,
            ].join(' · '),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (llm.summary case final s?) Text(s),
                if (llm.likelyCause case final c?) ...<Widget>[
                  const SizedBox(height: 6),
                  Text('Likely cause: $c'),
                ],
                for (final a in llm.suggestedActions ?? BuiltList<String>()) Text('• $a'),
              ],
            ),
          ),
        ],
      ],
    );
  }
}

/// Usage over a window (`getSourceUsage`): totals and a bar per bucket.
class UsageSeriesView extends StatelessWidget {
  /// Creates the view of [series].
  const UsageSeriesView({super.key, required this.series});

  /// The series.
  final UsageSeries series;

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final points = series.points.toList();
    final peak = points.fold<int>(0, (m, p) => p.requests > m ? p.requests : m);
    final t = series.totals;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (t != null)
          SectionCard(
            title: 'Totals',
            child: KeyValueList(
              entries: <MapEntry<String, Object>>[
                MapEntry<String, Object>('Requests', compactCount(t.requests)),
                MapEntry<String, Object>('Errors', '${t.errors}'),
                MapEntry<String, Object>('Refused', '${t.refused}'),
                MapEntry<String, Object>('Bytes', byteText(t.bytes)),
                if (t.recordsSeen case final n?)
                  MapEntry<String, Object>('Records seen', compactCount(n)),
                if (t.versions case final n?) MapEntry<String, Object>('Versions', compactCount(n)),
              ],
            ),
          ),
        const SizedBox(height: 16),
        SectionCard(
          title: 'Requests per ${wireShown(series.resolution, series, 'resolution')}',
          child: points.isEmpty
              ? Text('No requests in this window.', style: TextStyle(color: palette.muted))
              : SizedBox(
                  height: 140,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      for (final p in points)
                        Expanded(
                          child: Tooltip(
                            message: '${utcText(p.t)}\n${p.requests} requests, ${p.errors} errors',
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 1),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  if (p.errors > 0)
                                    Container(
                                      height: peak == 0 ? 0 : 130 * p.errors / peak,
                                      color: palette.error,
                                    ),
                                  Container(
                                    height: peak == 0
                                        ? 0
                                        : 130 * (p.requests - p.errors).clamp(0, peak) / peak,
                                    color: palette.primary,
                                  ),
                                ],
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
