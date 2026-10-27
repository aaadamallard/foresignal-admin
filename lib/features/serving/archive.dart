import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../sources/source_widgets.dart' show byteText;
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'serving_drafts.dart';
import 'serving_providers.dart';
import 'serving_widgets.dart';

/// Why [text] is not a `yyyy-mm-dd` date, or `null` when it is one or empty.
String? dateProblem(String text) {
  final t = text.trim();
  if (t.isEmpty) {
    return null;
  }
  return RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(t) && DateTime.tryParse(t) != null ? null : 'A date: yyyy-mm-dd.';
}

/// The Archive tab: the cold archive settings, the holds that keep rows past
/// retention, and the catalog of archived partitions.
class ArchivePanel extends StatelessWidget {
  /// Creates the panel.
  const ArchivePanel({super.key});

  @override
  Widget build(BuildContext context) => const Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      _ArchiveSettingsCard(),
      SizedBox(height: 20),
      _HoldsCard(),
      SizedBox(height: 20),
      _CatalogCard(),
    ],
  );
}

class _ArchiveSettingsCard extends ConsumerWidget {
  const _ArchiveSettingsCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) => SectionCard(
    key: const Key('archive.settings'),
    title: 'Cold Archive',
    subtitle: 'Before retention deletes rows, they are written as GeoParquet, counted, and uploaded to S3 when set.',
    child: AsyncView<Json>(
      value: ref.watch(archiveSettingsProvider),
      onRetry: () => ref.invalidate(archiveSettingsProvider),
      data: (s) => ArchiveSettingsForm(key: const ValueKey<String>('archive'), settings: s),
    ),
  );
}

/// The archive settings (`updateArchiveSettings`), confirmed by
/// `getArchiveSettings`. S3 keys are write-only.
class ArchiveSettingsForm extends ConsumerStatefulWidget {
  /// Creates the form for stored [settings].
  const ArchiveSettingsForm({super.key, required this.settings});

  /// The settings as read.
  final Json settings;

  @override
  ConsumerState<ArchiveSettingsForm> createState() => _ArchiveSettingsFormState();
}

class _ArchiveSettingsFormState extends ConsumerState<ArchiveSettingsForm> with WriteTracking<ArchiveSettingsForm> {
  late ArchiveDraft _d = ArchiveDraft.of(widget.settings);
  final Map<String, TextEditingController> _c = <String, TextEditingController>{};
  Map<String, String> _errors = const <String, String>{};

  Set<String> get _secretsSet => <String>{for (final s in (widget.settings['secretsSet'] as List?) ?? const []) '$s'};

  TextEditingController _ctl(String key) => _c.putIfAbsent(key, TextEditingController.new);

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() {
    _ctl('root').text = _d.root;
    _ctl('sources').text = _d.sources;
    _ctl('endpoint').text = _d.endpoint;
    _ctl('bucket').text = _d.bucket;
    _ctl('prefix').text = _d.prefix;
    _ctl('region').text = _d.region;
    _ctl('cutoff').text = _d.cutoff;
    _ctl('schedule').text = _d.schedule;
    _ctl('accessKey').clear();
    _ctl('secretKey').clear();
  }

