import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_drafts.dart' show jsonObjectText;
import '../forecasting/forecasting_widgets.dart';
import '../sources/source_widgets.dart' show byteText;
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'serving_drafts.dart';
import 'serving_providers.dart';
import 'serving_widgets.dart';

/// How often a list or page with a queued or running job re-reads.
const Duration exportPollEvery = Duration(seconds: 3);

/// A job kind as people read it.
String exportKindText(Object? kind) => switch (kind) {
  'EXPORT' => 'Export',
  'SNAPSHOT' => 'Snapshot',
  'PACK' => 'Offline pack',
  'RASTER' => 'Raster export',
  'PLACE_PACK' => 'Place pack',
  _ => '${kind ?? '—'}',
};

/// A job's display name: its spec's name, else its kind and id.
String exportJobName(Json job) {
  final name = job['name'] ?? jsonMap(job, 'spec')?['name'];
  return name is String && name.isNotEmpty ? name : '${exportKindText(job['kind'])} ${job['id']}';
}

/// A job's status label, with its progress while it works.
Widget exportStatusLabel(Json job, {Key? key}) {
  final status = job['status'];
  final label = exportStatusNames['$status'] ?? wireText('$status');
  return StatusLabel(
    key: key,
    label: exportJobActive(status) ? '$label ${job['progress'] ?? 0}%' : label,
    tone: exportStatusTone(status),
    tooltip: job['error'] as String?,
  );
}

/// [path] (a contract-relative URL such as `/v1/exports/…/download`) made
/// absolute against [base]; [path] itself when there is no base.
String absoluteUrl(Uri? base, String path) => base == null ? path : base.resolve(path).toString();

/// The Exports tab: export, snapshot and pack jobs newest first, filtered by
/// kind and status. It re-reads while any job is queued or running.
class ExportsPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const ExportsPanel({super.key});

  @override
  ConsumerState<ExportsPanel> createState() => _ExportsPanelState();
}

class _ExportsPanelState extends ConsumerState<ExportsPanel> {
  ExportFilter _filter = (kind: null, status: null);
  List<Json> _items = const <Json>[];
  String? _next;
  Object? _error;
  bool _loading = true;
  bool _loadingMore = false;
  Timer? _poll;

  @override
  void initState() {
    super.initState();
    unawaited(_reload());
    _poll = Timer.periodic(exportPollEvery, (_) {
      if (!_loading && _items.any((j) => exportJobActive(j['status']))) {
        unawaited(_reload(quiet: true));
      }
    });
  }

  @override
  void dispose() {
    _poll?.cancel();
    super.dispose();
  }

