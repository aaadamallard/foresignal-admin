import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'edp_panels.dart';
import 'forecasting_drafts.dart';
import 'forecasting_providers.dart';
import 'forecasting_widgets.dart';

// us-english-allow-start: the EDP manifest's wire member for the data license
/// The manifest member (`EdpSourceInfo`) holding the data license.
const String edpLicenseMember = 'licence';
// us-english-allow-end

/// One external data provider (EDP add-in): approval and suspension, its
/// manifest, streams, bindings, question links and on-demand analysis.
class EdpProviderScreen extends ConsumerWidget {
  /// Creates the page for [sourceId].
  const EdpProviderScreen({super.key, required this.sourceId});

  /// The provider shown.
  final String sourceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<Json>(
          value: ref.watch(edpSourceProvider(sourceId)),
          onRetry: () => ref.invalidate(edpSourceProvider(sourceId)),
          data: (s) => _ProviderBody(source: s),
        ),
      ],
    );
  }
}

class _ProviderBody extends StatelessWidget {
  const _ProviderBody({required this.source});

  final Json source;

  @override
  Widget build(BuildContext context) {
    final s = source;
    final id = '${s['sourceId']}';
    final manifest = jsonMap(s, 'manifest');
    final info = jsonMap(manifest, 'source');
    final publisher = jsonMap(info, 'publisher');
    final license = info?[edpLicenseMember];
    final pull = jsonMap(s, 'pull');
    final analysis = jsonMap(jsonMap(manifest, 'transport'), 'analysisRequest');
    final rejections = jsonList(s, 'lastValidationErrors');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        PageHeader(
          title: edpSourceName(s),
          crumbs: <Crumb>[
            const Crumb('Forecasting', forecastingPath),
            const Crumb('Providers', forecastingPath),
            Crumb(edpSourceName(s)),
          ],
          subtitle: '$id · ${manifest?['protocol'] ?? '—'}',
          titleTrailing: <Widget>[stateLabel(s['state'], key: const Key('provider.state'))],
        ),
        ProviderLifecycleCard(key: ValueKey<String>('life.$id'), source: s),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: <Widget>[
            SizedBox(
              width: 520,
              child: SectionCard(
                title: 'Summary',
                child: KeyValueList(
                  key: const Key('provider.summary'),
                  entries: <MapEntry<String, Object>>[
                    if (info?['description'] != null) MapEntry<String, Object>('Description', '${info!['description']}'),
                    if (publisher != null)
                      MapEntry<String, Object>(
                        'Publisher',
                        '${publisher['name']}${publisher['url'] == null ? '' : ' · ${publisher['url']}'}'
                            '${publisher['contact'] == null ? '' : ' · ${publisher['contact']}'}',
                      ),
                    if (info?['version'] != null) MapEntry<String, Object>('Version', '${info!['version']}'),
                    if (info?['homepage'] != null) MapEntry<String, Object>('Homepage', '${info!['homepage']}'),
                    if (license is Map)
                      MapEntry<String, Object>(
                        'License',
                        <String>[
                          if (license['id'] != null) '${license['id']}',
                          if (license['attribution'] != null) '${license['attribution']}',
                          if (license['redistribution'] != null) 'redistribution ${wireText('${license['redistribution']}').toLowerCase()}',
                          if (license['url'] != null) '${license['url']}',
                        ].join(' · '),
                      ),
                    if (jsonMap(info, 'terms') case final t?)
                      MapEntry<String, Object>(
                        'Terms',
                        <String>[if (t['summary'] != null) '${t['summary']}', if (t['url'] != null) '${t['url']}'].join(' · '),
                      ),
                    if (jsonMap(info, 'access') case final a?)
                      MapEntry<String, Object>(
                        'Access',
                        '${wireText('${a['route']}')}${a['fragility'] == null ? '' : ' · ${a['fragility']} fragility'}',
                      ),
                    MapEntry<String, Object>('Registered via', wireText('${s['registeredVia'] ?? 'operator'}')),
                    MapEntry<String, Object>('Registered', whenText(s['createdAt'])),
                    if (s['approvedAt'] != null)
                      MapEntry<String, Object>(
                        'Approved',
                        '${whenText(s['approvedAt'])}${s['approvedBy'] == null ? '' : ' by ${s['approvedBy']}'}',
                      ),
                    MapEntry<String, Object>('Last item', whenText(s['lastItemAt'])),
                    if (s['health'] != null) MapEntry<String, Object>('Health', '${s['health']}'),
                    if (s['egress'] != null) MapEntry<String, Object>('Egress', '${s['egress']}'),
                    MapEntry<String, Object>('Private network', s['allowPrivateNetwork'] == true ? 'Allowed' : 'Not allowed'),
                    if (pull != null)
                      MapEntry<String, Object>(
                        'Pull',
                        'Last poll ${whenText(pull['lastPollAt'])}${pull['lastError'] == null ? '' : ' · error: ${pull['lastError']}'}',
                      ),
                    if (s['manifestSha256'] != null) MapEntry<String, Object>('Manifest SHA-256', '${s['manifestSha256']}'),
                  ],
                ),
              ),
            ),
            if (analysis != null)
              SizedBox(width: 520, child: _AnalysisTransportCard(source: s, transport: analysis)),
          ],
        ),
        const SizedBox(height: 16),
        _StreamsCard(source: s),
        if (rejections.isNotEmpty) ...<Widget>[
          const SizedBox(height: 16),
          SectionCard(
            key: const Key('provider.rejections'),
            title: 'Last rejected items',
            subtitle: 'Items the provider sent that failed validation; the rest of each batch was kept.',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[for (final e in rejections) Text(rejectionText(e))],
            ),
          ),
        ],
        const SizedBox(height: 16),
        BindingsCard(key: ValueKey<String>('bindings.$id'), source: s),
        const SizedBox(height: 16),
        QuestionLinksCard(key: ValueKey<String>('links.$id'), source: s),
        const SizedBox(height: 16),
        ManifestCard(key: ValueKey<String>('manifest.$id.${s['manifestSha256']}'), source: s),
      ],
    );
  }
}

