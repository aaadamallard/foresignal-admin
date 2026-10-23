import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'alerts_drafts.dart';
import 'alerts_providers.dart';

/// What each identity's values look like, for hints.
const Map<String, String> identityHints = <String, String>{
  'icao24': '6 hex digits, such as 4b1814',
  'registration': 'such as HB-JCA',
  'callsign': 'such as SWR123',
  'mmsi': '9 digits',
  'imo': '7 digits with the check digit',
  'entity': 'an entity id',
  'custom': 'any value',
};

/// The outcome of an add, remove or import (`WatchlistImportResult`).
class ImportResultPanel extends StatelessWidget {
  /// Creates the panel for [result].
  const ImportResultPanel({super.key, required this.result});

  /// The result.
  final Json result;

  @override
  Widget build(BuildContext context) {
    final invalid = jsonList(result, 'invalid');
    final dry = result['dryRun'] == true;
    return ResultPanel(
      title: dry ? 'Dry run: nothing changed' : 'Done',
      tone: invalid.isEmpty ? (dry ? StatusTone.info : StatusTone.ok) : StatusTone.warning,
      details: <MapEntry<String, Object>>[
        MapEntry<String, Object>(dry ? 'Would add' : 'Added', '${result['added']}'),
        MapEntry<String, Object>(dry ? 'Would update' : 'Updated', '${result['updated']}'),
        MapEntry<String, Object>(dry ? 'Would remove' : 'Removed', '${result['removed']}'),
        if (result['unchanged'] != null) MapEntry<String, Object>('Unchanged', '${result['unchanged']}'),
        MapEntry<String, Object>(dry ? 'Items after' : 'Items now', '${result['itemCount']}'),
        for (final i in invalid.take(20))
          MapEntry<String, Object>(
            i['row'] == null ? 'Invalid ${i['value'] ?? ''}' : 'Row ${i['row']}',
            '${i['value'] == null || i['row'] == null ? '' : '${i['value']}: '}${i['reason']}',
          ),
        if (invalid.length > 20) MapEntry<String, Object>('More invalid', '${invalid.length - 20} not shown'),
      ],
    );
  }
}

/// The watchlists (Screens §G): lists of identifiers that rules match with
/// `inWatchlist`, with **New Watchlist**.
class WatchlistsPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const WatchlistsPanel({super.key});

  @override
  ConsumerState<WatchlistsPanel> createState() => _WatchlistsPanelState();
}