  Future<void> _reload({bool quiet = false}) async {
    final filter = _filter;
    if (!quiet) {
      setState(() {
        _loading = true;
        _error = null;
      });
    }
    try {
      final count = _items.length > 50 ? _items.length : 50;
      final page = await loadExports(ref.read(foresignalApiProvider), filter, limit: count > 500 ? 500 : count);
      if (mounted && filter == _filter) {
        setState(() {
          _items = page.items;
          _next = page.nextCursor;
          _error = null;
        });
      }
    } on Object catch (e) {
      if (mounted && !quiet) {
        setState(() => _error = e);
      }
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  Future<void> _more() async {
    final next = _next;
    if (next == null) {
      return;
    }
    setState(() => _loadingMore = true);
    try {
      final page = await loadExports(ref.read(foresignalApiProvider), _filter, cursor: next);
      if (mounted) {
        final seen = <Object?>{for (final j in _items) j['id']};
        setState(() {
          _items = <Json>[..._items, ...page.items.where((j) => !seen.contains(j['id']))];
          _next = page.nextCursor;
        });
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _error = e);
      }
    } finally {
      if (mounted) {
        setState(() => _loadingMore = false);
      }
    }
  }

  void _setFilter(ExportFilter f) {
    setState(() {
      _filter = f;
      _items = const <Json>[];
      _next = null;
    });
    unawaited(_reload());
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('exports.list'),
    title: 'Jobs',
    subtitle: 'Exports, snapshots and offline packs. Downloads come from the backend.',
    actions: <Widget>[
      FilterDropdown<String>(
        key: const Key('exports.filter.kind'),
        value: _filter.kind,
        options: <FilterOption<String>>[
          const FilterOption<String>(null, 'All kinds'),
          for (final k in exportKinds) FilterOption<String>(k, exportKindText(k)),
        ],
        onChanged: (v) => _setFilter((kind: v, status: _filter.status)),
      ),
      FilterDropdown<String>(
        key: const Key('exports.filter.status'),
        value: _filter.status,
        options: <FilterOption<String>>[
          const FilterOption<String>(null, 'Any status'),
          for (final s in exportStatuses) FilterOption<String>(s, exportStatusNames[s] ?? s),
        ],
        onChanged: (v) => _setFilter((kind: _filter.kind, status: v)),
      ),
      IconButton(tooltip: 'Refresh', onPressed: _reload, icon: const Icon(Icons.refresh)),
      FilledButton.icon(
        key: const Key('exports.new'),
        onPressed: () => context.go(servingNewExportPath),
        icon: const Icon(Icons.add, size: 18),
        label: const Text('New Job'),
      ),
    ],
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (_error case final e?) ...<Widget>[ErrorBanner(error: e, onRetry: _reload), const SizedBox(height: 12)],
        if (_loading && _items.isEmpty)
          const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator()))
        else
          DataTableCard<Json>(
            key: const Key('exports.table'),
            rows: _items,
            empty: 'No jobs.',
            onTap: (j) => context.go(servingExportPath('${j['id']}')),
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(
                label: 'Job',
                cell: (j) => ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 280),
                  child: Text(exportJobName(j), overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600)),
                ),
              ),
              TableColumnSpec<Json>(label: 'Kind', cell: (j) => Text(exportKindText(j['kind']))),
              TableColumnSpec<Json>(label: 'Format', cell: (j) => Text(exportFormatNames['${j['format']}'] ?? '${j['format']}')),
              TableColumnSpec<Json>(label: 'Status', cell: (j) => exportStatusLabel(j, key: Key('exports.status.${j['id']}'))),
              TableColumnSpec<Json>(label: 'Rows', numeric: true, cell: (j) => Text(countText(j['rowCount']))),
              TableColumnSpec<Json>(
                label: 'Size',
                numeric: true,
                cell: (j) => Text(j['bytes'] is num ? byteText(j['bytes']! as num) : '—'),
              ),
              TableColumnSpec<Json>(label: 'Created', cell: (j) => Text(whenText(j['createdAt']))),
              TableColumnSpec<Json>(label: 'Expires', cell: (j) => Text(j['expiresAt'] == null ? 'Never' : whenText(j['expiresAt']))),
            ],
          ),
        if (_next != null)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Center(
              child: TextButton(
                key: const Key('exports.more'),
                onPressed: _loadingMore ? null : _more,
                child: Text(_loadingMore ? 'Loading…' : 'Load more'),
              ),
            ),
          ),
      ],
    ),
  );
}

/// What a new job builds.
enum NewJobKind {
  /// A bulk export (`createExport`).
  export('Export'),

  /// A state snapshot (`createSnapshot`).
  snapshot('Snapshot'),

  /// A PMTiles offline pack (`createPack`).
  pack('Offline Pack');

  const NewJobKind(this.label);

  /// The choice's text.
  final String label;
}

/// A new export, snapshot or offline pack (`/serving/new-export`). Once
/// queued, it opens the job's page.
class NewExportScreen extends StatefulWidget {
  /// Creates the page.
  const NewExportScreen({super.key});

  @override
  State<NewExportScreen> createState() => _NewExportScreenState();
}

class _NewExportScreenState extends State<NewExportScreen> {
  NewJobKind _kind = NewJobKind.export;

  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(28),
    children: <Widget>[
      const PageHeader(
        title: 'New Job',
        crumbs: <Crumb>[Crumb('Serving', servingPath), Crumb('Exports', servingExportsPath), Crumb('New job')],
        subtitle: 'FORBIDDEN and LOCAL_ONLY records are left out unless the job is for personal use.',
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: SegmentedButton<NewJobKind>(
          key: const Key('newJob.kind'),
          segments: <ButtonSegment<NewJobKind>>[
            for (final k in NewJobKind.values) ButtonSegment<NewJobKind>(value: k, label: Text(k.label)),
          ],
          selected: <NewJobKind>{_kind},
          onSelectionChanged: (s) => setState(() => _kind = s.first),
        ),
      ),
      const SizedBox(height: 16),
      switch (_kind) {
        NewJobKind.export => const _ExportForm(key: ValueKey<String>('export')),
        NewJobKind.snapshot => const _SnapshotForm(key: ValueKey<String>('snapshot')),
        NewJobKind.pack => const _PackForm(key: ValueKey<String>('pack')),
      },
    ],
  );
}

