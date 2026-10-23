import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'serving_drafts.dart';
import 'serving_providers.dart';
import 'serving_widgets.dart';

/// A sink kind as people read it.
String sinkKindText(Object? kind) => switch (kind) {
  'CHANGE_FEED' => 'Change feed',
  'STATE_MIRROR' => 'State mirror',
  _ => '${kind ?? '—'}',
};

/// A sink's kind and mode, as in "State mirror · Push".
String sinkDeliveryText(Json sink) => '${sinkKindText(sink['kind'])} · ${wireText('${sink['mode'] ?? ''}')}';

/// The Sinks tab: every outbound sink with its state, and the sink types
/// the backend offers.
class SinksPanel extends ConsumerWidget {
  /// Creates the panel.
  const SinksPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final types = ref.watch(sinkTypesProvider).value ?? const <Json>[];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionCard(
          key: const Key('sinks.list'),
          title: 'Sinks',
          subtitle: 'Every record passes the license egress guard before it reaches a sink.',
          actions: <Widget>[
            IconButton(
              tooltip: 'Refresh',
              onPressed: () => ref.invalidate(sinksProvider),
              icon: const Icon(Icons.refresh),
            ),
            FilledButton.icon(
              key: const Key('sinks.add'),
              onPressed: () => context.go(servingNewSinkPath),
              icon: const Icon(Icons.add, size: 18),
              label: const Text('Add Sink'),
            ),
          ],
          child: AsyncView<List<Json>>(
            value: ref.watch(sinksProvider),
            onRetry: () => ref.invalidate(sinksProvider),
            data: (sinks) => DataTableCard<Json>(
              key: const Key('sinks.table'),
              rows: sinks,
              empty: 'No sinks yet.',
              onTap: (s) => context.go(servingSinkPath('${s['id']}')),
              columns: <TableColumnSpec<Json>>[
                TableColumnSpec<Json>(
                  label: 'Sink',
                  cell: (s) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('${s['name']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                      Text('${s['id']}', style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                TableColumnSpec<Json>(
                  label: 'Type',
                  cell: (s) => Text('${sinkTypeOf(types, s['type'])?['name'] ?? s['type']}'),
                ),
                TableColumnSpec<Json>(label: 'Delivery', cell: (s) => Text(sinkDeliveryText(s))),
                TableColumnSpec<Json>(
                  label: 'State',
                  cell: (s) => s['enabled'] == true
                      ? StatusLabel(label: wireText('${s['state'] ?? 'STOPPED'}'), tone: sinkStateTone(s['state']))
                      : const StatusLabel(label: 'Disabled', tone: StatusTone.neutral),
                ),
                TableColumnSpec<Json>(label: 'Updated', cell: (s) => Text(whenText(s['updatedAt']))),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        const _SinkTypesCard(),
      ],
    );
  }
}

class _SinkTypesCard extends ConsumerWidget {
  const _SinkTypesCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) => SectionCard(
    key: const Key('sinks.types'),
    title: 'Sink Types',
    subtitle: 'Push sinks connect out; serve sinks listen on a LAN address.',
    child: AsyncView<List<Json>>(
      value: ref.watch(sinkTypesProvider),
      onRetry: () => ref.invalidate(sinkTypesProvider),
      data: (types) => DataTableCard<Json>(
        rows: types,
        empty: 'The backend offers no sink types.',
        columns: <TableColumnSpec<Json>>[
          TableColumnSpec<Json>(
            label: 'Type',
            cell: (t) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('${t['name']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                Text('${t['id']}', style: const TextStyle(fontSize: 12)),
              ],
            ),
          ),
          TableColumnSpec<Json>(label: 'Kind', cell: (t) => Text(sinkKindText(t['kind']))),
          TableColumnSpec<Json>(
            label: 'Modes',
            cell: (t) => Text(<String>[for (final m in (t['modes'] as List?) ?? const []) wireText('$m')].join(', ')),
          ),
          TableColumnSpec<Json>(
            label: 'Secrets',
            cell: (t) => Text(listText(t['secretFields']).isEmpty ? '—' : listText(t['secretFields'])),
          ),
          TableColumnSpec<Json>(
            label: 'About',
            cell: (t) => ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 360),
              child: Text('${t['description'] ?? ''}', maxLines: 2, overflow: TextOverflow.ellipsis),
            ),
          ),
        ],
      ),
    ),
  );
}