/// Approve, suspend or delete a provider.
class ProviderLifecycleCard extends ConsumerStatefulWidget {
  /// Creates the card for [source] (its wire shape).
  const ProviderLifecycleCard({super.key, required this.source});

  /// The provider.
  final Json source;

  @override
  ConsumerState<ProviderLifecycleCard> createState() => _ProviderLifecycleCardState();
}

class _ProviderLifecycleCardState extends ConsumerState<ProviderLifecycleCard>
    with WriteTracking<ProviderLifecycleCard> {
  String? _confirm;

  String get _id => '${widget.source['sourceId']}';

  Future<void> _transition(String action) async {
    setState(() => _confirm = null);
    final external = ref.read(foresignalApiProvider).getExternalApi();
    final want = action == 'approve' ? 'active' : 'suspended';
    final got = await track(
      () => writeThenConfirm<ExternalSource>(
        write: () => callApiRequired(
          () => action == 'approve'
              ? external.approveExternalSource(sourceId: _id)
              : external.suspendExternalSource(sourceId: _id),
        ),
        reread: () => callApiRequired(() => external.getExternalSource(sourceId: _id)),
        confirm: (s) => wireOf(s.state, s, 'state') == want ? null : 'the provider reads back ${wireOf(s.state, s, 'state')}',
      ),
    );
    if (got != null && mounted) {
      ref
        ..invalidate(edpSourceProvider(_id))
        ..invalidate(edpSourcesProvider);
    }
  }

  Future<void> _delete() async {
    setState(() => _confirm = null);
    final external = ref.read(foresignalApiProvider).getExternalApi();
    final done = await track(() async {
      await callApi(() => external.deleteExternalSource(sourceId: _id));
      try {
        await callApiRequired(() => external.getExternalSource(sourceId: _id));
      } on ProblemException catch (e) {
        if (e.status == 404) {
          return true;
        }
        rethrow;
      }
      throw const WriteNotConfirmedException('the provider still reads back');
    });
    if (done == true && mounted) {
      ref.invalidate(edpSourcesProvider);
      context.go(forecastingPath);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = widget.source['state'];
    final confirm = _confirm;
    return SectionCard(
      title: 'Lifecycle',
      subtitle: switch (state) {
        'pending' => 'Waiting for approval: nothing it sends is ingested yet.',
        'suspended' => 'Suspended: items are refused until it is approved again.',
        _ => 'Active: items are ingested and bindings apply.',
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (confirm != null)
            ConfirmRow(
              message: confirm == 'delete'
                  ? 'Delete $_id? Its bindings and question links go with it, and it must register again.'
                  : 'Suspend $_id? Items it sends are refused until approved again.',
              action: confirm == 'delete' ? 'Delete' : 'Suspend',
              confirmKey: Key('provider.$confirm.confirm'),
              onConfirm: confirm == 'delete' ? _delete : () => _transition('suspend'),
              onCancel: () => setState(() => _confirm = null),
            ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              if (state != 'active')
                TonalButton(
                  key: const Key('provider.approve'),
                  label: 'Approve',
                  onPressed: busy ? null : () => _transition('approve'),
                ),
              if (state == 'active')
                TonalButton(
                  key: const Key('provider.suspend'),
                  label: 'Suspend',
                  onPressed: busy ? null : () => setState(() => _confirm = 'suspend'),
                ),
              DangerButton(
                key: const Key('provider.delete'),
                label: 'Delete',
                onPressed: busy ? null : () => setState(() => _confirm = 'delete'),
              ),
              WriteStatusLine(state: write),
            ],
          ),
        ],
      ),
    );
  }
}