class _WatchlistsPanelState extends ConsumerState<WatchlistsPanel> {
  bool _creating = false;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(
            child: Text(
              'Trigger rules match these with an inWatchlist condition. Alerts from such rules are hidden from anonymous readers.',
              style: TextStyle(color: AdminPalette.of(context).muted),
            ),
          ),
          IconButton(
            tooltip: 'Refresh',
            onPressed: () => ref.invalidate(watchlistsProvider),
            icon: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 8),
          FilledButton.icon(
            key: const Key('watchlists.new'),
            onPressed: () => setState(() => _creating = !_creating),
            icon: const Icon(Icons.add, size: 18),
            label: const Text('New Watchlist'),
          ),
        ],
      ),
      const SizedBox(height: 12),
      if (_creating) ...<Widget>[
        SectionCard(
          key: const Key('watchlists.newCard'),
          title: 'New watchlist',
          child: WatchlistForm(onDone: () => setState(() => _creating = false)),
        ),
        const SizedBox(height: 16),
      ],
      AsyncView<List<Json>>(
        value: ref.watch(watchlistsProvider),
        onRetry: () => ref.invalidate(watchlistsProvider),
        data: (lists) => DataTableCard<Json>(
          key: const Key('watchlists.table'),
          rows: lists,
          empty: 'No watchlists yet.',
          onTap: (w) => context.go(alertWatchlistPath('${w['id']}')),
          columns: <TableColumnSpec<Json>>[
            TableColumnSpec<Json>(
              label: 'Name',
              cell: (w) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('${w['name']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                  if (w['description'] case final String d)
                    Text(d, style: TextStyle(color: AdminPalette.of(context).muted, fontSize: 12)),
                ],
              ),
            ),
            TableColumnSpec<Json>(label: 'Identity', cell: (w) => Text(wireText('${w['identity']}'))),
            TableColumnSpec<Json>(label: 'Normalize', cell: (w) => Text(wireText('${w['normalize'] ?? 'default'}'))),
            TableColumnSpec<Json>(label: 'Items', numeric: true, cell: (w) => Text('${w['itemCount']}')),
            TableColumnSpec<Json>(label: 'Updated', cell: (w) => Text(whenText(w['updatedAt']))),
            TableColumnSpec<Json>(
              label: 'Actions',
              cell: (w) => TextButton(
                key: Key('watchlists.open.${w['id']}'),
                onPressed: () => context.go(alertWatchlistPath('${w['id']}')),
                child: const Text('Open'),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

/// A watchlist's name, identity, normalization and description. A new list
/// is created with `createWatchlist` and opened; a stored one is replaced
/// with `updateWatchlist` (its identity is fixed) and confirmed by
/// re-reading.
class WatchlistForm extends ConsumerStatefulWidget {
  /// Creates the form for [watchlist], or for a new one.
  const WatchlistForm({super.key, this.watchlist, this.onDone});

  /// The stored list; `null` for a new one.
  final Json? watchlist;

  /// Called on Cancel (new lists only).
  final VoidCallback? onDone;

  @override
  ConsumerState<WatchlistForm> createState() => _WatchlistFormState();
}

class _WatchlistFormState extends ConsumerState<WatchlistForm> with WriteTracking<WatchlistForm> {
  late WatchlistDraft _draft;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _description = TextEditingController();
  Map<String, String> _errors = const <String, String>{};

  @override
  void initState() {
    super.initState();
    _adopt();
  }

  void _adopt() {
    _draft = widget.watchlist == null ? WatchlistDraft() : WatchlistDraft.of(widget.watchlist!);
    _name.text = _draft.name;
    _description.text = _draft.description;
  }

  @override
  void dispose() {
    _name.dispose();
    _description.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    _draft
      ..name = _name.text
      ..description = _description.text;
    setState(() => _errors = _draft.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final lists = api.getWatchlistsApi();
    final body = fromJsonMap<WatchlistInput>(api.serializers, _draft.toJson());
    final id = widget.watchlist?['id'] as String?;
    if (id == null) {
      final created = await track(
        () async => toJsonMap(api.serializers, await callApiRequired(() => lists.createWatchlist(watchlistInput: body))),
      );
      if (created != null && mounted) {
        ref.invalidate(watchlistsProvider);
        context.go(alertWatchlistPath('${created['id']}'));
      }
      return;
    }
    final saved = await track(
      () => writeThenConfirm<Json>(
        write: () => lists.updateWatchlist(watchlistId: id, watchlistInput: body),
        reread: () async => toJsonMap(api.serializers, await callApiRequired(() => lists.getWatchlist(watchlistId: id))),
        confirm: (w) => w['name'] == _draft.name.trim() ? null : 'The watchlist reads back differently.',
      ),
    );
    if (saved != null) {
      ref
        ..invalidate(watchlistsProvider)
        ..invalidate(watchlistProvider(id));
    }
  }

  @override
  Widget build(BuildContext context) {
    final creating = widget.watchlist == null;
    final empty = (widget.watchlist?['itemCount'] as int? ?? 0) == 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'Name',
          field: PlainField(key: const Key('watchlist.name'), controller: _name, error: _errors['name']),
        ),
        LabeledField(
          label: 'Identity',
          help: creating ? 'What the values identify. It cannot change later.' : 'Fixed once created.',
          field: creating
              ? WireDropdown(
                  key: const Key('watchlist.identity'),
                  value: _draft.identity,
                  values: watchlistIdentities,
                  labels: const <String, String>{'icao24': 'ICAO 24-bit address', 'mmsi': 'MMSI', 'imo': 'IMO number'},
                  onChanged: (v) => setState(() => _draft.identity = v),
                )
              : Text(wireText(_draft.identity)),
        ),
        LabeledField(
          label: 'Normalize',
          help: creating || empty
              ? 'How values are stored and compared. Default: upper for aircraft ids, digits for MMSI and IMO, none otherwise.'
              : 'Can change only while the list is empty.',
          field: WireDropdown(
            key: const Key('watchlist.normalize'),
            value: _draft.normalize ?? 'default',
            values: creating || empty ? const <String>['default', ...watchlistNormalizations] : <String>[_draft.normalize ?? 'default'],
            labels: const <String, String>{'default': 'Identity default'},
            onChanged: (v) => setState(() => _draft.normalize = v == 'default' ? null : v),
          ),
        ),
        LabeledField(
          label: 'Description',
          field: PlainField(key: const Key('watchlist.description'), controller: _description, maxLines: 3),
        ),
        FormActions(
          busy: busy,
          saveLabel: creating ? 'Create Watchlist' : 'Save Changes',
          onSave: _save,
          onReset: creating
              ? widget.onDone
              : () => setState(() {
                  _adopt();
                  _errors = const <String, String>{};
                  write = const WriteIdle();
                }),
          leading: <Widget>[WriteStatusLine(state: write)],
        ),
      ],
    );
  }
}

/// One watchlist (`/alerts/watchlists/:watchlistId`): settings, its items
/// (search, add, remove), import and export, and delete.
class WatchlistScreen extends ConsumerWidget {
  /// Creates the page for watchlist [watchlistId].
  const WatchlistScreen({super.key, required this.watchlistId});

  /// The watchlist.
  final String watchlistId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(watchlistProvider(watchlistId));
    final name = list.value?['name'] as String?;
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: name ?? 'Watchlist',
          crumbs: <Crumb>[
            const Crumb('Alerts', alertsPath),
            const Crumb('Watchlists', alertWatchlistsPath),
            Crumb(name ?? watchlistId),
          ],
          subtitle: list.value == null
              ? null
              : '${wireText('${list.value!['identity']}')} · ${watchlistItemCount(list.value!['itemCount'])}',
        ),
        AsyncView<Json>(
          value: list,
          onRetry: () => ref.invalidate(watchlistProvider(watchlistId)),
          data: (w) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: WatchlistItemsCard(watchlist: w)),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 440,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SectionCard(
                          title: 'Settings',
                          child: WatchlistForm(key: ValueKey<String>('w.${w['updatedAt']}'), watchlist: w),
                        ),
                        const SizedBox(height: 16),
                        AddItemsCard(watchlist: w),
                        const SizedBox(height: 16),
                        _DeleteWatchlistCard(watchlist: w),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ImportExportCard(watchlist: w),
            ],
          ),
        ),
      ],
    );
  }
}