/// One sink (`/serving/sinks/:sinkId`), or a new one (`/serving/new-sink`):
/// its settings, and for a stored sink its status, a test and deletion.
class SinkScreen extends ConsumerWidget {
  /// Creates the page for [sinkId], or a new sink when `null`.
  const SinkScreen({super.key, this.sinkId});

  /// The sink id, or `null` for a new one.
  final String? sinkId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = sinkId;
    final crumbs = <Crumb>[const Crumb('Serving', servingPath), const Crumb('Sinks', servingPath), Crumb(id ?? 'New sink')];
    if (id == null) {
      return ListView(
        padding: const EdgeInsets.all(28),
        children: <Widget>[PageHeader(title: 'New Sink', crumbs: crumbs), const _NewSink()],
      );
    }
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(title: ref.watch(sinkProvider(id)).value?['name'] as String? ?? id, crumbs: crumbs),
        AsyncView<Json>(
          value: ref.watch(sinkProvider(id)),
          onRetry: () => ref.invalidate(sinkProvider(id)),
          data: (sink) => AsyncView<List<Json>>(
            value: ref.watch(sinkTypesProvider),
            onRetry: () => ref.invalidate(sinkTypesProvider),
            data: (types) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: SinkForm(
                    key: ValueKey<String>(id),
                    sink: sink,
                    type: sinkTypeOf(types, sink['type']) ?? <String, Object?>{'id': sink['type']},
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 420,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      _SinkStatusCard(sinkId: id),
                      const SizedBox(height: 16),
                      _SinkTestCard(sinkId: id),
                      const SizedBox(height: 16),
                      ServingDeleteCard(
                        keyPrefix: 'sink.delete',
                        buttonLabel: 'Delete Sink',
                        subtitle: 'Stops the sink and deletes its cursor.',
                        message: 'Delete sink ${sink['name']}?',
                        delete: () async {
                          await callApi(() => ref.read(foresignalApiProvider).getSinksApi().deleteSink(sinkId: id));
                        },
                        gone: () => readsAsGone(() => ref.read(foresignalApiProvider).getSinksApi().getSink(sinkId: id)),
                        after: () {
                          ref.invalidate(sinksProvider);
                          context.go(servingPath);
                        },
                      ),
                    ],
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

class _NewSink extends ConsumerStatefulWidget {
  const _NewSink();

  @override
  ConsumerState<_NewSink> createState() => _NewSinkState();
}

class _NewSinkState extends ConsumerState<_NewSink> {
  String? _type;

  @override
  Widget build(BuildContext context) => AsyncView<List<Json>>(
    value: ref.watch(sinkTypesProvider),
    onRetry: () => ref.invalidate(sinkTypesProvider),
    data: (types) {
      final type = sinkTypeOf(types, _type);
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SectionCard(
            title: 'Type',
            subtitle: 'What the sink speaks. The type is fixed once created.',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                WireDropdown(
                  key: const Key('sink.type'),
                  value: _type,
                  values: <String>[for (final t in types) '${t['id']}'],
                  labels: <String, String>{for (final t in types) '${t['id']}': '${t['name']}'},
                  hint: 'Choose a sink type',
                  onChanged: (v) => setState(() => _type = v),
                ),
                if (type != null) ...<Widget>[
                  const SizedBox(height: 8),
                  Text(
                    '${sinkKindText(type['kind'])} · '
                    '${<String>[for (final m in (type['modes'] as List?) ?? const []) wireText('$m')].join(' or ')}'
                    '${type['description'] == null ? '' : '. ${type['description']}'}',
                    style: TextStyle(color: AdminPalette.of(context).muted),
                  ),
                ],
              ],
            ),
          ),
          if (type != null) ...<Widget>[
            const SizedBox(height: 16),
            SinkForm(key: ValueKey<String>('new-${type['id']}'), sink: null, type: type),
          ],
        ],
      );
    },
  );
}