/// The shared parts of the three job forms: controllers by name, the
/// submit that queues the job, confirms it reads back and opens it.
mixin _JobForm<T extends ConsumerStatefulWidget> on ConsumerState<T>, WriteTracking<T> {
  final Map<String, TextEditingController> c = <String, TextEditingController>{};
  Map<String, String> errors = const <String, String>{};

  TextEditingController ctl(String key, [String text = '']) =>
      c.putIfAbsent(key, () => TextEditingController(text: text));

  String text(String key) => c[key]?.text ?? '';

  @override
  void dispose() {
    for (final v in c.values) {
      v.dispose();
    }
    super.dispose();
  }

  Widget field(String label, String key, {String? help, String? hint}) => LabeledField(
    label: label,
    help: help,
    field: PlainField(key: Key('newJob.$key'), controller: ctl(key), error: errors[key], hint: hint),
  );

  Widget toggle(String label, String key, bool value, ValueChanged<bool> set, {String? help}) => LabeledField(
    label: label,
    help: help,
    field: SwitchField(key: Key('newJob.$key'), value: value, onChanged: (v) => setState(() => set(v))),
  );

  /// Queues the job with [create], confirms it reads back, and opens it.
  Future<void> submit(Future<String> Function(ForesignalApi api) create) async {
    final api = ref.read(foresignalApiProvider);
    final id = await track(() async {
      final id = await create(api);
      await callApiRequired(() => api.getExportsApi().getExport(exportId: id));
      return id;
    });
    if (id != null && mounted) {
      context.go(servingExportPath(id));
    }
  }
}

class _ExportForm extends ConsumerStatefulWidget {
  const _ExportForm({super.key});

  @override
  ConsumerState<_ExportForm> createState() => _ExportFormState();
}

class _ExportFormState extends ConsumerState<_ExportForm> with WriteTracking<_ExportForm>, _JobForm<_ExportForm> {
  final ExportDraft _d = ExportDraft();

  Future<void> _start() async {
    _d
      ..name = text('name')
      ..from = text('from')
      ..to = text('to')
      ..asOf = text('asOf')
      ..atSeq = text('atSeq')
      ..fields = text('fields');
    setState(() => errors = _d.validate());
    if (errors.isNotEmpty) {
      return;
    }
    await submit((api) async {
      final job = await callApiRequired(
        () => api.getExportsApi().createExport(exportSpec: fromJsonMap<ExportSpec>(api.serializers, _d.toJson())),
      );
      return job.id;
    });
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('newJob.export'),
    title: 'Bulk Export',
    subtitle: 'Records as GeoParquet, GeoPackage, FlatGeobuf or GPX, with a license sidecar and a signed manifest.',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        field('Name', 'name', help: 'Optional.'),
        LabeledField(
          label: 'Format',
          help: 'GPX needs the history mode.',
          field: WireDropdown(
            key: const Key('newJob.format'),
            value: _d.format,
            values: exportFormats,
            labels: exportFormatNames,
            error: errors['format'],
            onChanged: (v) => setState(() => _d.format = v),
          ),
        ),
        LabeledField(
          label: 'Mode',
          help: 'Current state, every version, state as of an instant, or state at a seq.',
          field: WireDropdown(
            key: const Key('newJob.mode'),
            value: _d.mode,
            values: exportModes,
            labels: const <String, String>{'current': 'Current', 'history': 'History', 'asOf': 'As of', 'atSeq': 'At seq'},
            onChanged: (v) => setState(() => _d.mode = v),
          ),
        ),
        if (_d.mode == 'asOf') field('As of', 'asOf', hint: '2026-10-01T00:00:00Z'),
        if (_d.mode == 'atSeq') field('At seq', 'atSeq'),
        LabeledField(
          label: 'Time field',
          help: 'What From and To bound.',
          field: WireDropdown(
            key: const Key('newJob.timeField'),
            value: _d.timeField,
            values: exportTimeFields,
            onChanged: (v) => setState(() => _d.timeField = v),
          ),
        ),
        field('From', 'from', help: 'An instant; empty for open.', hint: '2026-10-01T00:00:00Z'),
        field('To', 'to', help: 'An instant; empty for open.'),
        ScopeFields(draft: _d.scope, prefix: 'newJob.scope', errors: errors),
        field('Fields', 'fields', help: 'Payload fields to keep, comma-separated; empty for all.'),
        toggle('Flatten', 'flatten', _d.flatten, (v) => _d.flatten = v, help: 'Promote field-spec keys to columns.'),
        toggle('Private sources', 'includePrivate', _d.includePrivate, (v) => _d.includePrivate = v),
        toggle(
          'Personal use',
          'personalUse',
          _d.personalUse,
          (v) => _d.personalUse = v,
          help: 'Includes FORBIDDEN and LOCAL_ONLY records; the sidecar then says personal use only.',
        ),
        FormActions(busy: busy, onSave: _start, saveLabel: 'Start Export', leading: <Widget>[statusLine]),
      ],
    ),
  );
}