/// Refreshes a watchlist and everything listing it after its items change.
void invalidateWatchlist(WidgetRef ref, String id) {
  ref
    ..invalidate(watchlistsProvider)
    ..invalidate(watchlistProvider(id))
    ..invalidate(watchlistItemsProvider);
}

/// A watchlist's items, a page at a time, searchable by value or label
/// prefix, each removable (`removeWatchlistItems`).
class WatchlistItemsCard extends ConsumerStatefulWidget {
  /// Creates the card for [watchlist].
  const WatchlistItemsCard({super.key, required this.watchlist});

  /// The watchlist.
  final Json watchlist;

  @override
  ConsumerState<WatchlistItemsCard> createState() => _WatchlistItemsCardState();
}

class _WatchlistItemsCardState extends ConsumerState<WatchlistItemsCard> with WriteTracking<WatchlistItemsCard> {
  final TextEditingController _search = TextEditingController();
  String _prefix = '';
  final List<String?> _cursors = <String?>[null];
  String? _pendingRemove;

  String get _id => '${widget.watchlist['id']}';

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  Future<void> _remove(String value) async {
    final api = ref.read(foresignalApiProvider);
    final lists = api.getWatchlistsApi();
    final ok = await track(() async {
      final r = await callApiRequired(
        () => lists.removeWatchlistItems(watchlistId: _id, value: BuiltList<String>(<String>[value])),
      );
      final page = await callApiRequired(() => lists.listWatchlistItems(watchlistId: _id, q: value, limit: 10));
      if (page.items.any((i) => i.value == value)) {
        throw const WriteNotConfirmedException('The value is still on the list.');
      }
      return toJsonMap(api.serializers, r);
    });
    if (ok != null) {
      invalidateWatchlist(ref, _id);
    }
  }