/// A sink's settings (`createSink`, `updateSink`), confirmed by `getSink`.
/// The config is the type's JSON object, described by its schema; secrets
/// are write-only.
class SinkForm extends ConsumerStatefulWidget {
  /// Creates the form for stored [sink], or a new sink of [type] when
  /// [sink] is `null`.
  const SinkForm({super.key, required this.sink, required this.type});

  /// The sink as read, or `null`.
  final Json? sink;

  /// The sink's type (`SinkType`).
  final Json type;

  @override
  ConsumerState<SinkForm> createState() => _SinkFormState();
}

class _SinkFormState extends ConsumerState<SinkForm> with WriteTracking<SinkForm> {
  late SinkDraft _draft = _fresh();
  final Map<String, TextEditingController> _c = <String, TextEditingController>{};
  Map<String, String> _errors = const <String, String>{};
  int _scopeKey = 0;

  bool get _creating => widget.sink == null;

  SinkDraft _fresh() => widget.sink == null ? SinkDraft.create(widget.type) : SinkDraft.of(widget.sink!);

  List<String> get _secretFields => <String>[for (final f in (widget.type['secretFields'] as List?) ?? const []) '$f'];

  Set<String> get _secretsSet => <String>{for (final f in (widget.sink?['secretsSet'] as List?) ?? const []) '$f'};

  TextEditingController _ctl(String key) => _c.putIfAbsent(key, TextEditingController.new);

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() {
    _ctl('id').text = _draft.id;
    _ctl('name').text = _draft.name;
    _ctl('config').text = _draft.config;
    _ctl('watchlistId').text = _draft.watchlistId;
    for (final f in _secretFields) {
      _ctl('secret.$f').clear();
    }
  }

