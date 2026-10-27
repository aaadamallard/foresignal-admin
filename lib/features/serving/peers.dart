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

/// A peer health reason as people read it (`Peer.healthReason`).
String peerHealthText(Object? reason) => switch (reason) {
  'PEER_KEY_MISMATCH' => 'Its signing key does not match the pin',
  'PEER_UNREACHABLE' => 'Unreachable',
  'PEER_RESYNC' => 'Resyncing',
  _ => '',
};

/// A peer mode as people read it.
String peerModeText(Object? mode) => switch (mode) {
  'PULL' => 'Pull',
  'RECEIVE' => 'Receive',
  _ => '${mode ?? '—'}',
};

/// A peer's state label, with its health reason and last error on hover.
Widget peerStateLabel(Json peer, {Key? key}) {
  final reason = peerHealthText(peer['healthReason']);
  final error = peer['lastError'] as String?;
  final tip = <String>[if (reason.isNotEmpty) reason, ?error].join('. ');
  return StatusLabel(
    key: key,
    label: peer['enabled'] == true ? wireText('${peer['state']}') : 'Disabled',
    tone: peer['enabled'] == true
        ? (peer['healthReason'] == null ? peerStateTone(peer['state']) : StatusTone.error)
        : StatusTone.neutral,
    tooltip: tip.isEmpty ? null : tip,
  );
}

/// The Peers tab: this instance's federation identity and the peers it
/// pulls from or receives from.
class PeersPanel extends ConsumerWidget {
  /// Creates the panel.
  const PeersPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      const _FederationInfoCard(),
      const SizedBox(height: 20),
      SectionCard(
        key: const Key('peers.list'),
        title: 'Peers',
        subtitle: 'Pull peers are read from; receive peers (edges) push here.',
        actions: <Widget>[
          IconButton(tooltip: 'Refresh', onPressed: () => ref.invalidate(peersProvider), icon: const Icon(Icons.refresh)),
          FilledButton.icon(
            key: const Key('peers.add'),
            onPressed: () => context.go(servingNewPeerPath),
            icon: const Icon(Icons.add, size: 18),
            label: const Text('Add Peer'),
          ),
        ],
        child: AsyncView<List<Json>>(
          value: ref.watch(peersProvider),
          onRetry: () => ref.invalidate(peersProvider),
          data: (peers) => DataTableCard<Json>(
            key: const Key('peers.table'),
            rows: peers,
            empty: 'No peers yet. Add Peer connects one.',
            onTap: (p) => context.go(servingPeerPath('${p['id']}')),
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(
                label: 'Peer',
                cell: (p) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('${p['name']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                    Text('${p['baseUrl']}', style: const TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              TableColumnSpec<Json>(label: 'Mode', cell: (p) => Text(peerModeText(p['mode']))),
              TableColumnSpec<Json>(label: 'State', cell: (p) => peerStateLabel(p, key: Key('peers.state.${p['id']}'))),
              TableColumnSpec<Json>(label: 'Last seq', numeric: true, cell: (p) => Text(countText(p['lastSeq']))),
              TableColumnSpec<Json>(label: 'Lag', numeric: true, cell: (p) => Text(countText(p['lagSeq']))),
              TableColumnSpec<Json>(label: 'Reliability', cell: (p) => Text('${p['reliability'] ?? '—'}')),
              TableColumnSpec<Json>(label: 'Updated', cell: (p) => Text(whenText(p['updatedAt']))),
            ],
          ),
        ),
      ),
    ],
  );
}

class _FederationInfoCard extends ConsumerWidget {
  const _FederationInfoCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) => SectionCard(
    key: const Key('federation.info'),
    title: 'This Instance',
    subtitle: 'What peers see at /v1/federation/info, signed with the instance key.',
    actions: <Widget>[
      IconButton(tooltip: 'Refresh', onPressed: () => ref.invalidate(federationInfoProvider), icon: const Icon(Icons.refresh)),
    ],
    child: AsyncView<Json>(
      value: ref.watch(federationInfoProvider),
      onRetry: () => ref.invalidate(federationInfoProvider),
      data: (f) => KeyValueList(
        entries: <MapEntry<String, Object>>[
          if (f['instanceName'] != null) MapEntry<String, Object>('Name', '${f['instanceName']}'),
          MapEntry<String, Object>('Instance id', CopyLine('${f['instanceId']}', copyKey: const Key('federation.instanceId.copy'))),
          MapEntry<String, Object>('Version', '${f['version']} (API ${f['apiVersion']})'),
          MapEntry<String, Object>('Key set', CopyLine('${f['jwksUri']}', copyKey: const Key('federation.jwks.copy'))),
          MapEntry<String, Object>(
            'Offers',
            listText(f['capabilities']).isEmpty ? 'Nothing' : listText(f['capabilities']),
          ),
          MapEntry<String, Object>('Clock', whenText(f['time'])),
        ],
      ),
    ),
  );
}