class _SnapshotForm extends ConsumerStatefulWidget {
  const _SnapshotForm({super.key});

  @override
  ConsumerState<_SnapshotForm> createState() => _SnapshotFormState();
}

class _SnapshotFormState extends ConsumerState<_SnapshotForm> with WriteTracking<_SnapshotForm>, _JobForm<_SnapshotForm> {
  final SnapshotDraft _d = SnapshotDraft();

  Future<void> _start() async {
    _d
      ..name = text('name')
      ..atSeq = text('atSeq')
      ..asOf = text('asOf')
      ..expiresAt = text('expiresAt');
    setState(() => errors = _d.validate());
    if (errors.isNotEmpty) {
      return;
    }
    await submit((api) async {
      final job = await callApiRequired(
        () => api.getExportsApi().createSnapshot(
          snapshotInput: fromJsonMap<SnapshotInput>(api.serializers, _d.toJson()),
        ),
      );
      return job.id;
    });
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('newJob.snapshot'),
    title: 'Snapshot',
    subtitle: 'State at one seq as GeoParquet with a signed manifest. Snapshots never expire unless told to.',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        field('Name', 'name', help: 'Optional.'),
        field('At seq', 'atSeq', help: 'Empty for the current watermark.'),
        field('As of', 'asOf', help: 'Or an instant, translated to its seq.', hint: '2026-10-01T00:00:00Z'),
        ScopeFields(draft: _d.scope, prefix: 'newJob.scope', errors: errors, place: false),
        toggle('Private sources', 'includePrivate', _d.includePrivate, (v) => _d.includePrivate = v),
        toggle(
          'Personal use',
          'personalUse',
          _d.personalUse,
          (v) => _d.personalUse = v,
          help: 'Includes FORBIDDEN and LOCAL_ONLY sources; the sidecar then says personal use only.',
        ),
        field('Expires', 'expiresAt', help: 'An instant; empty for never.'),
        FormActions(busy: busy, onSave: _start, saveLabel: 'Take Snapshot', leading: <Widget>[statusLine]),
      ],
    ),
  );
}

class _PackForm extends ConsumerStatefulWidget {
  const _PackForm({super.key});

  @override
  ConsumerState<_PackForm> createState() => _PackFormState();
}

class _PackFormState extends ConsumerState<_PackForm> with WriteTracking<_PackForm>, _JobForm<_PackForm> {
  final PackDraft _d = PackDraft();

  Future<void> _start() async {
    _d
      ..name = text('name')
      ..bbox = text('bbox')
      ..placeId = text('placeId')
      ..minZoom = text('minZoom')
      ..maxZoom = text('maxZoom')
      ..vectorSources = text('vectorSources')
      ..vectorKinds = text('vectorKinds')
      ..vectorAsOf = text('vectorAsOf')
      ..rasterProduct = text('rasterProduct')
      ..rasterFrame = text('rasterFrame');
    setState(() => errors = _d.validate());
    if (errors.isNotEmpty) {
      return;
    }
    await submit((api) async {
      final job = await callApiRequired(
        () => api.getExportsApi().createPack(packSpec: fromJsonMap<PackSpec>(api.serializers, _d.toJson())),
      );
      return job.id;
    });
  }