  @override
  void dispose() {
    for (final c in _c.values) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    _draft
      ..id = _c['id']!.text
      ..name = _c['name']!.text
      ..config = _c['config']!.text
      ..watchlistId = _c['watchlistId']!.text;
    _draft.secrets
      ..clear()
      ..addAll(<String, String>{for (final f in _secretFields) f: _c['secret.$f']!.text});
    setState(() => _errors = _draft.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final sinks = api.getSinksApi();
    final id = _creating ? _draft.id.trim() : '${widget.sink!['id']}';
    final body = _draft.toJson();
    final typed = <String>{for (final e in _draft.secrets.entries) if (e.value.isNotEmpty) e.key};
    final removed = Set<String>.of(_draft.removeSecrets);
    final saved = await track(
      () => writeThenConfirm<Json>(
        write: () async {
          if (_creating) {
            await callApi(() => sinks.createSink(sinkCreate: fromJsonMap<SinkCreate>(api.serializers, body)));
          } else {
            await callApi(
              () => sinks.updateSink(sinkId: id, sinkUpdate: fromJsonMap<SinkUpdate>(api.serializers, body)),
            );
          }
        },
        reread: () async => toJsonMap(api.serializers, await callApiRequired(() => sinks.getSink(sinkId: id))),
        confirm: (s) {
          final set = <String>{for (final f in (s['secretsSet'] as List?) ?? const []) '$f'};
          if (s['name'] != body['name'] || s['enabled'] != body['enabled']) {
            return 'The sink reads back differently.';
          }
          if (!set.containsAll(typed)) {
            return 'A secret typed here is not reported as set.';
          }
          if (set.intersection(removed).isNotEmpty) {
            return 'A removed secret is still reported as set.';
          }
          return null;
        },
      ),
    );
    if (saved != null && mounted) {
      ref
        ..invalidate(sinksProvider)
        ..invalidate(sinkProvider(id))
        ..invalidate(sinkStatusProvider(id));
      if (_creating) {
        context.go(servingSinkPath(id));
      } else {
        setState(() {
          _draft.removeSecrets.clear();
          for (final f in _secretFields) {
            _c['secret.$f']!.clear();
          }
        });
      }
    }
  }

  Widget _field(String label, String key, {String? help, String? hint}) => LabeledField(
    label: label,
    help: help,
    field: PlainField(key: Key('sink.$key'), controller: _ctl(key), error: _errors[key], hint: hint),
  );

  @override
  Widget build(BuildContext context) {
    final d = _draft;
    final muted = AdminPalette.of(context).muted;
    final fields = configFields(widget.type);
    final serveOnly = ((widget.type['modes'] as List?) ?? const []).every((m) => m == 'SERVE');
    return SectionCard(
      key: const Key('sink.form'),
      title: 'Settings',
      subtitle: _creating
          ? 'Sinks are created disabled unless enabled here. The id is fixed once created.'
          : 'Saving replaces the settings; secrets are kept unless typed or removed.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_creating)
            _field('Id', 'id', help: 'Lower-case words joined by -, such as home-assistant.', hint: 'home-assistant')
          else
            LabeledField(label: 'Id', field: SelectableText(d.id)),
          LabeledField(
            label: 'Type',
            field: Text('${widget.type['name'] ?? d.type} (${sinkKindText(widget.type['kind'] ?? widget.sink?['kind'])})'),
          ),
          _field('Name', 'name'),
          LabeledField(
            label: 'Enabled',
            help: 'Enabling starts the sink; disabling stops it.',
            field: SwitchField(key: const Key('sink.enabled'), value: d.enabled, onChanged: (v) => setState(() => d.enabled = v)),
          ),
          LabeledField(
            label: 'Config',
            help: serveOnly
                ? 'A JSON object. Serve sinks need a port, and bind only to loopback or LAN addresses.'
                : 'A JSON object, checked against the type\'s schema when saved.',
            field: JsonField(key: const Key('sink.config'), controller: _ctl('config'), error: _errors['config'], minLines: 5),
          ),
          if (fields.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Column(
                key: const Key('sink.config.fields'),
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  for (final f in fields)
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text.rich(
                        TextSpan(
                          children: <InlineSpan>[
                            TextSpan(
                              text: f.name,
                              style: const TextStyle(fontFamily: 'monospace', fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: '  ${f.type}${f.required ? ', required' : ''}'
                                  '${f.defaultValue == null ? '' : ', default ${f.defaultValue}'}'
                                  '${f.description.isEmpty ? '' : ' — ${f.description}'}',
                            ),
                          ],
                        ),
                        style: TextStyle(color: muted, fontSize: 12),
                      ),
                    ),
                ],
              ),
            ),
          for (final f in _secretFields)
            LabeledField(
              label: f,
              help: _secretsSet.contains(f)
                  ? (d.removeSecrets.contains(f) ? 'Set; removed when saved.' : 'Set. Type a new value to replace it; leave empty to keep.')
                  : 'Write-only; never shown again once saved.',
              field: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      key: Key('sink.secret.$f'),
                      controller: _ctl('secret.$f'),
                      obscureText: true,
                      enabled: !d.removeSecrets.contains(f),
                      decoration: const InputDecoration(isDense: true),
                    ),
                  ),
                  if (_secretsSet.contains(f)) ...<Widget>[
                    const SizedBox(width: 8),
                    TextButton(
                      key: Key('sink.secret.$f.remove'),
                      onPressed: () => setState(() {
                        if (!d.removeSecrets.remove(f)) {
                          d.removeSecrets.add(f);
                          _c['secret.$f']!.clear();
                        }
                      }),
                      child: Text(d.removeSecrets.contains(f) ? 'Keep' : 'Remove'),
                    ),
                  ],
                ],
              ),
            ),
          const SizedBox(height: 16),
          Text('Filter', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          ScopeFields(key: ValueKey<int>(_scopeKey), draft: d.scope, prefix: 'sink.filter', errors: _errors),
          _field('Watchlist', 'watchlistId', help: 'A watchlist whose members are delivered; empty for none.'),
          LabeledField(
            label: 'Private sources',
            help: 'Only for a serve sink on loopback, or a push target at a private address.',
            field: SwitchField(
              key: const Key('sink.includePrivate'),
              value: d.includePrivate,
              onChanged: (v) => setState(() => d.includePrivate = v),
            ),
          ),
          FormActions(
            busy: busy,
            onSave: _save,
            saveLabel: _creating ? 'Create Sink' : 'Save Changes',
            onReset: _creating
                ? null
                : () => setState(() {
                    _draft = _fresh();
                    _errors = const <String, String>{};
                    _scopeKey++;
                    _load();
                  }),
            leading: <Widget>[statusLine],
          ),
        ],
      ),
    );
  }
}