  @override
  void dispose() {
    for (final c in _c.values) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    _d
      ..root = _c['root']!.text
      ..sources = _c['sources']!.text
      ..endpoint = _c['endpoint']!.text
      ..bucket = _c['bucket']!.text
      ..prefix = _c['prefix']!.text
      ..region = _c['region']!.text
      ..cutoff = _c['cutoff']!.text
      ..schedule = _c['schedule']!.text
      ..accessKey = _c['accessKey']!.text
      ..secretKey = _c['secretKey']!.text;
    setState(() => _errors = _d.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final archive = api.getArchiveApi();
    final body = _d.toJson();
    final typed = <String>{
      if (_d.accessKey.isNotEmpty) 'accessKey',
      if (_d.secretKey.isNotEmpty) 'secretKey',
    };
    final saved = await track(
      () => writeThenConfirm<Json>(
        write: () async {
          await callApi(
            () => archive.updateArchiveSettings(archiveSettings: fromJsonMap<ArchiveSettings>(api.serializers, body)),
          );
        },
        reread: () async => toJsonMap(api.serializers, await callApiRequired(archive.getArchiveSettings)),
        confirm: (s) {
          if (s['enabled'] != body['enabled'] || s['target'] != body['target']) {
            return 'The archive settings read back differently.';
          }
          final set = <String>{for (final x in (s['secretsSet'] as List?) ?? const []) '$x'};
          return set.containsAll(typed) ? null : 'A key typed here is not reported as set.';
        },
      ),
    );
    if (saved != null && mounted) {
      _c['accessKey']!.clear();
      _c['secretKey']!.clear();
      ref.invalidate(archiveSettingsProvider);
    }
  }

  Widget _field(String label, String key, {String? help, String? hint, bool secret = false}) => LabeledField(
    label: label,
    help: help,
    field: secret
        ? TextField(
            key: Key('archive.$key'),
            controller: _ctl(key),
            obscureText: true,
            decoration: InputDecoration(isDense: true, errorText: _errors[key]),
          )
        : PlainField(key: Key('archive.$key'), controller: _ctl(key), error: _errors[key], hint: hint),
  );

  @override
  Widget build(BuildContext context) {
    final d = _d;
    final s3 = d.onS3;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'Enabled',
          field: SwitchField(key: const Key('archive.enabled'), value: d.enabled, onChanged: (v) => setState(() => d.enabled = v)),
        ),
        LabeledField(
          label: 'Target',
          field: WireDropdown(
            key: const Key('archive.target'),
            value: d.target,
            values: <String>[
              'local',
              's3',
              'glacier',
              // A target a newer server offers stays listed and selected.
              if (!const <String>{'local', 's3', 'glacier'}.contains(d.target)) d.target,
            ],
            labels: const <String, String>{'local': 'External disk', 's3': 'S3', 'glacier': 'S3 Glacier'},
            onChanged: (v) => setState(() => d.target = v),
          ),
        ),
        _field(
          'Directory',
          'root',
          help: 'For the external disk, a mounted disk\'s absolute path. Absolute, or relative to the data '
              'directory; empty for the default.',
        ),
        _field(
          'Archive data older than',
          'cutoff',
          hint: '365d',
          help: 'STANDARD history past this age moves to the archive; empty archives only what retention removes.',
        ),
        _field(
          'Schedule',
          'schedule',
          hint: '0 0 3 * * SUN',
          help: 'Six-field cron in UTC; empty runs only on request.',
        ),
        _field('Sources', 'sources', help: 'Source ids, comma-separated; empty for every public standard and track source.'),
        LabeledField(
          label: 'Keep local copy',
          help: 'After a verified upload.',
          field: SwitchField(key: const Key('archive.keepLocal'), value: d.keepLocal, onChanged: (v) => setState(() => d.keepLocal = v)),
        ),
        if (s3) ...<Widget>[
          _field('Endpoint', 'endpoint', hint: 'https://s3.example.com'),
          _field('Bucket', 'bucket'),
          _field('Prefix', 'prefix', help: 'Optional.'),
          _field('Region', 'region', help: 'Optional.'),
          LabeledField(
            label: 'Storage class',
            help: d.target == 'glacier'
                ? 'GLACIER (the default) or DEEP_ARCHIVE; a restore waits hours for the thaw.'
                : 'Empty uses the bucket default.',
            field: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 280,
                child: WireDropdown(
                  key: const Key('archive.storageClass'),
                  value: d.storageClass,
                  values: <String>[
                    ...ArchiveDraft.storageClasses,
                    if (d.storageClass != null && !ArchiveDraft.storageClasses.contains(d.storageClass))
                      d.storageClass!,
                  ],
                  labels: const <String, String>{},
                  hint: 'Bucket default',
                  error: _errors['storageClass'],
                  onChanged: (v) => setState(() => d.storageClass = v),
                ),
              ),
            ),
          ),
          LabeledField(
            label: 'Path-style',
            help: 'Bucket in the path rather than the host name.',
            field: SwitchField(key: const Key('archive.pathStyle'), value: d.pathStyle, onChanged: (v) => setState(() => d.pathStyle = v)),
          ),
          _field(
            'Access key',
            'accessKey',
            secret: true,
            help: _secretsSet.contains('accessKey') ? 'Set. Type a new one to replace it; leave empty to keep.' : 'Write-only.',
          ),
          _field(
            'Secret key',
            'secretKey',
            secret: true,
            help: _secretsSet.contains('secretKey') ? 'Set. Type a new one to replace it; leave empty to keep.' : 'Write-only.',
          ),
        ],
        if (d.enabled)
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: ResultPanel(
              key: Key('archive.purgeNote'),
              title: 'Archive, then purge',
              tone: StatusTone.info,
              message:
                  'With a target set, data leaves the live database only after its archive is written '
                  'and verified: it is archived, then purged, never just deleted. A segment can be '
                  'restored later.',
            ),
          ),
        FormActions(
          busy: busy,
          onSave: _save,
          onReset: () => setState(() {
            _d = ArchiveDraft.of(widget.settings);
            _errors = const <String, String>{};
            _load();
          }),
          leading: <Widget>[statusLine],
        ),
      ],
    );
  }
}