class _AnalysisTransportCard extends StatelessWidget {
  const _AnalysisTransportCard({required this.source, required this.transport});

  final Json source;
  final Json transport;

  @override
  Widget build(BuildContext context) {
    final id = '${source['sourceId']}';
    final forecastStreams = <String>[
      for (final st in jsonList(jsonMap(source, 'manifest'), 'streams'))
        if (st['itemType'] == 'forecast') '${st['id']}',
    ];
    return SectionCard(
      key: const Key('provider.analysis'),
      title: 'On-demand analysis',
      subtitle: 'The provider takes forecast requests. Ask one from its forecaster\'s page.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          KeyValueList(
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>('Endpoint', '${transport['url']}'),
              MapEntry<String, Object>('Authentication', wireText('${transport['auth'] ?? 'none'}')),
              if (transport['header'] != null) MapEntry<String, Object>('Header', '${transport['header']}'),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              for (final st in forecastStreams)
                TonalButton(
                  label: 'Forecaster edp:$id/$st',
                  onPressed: () => context.go(forecastingForecasterPath('edp:$id/$st')),
                ),
            ],
          ),
          if (forecastStreams.isEmpty) const Footnote('It declares no forecast stream.'),
        ],
      ),
    );
  }
}

class _StreamsCard extends StatelessWidget {
  const _StreamsCard({required this.source});

  final Json source;

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    final stats = <String, Json>{for (final st in jsonList(source, 'streams')) '${st['streamId']}': st};
    final streams = jsonList(jsonMap(source, 'manifest'), 'streams');
    return SectionCard(
      title: 'Streams',
      subtitle: 'Layer streams draw on the map; atomic streams carry items that bindings turn into series, events, forecasts and more.',
      child: DataTableCard<Json>(
        key: const Key('provider.streams'),
        rows: streams,
        empty: 'The manifest declares no streams.',
        columns: <TableColumnSpec<Json>>[
          TableColumnSpec<Json>(
            label: 'Stream',
            cell: (st) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('${st['title'] ?? st['id']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                Text('${st['id']}', style: TextStyle(color: muted, fontSize: 12)),
              ],
            ),
          ),
          TableColumnSpec<Json>(label: 'Mode', cell: (st) => Text(wireText('${st['mode']}'))),
          TableColumnSpec<Json>(label: 'Item type', cell: (st) => Text(wireText('${st['itemType'] ?? '—'}'))),
          TableColumnSpec<Json>(label: 'Kind', cell: (st) => Text('${st['kind'] ?? '—'}')),
          TableColumnSpec<Json>(
            label: 'Items / rejected',
            numeric: true,
            cell: (st) {
              final x = stats['${st['id']}'];
              return Text('${x?['items'] ?? 0} / ${x?['rejected'] ?? 0}');
            },
          ),
          TableColumnSpec<Json>(
            label: 'Bindings',
            numeric: true,
            cell: (st) => Text('${stats['${st['id']}']?['bindings'] ?? 0}'),
          ),
          TableColumnSpec<Json>(label: 'Last item', cell: (st) => Text(whenText(stats['${st['id']}']?['lastItemAt']))),
          TableColumnSpec<Json>(
            label: 'Suggested',
            cell: (st) => Text(
              <String>[for (final b in jsonList(st, 'suggestedBindings')) '${b['target']}'].join(', ').ifEmpty('—'),
            ),
          ),
        ],
      ),
    );
  }
}