class _SinkStatusCard extends ConsumerStatefulWidget {
  const _SinkStatusCard({required this.sinkId});

  final String sinkId;

  @override
  ConsumerState<_SinkStatusCard> createState() => _SinkStatusCardState();
}

class _SinkStatusCardState extends ConsumerState<_SinkStatusCard> with WriteTracking<_SinkStatusCard> {
  bool _confirming = false;

  Future<void> _resync() async {
    final api = ref.read(foresignalApiProvider);
    final r = await track(() => callApiRequired(() => api.getSinksApi().resyncSink(sinkId: widget.sinkId)));
    if (r != null && mounted) {
      setState(() => _confirming = false);
      ref
        ..invalidate(sinkStatusProvider(widget.sinkId))
        ..invalidate(sinkProvider(widget.sinkId));
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('sink.status'),
      title: 'Status',
      subtitle: 'Cursor, lag and delivery counters.',
      actions: <Widget>[
        IconButton(
          key: const Key('sink.status.refresh'),
          tooltip: 'Refresh',
          onPressed: () => ref.invalidate(sinkStatusProvider(widget.sinkId)),
          icon: const Icon(Icons.refresh),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AsyncView<Json>(
            value: ref.watch(sinkStatusProvider(widget.sinkId)),
            onRetry: () => ref.invalidate(sinkStatusProvider(widget.sinkId)),
            data: (s) {
              final denied = jsonMap(s, 'denied') ?? const <String, Object?>{};
              final clients = jsonMap(s, 'clients');
              final byReason = jsonMap(denied, 'byReason') ?? const <String, Object?>{};
              final bySource = jsonMap(denied, 'bySource') ?? const <String, Object?>{};
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  KeyValueList(
                    keyWidth: 130,
                    entries: <MapEntry<String, Object>>[
                      MapEntry<String, Object>(
                        'State',
                        Align(
                          alignment: Alignment.centerLeft,
                          child: StatusLabel(label: wireText('${s['state']}'), tone: sinkStateTone(s['state'])),
                        ),
                      ),
                      MapEntry<String, Object>('Last seq', countText(s['lastSeq'])),
                      MapEntry<String, Object>('Published seq', countText(s['lastPublishedSeq'])),
                      MapEntry<String, Object>('Lag', s['lagSeq'] == null ? '—' : '${countText(s['lagSeq'])} seq'),
                      MapEntry<String, Object>('Last delivered', whenText(s['lastDeliveredAt'])),
                      MapEntry<String, Object>('Delivered', countText(s['delivered'])),
                      MapEntry<String, Object>('Conflated', countText(s['dropped'])),
                      MapEntry<String, Object>('Denied', countText(denied['total'] ?? 0)),
                      MapEntry<String, Object>('Resyncs', countText(s['resyncCount'])),
                      if (s['failingSince'] != null) MapEntry<String, Object>('Failing since', whenText(s['failingSince'])),
                      if (s['lastError'] != null) MapEntry<String, Object>('Last error', '${s['lastError']}'),
                      if (clients != null)
                        MapEntry<String, Object>(
                          'Clients',
                          '${clients['connected'] ?? 0} of ${clients['max'] ?? '—'} connected'
                              '${((clients['rejected'] as num?) ?? 0) > 0 ? ', ${clients['rejected']} turned away' : ''}',
                        ),
                    ],
                  ),
                  if (byReason.isNotEmpty || bySource.isNotEmpty) ...<Widget>[
                    const SizedBox(height: 6),
                    Text(
                      'Denied by the egress guard: '
                      '${<String>[for (final e in byReason.entries) '${deniedReasonText(e.key)} ${countText(e.value)}'].join(', ')}'
                      '${bySource.isEmpty ? '' : '; by source ${<String>[for (final e in bySource.entries) '${e.key} ${countText(e.value)}'].join(', ')}'}.',
                      key: const Key('sink.status.denied'),
                      style: TextStyle(color: muted, fontSize: 12),
                    ),
                  ],
                  for (final p in jsonList(clients, 'peers'))
                    Text(
                      '${p['address']} since ${whenText(p['connectedAt'])}',
                      style: TextStyle(color: muted, fontSize: 12),
                    ),
                ],
              );
            },
          ),
          const SizedBox(height: 12),
          if (_confirming)
            ConfirmRow(
              message: 'Resync? A state mirror re-sends current state; a change feed sends a snapshot and continues.',
              action: 'Resync',
              confirmKey: const Key('sink.resync.confirm'),
              onConfirm: _resync,
              onCancel: () => setState(() => _confirming = false),
            )
          else
            Align(
              alignment: Alignment.centerLeft,
              child: TonalButton(
                key: const Key('sink.resync'),
                label: 'Resync',
                icon: Icons.sync,
                onPressed: busy ? null : () => setState(() => _confirming = true),
              ),
            ),
          if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
        ],
      ),
    );
  }
}