  @override
  void initState() {
    super.initState();
    ctl('minZoom', _d.minZoom);
    ctl('maxZoom', _d.maxZoom);
    ctl('rasterFrame', _d.rasterFrame);
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('newJob.pack'),
    title: 'Offline Pack',
    subtitle: 'PMTiles for an area: vector layers, a raster frame, or both. At most 200,000 tiles.',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        field('Name', 'name'),
        field('Bounding box', 'bbox', help: 'min lon, min lat, max lon, max lat; or give a place.'),
        field('Place', 'placeId', help: 'A place id whose geometry bounds the pack.'),
        field('Lowest zoom', 'minZoom', help: '0 to 14.'),
        field('Highest zoom', 'maxZoom', help: '0 to 14.'),
        LabeledField(
          label: 'Vector layers',
          field: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SwitchField(key: const Key('newJob.vector'), value: _d.vector, onChanged: (v) => setState(() => _d.vector = v)),
              if (errors['vector'] case final e?) Text(e, style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12)),
            ],
          ),
        ),
        if (_d.vector) ...<Widget>[
          field('Vector sources', 'vectorSources', help: 'Comma-separated; empty for all.'),
          field('Vector kinds', 'vectorKinds', help: 'Comma-separated; empty for all.'),
          field('Vector as of', 'vectorAsOf', help: 'An instant; empty for now.'),
        ],
        toggle('Raster frame', 'raster', _d.raster, (v) => _d.raster = v),
        if (_d.raster) ...<Widget>[
          field('Raster product', 'rasterProduct', help: 'A raster product id.'),
          field('Frame', 'rasterFrame', help: 'latest, or a frame id.'),
        ],
        toggle('Private sources', 'includePrivate', _d.includePrivate, (v) => _d.includePrivate = v),
        toggle('Personal use', 'personalUse', _d.personalUse, (v) => _d.personalUse = v),
        FormActions(busy: busy, onSave: _start, saveLabel: 'Build Pack', leading: <Widget>[statusLine]),
      ],
    ),
  );
}

/// One job (`/serving/exports/:exportId`): its status and progress, files
/// and download links, license summary and signed manifest, and cancel or
/// delete. It re-reads while the job is queued or running.
class ExportJobScreen extends ConsumerStatefulWidget {
  /// Creates the page for [exportId].
  const ExportJobScreen({super.key, required this.exportId});

  /// The job id.
  final String exportId;

  @override
  ConsumerState<ExportJobScreen> createState() => _ExportJobScreenState();
}

class _ExportJobScreenState extends ConsumerState<ExportJobScreen> {
  Timer? _poll;

  @override
  void initState() {
    super.initState();
    _poll = Timer.periodic(exportPollEvery, (_) {
      final job = ref.read(exportJobProvider(widget.exportId)).value;
      if (job != null && exportJobActive(job['status'])) {
        ref.invalidate(exportJobProvider(widget.exportId));
      }
    });
  }