extension on String {
  String ifEmpty(String other) => isEmpty ? other : this;
}

/// The atomic streams of a provider, by id.
List<Json> _atomicStreams(Json source) => <Json>[
  for (final st in jsonList(jsonMap(source, 'manifest'), 'streams'))
    if (st['mode'] == 'atomic') st,
];

/// A provider's bindings: list, create, edit (`updateExternalBinding`
/// replaces the binding), preview over recent items, delete, and accept
/// the manifest's suggestions.
class BindingsCard extends ConsumerStatefulWidget {
  /// Creates the card for [source] (its wire shape).
  const BindingsCard({super.key, required this.source});

  /// The provider.
  final Json source;

  @override
  ConsumerState<BindingsCard> createState() => _BindingsCardState();
}

class _BindingsCardState extends ConsumerState<BindingsCard> with WriteTracking<BindingsCard> {
  /// The binding edited: `''` for a new one, an id, or `null` for none.
  String? _editing;
  BindingDraft _draft = BindingDraft();
  final TextEditingController _config = TextEditingController();
  final TextEditingController _filter = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  ({String bindingId, Json preview})? _preview;
  Json? _confirmDelete;

  String get _id => '${widget.source['sourceId']}';

  @override
  void dispose() {
    _config.dispose();
    _filter.dispose();
    super.dispose();
  }

  void _open(Json? binding) {
    setState(() {
      _editing = binding == null ? '' : '${binding['id']}';
      final first = _atomicStreams(widget.source).firstOrNull;
      _draft = binding == null ? BindingDraft(streamId: '${first?['id'] ?? ''}') : BindingDraft.of(binding);
      if (binding == null) {
        _suggest();
      }
      _config.text = _draft.configText;
      _filter.text = _draft.filterText;
      _errors = const <String, String>{};
    });
  }

  /// Fills the configuration from the stream's suggested binding for the
  /// chosen target, when it has one.
  void _suggest() {
    final stream = _atomicStreams(widget.source).where((s) => s['id'] == _draft.streamId).firstOrNull;
    final suggested = jsonList(stream, 'suggestedBindings').where((b) => b['target'] == _draft.target).firstOrNull;
    if (suggested != null) {
      _draft.configText = jsonObjectText(jsonMap(suggested, 'config'));
      _config.text = _draft.configText;
    }
  }

  Future<void> _save() async {
    _draft
      ..configText = _config.text
      ..filterText = _filter.text;
    final errors = _draft.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final external = api.getExternalApi();
    final input = fromJsonMap<ExternalBindingInput>(api.serializers, _draft.toJson());
    final editing = _editing!;
    final got = await track(
      () => editing.isEmpty
          ? callApiRequired(() => external.createExternalBinding(sourceId: _id, externalBindingInput: input))
          : writeThenConfirm<ExternalBinding>(
              write: () => callApiRequired(
                () => external.updateExternalBinding(bindingId: editing, externalBindingInput: input),
              ),
              reread: () => callApiRequired(() => external.getExternalBinding(bindingId: editing)),
              confirm: (b) => wireOf(b.target, b, 'target') == _draft.target && b.streamId == _draft.streamId
                  ? null
                  : 'the binding reads back ${b.streamId} → ${wireOf(b.target, b, 'target')}',
            ),
    );
    if (got != null && mounted) {
      setState(() => _editing = null);
      ref
        ..invalidate(edpBindingsProvider(_id))
        ..invalidate(edpSourceProvider(_id));
    }
  }

  Future<void> _previewBinding(String bindingId) async {
    final api = ref.read(foresignalApiProvider);
    final got = await track(
      () => callApiRequired(() => api.getExternalApi().previewExternalBinding(bindingId: bindingId)),
    );
    if (got != null && mounted) {
      setState(() {
        _preview = (bindingId: bindingId, preview: toJsonMap(api.serializers, got));
        write = const WriteIdle();
      });
    }
  }

  Future<void> _delete(String bindingId) async {
    setState(() => _confirmDelete = null);
    final external = ref.read(foresignalApiProvider).getExternalApi();
    await track(() async {
      await callApi(() => external.deleteExternalBinding(bindingId: bindingId));
      final left = await callApiRequired(() => external.listExternalBindings(sourceId: _id));
      if (left.any((b) => b.id == bindingId)) {
        throw const WriteNotConfirmedException('the binding still reads back');
      }
    });
    if (_preview?.bindingId == bindingId) {
      _preview = null;
    }
    ref
      ..invalidate(edpBindingsProvider(_id))
      ..invalidate(edpSourceProvider(_id));
  }