class _SinkTestCard extends ConsumerStatefulWidget {
  const _SinkTestCard({required this.sinkId});

  final String sinkId;

  @override
  ConsumerState<_SinkTestCard> createState() => _SinkTestCardState();
}

class _SinkTestCardState extends ConsumerState<_SinkTestCard> with WriteTracking<_SinkTestCard> {
  final TextEditingController _kind = TextEditingController();
  final TextEditingController _timeout = TextEditingController(text: '10');
  String? _timeoutError;
  Json? _result;

  @override
  void dispose() {
    _kind.dispose();
    _timeout.dispose();
    super.dispose();
  }

  Future<void> _test() async {
    final problem = integerProblem(_timeout.text, min: 1, max: 60);
    setState(() => _timeoutError = problem);
    if (problem != null) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final body = <String, Object?>{
      'kind': ?textOrNull(_kind.text),
      'timeoutSeconds': ?intOrNull(_timeout.text),
    };
    final r = await track(
      () => callApiRequired(
        () => api.getSinksApi().testSink(
          sinkId: widget.sinkId,
          sinkTestRequest: fromJsonMap<SinkTestRequest>(api.serializers, body),
        ),
      ),
    );
    if (r != null && mounted) {
      setState(() => _result = toJsonMap(api.serializers, r));
      ref.invalidate(sinkStatusProvider(widget.sinkId));
    }
  }

  @override
  Widget build(BuildContext context) {
    final r = _result;
    return SectionCard(
      key: const Key('sink.test'),
      title: 'Test',
      subtitle: 'Connects or binds once and sends one synthetic record. The cursor is not touched.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LabeledField(
            label: 'Record kind',
            help: 'Empty for the filter\'s first kind, else a point.',
            field: PlainField(key: const Key('sink.test.kind'), controller: _kind),
          ),
          LabeledField(
            label: 'Timeout',
            help: 'Seconds, 1 to 60.',
            field: PlainField(key: const Key('sink.test.timeout'), controller: _timeout, error: _timeoutError),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: FilledButton(
              key: const Key('sink.test.run'),
              onPressed: busy ? null : _test,
              child: Text(busy ? 'Testing…' : 'Run Test'),
            ),
          ),
          if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
          if (r != null) ...<Widget>[
            const SizedBox(height: 12),
            ResultPanel(
              key: const Key('sink.test.result'),
              title: r['ok'] == true ? 'Test passed' : 'Test failed',
              tone: r['ok'] == true ? StatusTone.ok : StatusTone.error,
              message: sinkTestText(r),
              details: <MapEntry<String, Object>>[
                for (final e in (jsonMap(r, 'details') ?? const <String, Object?>{}).entries)
                  MapEntry<String, Object>(e.key, '${e.value}'),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