  @override
  void dispose() {
    _poll?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final id = widget.exportId;
    final value = ref.watch(exportJobProvider(id));
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: value.value == null ? id : exportJobName(value.value!),
          crumbs: <Crumb>[const Crumb('Serving', servingPath), const Crumb('Exports', servingExportsPath), Crumb(id)],
        ),
        AsyncView<Json>(
          value: value,
          onRetry: () => ref.invalidate(exportJobProvider(id)),
          data: (job) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _JobSummaryCard(job: job),
                    const SizedBox(height: 16),
                    _DownloadsCard(job: job),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                width: 420,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    if (jsonMap(job, licenseSummaryMember) case final l?) ...<Widget>[
                      SectionCard(key: const Key('job.license'), title: 'License', child: LicenseSummaryView(summary: l)),
                      const SizedBox(height: 16),
                    ],
                    _ManifestCard(job: job),
                    const SizedBox(height: 16),
                    ServingDeleteCard(
                      keyPrefix: 'job.delete',
                      buttonLabel: exportJobActive(job['status']) ? 'Cancel Job' : 'Delete Job',
                      subtitle: exportJobActive(job['status'])
                          ? 'Cancels the job between pages.'
                          : 'Deletes the job and its files.',
                      message: exportJobActive(job['status']) ? 'Cancel this job?' : 'Delete this job and its files?',
                      delete: () async {
                        await callApi(() => ref.read(foresignalApiProvider).getExportsApi().deleteExport(exportId: id));
                      },
                      gone: () async {
                        if (exportJobActive(job['status'])) {
                          // A canceled job may stay listed with the canceled status.
                          try {
                            final api = ref.read(foresignalApiProvider);
                            final j = await callApiRequired(() => api.getExportsApi().getExport(exportId: id));
                            return !exportJobActive(toJsonMap(api.serializers, j)['status']);
                          } on ProblemException catch (e) {
                            return e.status == 404;
                          }
                        }
                        return readsAsGone(() => ref.read(foresignalApiProvider).getExportsApi().getExport(exportId: id));
                      },
                      after: () {
                        ref.invalidate(exportJobProvider(id));
                        context.go(servingExportsPath);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _JobSummaryCard extends StatelessWidget {
  const _JobSummaryCard({required this.job});

  final Json job;

  @override
  Widget build(BuildContext context) {
    final active = exportJobActive(job['status']);
    final spec = jsonMap(job, 'spec');
    return SectionCard(
      key: const Key('job.summary'),
      title: 'Job',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (active) ...<Widget>[
            LinearProgressIndicator(
              key: const Key('job.progress'),
              value: ((job['progress'] as num?) ?? 0) / 100,
            ),
            const SizedBox(height: 12),
          ],
          if (job['status'] == 'FAILED' && job['error'] != null) ...<Widget>[
            ResultPanel(title: 'Failed', tone: StatusTone.error, message: '${job['error']}'),
            const SizedBox(height: 12),
          ],
          if (job['personalUse'] == true) ...<Widget>[
            const ResultPanel(
              title: 'Personal use only',
              tone: StatusTone.warning,
              message: 'This job includes FORBIDDEN or LOCAL_ONLY records. Do not redistribute it.',
            ),
            const SizedBox(height: 12),
          ],
          KeyValueList(
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>('Status', Align(alignment: Alignment.centerLeft, child: exportStatusLabel(job))),
              MapEntry<String, Object>('Kind', exportKindText(job['kind'])),
              MapEntry<String, Object>('Format', exportFormatNames['${job['format']}'] ?? '${job['format']}'),
              MapEntry<String, Object>('Id', '${job['id']}'),
              MapEntry<String, Object>('Rows', countText(job['rowCount'])),
              MapEntry<String, Object>('Size', job['bytes'] is num ? byteText(job['bytes']! as num) : '—'),
              if (job['atSeq'] != null) MapEntry<String, Object>('At seq', countText(job['atSeq'])),
              MapEntry<String, Object>('Watermark seq', countText(job['watermarkSeq'])),
              if ((job['heldSources'] as List?)?.isNotEmpty ?? false)
                MapEntry<String, Object>('Read from holds', listText(job['heldSources'])),
              MapEntry<String, Object>('Created', whenText(job['createdAt'])),
              MapEntry<String, Object>('Started', whenText(job['startedAt'])),
              MapEntry<String, Object>('Finished', whenText(job['finishedAt'])),
              MapEntry<String, Object>('Expires', job['expiresAt'] == null ? 'Never' : whenText(job['expiresAt'])),
              if (job['principal'] != null) MapEntry<String, Object>('Created by', '${job['principal']}'),
              if (job['manifestSha256'] != null) MapEntry<String, Object>('Manifest SHA-256', '${job['manifestSha256']}'),
            ],
          ),
          if (spec != null && spec.isNotEmpty) ...<Widget>[
            const SizedBox(height: 12),
            Text('Request', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 4),
            SelectableText(
              jsonObjectText(spec),
              key: const Key('job.spec'),
              style: TextStyle(fontFamily: 'monospace', fontSize: 12, color: AdminPalette.of(context).muted),
            ),
          ],
        ],
      ),
    );
  }
}

class _DownloadsCard extends ConsumerWidget {
  const _DownloadsCard({required this.job});