/// One peer (`/serving/peers/:peerId`), or a new one (`/serving/new-peer`):
/// its settings, and for a stored peer its replication state, a test,
/// resync, re-pin, ingest key and deletion.
class PeerScreen extends ConsumerWidget {
  /// Creates the page for [peerId], or a new peer when `null`.
  const PeerScreen({super.key, this.peerId});

  /// The peer id, or `null` for a new one.
  final String? peerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = peerId;
    final crumbs = <Crumb>[const Crumb('Serving', servingPath), const Crumb('Peers', servingPeersPath), Crumb(id ?? 'New peer')];
    if (id == null) {
      return ListView(
        padding: const EdgeInsets.all(28),
        children: <Widget>[
          PageHeader(title: 'New Peer', crumbs: crumbs),
          const PeerForm(key: ValueKey<String>('new'), peer: null),
        ],
      );
    }
    final value = ref.watch(peerProvider(id));
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(title: value.value?['name'] as String? ?? id, crumbs: crumbs),
        AsyncView<Json>(
          value: value,
          onRetry: () => ref.invalidate(peerProvider(id)),
          data: (peer) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: PeerForm(key: ValueKey<String>(id), peer: peer)),
              const SizedBox(width: 16),
              SizedBox(
                width: 420,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _ReplicationCard(peer: peer),
                    const SizedBox(height: 16),
                    _PeerTestCard(peerId: id),
                    if (peer['mode'] == 'RECEIVE') ...<Widget>[
                      const SizedBox(height: 16),
                      _IngestKeyCard(peer: peer),
                    ],
                    const SizedBox(height: 16),
                    ServingDeleteCard(
                      keyPrefix: 'peer.delete',
                      buttonLabel: 'Delete Peer',
                      subtitle: 'Stops replication and unregisters its sources.',
                      message: 'Delete peer ${peer['name']}?',
                      delete: () async {
                        await callApi(() => ref.read(foresignalApiProvider).getPeersApi().deletePeer(peerId: id));
                      },
                      gone: () => readsAsGone(() => ref.read(foresignalApiProvider).getPeersApi().getPeer(peerId: id)),
                      after: () {
                        ref.invalidate(peersProvider);
                        context.go(servingPeersPath);
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

/// Re-reads peer [id] as JSON.
Future<Json> rereadPeer(WidgetRef ref, String id) async {
  final api = ref.read(foresignalApiProvider);
  return toJsonMap(api.serializers, await callApiRequired(() => api.getPeersApi().getPeer(peerId: id)));
}

/// A peer's settings (`createPeer`, `updatePeer`), confirmed by `getPeer`.
/// The token and exchange key are write-only.
class PeerForm extends ConsumerStatefulWidget {
  /// Creates the form for stored [peer], or a new peer when `null`.
  const PeerForm({super.key, required this.peer});

  /// The peer as read, or `null`.
  final Json? peer;

  @override
  ConsumerState<PeerForm> createState() => _PeerFormState();
}

class _PeerFormState extends ConsumerState<PeerForm> with WriteTracking<PeerForm> {
  late PeerDraft _d = _fresh();
  final Map<String, TextEditingController> _c = <String, TextEditingController>{};
  Map<String, String> _errors = const <String, String>{};
  int _scopeKey = 0;

  bool get _creating => widget.peer == null;

  PeerDraft _fresh() => widget.peer == null ? PeerDraft() : PeerDraft.of(widget.peer!);

  TextEditingController _ctl(String key) => _c.putIfAbsent(key, TextEditingController.new);

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() {
    for (final e in <String, String>{
      'id': _d.id,
      'name': _d.name,
      'baseUrl': _d.baseUrl,
      'maxAge': _d.maxAge,
      'backfill': _d.backfill,
      'maxHops': _d.maxHops,
      'trackTtl': _d.trackTtl,
      'token': '',
      'exchangeKey': '',
    }.entries) {
      _ctl(e.key).text = e.value;
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
    _d
      ..id = _c['id']!.text
      ..name = _c['name']!.text
      ..baseUrl = _c['baseUrl']!.text
      ..maxAge = _c['maxAge']!.text
      ..backfill = _c['backfill']!.text
      ..maxHops = _c['maxHops']!.text
      ..trackTtl = _c['trackTtl']!.text
      ..token = _c['token']!.text
      ..exchangeKey = _c['exchangeKey']!.text;
    setState(() => _errors = _d.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final peers = api.getPeersApi();
    final id = _creating ? _d.id.trim() : '${widget.peer!['id']}';
    final body = _d.toJson();
    final keyTyped = _d.exchangeKey.isNotEmpty;
    final keyRemoved = _d.removeExchangeKey && !keyTyped;
    final saved = await track(
      () => writeThenConfirm<Json>(
        write: () async {
          if (_creating) {
            await callApi(() => peers.createPeer(peerCreate: fromJsonMap<PeerCreate>(api.serializers, body)));
          } else {
            // Plain JSON: the generated PeerUpdate drops a null exchangeKey,
            // which is how the contract removes one.
            await jsonCall(ref.read(backendDioProvider), 'PUT', peerApiPath(id), body: body);
          }
        },
        reread: () => rereadPeer(ref, id),
        confirm: (p) {
          if (p['name'] != body['name'] || p['baseUrl'] != body['baseUrl'] || p['enabled'] != body['enabled']) {
            return 'The peer reads back differently.';
          }
          if (keyTyped && p['exchangeKeySet'] != true) {
            return 'The exchange key is not reported as set.';
          }
          if (keyRemoved && p['exchangeKeySet'] == true) {
            return 'The exchange key is still reported as set.';
          }
          return null;
        },
      ),
    );
    if (saved != null && mounted) {
      ref
        ..invalidate(peersProvider)
        ..invalidate(peerProvider(id));
      if (_creating) {
        context.go(servingPeerPath(id));
      } else {
        setState(() {
          _d.removeExchangeKey = false;
          _c['token']!.clear();
          _c['exchangeKey']!.clear();
        });
      }
    }
  }

  Widget _field(String label, String key, {String? help, String? hint, bool secret = false, bool enabled = true}) =>
      LabeledField(
        label: label,
        help: help,
        field: secret
            ? TextField(
                key: Key('peer.$key'),
                controller: _ctl(key),
                obscureText: true,
                enabled: enabled,
                decoration: InputDecoration(isDense: true, errorText: _errors[key], hintText: hint),
              )
            : PlainField(key: Key('peer.$key'), controller: _ctl(key), error: _errors[key], hint: hint),
      );

  @override
  Widget build(BuildContext context) {
    final d = _d;
    final p = widget.peer;
    final pull = d.mode == 'PULL';
    final keySet = p?['exchangeKeySet'] == true;
    return SectionCard(
      key: const Key('peer.form'),
      title: 'Settings',
      subtitle: _creating
          ? 'The id and mode are fixed once registered. A pull peer pins the remote key on its first verified contact.'
          : 'Saving replaces the settings; the token and exchange key are kept unless typed or removed.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_creating)
            _field('Id', 'id', help: 'Lower-case words joined by -, such as hub-north. Its sources are named peer-{id}.', hint: 'hub-north')
          else
            LabeledField(label: 'Id', field: SelectableText(d.id)),
          _field('Name', 'name'),
          _field('Base URL', 'baseUrl', hint: 'https://hub.example'),
          LabeledField(
            label: 'Mode',
            help: pull ? 'This instance reads the peer\'s feed.' : 'The peer (an edge) pushes here with an ingest key.',
            field: _creating
                ? WireDropdown(
                    key: const Key('peer.mode'),
                    value: d.mode,
                    values: const <String>['PULL', 'RECEIVE'],
                    labels: const <String, String>{'PULL': 'Pull from it', 'RECEIVE': 'Receive from it'},
                    onChanged: (v) => setState(() => d.mode = v),
                  )
                : Text(peerModeText(d.mode)),
          ),
          LabeledField(
            label: 'Enabled',
            field: SwitchField(key: const Key('peer.enabled'), value: d.enabled, onChanged: (v) => setState(() => d.enabled = v)),
          ),
          if (pull || !_creating)
            _field(
              'Token',
              'token',
              secret: true,
              help: _creating
                  ? 'The remote instance\'s token, with read and federation scope.'
                  : p?['tokenSet'] == true
                  ? 'Set. Type a new one to replace it; leave empty to keep.'
                  : 'Not set.',
            ),
          LabeledField(
            label: 'Reliability',
            help: 'The Admiralty grade given to what it sends.',
            field: WireDropdown(
              key: const Key('peer.reliability'),
              value: d.reliability,
              values: reliabilityGrades.keys.toList(),
              labels: reliabilityGrades,
              hint: 'No grade',
              onChanged: (v) => setState(() => d.reliability = v),
            ),
          ),
          LabeledField(
            label: 'Same operator',
            help: 'The operator\'s own hub: local-only records may be pushed to it, and stay local-only there.',
            field: SwitchField(
              key: const Key('peer.sameOperator'),
              value: d.sameOperator,
              onChanged: (v) => setState(() => d.sameOperator = v),
            ),
          ),
          _field(
            'Exchange key',
            'exchangeKey',
            secret: true,
            enabled: !d.removeExchangeKey,
            help: d.removeExchangeKey
                ? 'Set; removed when saved.'
                : keySet
                ? 'Set. Paste a new fsp_ key to replace it; leave empty to keep.'
                : 'The fsp_ key the remote instance issued to this one, for the message exchange. Optional.',
          ),
          if (keySet)
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                key: const Key('peer.exchangeKey.remove'),
                onPressed: () => setState(() {
                  d.removeExchangeKey = !d.removeExchangeKey;
                  _c['exchangeKey']!.clear();
                }),
                child: Text(d.removeExchangeKey ? 'Keep the exchange key' : 'Remove the exchange key'),
              ),
            ),
          const SizedBox(height: 16),
          Text('Selection', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          ScopeFields(key: ValueKey<int>(_scopeKey), draft: d.scope, prefix: 'peer.selection', errors: _errors),
          _field('Max age', 'maxAge', help: 'Drop items observed longer ago; empty for no limit.', hint: '7d'),
          _field('Backfill', 'backfill', help: 'none, or a duration of history to page in.'),
          LabeledField(
            label: 'Live lane',
            help: 'Also receive the live lane.',
            field: SwitchField(key: const Key('peer.live'), value: d.live, onChanged: (v) => setState(() => d.live = v)),
          ),
          _field('Max hops', 'maxHops', help: 'At least 1.'),
          _field('Track TTL', 'trackTtl', help: 'For its track source when the remote kind\'s TTL is unknown.'),
          FormActions(
            busy: busy,
            onSave: _save,
            saveLabel: _creating ? 'Register Peer' : 'Save Changes',
            onReset: _creating
                ? null
                : () => setState(() {
                    _d = _fresh();
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

class _ReplicationCard extends ConsumerStatefulWidget {
  const _ReplicationCard({required this.peer});

  final Json peer;

  @override
  ConsumerState<_ReplicationCard> createState() => _ReplicationCardState();
}

class _ReplicationCardState extends ConsumerState<_ReplicationCard> with WriteTracking<_ReplicationCard> {
  String? _confirming;
  String? _done;

  String get _id => '${widget.peer['id']}';

  Future<void> _resync() async {
    final api = ref.read(foresignalApiProvider);
    final r = await track(() => callApiRequired(() => api.getPeersApi().resyncPeer(peerId: _id)));
    if (r != null && mounted) {
      setState(() {
        _confirming = null;
        _done = 'Resync started.';
      });
      ref.invalidate(peerProvider(_id));
    }
  }

  Future<void> _repin() async {
    final body = (PeerDraft.of(widget.peer)..pinnedKid = null).toJson();
    final dio = ref.read(backendDioProvider);
    final r = await track(
      () => writeThenConfirm<Json>(
        write: () => jsonCall(dio, 'PUT', peerApiPath(_id), body: body),
        reread: () => rereadPeer(ref, _id),
      ),
    );
    if (r != null && mounted) {
      setState(() {
        _confirming = null;
        _done = r['pinnedKid'] == null
            ? 'Unpinned. The next verified contact pins its key.'
            : 'Re-pinned to ${r['pinnedKid']}.';
      });
      ref.invalidate(peerProvider(_id));
    }
  }

  @override
  Widget build(BuildContext context) {
    final p = widget.peer;
    final muted = AdminPalette.of(context).muted;
    final pull = p['mode'] == 'PULL';
    return SectionCard(
      key: const Key('peer.replication'),
      title: 'Replication',
      actions: <Widget>[
        IconButton(
          tooltip: 'Refresh',
          onPressed: () => ref.invalidate(peerProvider(_id)),
          icon: const Icon(Icons.refresh),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (p['healthReason'] != null) ...<Widget>[
            ResultPanel(
              key: const Key('peer.health'),
              title: peerHealthText(p['healthReason']),
              tone: StatusTone.error,
              message: p['healthReason'] == 'PEER_KEY_MISMATCH'
                  ? 'Replication is stopped. If the peer rotated its key on purpose, re-pin it.'
                  : p['lastError'] as String?,
            ),
            const SizedBox(height: 12),
          ],
          KeyValueList(
            keyWidth: 130,
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>('State', Align(alignment: Alignment.centerLeft, child: peerStateLabel(p))),
              MapEntry<String, Object>('Last seq', countText(p['lastSeq'])),
              MapEntry<String, Object>('Lag', p['lagSeq'] == null ? '—' : '${countText(p['lagSeq'])} seq'),
              if (p['lastError'] != null) MapEntry<String, Object>('Last error', '${p['lastError']}'),
              MapEntry<String, Object>('Remote instance', '${p['remoteInstanceId'] ?? '—'}'),
              MapEntry<String, Object>('Pinned key', '${p['pinnedKid'] ?? 'Not pinned yet'}'),
              MapEntry<String, Object>('Token', p['tokenSet'] == true ? 'Set' : 'Not set'),
              MapEntry<String, Object>('Exchange key', p['exchangeKeySet'] == true ? 'Set' : 'Not set'),
              if (p['ingestKeyPrefix'] != null) MapEntry<String, Object>('Ingest key', '${p['ingestKeyPrefix']}…'),
              MapEntry<String, Object>('Sources', listText(p['sourceIds']).isEmpty ? '—' : listText(p['sourceIds'])),
            ],
          ),
          const SizedBox(height: 12),
          if (_confirming == 'resync')
            ConfirmRow(
              message: 'Resync? It re-snapshots the selection and removes local records the snapshot lacks.',
              action: 'Resync',
              confirmKey: const Key('peer.resync.confirm'),
              onConfirm: _resync,
              onCancel: () => setState(() => _confirming = null),
            )
          else if (_confirming == 'repin')
            ConfirmRow(
              message: 'Re-pin? The next verified contact is trusted, whatever key it is signed with.',
              action: 'Re-pin',
              confirmKey: const Key('peer.repin.confirm'),
              onConfirm: _repin,
              onCancel: () => setState(() => _confirming = null),
            )
          else
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: <Widget>[
                if (pull)
                  TonalButton(
                    key: const Key('peer.resync'),
                    label: 'Resync',
                    icon: Icons.sync,
                    onPressed: busy ? null : () => setState(() => _confirming = 'resync'),
                  ),
                if (pull && p['pinnedKid'] != null)
                  TonalButton(
                    key: const Key('peer.repin'),
                    label: 'Re-pin Key',
                    icon: Icons.key,
                    onPressed: busy ? null : () => setState(() => _confirming = 'repin'),
                  ),
              ],
            ),
          if (_done case final d?) ...<Widget>[
            const SizedBox(height: 8),
            Text(d, key: const Key('peer.replication.done'), style: TextStyle(color: muted)),
          ],
          if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
        ],
      ),
    );
  }
}

class _PeerTestCard extends ConsumerStatefulWidget {
  const _PeerTestCard({required this.peerId});

  final String peerId;

  @override
  ConsumerState<_PeerTestCard> createState() => _PeerTestCardState();
}

class _PeerTestCardState extends ConsumerState<_PeerTestCard> with WriteTracking<_PeerTestCard> {
  Json? _result;

  Future<void> _test() async {
    final api = ref.read(foresignalApiProvider);
    final r = await track(() => callApiRequired(() => api.getPeersApi().testPeer(peerId: widget.peerId)));
    if (r != null && mounted) {
      setState(() => _result = toJsonMap(api.serializers, r));
    }
  }

  @override
  Widget build(BuildContext context) {
    final r = _result;
    final info = jsonMap(r, 'info');
    return SectionCard(
      key: const Key('peer.test'),
      title: 'Test',
      subtitle: 'Fetches its /v1/federation/info and checks the signature against its key set and the pin.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: FilledButton(
              key: const Key('peer.test.run'),
              onPressed: busy ? null : _test,
              child: Text(busy ? 'Testing…' : 'Test Connection'),
            ),
          ),
          if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
          if (r != null) ...<Widget>[
            const SizedBox(height: 12),
            ResultPanel(
              key: const Key('peer.test.result'),
              title: r['ok'] == true ? 'Test passed' : 'Test failed',
              tone: r['ok'] == true ? StatusTone.ok : StatusTone.error,
              message: peerTestText(r),
              details: <MapEntry<String, Object>>[
                if (info != null) ...<MapEntry<String, Object>>[
                  MapEntry<String, Object>('Instance', '${info['instanceName'] ?? info['instanceId']}'),
                  MapEntry<String, Object>('Version', '${info['version']}'),
                  MapEntry<String, Object>('Offers', listText(info['capabilities'])),
                ],
                if (r['kid'] != null) MapEntry<String, Object>('Signed with', '${r['kid']}'),
                if (r['pinnedKid'] != null) MapEntry<String, Object>('Pinned', '${r['pinnedKid']}'),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _IngestKeyCard extends ConsumerStatefulWidget {
  const _IngestKeyCard({required this.peer});

  final Json peer;

  @override
  ConsumerState<_IngestKeyCard> createState() => _IngestKeyCardState();
}

class _IngestKeyCardState extends ConsumerState<_IngestKeyCard> with WriteTracking<_IngestKeyCard> {
  bool _confirming = false;
  String? _key;

  String get _id => '${widget.peer['id']}';

  Future<void> _rotate() async {
    final api = ref.read(foresignalApiProvider);
    final r = await track(() => callApiRequired(() => api.getPeersApi().rotatePeerIngestKey(peerId: _id)));
    if (r != null && mounted) {
      setState(() {
        _confirming = false;
        _key = r.key;
      });
      ref.invalidate(peerProvider(_id));
    }
  }

  @override
  Widget build(BuildContext context) {
    final key = _key;
    final base = ref.watch(backendEndpointProvider);
    final had = widget.peer['ingestKeyPrefix'] != null;
    return SectionCard(
      key: const Key('peer.ingestKey'),
      title: 'Ingest Key',
      subtitle: 'The edge sends with it to /v1/federation/ingest/$_id and /v1/federation/bundle.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (key != null)
            OneTimeSecret(
              label: 'Ingest key',
              secret: key,
              onDismiss: () => setState(() => _key = null),
              extra: (_) => Text(
                'Give it to the edge with ${base == null ? '' : base.toString()}/v1/federation/ingest/$_id.',
                style: TextStyle(color: AdminPalette.of(context).muted, fontSize: 12),
              ),
            )
          else if (_confirming)
            ConfirmRow(
              message: had ? 'Issue a new key? The current key stops working at once.' : 'Issue a key for this peer?',
              action: had ? 'Rotate' : 'Issue',
              confirmKey: const Key('peer.ingestKey.confirm'),
              onConfirm: _rotate,
              onCancel: () => setState(() => _confirming = false),
            )
          else
            Align(
              alignment: Alignment.centerLeft,
              child: TonalButton(
                key: const Key('peer.ingestKey.rotate'),
                label: had ? 'Rotate Key' : 'Issue Key',
                icon: Icons.vpn_key,
                onPressed: busy ? null : () => setState(() => _confirming = true),
              ),
            ),
          if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
        ],
      ),
    );
  }
}