  Future<void> _acceptSuggested() async {
    final external = ref.read(foresignalApiProvider).getExternalApi();
    final got = await track(() => callApiRequired(() => external.acceptSuggestedBindings(sourceId: _id)));
    if (got != null && mounted) {
      ref
        ..invalidate(edpBindingsProvider(_id))
        ..invalidate(edpSourceProvider(_id));
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    final streams = _atomicStreams(widget.source);
    final hasSuggestions = streams.any((s) => jsonList(s, 'suggestedBindings').isNotEmpty);
    final preview = _preview;
    final pendingDelete = _confirmDelete;
    return SectionCard(
      key: const Key('provider.bindings'),
      title: 'Bindings',
      subtitle: 'What each atomic stream becomes here: a series, events, evidence, forecasts and more.',
      actions: <Widget>[
        if (hasSuggestions)
          TextButton(
            key: const Key('bindings.acceptSuggested'),
            onPressed: busy ? null : _acceptSuggested,
            child: const Text('Accept Suggested'),
          ),
        TonalButton(
          key: const Key('bindings.new'),
          label: 'New Binding',
          icon: Icons.add,
          onPressed: streams.isEmpty ? null : () => _open(null),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_editing != null) ...<Widget>[
            _form(streams),
            const SizedBox(height: 16),
          ],
          if (pendingDelete != null)
            ConfirmRow(
              message: 'Delete the binding ${pendingDelete['streamId']} → ${wireText('${pendingDelete['target']}')}? '
                  'What it already applied stays.',
              action: 'Delete',
              confirmKey: const Key('bindings.delete.confirm'),
              onConfirm: () => _delete('${pendingDelete['id']}'),
              onCancel: () => setState(() => _confirmDelete = null),
            ),
          if (_editing == null) statusLine,
          AsyncView<List<Json>>(
            value: ref.watch(edpBindingsProvider(_id)),
            onRetry: () => ref.invalidate(edpBindingsProvider(_id)),
            data: (rows) => DataTableCard<Json>(
              key: const Key('bindings.table'),
              rows: rows,
              empty: 'No bindings.',
              columns: <TableColumnSpec<Json>>[
                TableColumnSpec<Json>(label: 'Stream', cell: (b) => Text('${b['streamId']}')),
                TableColumnSpec<Json>(
                  label: 'Target',
                  cell: (b) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(wireText('${b['target']}')),
                      if (b['targetRef'] != null) Text('${b['targetRef']}', style: TextStyle(color: muted, fontSize: 12)),
                    ],
                  ),
                ),
                TableColumnSpec<Json>(
                  label: 'Applied',
                  numeric: true,
                  cell: (b) => Tooltip(message: 'Last ${whenText(b['lastAppliedAt'])}', child: Text('${b['applied'] ?? 0}')),
                ),
                TableColumnSpec<Json>(
                  label: 'State',
                  cell: (b) => stateLabel(b['enabled'] == false ? 'disabled' : b['state'], tooltip: b['lastError'] as String?),
                ),
                TableColumnSpec<Json>(
                  label: 'Actions',
                  cell: (b) => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextButton(
                        key: Key('bindings.preview.${b['id']}'),
                        onPressed: busy ? null : () => _previewBinding('${b['id']}'),
                        child: const Text('Preview'),
                      ),
                      TextButton(
                        key: Key('bindings.edit.${b['id']}'),
                        onPressed: () => _open(b),
                        child: const Text('Edit'),
                      ),
                      TextButton(
                        key: Key('bindings.delete.${b['id']}'),
                        onPressed: busy ? null : () => setState(() => _confirmDelete = b),
                        child: const Text('Delete'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (preview != null) ...<Widget>[
            const SizedBox(height: 12),
            _PreviewView(preview: preview.preview, onClose: () => setState(() => _preview = null)),
          ],
        ],
      ),
    );
  }

  Widget _form(List<Json> streams) {
    final editing = _editing!.isNotEmpty;
    return Container(
      key: const Key('bindings.form'),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AdminPalette.of(context).border),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(editing ? 'Edit binding' : 'New binding', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          LabeledField(
            label: 'Stream',
            field: WireDropdown(
              key: const Key('bindings.stream'),
              value: _draft.streamId,
              values: <String>[for (final s in streams) '${s['id']}'],
              labels: <String, String>{for (final s in streams) '${s['id']}': '${s['title'] ?? s['id']} (${s['id']})'},
              error: _errors['streamId'],
              onChanged: (v) => setState(() {
                _draft.streamId = v;
                if (!editing) {
                  _suggest();
                }
              }),
            ),
          ),
          LabeledField(
            label: 'Target',
            field: WireDropdown(
              key: const Key('bindings.target'),
              value: _draft.target,
              values: bindingTargets,
              error: _errors['target'],
              onChanged: (v) => setState(() {
                _draft.target = v;
                if (!editing) {
                  _suggest();
                }
              }),
            ),
          ),
          LabeledField(
            label: 'Configuration',
            help: 'JSON, as the target reads it. A stream\'s suggested binding fills it in.',
            field: JsonField(key: const Key('bindings.config'), controller: _config, error: _errors['config']),
          ),
          LabeledField(
            label: 'Filter',
            help: 'A JSON array of 017 conditions on item properties; empty for every item.',
            field: JsonField(key: const Key('bindings.filter'), controller: _filter, error: _errors['filter'], minLines: 2),
          ),
          LabeledField(
            label: 'Enabled',
            field: Align(
              alignment: Alignment.centerLeft,
              child: Switch(value: _draft.enabled, onChanged: (v) => setState(() => _draft.enabled = v)),
            ),
          ),
          LabeledField(
            label: 'Backfill',
            help: 'Apply the stream\'s existing items once, too.',
            field: Align(
              alignment: Alignment.centerLeft,
              child: Switch(value: _draft.backfill, onChanged: (v) => setState(() => _draft.backfill = v)),
            ),
          ),
          FormActions(
            busy: busy,
            saveLabel: editing ? 'Save Binding' : 'Create Binding',
            onSave: _save,
            onReset: () => setState(() => _editing = null),
            leading: <Widget>[
              if (failedCode == 'BINDING_TARGET_INVALID')
                const Text('The backend refused the target or its configuration for this stream.')
              else
                WriteStatusLine(state: write),
            ],
          ),
        ],
      ),
    );
  }
}

class _PreviewView extends StatelessWidget {
  const _PreviewView({required this.preview, required this.onClose});

  final Json preview;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final p = preview;
    final errors = (p['errors'] as List<Object?>?) ?? const <Object?>[];
    return ResultPanel(
      key: const Key('bindings.previewResult'),
      title: 'Preview',
      tone: errors.isEmpty ? StatusTone.ok : StatusTone.warning,
      message: '${p['matched'] ?? 0} of ${p['evaluated'] ?? 0} recent items match. Nothing was written.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          for (final e in errors) Text('$e'),
          DataTableCard<Json>(
            rows: jsonList(p, 'effects').take(50).toList(),
            empty: 'No effects.',
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(label: 'Item', cell: (e) => Text('${e['itemRef']}')),
              TableColumnSpec<Json>(label: 'Action', cell: (e) => Text(wireText('${e['action']}'))),
              TableColumnSpec<Json>(label: 'Target', cell: (e) => Text('${e['targetRef'] ?? '—'}')),
            ],
          ),
          Align(alignment: Alignment.centerLeft, child: TextButton(onPressed: onClose, child: const Text('Close'))),
        ],
      ),
    );
  }
}