  final Json job;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final base = ref.watch(backendEndpointProvider);
    final url = job['downloadUrl'] as String?;
    final files = jsonList(job, 'files');
    return SectionCard(
      key: const Key('job.downloads'),
      title: 'Downloads',
      subtitle: 'The backend serves each file with the admin token. Copy a link into a download tool.',
      child: url == null
          ? Text(
              switch (job['status']) {
                'QUEUED' || 'RUNNING' => 'Ready once the job is done.',
                'EXPIRED' => 'The files have expired.',
                _ => 'Nothing to download.',
              },
              key: const Key('job.downloads.none'),
              style: TextStyle(color: AdminPalette.of(context).muted),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                LabeledField(
                  label: 'Data',
                  field: CopyLine(absoluteUrl(base, url), key: const Key('job.download'), copyKey: const Key('job.download.copy')),
                ),
                LabeledField(
                  label: 'Bundle',
                  help: 'A zip with the data, the manifest and its signature, the license sidecar and ATTRIBUTION.txt.',
                  field: CopyLine(
                    absoluteUrl(base, '$url?bundle=zip'),
                    key: const Key('job.bundle'),
                    copyKey: const Key('job.bundle.copy'),
                  ),
                ),
                Footnote(
                  'For example: curl -H "Authorization: Bearer <admin token>" -OJ "${absoluteUrl(base, '$url?bundle=zip')}"',
                ),
                if (files.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 12),
                  DataTableCard<Json>(
                    key: const Key('job.files'),
                    rows: files,
                    columns: <TableColumnSpec<Json>>[
                      TableColumnSpec<Json>(label: 'File', cell: (f) => Text('${f['name']}')),
                      TableColumnSpec<Json>(
                        label: 'Size',
                        numeric: true,
                        cell: (f) => Text(f['bytes'] is num ? byteText(f['bytes']! as num) : '—'),
                      ),
                      TableColumnSpec<Json>(
                        label: 'SHA-256',
                        cell: (f) => Tooltip(
                          message: '${f['sha256']}',
                          child: Text(
                            '${f['sha256']}'.length > 12 ? '${'${f['sha256']}'.substring(0, 12)}…' : '${f['sha256']}',
                            style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                          ),
                        ),
                      ),
                      TableColumnSpec<Json>(label: 'Expires', cell: (f) => Text(whenText(f['expiresAt']))),
                      TableColumnSpec<Json>(
                        label: 'Link',
                        cell: (f) => CopyButton(text: absoluteUrl(base, '${f['url']}'), key: Key('job.file.copy.${f['name']}')),
                      ),
                    ],
                  ),
                ],
              ],
            ),
    );
  }
}

/// An icon button that copies [text].
class CopyButton extends StatelessWidget {
  /// Creates the button.
  const CopyButton({super.key, required this.text});

  /// What is copied.
  final String text;

  @override
  Widget build(BuildContext context) => IconButton(
    tooltip: 'Copy link',
    onPressed: () => unawaited(Clipboard.setData(ClipboardData(text: text))),
    icon: const Icon(Icons.copy, size: 18),
  );
}

class _ManifestCard extends ConsumerStatefulWidget {
  const _ManifestCard({required this.job});

  final Json job;

  @override
  ConsumerState<_ManifestCard> createState() => _ManifestCardState();
}

class _ManifestCardState extends ConsumerState<_ManifestCard> with WriteTracking<_ManifestCard> {
  Json? _manifest;

  Future<void> _load() async {
    final api = ref.read(foresignalApiProvider);
    final m = await track(() => callApiRequired(() => api.getExportsApi().getExportManifest(exportId: '${widget.job['id']}')));
    if (m != null && mounted) {
      setState(() => _manifest = toJsonMap(api.serializers, m));
    }
  }

  @override
  Widget build(BuildContext context) {
    final m = _manifest;
    final signature = jsonMap(m, 'signature');
    final done = widget.job['status'] == 'DONE';
    return SectionCard(
      key: const Key('job.manifest'),
      title: 'Manifest',
      subtitle: 'SHA-256 of every file, signed with the instance key.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (m == null)
            Align(
              alignment: Alignment.centerLeft,
              child: TonalButton(
                key: const Key('job.manifest.load'),
                label: busy ? 'Loading…' : 'Load Manifest',
                onPressed: busy || !done ? null : _load,
              ),
            )
          else
            KeyValueList(
              keyWidth: 120,
              entries: <MapEntry<String, Object>>[
                MapEntry<String, Object>('Instance', '${m['instanceId']}'),
                MapEntry<String, Object>('Rows', countText(m['rowCount'])),
                if (m['atSeq'] != null) MapEntry<String, Object>('At seq', countText(m['atSeq'])),
                MapEntry<String, Object>('Files', '${jsonList(m, 'files').length}'),
                if (signature != null) ...<MapEntry<String, Object>>[
                  MapEntry<String, Object>('Signature', '${signature['alg']} · key ${signature['kid']}'),
                  MapEntry<String, Object>('Signature file', '${signature['file'] ?? 'manifest.json.jws'}'),
                ],
              ],
            ),
          if (!done && m == null) const Footnote('Ready once the job is done.'),
          if (write is WriteFailed) ...<Widget>[
            const SizedBox(height: 8),
            if (failedCode == 'EXPORT_NOT_READY')
              const ResultPanel(title: 'Not ready', tone: StatusTone.info, message: 'The job has not finished.')
            else
              statusLine,
          ],
        ],
      ),
    );
  }
}