/// An instant as UTC text, without the time when it is midnight.
String _day(Object? iso) {
  final t = whenText(iso);
  return t.endsWith(' 00:00:00') ? t.substring(0, t.length - 9) : t;
}

/// A hold's bounds as text: its instants and seqs, open ends as "…".
String holdBoundsText(Json h) {
  final parts = <String>[
    if (h['from'] != null || h['to'] != null)
      '${h['from'] == null ? '…' : _day(h['from'])} to ${h['to'] == null ? '…' : _day(h['to'])}',
    if (h['fromSeq'] != null || h['toSeq'] != null)
      'seq ${h['fromSeq'] == null ? '…' : countText(h['fromSeq'])} to ${h['toSeq'] == null ? '…' : countText(h['toSeq'])}',
  ];
  return parts.isEmpty ? 'Everything' : parts.join('; ');
}

class _HoldsCard extends ConsumerStatefulWidget {
  const _HoldsCard();

  @override
  ConsumerState<_HoldsCard> createState() => _HoldsCardState();
}

class _HoldsCardState extends ConsumerState<_HoldsCard> with WriteTracking<_HoldsCard> {
  String? _deleting;
  String _deletingName = '';
  bool _adding = false;

  Future<void> _delete(String id) async {
    final archive = ref.read(foresignalApiProvider).getArchiveApi();
    final ok = await track(() async {
      await callApi(() => archive.deleteHold(holdId: id));
      final left = await allPages((cursor) async {
        final page = await callApiRequired(() => archive.listHolds(cursor: cursor, limit: 500));
        return (items: <Json>[for (final h in page.items) <String, Object?>{'id': h.id}], next: page.nextCursor);
      });
      if (left.any((h) => h['id'] == id)) {
        throw const WriteNotConfirmedException('The hold is still listed.');
      }
      return true;
    });
    if (ok == true && mounted) {
      setState(() => _deleting = null);
      ref.invalidate(holdsProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final deleting = _deleting;
    return SectionCard(
      key: const Key('holds'),
      title: 'Holds',
      subtitle: 'Rows inside a hold are copied aside before retention removes them. At most 20 holds.',
      actions: <Widget>[
        IconButton(tooltip: 'Refresh', onPressed: () => ref.invalidate(holdsProvider), icon: const Icon(Icons.refresh)),
        if (!_adding)
          FilledButton.icon(
            key: const Key('holds.add'),
            onPressed: () => setState(() => _adding = true),
            icon: const Icon(Icons.add, size: 18),
            label: const Text('Add Hold'),
          ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AsyncView<List<Json>>(
            value: ref.watch(holdsProvider),
            onRetry: () => ref.invalidate(holdsProvider),
            data: (holds) => DataTableCard<Json>(
              key: const Key('holds.table'),
              rows: holds,
              empty: 'No holds yet. Add Hold sets one.',
              columns: <TableColumnSpec<Json>>[
                TableColumnSpec<Json>(
                  label: 'Hold',
                  cell: (h) => ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 280),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('${h['name']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                        Tooltip(
                          message: '${h['reason']}',
                          child: Text('${h['reason']}', style: const TextStyle(fontSize: 12), maxLines: 1, overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  ),
                ),
                TableColumnSpec<Json>(
                  label: 'Covers',
                  cell: (h) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(listText(h['sources']).isEmpty ? 'All sources' : listText(h['sources'])),
                      Text(listText(h['kinds']).isEmpty ? 'All kinds' : listText(h['kinds']), style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                TableColumnSpec<Json>(
                  label: 'Bounds',
                  cell: (h) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[for (final line in holdBoundsText(h).split('; ')) Text(line)],
                  ),
                ),
                TableColumnSpec<Json>(
                  label: 'Held',
                  numeric: true,
                  cell: (h) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('${countText(h['heldRows'])} rows'),
                      Text(h['heldBytes'] is num ? byteText(h['heldBytes']! as num) : '—', style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                TableColumnSpec<Json>(label: 'Expires', cell: (h) => Text(h['expiresAt'] == null ? 'Never' : _day(h['expiresAt']))),
                TableColumnSpec<Json>(
                  label: '',
                  cell: (h) => TextButton(
                    key: Key('holds.delete.${h['id']}'),
                    onPressed: () => setState(() {
                      _deleting = '${h['id']}';
                      _deletingName = '${h['name']}';
                    }),
                    child: const Text('Delete'),
                  ),
                ),
              ],
            ),
          ),
          if (deleting != null) ...<Widget>[
            const SizedBox(height: 12),
            ConfirmRow(
              message: 'Delete hold $_deletingName? Every row it copied is deleted with it.',
              action: 'Delete',
              confirmKey: const Key('holds.delete.confirm'),
              onConfirm: () => _delete(deleting),
              onCancel: () => setState(() => _deleting = null),
            ),
          ],
          if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
          if (_adding) ...<Widget>[
            const SizedBox(height: 16),
            _AddHoldForm(onDone: () => setState(() => _adding = false)),
          ],
        ],
      ),
    );
  }
}

class _AddHoldForm extends ConsumerStatefulWidget {
  const _AddHoldForm({required this.onDone});

  final VoidCallback onDone;

  @override
  ConsumerState<_AddHoldForm> createState() => _AddHoldFormState();
}

class _AddHoldFormState extends ConsumerState<_AddHoldForm> with WriteTracking<_AddHoldForm> {
  static const List<String> _keys = <String>['name', 'reason', 'sources', 'kinds', 'from', 'to', 'fromSeq', 'toSeq', 'expiresAt'];
  final Map<String, TextEditingController> _c = <String, TextEditingController>{
    for (final k in _keys) k: TextEditingController(),
  };
  Map<String, String> _errors = const <String, String>{};

  @override
  void dispose() {
    for (final c in _c.values) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _add() async {
    final d = HoldDraft()
      ..name = _c['name']!.text
      ..reason = _c['reason']!.text
      ..sources = _c['sources']!.text
      ..kinds = _c['kinds']!.text
      ..from = _c['from']!.text
      ..to = _c['to']!.text
      ..fromSeq = _c['fromSeq']!.text
      ..toSeq = _c['toSeq']!.text
      ..expiresAt = _c['expiresAt']!.text;
    setState(() => _errors = d.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final archive = api.getArchiveApi();
    final ok = await track(() async {
      final hold = await callApiRequired(() => archive.createHold(holdInput: fromJsonMap<HoldInput>(api.serializers, d.toJson())));
      final listed = await allPages((cursor) async {
        final page = await callApiRequired(() => archive.listHolds(cursor: cursor, limit: 500));
        return (items: <Json>[for (final h in page.items) <String, Object?>{'id': h.id}], next: page.nextCursor);
      });
      if (!listed.any((h) => h['id'] == hold.id)) {
        throw const WriteNotConfirmedException('The new hold is not listed.');
      }
      return true;
    });
    if (ok == true && mounted) {
      ref.invalidate(holdsProvider);
      widget.onDone();
    }
  }

  Widget _field(String label, String key, {String? help, String? hint, int maxLines = 1}) => LabeledField(
    label: label,
    help: help,
    field: PlainField(key: Key('hold.$key'), controller: _c[key]!, error: _errors[key], hint: hint, maxLines: maxLines),
  );

  @override
  Widget build(BuildContext context) => Container(
    key: const Key('hold.form'),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      border: Border.all(color: AdminPalette.of(context).border),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text('New Hold', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 12),
        _field('Name', 'name'),
        _field('Reason', 'reason', help: 'Why these rows are kept.', maxLines: 3),
        _field('Sources', 'sources', help: 'Source ids, comma-separated; empty for all.'),
        _field('Kinds', 'kinds', help: 'Record kinds, comma-separated; empty for all.'),
        _field('From', 'from', help: 'An instant; empty for open.', hint: '2026-10-01T00:00:00Z'),
        _field('To', 'to', help: 'An instant; empty for open.'),
        _field('From seq', 'fromSeq', help: 'Or bound by seq; empty for open.'),
        _field('To seq', 'toSeq'),
        _field('Expires', 'expiresAt', help: 'When the hold lapses; empty for never.'),
        FormActions(
          busy: busy,
          onSave: _add,
          saveLabel: 'Add Hold',
          onReset: widget.onDone,
          leading: <Widget>[statusLine],
        ),
      ],
    ),
  );
}

class _CatalogCard extends ConsumerStatefulWidget {
  const _CatalogCard();

  @override
  ConsumerState<_CatalogCard> createState() => _CatalogCardState();
}

class _CatalogCardState extends ConsumerState<_CatalogCard> {
  final TextEditingController _source = TextEditingController();
  final TextEditingController _from = TextEditingController();
  final TextEditingController _to = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  CatalogFilter _filter = (source: null, from: null, to: null);
  List<Json> _items = const <Json>[];
  String? _next;
  Object? _error;
  bool _loading = true;
  String? _open;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  @override
  void dispose() {
    _source.dispose();
    _from.dispose();
    _to.dispose();
    super.dispose();
  }

  void _apply() {
    final errors = <String, String>{'from': ?dateProblem(_from.text), 'to': ?dateProblem(_to.text)};
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    DateTime? date(String t) => t.trim().isEmpty ? null : DateTime.parse(t.trim());
    _filter = (source: textOrNull(_source.text), from: date(_from.text), to: date(_to.text));
    unawaited(_load());
  }

  Future<void> _load({bool more = false}) async {
    final filter = _filter;
    setState(() {
      _loading = true;
      _error = null;
      if (!more) {
        _items = const <Json>[];
        _next = null;
        _open = null;
      }
    });
    try {
      final page = await loadCatalog(ref.read(foresignalApiProvider), filter, cursor: more ? _next : null);
      if (mounted && filter == _filter) {
        setState(() {
          _items = <Json>[..._items, ...page.items];
          _next = page.nextCursor;
        });
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _error = e);
      }
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  static String _key(Json p) => '${p['path']}';

  static num _sum(Json p, String field) {
    num total = 0;
    for (final f in jsonList(p, 'files')) {
      if (f[field] case final num n) {
        total += n;
      }
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    final open = _items.where((p) => _key(p) == _open).firstOrNull;
    return SectionCard(
      key: const Key('catalog'),
      title: 'Catalog',
      subtitle: 'Archived partitions by tier, source and ingest date (UTC), with their part files.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            spacing: 12,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 200,
                child: LabeledField(
                  label: 'Source',
                  field: PlainField(key: const Key('catalog.source'), controller: _source, onSubmitted: (_) => _apply()),
                ),
              ),
              SizedBox(
                width: 160,
                child: LabeledField(
                  label: 'From',
                  field: PlainField(key: const Key('catalog.from'), controller: _from, error: _errors['from'], hint: 'yyyy-mm-dd'),
                ),
              ),
              SizedBox(
                width: 160,
                child: LabeledField(
                  label: 'To',
                  field: PlainField(key: const Key('catalog.to'), controller: _to, error: _errors['to'], hint: 'yyyy-mm-dd'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: TonalButton(key: const Key('catalog.apply'), label: 'Show', onPressed: _loading ? null : _apply),
              ),
            ],
          ),
          if (_error case final e?) ...<Widget>[ErrorBanner(error: e, onRetry: _load), const SizedBox(height: 12)],
          if (open != null) ...<Widget>[
            _PartitionView(partition: open, onClose: () => setState(() => _open = null)),
            const SizedBox(height: 16),
          ],
          if (_loading && _items.isEmpty)
            const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator()))
          else
            DataTableCard<Json>(
              key: const Key('catalog.table'),
              rows: _items,
              empty: 'No archived partitions in this range. Change Source, From or To, then Show.',
              selected: (p) => _key(p) == _open,
              onTap: (p) => setState(() => _open = _key(p) == _open ? null : _key(p)),
              columns: <TableColumnSpec<Json>>[
                TableColumnSpec<Json>(label: 'Date', cell: (p) => Text('${p['date']}')),
                TableColumnSpec<Json>(label: 'Source', cell: (p) => Text('${p['sourceId']}')),
                TableColumnSpec<Json>(label: 'Tier', cell: (p) => Text(p['tier'] == 'trk' ? 'Track' : 'Standard')),
                TableColumnSpec<Json>(label: 'Files', numeric: true, cell: (p) => Text('${jsonList(p, 'files').length}')),
                TableColumnSpec<Json>(label: 'Rows', numeric: true, cell: (p) => Text(countText(_sum(p, 'rows')))),
                TableColumnSpec<Json>(label: 'Size', numeric: true, cell: (p) => Text(byteText(_sum(p, 'bytes')))),
              ],
            ),
          if (_next != null)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Center(
                child: TextButton(
                  key: const Key('catalog.more'),
                  onPressed: _loading ? null : () => _load(more: true),
                  child: Text(_loading ? 'Loading…' : 'Load more'),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _PartitionView extends StatelessWidget {
  const _PartitionView({required this.partition, required this.onClose});

  final Json partition;

  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final files = jsonList(partition, 'files');
    final license = jsonMap(partition, licenseMember);
    return Column(
      key: const Key('catalog.partition'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: SelectableText('${partition['path']}', style: const TextStyle(fontFamily: 'monospace', fontSize: 13)),
            ),
            IconButton(key: const Key('catalog.partition.close'), tooltip: 'Close', onPressed: onClose, icon: const Icon(Icons.close)),
          ],
        ),
        const SizedBox(height: 8),
        DataTableCard<Json>(
          rows: files,
          empty: 'This partition holds no part files.',
          columns: <TableColumnSpec<Json>>[
            TableColumnSpec<Json>(label: 'File', cell: (f) => Text('${f['name'] ?? '—'}')),
            TableColumnSpec<Json>(
              label: 'Seqs',
              cell: (f) => Text(f['fromSeq'] == null ? '—' : '${countText(f['fromSeq'])} to ${countText(f['toSeq'])}'),
            ),
            TableColumnSpec<Json>(label: 'Rows', numeric: true, cell: (f) => Text(countText(f['rows']))),
            TableColumnSpec<Json>(
              label: 'Size',
              numeric: true,
              cell: (f) => Text(f['bytes'] is num ? byteText(f['bytes']! as num) : '—'),
            ),
            TableColumnSpec<Json>(
              label: 'SHA-256',
              cell: (f) => Tooltip(
                message: '${f['sha256'] ?? ''}',
                child: Text(
                  '${f['sha256'] ?? '—'}'.length > 12 ? '${'${f['sha256']}'.substring(0, 12)}…' : '${f['sha256'] ?? '—'}',
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                ),
              ),
            ),
            TableColumnSpec<Json>(
              label: 'Stored',
              cell: (f) => Text(
                <String>[
                  if (f['local'] == true) 'Local',
                  if (f['uploadedAt'] != null) 'S3 since ${whenText(f['uploadedAt'])}',
                ].join(', ').ifEmpty('—'),
              ),
            ),
          ],
        ),
        if (license != null) ...<Widget>[
          const SizedBox(height: 12),
          LicenseSummaryView(summary: license),
        ],
      ],
    );
  }
}

extension on String {
  String ifEmpty(String other) => isEmpty ? other : this;
}