  @override
  Widget build(BuildContext context) {
    final query = (watchlistId: _id, prefix: _prefix, cursor: _cursors.last);
    return SectionCard(
      key: const Key('watchlist.items'),
      title: 'Items',
      actions: <Widget>[
        SizedBox(
          width: 220,
          child: PlainField(
            key: const Key('watchlist.search'),
            controller: _search,
            hint: 'Value or label prefix',
            onSubmitted: (t) => setState(() {
              _prefix = t;
              _cursors
                ..clear()
                ..add(null);
            }),
          ),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_pendingRemove case final v?)
            ConfirmRow(
              message: 'Remove $v from the list?',
              action: 'Remove',
              confirmKey: const Key('watchlist.remove.confirm'),
              onConfirm: () {
                setState(() => _pendingRemove = null);
                unawaited(_remove(v));
              },
              onCancel: () => setState(() => _pendingRemove = null),
            ),
          if (write is! WriteIdle) statusLine,
          AsyncView<Json>(
            value: ref.watch(watchlistItemsProvider(query)),
            onRetry: () => ref.invalidate(watchlistItemsProvider(query)),
            data: (page) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                DataTableCard<Json>(
                  key: const Key('watchlist.itemsTable'),
                  rows: jsonList(page, 'items'),
                  empty: _prefix.isEmpty ? 'No items yet.' : 'No items start with "$_prefix".',
                  columns: <TableColumnSpec<Json>>[
                    TableColumnSpec<Json>(
                      label: 'Value',
                      cell: (i) => Text('${i['value']}', style: const TextStyle(fontFamily: 'monospace')),
                    ),
                    TableColumnSpec<Json>(label: 'Label', cell: (i) => Text('${i['label'] ?? '—'}')),
                    TableColumnSpec<Json>(
                      label: 'Tags',
                      cell: (i) => Text(((i['tags'] as List<Object?>?) ?? const <Object?>[]).join(', ')),
                    ),
                    TableColumnSpec<Json>(label: 'Added', cell: (i) => Text('${whenText(i['addedAt'])} · ${i['origin']}')),
                    TableColumnSpec<Json>(
                      label: '',
                      cell: (i) => IconButton(
                        key: Key('watchlist.remove.${i['value']}'),
                        tooltip: 'Remove',
                        onPressed: busy ? null : () => setState(() => _pendingRemove = '${i['value']}'),
                        icon: const Icon(Icons.remove_circle_outline, size: 18),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    if (_cursors.length > 1)
                      TextButton(
                        onPressed: () => setState(_cursors.removeLast),
                        child: const Text('Previous'),
                      ),
                    const Spacer(),
                    if (page['nextCursor'] case final String next)
                      TextButton(
                        key: const Key('watchlist.next'),
                        onPressed: () => setState(() => _cursors.add(next)),
                        child: const Text('Next'),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Adds or updates items typed one per line (`addWatchlistItems`).
class AddItemsCard extends ConsumerStatefulWidget {
  /// Creates the card for [watchlist].
  const AddItemsCard({super.key, required this.watchlist});

  /// The watchlist.
  final Json watchlist;

  @override
  ConsumerState<AddItemsCard> createState() => _AddItemsCardState();
}

class _AddItemsCardState extends ConsumerState<AddItemsCard> with WriteTracking<AddItemsCard> {
  final TextEditingController _lines = TextEditingController();
  Json? _result;
  String? _error;

  @override
  void dispose() {
    _lines.dispose();
    super.dispose();
  }

  Future<void> _add() async {
    final items = parseItemLines(_lines.text);
    setState(() {
      _error = items.isEmpty ? 'Type at least one value.' : null;
      _result = null;
    });
    if (items.isEmpty) {
      return;
    }
    final id = '${widget.watchlist['id']}';
    final api = ref.read(foresignalApiProvider);
    final r = await track(
      () async => toJsonMap(
        api.serializers,
        await callApiRequired(
          () => api.getWatchlistsApi().addWatchlistItems(
            watchlistId: id,
            watchlistItemsInput: fromJsonMap<WatchlistItemsInput>(api.serializers, <String, Object?>{'items': items}),
          ),
        ),
      ),
    );
    if (r != null && mounted) {
      setState(() {
        _result = r;
        write = const WriteIdle();
        if (jsonList(r, 'invalid').isEmpty) {
          _lines.clear();
        }
      });
      invalidateWatchlist(ref, id);
    }
  }

  @override
  Widget build(BuildContext context) {
    final identity = '${widget.watchlist['identity']}';
    return SectionCard(
      key: const Key('watchlist.add'),
      title: 'Add items',
      subtitle: 'One per line: a value, or value, label. ${wireText(identity)}: ${identityHints[identity] ?? ''}.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          JsonField(key: const Key('watchlist.add.lines'), controller: _lines, error: _error, minLines: 3, maxLines: 10),
          const SizedBox(height: 8),
          FormActions(
            busy: busy,
            saveLabel: 'Add Items',
            onSave: _add,
            leading: <Widget>[if (write is WriteFailed) WriteStatusLine(state: write)],
          ),
          if (_result case final r?) ...<Widget>[
            const SizedBox(height: 8),
            ImportResultPanel(key: const Key('watchlist.add.result'), result: r),
          ],
        ],
      ),
    );
  }
}

/// Imports items from pasted CSV (header `value[,label,notes,tags]`) or a
/// JSON array (`importWatchlist`), merging or replacing, optionally as a
/// dry run; and shows the list exported as CSV (`exportWatchlist`).
class ImportExportCard extends ConsumerStatefulWidget {
  /// Creates the card for [watchlist].
  const ImportExportCard({super.key, required this.watchlist});

  /// The watchlist.
  final Json watchlist;

  @override
  ConsumerState<ImportExportCard> createState() => _ImportExportCardState();
}

class _ImportExportCardState extends ConsumerState<ImportExportCard> with WriteTracking<ImportExportCard> {
  final TextEditingController _text = TextEditingController();
  String _mode = 'merge';
  bool _dryRun = true;
  bool _confirming = false;
  Json? _result;
  String? _error;
  String? _export;

  String get _id => '${widget.watchlist['id']}';

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  Future<void> _import() async {
    final List<Map<String, Object?>> items;
    try {
      items = parseWatchlistImport(_text.text);
    } on FormatException catch (e) {
      setState(() => _error = e.message);
      return;
    }
    if (items.isEmpty) {
      setState(() => _error = 'Paste CSV with a header line, or a JSON array of items.');
      return;
    }
    if (_mode == 'replace' && !_dryRun && !_confirming) {
      setState(() {
        _error = null;
        _confirming = true;
      });
      return;
    }
    setState(() {
      _error = null;
      _confirming = false;
      _result = null;
    });
    final api = ref.read(foresignalApiProvider);
    final r = await track(
      () async => toJsonMap(
        api.serializers,
        await callApiRequired(
          () => api.getWatchlistsApi().importWatchlist(
            watchlistId: _id,
            body: jsonArrayText(items),
            mode: _mode,
            dryRun: _dryRun,
          ),
        ),
      ),
    );
    if (r != null && mounted) {
      setState(() {
        _result = r;
        write = const WriteIdle();
      });
      if (!_dryRun) {
        invalidateWatchlist(ref, _id);
      }
    }
  }

  Future<void> _exportCsv() async {
    final api = ref.read(foresignalApiProvider);
    final csv = await track(() => callApiRequired(() => api.getWatchlistsApi().exportWatchlist(watchlistId: _id)));
    if (csv != null && mounted) {
      setState(() {
        _export = csv;
        write = const WriteIdle();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('watchlist.import'),
      title: 'Import and export',
      subtitle: 'Paste CSV with the header value,label,notes,tags (tags separated by ;), or a JSON array of items. '
          'Up to 100,000 items per list.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          JsonField(
            key: const Key('watchlist.import.text'),
            controller: _text,
            error: _error,
            hint: 'value,label\n273456780,MV Example',
            minLines: 4,
            maxLines: 14,
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 16,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              SegmentedButton<String>(
                key: const Key('watchlist.import.mode'),
                segments: const <ButtonSegment<String>>[
                  ButtonSegment<String>(value: 'merge', label: Text('Merge')),
                  ButtonSegment<String>(value: 'replace', label: Text('Replace')),
                ],
                selected: <String>{_mode},
                onSelectionChanged: (s) => setState(() {
                  _mode = s.first;
                  _confirming = false;
                }),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Checkbox(
                    key: const Key('watchlist.import.dryRun'),
                    value: _dryRun,
                    onChanged: (v) => setState(() {
                      _dryRun = v ?? true;
                      _confirming = false;
                    }),
                  ),
                  const Text('Dry run (report only)'),
                ],
              ),
              FilledButton(
                key: const Key('watchlist.import.run'),
                onPressed: busy ? null : _import,
                child: Text(_dryRun ? 'Check Import' : 'Import'),
              ),
              OutlinedButton.icon(
                key: const Key('watchlist.export'),
                onPressed: busy ? null : _exportCsv,
                icon: const Icon(Icons.download, size: 18),
                label: const Text('Show Export'),
              ),
            ],
          ),
          if (_mode == 'replace')
            const Footnote('Replace removes every item not in the pasted list.'),
          if (_confirming) ...<Widget>[
            const SizedBox(height: 8),
            ConfirmRow(
              message: 'Replace the whole list with the pasted items?',
              action: 'Replace',
              confirmKey: const Key('watchlist.import.confirm'),
              onConfirm: _import,
              onCancel: () => setState(() => _confirming = false),
            ),
          ],
          if (write is WriteFailed) statusLine,
          if (_result case final r?) ...<Widget>[
            const SizedBox(height: 10),
            ImportResultPanel(key: const Key('watchlist.import.result'), result: r),
          ],
          if (_export case final csv?) ...<Widget>[
            const SizedBox(height: 12),
            Row(
              children: <Widget>[
                Text('Export', style: Theme.of(context).textTheme.labelLarge),
                const Spacer(),
                TextButton.icon(
                  key: const Key('watchlist.export.copy'),
                  onPressed: () => Clipboard.setData(ClipboardData(text: csv)),
                  icon: const Icon(Icons.copy, size: 16),
                  label: const Text('Copy'),
                ),
                TextButton(onPressed: () => setState(() => _export = null), child: const Text('Close')),
              ],
            ),
            Container(
              key: const Key('watchlist.export.text'),
              constraints: const BoxConstraints(maxHeight: 260),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).dividerColor),
                borderRadius: BorderRadius.circular(6),
              ),
              child: SingleChildScrollView(
                child: SelectableText(
                  csv.isEmpty ? '(empty)' : csv,
                  style: TextStyle(fontFamily: 'monospace', fontSize: 12, color: csv.isEmpty ? muted : null),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _DeleteWatchlistCard extends ConsumerStatefulWidget {
  const _DeleteWatchlistCard({required this.watchlist});

  final Json watchlist;

  @override
  ConsumerState<_DeleteWatchlistCard> createState() => _DeleteWatchlistCardState();
}

class _DeleteWatchlistCardState extends ConsumerState<_DeleteWatchlistCard> with WriteTracking<_DeleteWatchlistCard> {
  bool _confirming = false;

  Future<void> _delete() async {
    final id = '${widget.watchlist['id']}';
    final lists = ref.read(foresignalApiProvider).getWatchlistsApi();
    final ok = await track(() async {
      await callApi(() => lists.deleteWatchlist(watchlistId: id));
      try {
        await callApiRequired(() => lists.getWatchlist(watchlistId: id));
      } on ProblemException catch (e) {
        if (e.status == 404) {
          return true;
        }
        rethrow;
      }
      throw const WriteNotConfirmedException('The watchlist still reads back.');
    });
    if (ok == true && mounted) {
      ref.invalidate(watchlistsProvider);
      context.go(alertWatchlistsPath);
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    title: 'Delete',
    subtitle: 'Rules that name it in a condition stop matching it.',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (_confirming)
          ConfirmRow(
            message: 'Delete "${widget.watchlist['name']}" and its ${watchlistItemCount(widget.watchlist['itemCount'])}?',
            action: 'Delete',
            confirmKey: const Key('watchlist.delete.confirm'),
            onConfirm: () {
              setState(() => _confirming = false);
              unawaited(_delete());
            },
            onCancel: () => setState(() => _confirming = false),
          )
        else
          Align(
            alignment: Alignment.centerLeft,
            child: DangerButton(
              key: const Key('watchlist.delete'),
              label: 'Delete Watchlist',
              onPressed: busy ? null : () => setState(() => _confirming = true),
            ),
          ),
        if (write is WriteFailed) statusLine,
      ],
    ),
  );
}

/// "1 item" or "N items" for a watchlist's `itemCount`.
String watchlistItemCount(Object? count) => count == 1 ? '1 item' : '$count items';