/// Provider questions mapped to ledger questions, so the provider's
/// forecasts on its own question ids land on the right question.
class QuestionLinksCard extends ConsumerStatefulWidget {
  /// Creates the card for [source] (its wire shape).
  const QuestionLinksCard({super.key, required this.source});

  /// The provider.
  final Json source;

  @override
  ConsumerState<QuestionLinksCard> createState() => _QuestionLinksCardState();
}

class _QuestionLinksCardState extends ConsumerState<QuestionLinksCard> with WriteTracking<QuestionLinksCard> {
  final QuestionLinkDraft _draft = QuestionLinkDraft();
  final TextEditingController _external = TextEditingController();
  final TextEditingController _question = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  Json? _confirmDelete;

  String get _id => '${widget.source['sourceId']}';

  List<String> get _forecastStreams => <String>[
    for (final st in jsonList(jsonMap(widget.source, 'manifest'), 'streams'))
      if (st['itemType'] == 'forecast') '${st['id']}',
  ];

  @override
  void dispose() {
    _external.dispose();
    _question.dispose();
    super.dispose();
  }

  Future<void> _create() async {
    if (_draft.streamId.isEmpty && _forecastStreams.isNotEmpty) {
      _draft.streamId = _forecastStreams.first;
    }
    _draft
      ..externalQuestionId = _external.text
      ..questionId = _question.text;
    final errors = _draft.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final got = await track(
      () => callApiRequired(
        () => api.getExternalApi().createExternalQuestionLink(
          sourceId: _id,
          externalQuestionLinkInput: fromJsonMap<ExternalQuestionLinkInput>(api.serializers, _draft.toJson()),
        ),
      ),
    );
    if (got != null && mounted) {
      _external.clear();
      _question.clear();
      ref.invalidate(edpQuestionLinksProvider(_id));
    }
  }

  Future<void> _delete(String linkId) async {
    setState(() => _confirmDelete = null);
    final external = ref.read(foresignalApiProvider).getExternalApi();
    await track(() async {
      await callApi(() => external.deleteExternalQuestionLink(linkId: linkId));
      final left = await callApiRequired(() => external.listExternalQuestionLinks(sourceId: _id));
      if (left.any((l) => l.id == linkId)) {
        throw const WriteNotConfirmedException('the link still reads back');
      }
    });
    ref.invalidate(edpQuestionLinksProvider(_id));
  }

  @override
  Widget build(BuildContext context) {
    final streams = _forecastStreams;
    final pending = _confirmDelete;
    return SectionCard(
      key: const Key('provider.links'),
      title: 'Question links',
      subtitle: 'Map the provider\'s own question ids to ledger questions. Inverse when it forecasts the negation.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (streams.isEmpty)
            const Footnote('The manifest declares no forecast stream, so there is nothing to link.')
          else ...<Widget>[
            Wrap(
              spacing: 12,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 220,
                  child: WireDropdown(
                    key: const Key('links.stream'),
                    value: _draft.streamId.isEmpty ? streams.first : _draft.streamId,
                    values: streams,
                    labels: <String, String>{for (final s in streams) s: s},
                    error: _errors['streamId'],
                    onChanged: (v) => setState(() => _draft.streamId = v),
                  ),
                ),
                SizedBox(
                  width: 220,
                  child: PlainField(
                    key: const Key('links.external'),
                    controller: _external,
                    hint: 'Provider question id',
                    error: _errors['externalQuestionId'],
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: PlainField(
                    key: const Key('links.question'),
                    controller: _question,
                    hint: 'Ledger question id',
                    error: _errors['questionId'],
                  ),
                ),
                SizedBox(
                  width: 140,
                  child: WireDropdown(
                    value: _draft.orientation,
                    values: const <String>['same', 'inverse'],
                    onChanged: (v) => setState(() => _draft.orientation = v),
                  ),
                ),
                TonalButton(key: const Key('links.create'), label: 'Link', onPressed: busy ? null : _create),
              ],
            ),
            if (failedCode == 'QUESTION_ALREADY_LINKED')
              const Footnote('That provider question is already linked to a ledger question.')
            else
              statusLine,
          ],
          const SizedBox(height: 8),
          if (pending != null)
            ConfirmRow(
              message: 'Unlink ${pending['externalQuestionId']}? Its next forecasts will not land on a question.',
              action: 'Unlink',
              confirmKey: const Key('links.delete.confirm'),
              onConfirm: () => _delete('${pending['id']}'),
              onCancel: () => setState(() => _confirmDelete = null),
            ),
          AsyncView<List<Json>>(
            value: ref.watch(edpQuestionLinksProvider(_id)),
            onRetry: () => ref.invalidate(edpQuestionLinksProvider(_id)),
            data: (rows) => DataTableCard<Json>(
              key: const Key('links.table'),
              rows: rows,
              empty: 'No question links.',
              columns: <TableColumnSpec<Json>>[
                TableColumnSpec<Json>(label: 'Stream', cell: (l) => Text('${l['streamId']}')),
                TableColumnSpec<Json>(label: 'Provider question', cell: (l) => Text('${l['externalQuestionId']}')),
                TableColumnSpec<Json>(
                  label: 'Ledger question',
                  cell: (l) => TextButton(
                    onPressed: () => context.go(forecastingQuestionPath('${l['questionId']}')),
                    child: Text('${l['questionId']}'),
                  ),
                ),
                TableColumnSpec<Json>(label: 'Orientation', cell: (l) => Text(wireText('${l['orientation'] ?? 'same'}'))),
                TableColumnSpec<Json>(label: 'Last forecast', cell: (l) => Text(whenText(l['lastForecastAt']))),
                TableColumnSpec<Json>(
                  label: 'Actions',
                  cell: (l) => TextButton(
                    key: Key('links.delete.${l['id']}'),
                    onPressed: busy ? null : () => setState(() => _confirmDelete = l),
                    child: const Text('Unlink'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// The provider's manifest as JSON: validate a change against the current one
/// (`validateEdp` with the source id) and save it
/// (`updateExternalSourceManifest`). A breaking change returns the provider
/// to pending.
class ManifestCard extends ConsumerStatefulWidget {
  /// Creates the card for [source] (its wire shape).
  const ManifestCard({super.key, required this.source});

  /// The provider.
  final Json source;

  @override
  ConsumerState<ManifestCard> createState() => _ManifestCardState();
}

class _ManifestCardState extends ConsumerState<ManifestCard> with WriteTracking<ManifestCard> {
  late final TextEditingController _text = TextEditingController(text: jsonObjectText(jsonMap(widget.source, 'manifest')));
  String? _error;
  Json? _report;
  List<String>? _breaking;

  String get _id => '${widget.source['sourceId']}';

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  bool _check() {
    setState(() => _error = jsonObjectProblem(_text.text, required: true));
    return _error == null;
  }

  Future<void> _validate() async {
    if (!_check()) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final got = await track(
      () => callApiRequired(
        () => api.getExternalApi().validateEdp(
          edpValidationRequest: fromJsonMap<EdpValidationRequest>(api.serializers, <String, Object?>{
            'manifest': parseJsonObject(_text.text),
            'sourceId': _id,
          }),
        ),
      ),
    );
    if (got != null && mounted) {
      setState(() {
        _report = toJsonMap(api.serializers, got);
        _breaking = null;
        write = const WriteIdle();
      });
    }
  }

  Future<void> _save() async {
    if (!_check()) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final got = await track(
      () => callApiRequired(
        () => api.getExternalApi().updateExternalSourceManifest(
          sourceId: _id,
          edpManifest: fromJsonMap<EdpManifest>(api.serializers, parseJsonObject(_text.text)),
        ),
      ),
    );
    if (got != null && mounted) {
      setState(() {
        _report = null;
        _breaking = got.breakingChanges?.toList() ?? const <String>[];
      });
      ref
        ..invalidate(edpSourceProvider(_id))
        ..invalidate(edpSourcesProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final breaking = _breaking;
    return SectionCard(
      key: const Key('provider.manifest'),
      title: 'Manifest',
      subtitle:
          'Saving replaces it. An additive change applies at once; a breaking one (a removed stream, '
          'a changed item type) returns the provider to pending for approval.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          JsonField(key: const Key('manifest.text'), controller: _text, error: _error, minLines: 10, maxLines: 30),
          const SizedBox(height: 8),
          FormActions(
            busy: busy,
            saveLabel: 'Save Manifest',
            onSave: _save,
            onReset: () => setState(() {
              _text.text = jsonObjectText(jsonMap(widget.source, 'manifest'));
              _report = null;
              _breaking = null;
            }),
            leading: <Widget>[
              TextButton(key: const Key('manifest.validate'), onPressed: busy ? null : _validate, child: const Text('Validate')),
              if (failedCode == 'MANIFEST_INVALID')
                const Text('The backend refused the manifest. Validate shows why.')
              else
                WriteStatusLine(state: write),
            ],
          ),
          if (_report case final r?) EdpValidationView(report: r),
          if (breaking != null)
            ResultPanel(
              key: const Key('manifest.saved'),
              title: breaking.isEmpty ? 'Manifest saved' : 'Saved — back to pending',
              tone: breaking.isEmpty ? StatusTone.ok : StatusTone.warning,
              message: breaking.isEmpty
                  ? 'An additive change; the provider stays as it was.'
                  : 'Breaking changes: ${breaking.join('; ')}. Approve the provider again to resume.',
            ),
          const Footnote('The manifest is read and sent through the contract\'s EdpManifest model, so members the contract does not name are not kept.'),
        ],
      ),
    );
  }
}
