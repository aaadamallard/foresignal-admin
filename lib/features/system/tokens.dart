import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/connection_store.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../serving/serving_widgets.dart' show CopyLine, SwitchField;
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'system_drafts.dart';
import 'system_providers.dart';
import 'system_widgets.dart';

/// Whether [k] (a token, key or code) is revoked, expired, claimed or
/// active, as a label and tone.
({String label, StatusTone tone}) credentialState(Json k, [DateTime? now]) {
  final expires = DateTime.tryParse('${k['expiresAt']}');
  if (k['revokedAt'] != null) {
    return (label: 'Revoked', tone: StatusTone.neutral);
  }
  if (k['claimedAt'] != null) {
    return (label: 'Claimed', tone: StatusTone.neutral);
  }
  if (expires != null && !expires.isAfter(now ?? DateTime.now())) {
    return (label: 'Expired', tone: StatusTone.warning);
  }
  return (label: 'Active', tone: StatusTone.ok);
}

/// The license policy flags of a token as text, or "None".
String licensePolicyText(Object? flags) => flags is List && flags.isNotEmpty
    ? <String>[for (final f in flags) licensePolicyNames['$f'] ?? '$f'].join(', ')
    : 'None';

/// The Tokens tab: the admin token, API tokens, pairing codes, feed keys,
/// tile keys and stream tickets.
class TokensPanel extends StatelessWidget {
  /// Creates the panel.
  const TokensPanel({super.key});

  @override
  Widget build(BuildContext context) => const Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      AdminTokenCard(),
      SizedBox(height: 20),
      ApiTokensCard(),
      SizedBox(height: 20),
      PairingCodesCard(),
      SizedBox(height: 20),
      FeedKeysCard(),
      SizedBox(height: 20),
      TileKeysCard(),
      SizedBox(height: 20),
      StreamTicketCard(),
    ],
  );
}

/// Sources, kinds, an area, endpoints and a request rate for a
/// [RestrictionDraft], each written into it as typed.
class RestrictionFields extends StatefulWidget {
  /// Creates the fields.
  const RestrictionFields({
    super.key,
    required this.draft,
    required this.prefix,
    this.errors = const <String, String>{},
    this.endpoints = true,
  });

  /// The draft written into.
  final RestrictionDraft draft;

  /// Starts each field's key.
  final String prefix;

  /// Problems by `restrictions.<member>`.
  final Map<String, String> errors;

  /// Whether endpoint patterns may be set.
  final bool endpoints;

  @override
  State<RestrictionFields> createState() => _RestrictionFieldsState();
}

class _RestrictionFieldsState extends State<RestrictionFields> {
  late final TextEditingController _sources = _ctl(widget.draft.sources, (v) => widget.draft.sources = v);
  late final TextEditingController _kinds = _ctl(widget.draft.kinds, (v) => widget.draft.kinds = v);
  late final TextEditingController _bbox = _ctl(widget.draft.bbox, (v) => widget.draft.bbox = v);
  late final TextEditingController _endpoints = _ctl(widget.draft.endpoints, (v) => widget.draft.endpoints = v);
  late final TextEditingController _rpm = _ctl(
    widget.draft.maxRequestsPerMinute,
    (v) => widget.draft.maxRequestsPerMinute = v,
  );

  TextEditingController _ctl(String text, ValueChanged<String> write) {
    final c = TextEditingController(text: text);
    c.addListener(() => write(c.text));
    return c;
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[_sources, _kinds, _bbox, _endpoints, _rpm]) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final p = widget.prefix;
    final e = widget.errors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'Sources',
          help: 'Source ids it may read, one per line; empty for any.',
          field: PlainField(key: Key('$p.sources'), controller: _sources, maxLines: 4),
        ),
        LabeledField(
          label: 'Kinds',
          help: 'Record kinds; empty for any.',
          field: PlainField(key: Key('$p.kinds'), controller: _kinds, maxLines: 4),
        ),
        LabeledField(
          label: 'Area',
          help: 'min lon, min lat, max lon, max lat; empty for anywhere.',
          field: PlainField(key: Key('$p.bbox'), controller: _bbox, error: e['restrictions.bbox']),
        ),
        if (widget.endpoints)
          LabeledField(
            label: 'Endpoints',
            help: 'Operations as METHOD /v1/path/pattern, one per line; empty for any its scope reaches.',
            field: PlainField(
              key: Key('$p.endpoints'),
              controller: _endpoints,
              error: e['restrictions.endpoints'],
              hint: 'GET /v1/records/**',
              maxLines: 4,
            ),
          ),
        LabeledField(
          label: 'Requests per minute',
          help: 'Empty for the read rate limit.',
          field: PlainField(key: Key('$p.maxRequestsPerMinute'), controller: _rpm, error: e['restrictions.maxRequestsPerMinute']),
        ),
        if (e['restrictions'] case final m?)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(m, style: TextStyle(color: AdminPalette.of(context).error)),
          ),
      ],
    );
  }
}

/// Rotates the admin token this app holds (`rotateAdminToken`): the new
/// token replaces it where it was kept, is shown once, and is confirmed by
/// an admin read made with it.
class AdminTokenCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const AdminTokenCard({super.key});

  @override
  ConsumerState<AdminTokenCard> createState() => _AdminTokenCardState();
}

class _AdminTokenCardState extends ConsumerState<AdminTokenCard> with WriteTracking<AdminTokenCard> {
  bool _confirming = false;
  String? _token;
  bool? _saved;

  Future<void> _rotate() async {
    final api = ref.read(foresignalApiProvider);
    final rotated = await track(() => callApiRequired(() => api.getSystemApi().rotateAdminToken()));
    if (rotated == null || !mounted) {
      return;
    }
    // The old token stopped working: keep the new one on screen before
    // anything else can fail.
    setState(() {
      _confirming = false;
      _token = rotated.token;
    });
    final store = ref.read(connectionStoreProvider);
    final dio = ref.read(backendDioProvider);
    final saved = await track(() async {
      final keep = store is SecureConnectionStore ? await store.hasSavedToken() : true;
      if (keep) {
        await store.write(rotated.token);
      } else {
        await store.useForSession(rotated.token);
      }
      await jsonObjectCall(dio, 'GET', serverSettingsPath);
      return keep;
    });
    if (mounted) {
      setState(() => _saved = saved);
    }
  }

  @override
  Widget build(BuildContext context) {
    final token = _token;
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('adminToken'),
      title: 'Admin Token',
      subtitle: 'The token this app is connected with. Rotating it stops the current one at once.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (token != null)
            OneTimeSecret(
              label: 'New admin token',
              secret: token,
              onDismiss: () => setState(() => _token = null),
              extra: (_) => Text(
                switch (_saved) {
                  true => 'This app now uses it and keeps it in the secure store. Any other client using the old token must be given this one.',
                  false => 'This app uses it for this session only, as before. Any other client using the old token must be given this one.',
                  null => 'This app could not switch to it; connect again with it on the Connect screen.',
                },
                key: const Key('adminToken.where'),
                style: TextStyle(color: muted, fontSize: 12),
              ),
            )
          else if (_confirming)
            ConfirmRow(
              message: 'Rotate the admin token? Every client using it is disconnected until given the new one.',
              action: 'Rotate',
              confirmKey: const Key('adminToken.confirm'),
              onConfirm: _rotate,
              onCancel: () => setState(() => _confirming = false),
            )
          else
            Align(
              alignment: Alignment.centerLeft,
              child: DangerButton(
                key: const Key('adminToken.rotate'),
                label: 'Rotate Admin Token',
                icon: Icons.autorenew,
                onPressed: busy ? null : () => setState(() => _confirming = true),
              ),
            ),
          if (write is! WriteIdle) ...<Widget>[const SizedBox(height: 8), statusLine],
        ],
      ),
    );
  }
}

/// API tokens (`listTokens`, `createToken`, `updateToken`, `revokeToken`).
class ApiTokensCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const ApiTokensCard({super.key});

  @override
  ConsumerState<ApiTokensCard> createState() => _ApiTokensCardState();
}

class _ApiTokensCardState extends ConsumerState<ApiTokensCard> with WriteTracking<ApiTokensCard> {
  bool _adding = false;
  String? _created;
  String? _revoking;
  String? _policyFor;
  List<String> _policy = const <String>[];

  Future<void> _revoke(Json t) async {
    final api = ref.read(foresignalApiProvider);
    final id = '${t['id']}';
    final done = await track(
      () => writeThenConfirm<List<Json>>(
        write: () => callApi(() => api.getTokensApi().revokeToken(tokenId: id)),
        reread: () async => <Json>[
          for (final x in await callApiRequired(() => api.getTokensApi().listTokens())) toJsonMap(api.serializers, x),
        ],
        confirm: (list) {
          final still = list.where((x) => x['id'] == id).firstOrNull;
          return still == null || still['revokedAt'] != null ? null : 'The token is still listed as active.';
        },
      ),
    );
    if (done != null && mounted) {
      setState(() => _revoking = null);
      ref.invalidate(tokensProvider);
    }
  }

  Future<void> _savePolicy(String id) async {
    final api = ref.read(foresignalApiProvider);
    final flags = <String>[..._policy];
    final done = await track(
      () => writeThenConfirm<List<Json>>(
        write: () => callApi(
          () => api.getTokensApi().updateToken(
            tokenId: id,
            updateTokenRequest: fromJsonMap<UpdateTokenRequest>(api.serializers, <String, Object?>{licensePolicyMember: flags}),
          ),
        ),
        reread: () async => <Json>[
          for (final x in await callApiRequired(() => api.getTokensApi().listTokens())) toJsonMap(api.serializers, x),
        ],
        confirm: (list) {
          final t = list.where((x) => x['id'] == id).firstOrNull;
          final held = <String>[for (final f in (t?[licensePolicyMember] as List?) ?? const <Object?>[]) '$f'];
          return held.length == flags.length && held.toSet().containsAll(flags) ? null : 'The policy reads back as ${licensePolicyText(held)}.';
        },
      ),
    );
    if (done != null && mounted) {
      setState(() => _policyFor = null);
      ref.invalidate(tokensProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final created = _created;
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('tokens'),
      title: 'API Tokens',
      subtitle: 'Read, agent and admin tokens. Values are shown once, at creation.',
      actions: <Widget>[
        if (!_adding)
          TonalButton(
            key: const Key('tokens.add'),
            label: 'New Token',
            icon: Icons.add,
            onPressed: () => setState(() {
              _adding = true;
              _created = null;
            }),
          ),
      ],
      child: AsyncView<List<Json>>(
        value: ref.watch(tokensProvider),
        onRetry: () => ref.invalidate(tokensProvider),
        data: (tokens) {
          final policyFor = tokens.where((t) => t['id'] == _policyFor).firstOrNull;
          final revoking = tokens.where((t) => t['id'] == _revoking).firstOrNull;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (created != null) ...<Widget>[
                OneTimeSecret(label: 'Token', secret: created, onDismiss: () => setState(() => _created = null)),
                const SizedBox(height: 16),
              ],
              if (_adding) ...<Widget>[
                _NewTokenForm(
                  onCancel: () => setState(() => _adding = false),
                  onCreated: (token) => setState(() {
                    _adding = false;
                    _created = token;
                  }),
                ),
                const SizedBox(height: 16),
              ],
              DataTableCard<Json>(
                key: const Key('tokens.table'),
                rows: tokens,
                empty: 'No tokens.',
                columns: <TableColumnSpec<Json>>[
                  TableColumnSpec<Json>(
                    label: 'Token',
                    cell: (t) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('${t['name']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                        Text(
                          '${t['tokenPrefix']}…${t['principalHandle'] == null ? '' : ' · ${t['principalHandle']}'}',
                          style: TextStyle(fontFamily: 'monospace', fontSize: 12, color: muted),
                        ),
                      ],
                    ),
                  ),
                  TableColumnSpec<Json>(
                    label: 'Scope',
                    cell: (t) => Text(
                      '${wireText('${t['scope']}')}${t['privateAccess'] == true ? ', private' : ''}'
                      '${t['bootstrap'] == true ? '\nBootstrap' : ''}'
                      '${t['device'] is Map ? '\n${(t['device']! as Map)['deviceName']} (${wireText('${(t['device']! as Map)['platform']}')})' : ''}',
                    ),
                  ),
                  TableColumnSpec<Json>(label: 'Last used', cell: (t) => Text(whenText(t['lastUsedAt']))),
                  TableColumnSpec<Json>(label: 'Expires', cell: (t) => Text(t['expiresAt'] == null ? 'Never' : whenText(t['expiresAt']))),
                  TableColumnSpec<Json>(
                    label: 'Limits',
                    cell: (t) {
                      final policy = (t[licensePolicyMember] as List?) ?? const <Object?>[];
                      final text = <String>[
                        if (policy.isNotEmpty) licensePolicyText(policy),
                        if (t['restrictions'] != null || policy.isEmpty) restrictionText(t['restrictions']),
                      ].join('; ');
                      return Tooltip(
                        message: text,
                        child: SizedBox(
                          width: 220,
                          child: Text(text, maxLines: 2, overflow: TextOverflow.ellipsis),
                        ),
                      );
                    },
                  ),
                  TableColumnSpec<Json>(
                    label: 'State',
                    cell: (t) {
                      final s = credentialState(t);
                      return StatusLabel(label: s.label, tone: s.tone);
                    },
                  ),
                  TableColumnSpec<Json>(
                    label: '',
                    cell: (t) => Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        if (t['revokedAt'] == null)
                          IconButton(
                            key: Key('tokens.policy.${t['id']}'),
                            tooltip: 'License policy',
                            onPressed: busy
                                ? null
                                : () => setState(() {
                                    _policyFor = '${t['id']}';
                                    _policy = <String>[for (final f in (t[licensePolicyMember] as List?) ?? const <Object?>[]) '$f'];
                                  }),
                            icon: const Icon(Icons.policy_outlined, size: 20),
                          ),
                        if (t['revokedAt'] == null && t['bootstrap'] != true)
                          IconButton(
                            key: Key('tokens.revoke.${t['id']}'),
                            tooltip: 'Revoke',
                            onPressed: busy ? null : () => setState(() => _revoking = '${t['id']}'),
                            icon: const Icon(Icons.block, size: 20),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              if (revoking != null) ...<Widget>[
                const SizedBox(height: 10),
                ConfirmRow(
                  message: 'Revoke ${revoking['name']}? Its streams close and its push registrations are deleted.',
                  action: 'Revoke',
                  confirmKey: const Key('tokens.revoke.confirm'),
                  onConfirm: () => _revoke(revoking),
                  onCancel: () => setState(() => _revoking = null),
                ),
              ],
              if (policyFor != null) ...<Widget>[
                const SizedBox(height: 16),
                Text('License policy of ${policyFor['name']}', style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 4),
                const Footnote('The floor every read with this token applies; a request may add to it but never remove it.'),
                const SizedBox(height: 10),
                ChoiceChips(
                  key: const Key('tokens.policy.flags'),
                  keyPrefix: 'tokens.policy.flag',
                  values: licensePolicyFlags,
                  labels: licensePolicyNames,
                  selected: _policy,
                  onChanged: (v) => setState(() => _policy = v),
                ),
                const SizedBox(height: 10),
                FormActions(
                  key: const Key('tokens.policy.actions'),
                  busy: busy,
                  saveLabel: 'Save Policy',
                  onSave: () => _savePolicy('${policyFor['id']}'),
                  leading: <Widget>[
                    TextButton(onPressed: () => setState(() => _policyFor = null), child: const Text('Cancel')),
                    statusLine,
                  ],
                ),
              ] else if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
            ],
          );
        },
      ),
    );
  }
}

class _NewTokenForm extends ConsumerStatefulWidget {
  const _NewTokenForm({required this.onCancel, required this.onCreated});

  final VoidCallback onCancel;
  final ValueChanged<String> onCreated;

  @override
  ConsumerState<_NewTokenForm> createState() => _NewTokenFormState();
}

class _NewTokenFormState extends ConsumerState<_NewTokenForm> with WriteTracking<_NewTokenForm> {
  final TokenDraft _d = TokenDraft();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _expires = TextEditingController();
  final TextEditingController _principal = TextEditingController();
  Map<String, String> _errors = const <String, String>{};

  @override
  void dispose() {
    _name.dispose();
    _expires.dispose();
    _principal.dispose();
    super.dispose();
  }

  Future<void> _create() async {
    _d
      ..name = _name.text
      ..expiresAt = _expires.text
      ..principal = _principal.text;
    setState(() => _errors = _d.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final body = _d.toJson();
    final created = await track(() async {
      final t = await callApiRequired(
        () => api.getTokensApi().createToken(apiTokenInput: fromJsonMap<ApiTokenInput>(api.serializers, body)),
      );
      final listed = await callApiRequired(() => api.getTokensApi().listTokens());
      if (!listed.any((x) => x.id == t.id)) {
        throw const WriteNotConfirmedException('The new token is not listed.');
      }
      return t.token;
    });
    if (created != null && mounted) {
      ref.invalidate(tokensProvider);
      widget.onCreated(created);
    }
  }

  @override
  Widget build(BuildContext context) => Column(
    key: const Key('tokens.form'),
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      LabeledField(label: 'Name', field: PlainField(key: const Key('token.name'), controller: _name, error: _errors['name'])),
      LabeledField(
        label: 'Scope',
        help: 'Read: data. Agent: also acknowledging and acting on alerts. Admin: everything.',
        field: WireDropdown(
          key: const Key('token.scope'),
          value: _d.scope,
          values: tokenScopes,
          onChanged: (v) => setState(() => _d.scope = v),
        ),
      ),
      LabeledField(
        label: 'Expires',
        help: 'An instant; empty for never.',
        field: PlainField(key: const Key('token.expiresAt'), controller: _expires, error: _errors['expiresAt'], hint: '2027-01-01T00:00:00Z'),
      ),
      LabeledField(
        label: 'Principal',
        help: 'The id or handle of the principal that owns it; empty for a new one named after it.',
        field: PlainField(key: const Key('token.principal'), controller: _principal),
      ),
      LabeledField(
        label: 'Private sources',
        field: SwitchField(key: const Key('token.privateAccess'), value: _d.privateAccess, onChanged: (v) => setState(() => _d.privateAccess = v)),
      ),
      LabeledField(
        label: 'License policy',
        help: 'A floor on what its reads may return.',
        field: ChoiceChips(
          key: const Key('token.policy'),
          keyPrefix: 'token.policy',
          values: licensePolicyFlags,
          labels: licensePolicyNames,
          selected: <String>[..._d.licensePolicy],
          onChanged: (v) => setState(() => _d.licensePolicy
            ..clear()
            ..addAll(v)),
        ),
      ),
      if (_d.scope != 'admin') RestrictionFields(draft: _d.restrictions, prefix: 'token', errors: _errors),
      if (_d.scope == 'admin' && _errors['restrictions'] != null)
        Text(_errors['restrictions']!, style: TextStyle(color: AdminPalette.of(context).error)),
      FormActions(
        busy: busy,
        saveLabel: 'Create Token',
        onSave: _create,
        leading: <Widget>[
          TextButton(key: const Key('token.cancel'), onPressed: busy ? null : widget.onCancel, child: const Text('Cancel')),
          statusLine,
        ],
      ),
    ],
  );
}

/// Pairing codes a phone or desktop app claims for a token
/// (`listPairingCodes`, `createPairingCode`, `deletePairingCode`).
class PairingCodesCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const PairingCodesCard({super.key});

  @override
  ConsumerState<PairingCodesCard> createState() => _PairingCodesCardState();
}

class _PairingCodesCardState extends ConsumerState<PairingCodesCard> with WriteTracking<PairingCodesCard> {
  final PairingDraft _d = PairingDraft();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _ttl = TextEditingController();
  final TextEditingController _principal = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  bool _adding = false;
  Json? _created;
  String? _deleting;

  @override
  void dispose() {
    _name.dispose();
    _ttl.dispose();
    _principal.dispose();
    super.dispose();
  }

  Future<void> _create() async {
    _d
      ..name = _name.text
      ..ttl = _ttl.text
      ..principal = _principal.text;
    setState(() => _errors = _d.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final created = await track(() async {
      final c = await callApiRequired(
        () => api.getTokensApi().createPairingCode(pairingCodeInput: fromJsonMap<PairingCodeInput>(api.serializers, _d.toJson())),
      );
      final listed = await callApiRequired(() => api.getTokensApi().listPairingCodes());
      if (!listed.any((x) => x.id == c.id)) {
        throw const WriteNotConfirmedException('The new code is not listed.');
      }
      return toJsonMap(api.serializers, c);
    });
    if (created != null && mounted) {
      setState(() {
        _created = created;
        _adding = false;
        _name.clear();
        _ttl.clear();
      });
      ref.invalidate(pairingCodesProvider);
    }
  }

  Future<void> _delete(String id) async {
    final api = ref.read(foresignalApiProvider);
    final done = await track(
      () => writeThenConfirm<bool>(
        write: () => callApi(() => api.getTokensApi().deletePairingCode(pairingCodeId: id)),
        reread: () async => (await callApiRequired(() => api.getTokensApi().listPairingCodes())).any((c) => c.id == id),
        confirm: (listed) => listed ? 'The code is still listed.' : null,
      ),
    );
    if (done != null && mounted) {
      setState(() => _deleting = null);
      ref.invalidate(pairingCodesProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final created = _created;
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('pairing'),
      title: 'Pairing Codes',
      subtitle: 'A single-use code an app claims for a read or agent token, without seeing an admin token.',
      actions: <Widget>[
        if (!_adding)
          TonalButton(
            key: const Key('pairing.add'),
            label: 'New Code',
            icon: Icons.add,
            onPressed: () => setState(() {
              _adding = true;
              _created = null;
            }),
          ),
      ],
      child: AsyncView<List<Json>>(
        value: ref.watch(pairingCodesProvider),
        onRetry: () => ref.invalidate(pairingCodesProvider),
        data: (codes) {
          final deleting = codes.where((c) => c['id'] == _deleting).firstOrNull;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (created != null) ...<Widget>[
                OneTimeSecret(
                  label: 'Pairing code',
                  secret: '${created['code']}',
                  onDismiss: () => setState(() => _created = null),
                  extra: (revealed) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Expires ${whenText(created['expiresAt'])}. Enter it in the app, or open the pairing link on the phone:',
                        style: TextStyle(color: muted, fontSize: 12),
                      ),
                      const SizedBox(height: 6),
                      if (created['qrPayload'] != null)
                        revealed
                            ? CopyLine('${created['qrPayload']}', copyKey: const Key('pairing.payload.copy'))
                            : Text(
                                OneTimeSecret.maskSecret('${created['qrPayload']}', '${created['code']}'),
                                style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
                              ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
              if (_adding) ...<Widget>[
                LabeledField(
                  label: 'Token name',
                  help: 'The name of the token made when it is claimed.',
                  field: PlainField(key: const Key('pairing.name'), controller: _name, error: _errors['name']),
                ),
                LabeledField(
                  label: 'Scope',
                  field: WireDropdown(
                    key: const Key('pairing.scope'),
                    value: _d.scope,
                    values: const <String>['read', 'agent'],
                    onChanged: (v) => setState(() => _d.scope = v),
                  ),
                ),
                LabeledField(
                  label: 'Lifetime',
                  help: 'Up to 1 h; empty for 10m.',
                  field: PlainField(key: const Key('pairing.ttl'), controller: _ttl, error: _errors['ttl'], hint: '10m'),
                ),
                LabeledField(
                  label: 'Private sources',
                  field: SwitchField(
                    key: const Key('pairing.privateAccess'),
                    value: _d.privateAccess,
                    onChanged: (v) => setState(() => _d.privateAccess = v),
                  ),
                ),
                LabeledField(
                  label: 'Principal',
                  help: 'The id or handle of the principal that owns the token; empty for a new one named after it.',
                  field: PlainField(key: const Key('pairing.principal'), controller: _principal),
                ),
                RestrictionFields(draft: _d.restrictions, prefix: 'pairing', errors: _errors),
                FormActions(
                  busy: busy,
                  saveLabel: 'Create Code',
                  onSave: _create,
                  leading: <Widget>[
                    TextButton(onPressed: busy ? null : () => setState(() => _adding = false), child: const Text('Cancel')),
                    statusLine,
                  ],
                ),
                const SizedBox(height: 16),
              ],
              DataTableCard<Json>(
                key: const Key('pairing.table'),
                rows: codes,
                empty: 'No open codes.',
                columns: <TableColumnSpec<Json>>[
                  TableColumnSpec<Json>(label: 'Token name', cell: (c) => Text('${c['name']}')),
                  TableColumnSpec<Json>(
                    label: 'Scope',
                    cell: (c) => Text('${wireText('${c['scope']}')}${c['privateAccess'] == true ? ', private' : ''}'),
                  ),
                  TableColumnSpec<Json>(label: 'Created', cell: (c) => Text(whenText(c['createdAt']))),
                  TableColumnSpec<Json>(label: 'Expires', cell: (c) => Text(whenText(c['expiresAt']))),
                  TableColumnSpec<Json>(
                    label: 'State',
                    cell: (c) {
                      final s = credentialState(c);
                      return StatusLabel(label: s.label, tone: s.tone);
                    },
                  ),
                  TableColumnSpec<Json>(
                    label: '',
                    cell: (c) => IconButton(
                      key: Key('pairing.delete.${c['id']}'),
                      tooltip: 'Delete',
                      onPressed: busy ? null : () => setState(() => _deleting = '${c['id']}'),
                      icon: const Icon(Icons.delete_outline, size: 20),
                    ),
                  ),
                ],
              ),
              if (deleting != null) ...<Widget>[
                const SizedBox(height: 10),
                ConfirmRow(
                  message: 'Delete the code for ${deleting['name']}? It can no longer be claimed.',
                  action: 'Delete',
                  confirmKey: const Key('pairing.delete.confirm'),
                  onConfirm: () => _delete('${deleting['id']}'),
                  onCancel: () => setState(() => _deleting = null),
                ),
              ],
              if (!_adding && write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
            ],
          );
        },
      ),
    );
  }
}

/// Feed keys for header-less clients (`listFeedKeys`, `createFeedKey`,
/// `revokeFeedKey`).
class FeedKeysCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const FeedKeysCard({super.key});

  @override
  ConsumerState<FeedKeysCard> createState() => _FeedKeysCardState();
}

class _FeedKeysCardState extends ConsumerState<FeedKeysCard> with WriteTracking<FeedKeysCard> {
  FeedKeyDraft _d = FeedKeyDraft();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _prefixes = TextEditingController();
  final TextEditingController _expires = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  bool _adding = false;
  Json? _created;
  String? _revoking;

  @override
  void dispose() {
    _name.dispose();
    _prefixes.dispose();
    _expires.dispose();
    super.dispose();
  }

  void _start() {
    final in90 = DateTime.now().toUtc().add(const Duration(days: 90));
    setState(() {
      _d = FeedKeyDraft();
      _name.clear();
      _prefixes.text = '/v1/records';
      _expires.text = DateTime.utc(in90.year, in90.month, in90.day).toIso8601String().replaceFirst('.000', '');
      _errors = const <String, String>{};
      _adding = true;
      _created = null;
    });
  }

  Future<void> _create() async {
    _d
      ..name = _name.text
      ..prefixes = _prefixes.text
      ..expiresAt = _expires.text;
    setState(() => _errors = _d.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final created = await track(() async {
      final k = await callApiRequired(
        () => api.getTokensApi().createFeedKey(feedKeyInput: fromJsonMap<FeedKeyInput>(api.serializers, _d.toJson())),
      );
      final listed = await callApiRequired(() => api.getTokensApi().listFeedKeys());
      if (!listed.any((x) => x.id == k.id)) {
        throw const WriteNotConfirmedException('The new key is not listed.');
      }
      return toJsonMap(api.serializers, k);
    });
    if (created != null && mounted) {
      setState(() {
        _created = created;
        _adding = false;
      });
      ref.invalidate(feedKeysProvider);
    }
  }

  Future<void> _revoke(String id) async {
    final api = ref.read(foresignalApiProvider);
    final done = await track(
      () => writeThenConfirm<List<Json>>(
        write: () => callApi(() => api.getTokensApi().revokeFeedKey(feedKeyId: id)),
        reread: () async => <Json>[
          for (final k in await callApiRequired(() => api.getTokensApi().listFeedKeys())) toJsonMap(api.serializers, k),
        ],
        confirm: (list) {
          final k = list.where((x) => x['id'] == id).firstOrNull;
          return k == null || k['revokedAt'] != null ? null : 'The key is still listed as active.';
        },
      ),
    );
    if (done != null && mounted) {
      setState(() => _revoking = null);
      ref.invalidate(feedKeysProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final created = _created;
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('feedKeys'),
      title: 'Feed Keys',
      subtitle: 'Keys in the URL for clients that cannot send a header: KML links, calendars, feed readers, Home Assistant.',
      actions: <Widget>[
        if (!_adding) TonalButton(key: const Key('feedKeys.add'), label: 'New Feed Key', icon: Icons.add, onPressed: _start),
      ],
      child: AsyncView<List<Json>>(
        value: ref.watch(feedKeysProvider),
        onRetry: () => ref.invalidate(feedKeysProvider),
        data: (keys) {
          final revoking = keys.where((k) => k['id'] == _revoking).firstOrNull;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (created != null) ...<Widget>[
                OneTimeSecret(
                  label: 'Feed key',
                  secret: '${created['key']}',
                  onDismiss: () => setState(() => _created = null),
                  extra: (revealed) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text('Ready-made URLs:', style: TextStyle(color: muted, fontSize: 12)),
                      for (final u in (created['urls'] as List?) ?? const <Object?>[])
                        if (u is Map)
                          revealed
                              ? CopyLine('${u['url']}')
                              : Text(
                                  OneTimeSecret.maskSecret('${u['url']}', '${created['key']}'),
                                  style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
                                ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
              if (_adding) ...<Widget>[
                LabeledField(label: 'Name', field: PlainField(key: const Key('feedKey.name'), controller: _name, error: _errors['name'])),
                LabeledField(
                  label: 'Path prefixes',
                  help: 'What it may read, GET only, one per line, each starting /v1/.',
                  field: PlainField(key: const Key('feedKey.prefixes'), controller: _prefixes, error: _errors['prefixes'], maxLines: 4),
                ),
                LabeledField(
                  label: 'Expires',
                  help: 'At most 365 days ahead.',
                  field: PlainField(key: const Key('feedKey.expiresAt'), controller: _expires, error: _errors['expiresAt']),
                ),
                LabeledField(
                  label: 'Private sources',
                  field: SwitchField(
                    key: const Key('feedKey.privateAccess'),
                    value: _d.privateAccess,
                    onChanged: (v) => setState(() => _d.privateAccess = v),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Footnote('A feed key must be limited to some sources, kinds or an area.'),
                ),
                RestrictionFields(key: ObjectKey(_d), draft: _d.restrictions, prefix: 'feedKey', errors: _errors, endpoints: false),
                FormActions(
                  busy: busy,
                  saveLabel: 'Create Feed Key',
                  onSave: _create,
                  leading: <Widget>[
                    TextButton(onPressed: busy ? null : () => setState(() => _adding = false), child: const Text('Cancel')),
                    statusLine,
                  ],
                ),
                const SizedBox(height: 16),
              ],
              DataTableCard<Json>(
                key: const Key('feedKeys.table'),
                rows: keys,
                empty: 'No feed keys.',
                columns: <TableColumnSpec<Json>>[
                  TableColumnSpec<Json>(
                    label: 'Key',
                    cell: (k) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('${k['name']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                        Text('${k['keyPrefix']}…', style: TextStyle(fontFamily: 'monospace', fontSize: 12, color: muted)),
                      ],
                    ),
                  ),
                  TableColumnSpec<Json>(label: 'Prefixes', cell: (k) => Text(((k['prefixes'] as List?) ?? const <Object?>[]).join('\n'))),
                  TableColumnSpec<Json>(
                    label: 'Restrictions',
                    cell: (k) => Text(restrictionText(k['restrictions']), maxLines: 2, overflow: TextOverflow.ellipsis),
                  ),
                  TableColumnSpec<Json>(label: 'Last used', cell: (k) => Text(whenText(k['lastUsedAt']))),
                  TableColumnSpec<Json>(label: 'Expires', cell: (k) => Text(whenText(k['expiresAt']))),
                  TableColumnSpec<Json>(
                    label: 'State',
                    cell: (k) {
                      final s = credentialState(k);
                      return StatusLabel(label: s.label, tone: s.tone);
                    },
                  ),
                  TableColumnSpec<Json>(
                    label: '',
                    cell: (k) => k['revokedAt'] != null
                        ? const SizedBox.shrink()
                        : IconButton(
                            key: Key('feedKeys.revoke.${k['id']}'),
                            tooltip: 'Revoke',
                            onPressed: busy ? null : () => setState(() => _revoking = '${k['id']}'),
                            icon: const Icon(Icons.block, size: 20),
                          ),
                  ),
                ],
              ),
              if (revoking != null) ...<Widget>[
                const SizedBox(height: 10),
                ConfirmRow(
                  message: 'Revoke ${revoking['name']}? Every URL made with it stops working at once.',
                  action: 'Revoke',
                  confirmKey: const Key('feedKeys.revoke.confirm'),
                  onConfirm: () => _revoke('${revoking['id']}'),
                  onCancel: () => setState(() => _revoking = null),
                ),
              ],
              if (!_adding && write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
            ],
          );
        },
      ),
    );
  }
}

/// Tile keys for header-less map clients (`listTileKeys`, `createTileKey`,
/// `revokeTileKey`).
class TileKeysCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const TileKeysCard({super.key});

  @override
  ConsumerState<TileKeysCard> createState() => _TileKeysCardState();
}

class _TileKeysCardState extends ConsumerState<TileKeysCard> with WriteTracking<TileKeysCard> {
  TileKeyDraft _d = TileKeyDraft();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _ttl = TextEditingController(text: '7d');
  Map<String, String> _errors = const <String, String>{};
  bool _adding = false;
  Json? _created;
  String? _revoking;

  @override
  void dispose() {
    _name.dispose();
    _ttl.dispose();
    super.dispose();
  }

  Future<void> _create() async {
    _d
      ..name = _name.text
      ..ttl = _ttl.text;
    setState(() => _errors = _d.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final created = await track(() async {
      final k = await callApiRequired(
        () => api.getTokensApi().createTileKey(tileKeyCreate: fromJsonMap<TileKeyCreate>(api.serializers, _d.toJson())),
      );
      final page = await callApiRequired(() => api.getTokensApi().listTileKeys(limit: 200));
      if (!page.items.any((x) => x.id == k.id)) {
        throw const WriteNotConfirmedException('The new key is not listed.');
      }
      return toJsonMap(api.serializers, k);
    });
    if (created != null && mounted) {
      setState(() {
        _created = created;
        _adding = false;
      });
      ref.invalidate(tileKeysProvider);
    }
  }

  Future<void> _revoke(String id) async {
    final api = ref.read(foresignalApiProvider);
    final done = await track(
      () => writeThenConfirm<List<Json>>(
        write: () => callApi(() => api.getTokensApi().revokeTileKey(tileKeyId: id)),
        reread: () async => <Json>[
          for (final k in (await callApiRequired(() => api.getTokensApi().listTileKeys(limit: 200))).items)
            toJsonMap(api.serializers, k),
        ],
        confirm: (list) {
          final k = list.where((x) => x['id'] == id).firstOrNull;
          return k == null || k['revokedAt'] != null ? null : 'The key is still listed as active.';
        },
      ),
    );
    if (done != null && mounted) {
      setState(() => _revoking = null);
      ref.invalidate(tileKeysProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final created = _created;
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('tileKeys'),
      title: 'Tile Keys',
      subtitle: 'Read-only keys in the URL for map clients, limited to tile, style and stream paths, for up to 30 days.',
      actions: <Widget>[
        if (!_adding)
          TonalButton(
            key: const Key('tileKeys.add'),
            label: 'New Tile Key',
            icon: Icons.add,
            onPressed: () => setState(() {
              _d = TileKeyDraft()..prefixes.addAll(const <String>['/v1/tiles/', '/v1/styles']);
              _name.clear();
              _ttl.text = '7d';
              _errors = const <String, String>{};
              _adding = true;
              _created = null;
            }),
          ),
      ],
      child: AsyncView<List<Json>>(
        value: ref.watch(tileKeysProvider),
        onRetry: () => ref.invalidate(tileKeysProvider),
        data: (keys) {
          final revoking = keys.where((k) => k['id'] == _revoking).firstOrNull;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (created != null) ...<Widget>[
                OneTimeSecret(
                  label: 'Tile key',
                  secret: '${created['key']}',
                  onDismiss: () => setState(() => _created = null),
                  extra: (revealed) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text('URL base; append the path after /v1/:', style: TextStyle(color: muted, fontSize: 12)),
                      revealed
                          ? CopyLine('${created['urlBase']}')
                          : Text(
                              OneTimeSecret.maskSecret('${created['urlBase']}', '${created['key']}'),
                              style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
                            ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
              if (_adding) ...<Widget>[
                LabeledField(label: 'Name', field: PlainField(key: const Key('tileKey.name'), controller: _name, error: _errors['name'])),
                LabeledField(
                  label: 'Paths',
                  help: 'What it may read.',
                  field: ChoiceChips(
                    key: const Key('tileKey.prefixes'),
                    keyPrefix: 'tileKey.prefix',
                    values: tileKeyPrefixes,
                    selected: <String>[..._d.prefixes],
                    error: _errors['prefixes'],
                    onChanged: (v) => setState(() => _d.prefixes
                      ..clear()
                      ..addAll(v)),
                  ),
                ),
                LabeledField(
                  label: 'Lifetime',
                  help: 'Up to 30 days.',
                  field: PlainField(key: const Key('tileKey.ttl'), controller: _ttl, error: _errors['ttl'], hint: '7d'),
                ),
                RestrictionFields(key: ObjectKey(_d), draft: _d.restrictions, prefix: 'tileKey', errors: _errors, endpoints: false),
                FormActions(
                  busy: busy,
                  saveLabel: 'Create Tile Key',
                  onSave: _create,
                  leading: <Widget>[
                    TextButton(onPressed: busy ? null : () => setState(() => _adding = false), child: const Text('Cancel')),
                    statusLine,
                  ],
                ),
                const SizedBox(height: 16),
              ],
              DataTableCard<Json>(
                key: const Key('tileKeys.table'),
                rows: keys,
                empty: 'No tile keys.',
                columns: <TableColumnSpec<Json>>[
                  TableColumnSpec<Json>(
                    label: 'Key',
                    cell: (k) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('${k['name']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                        Text('${k['keyPrefix']}…', style: TextStyle(fontFamily: 'monospace', fontSize: 12, color: muted)),
                      ],
                    ),
                  ),
                  TableColumnSpec<Json>(label: 'Paths', cell: (k) => Text(((k['prefixes'] as List?) ?? const <Object?>[]).join(', '))),
                  TableColumnSpec<Json>(
                    label: 'Restrictions',
                    cell: (k) => Text(restrictionText(k['restrictions']), maxLines: 2, overflow: TextOverflow.ellipsis),
                  ),
                  TableColumnSpec<Json>(label: 'Last used', cell: (k) => Text(whenText(k['lastUsedAt']))),
                  TableColumnSpec<Json>(label: 'Expires', cell: (k) => Text(whenText(k['expiresAt']))),
                  TableColumnSpec<Json>(
                    label: 'State',
                    cell: (k) {
                      final s = credentialState(k);
                      return StatusLabel(label: s.label, tone: s.tone);
                    },
                  ),
                  TableColumnSpec<Json>(
                    label: '',
                    cell: (k) => k['revokedAt'] != null
                        ? const SizedBox.shrink()
                        : IconButton(
                            key: Key('tileKeys.revoke.${k['id']}'),
                            tooltip: 'Revoke',
                            onPressed: busy ? null : () => setState(() => _revoking = '${k['id']}'),
                            icon: const Icon(Icons.block, size: 20),
                          ),
                  ),
                ],
              ),
              if (revoking != null) ...<Widget>[
                const SizedBox(height: 10),
                ConfirmRow(
                  message: 'Revoke ${revoking['name']}? Map clients using it stop loading at once.',
                  action: 'Revoke',
                  confirmKey: const Key('tileKeys.revoke.confirm'),
                  onConfirm: () => _revoke('${revoking['id']}'),
                  onCancel: () => setState(() => _revoking = null),
                ),
              ],
              if (!_adding && write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
            ],
          );
        },
      ),
    );
  }
}

/// Mints a stream or tile ticket (`createStreamTicket`), for testing a
/// browser or map client that cannot send a header.
class StreamTicketCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const StreamTicketCard({super.key});

  @override
  ConsumerState<StreamTicketCard> createState() => _StreamTicketCardState();
}

class _StreamTicketCardState extends ConsumerState<StreamTicketCard> with WriteTracking<StreamTicketCard> {
  final TicketDraft _d = TicketDraft();
  final TextEditingController _paths = TextEditingController();
  final TextEditingController _ttl = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  Json? _ticket;

  @override
  void dispose() {
    _paths.dispose();
    _ttl.dispose();
    super.dispose();
  }

  Future<void> _mint() async {
    _d
      ..paths = _paths.text
      ..ttl = _ttl.text;
    setState(() => _errors = _d.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final t = await track(
      () => callApiRequired(
        () => api.getTokensApi().createStreamTicket(
          streamTicketRequest: fromJsonMap<StreamTicketRequest>(api.serializers, _d.toJson()),
        ),
      ),
    );
    if (t != null && mounted) {
      setState(() => _ticket = toJsonMap(api.serializers, t));
    }
  }

  @override
  Widget build(BuildContext context) {
    final ticket = _ticket;
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('ticket'),
      title: 'Stream and Tile Tickets',
      subtitle: "A short-lived ?ticket= for a client that cannot send a header. It carries this app's admin token's rights.",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (ticket != null) ...<Widget>[
            OneTimeSecret(
              label: '${wireText('${ticket['purpose']}')} ticket',
              secret: '${ticket['ticket']}',
              onDismiss: () => setState(() => _ticket = null),
              extra: (_) => Text(
                ticket['purpose'] == 'stream'
                    ? 'Connect within a minute, by ${whenText(ticket['expiresAt'])}, as ?ticket= on /v1/changes/stream, /v1/alerts/stream or /v1/events/stream.'
                    : 'Valid until ${whenText(ticket['expiresAt'])}, as ?ticket= on tile and style paths.',
                style: TextStyle(color: muted, fontSize: 12),
              ),
            ),
            const SizedBox(height: 16),
          ],
          LabeledField(
            label: 'Purpose',
            field: WireDropdown(
              key: const Key('ticket.purpose'),
              value: _d.purpose,
              values: const <String>['stream', 'tiles'],
              labels: const <String, String>{'stream': 'Event stream', 'tiles': 'Map tiles'},
              onChanged: (v) => setState(() => _d.purpose = v),
            ),
          ),
          LabeledField(
            label: 'Paths',
            help: "Narrower paths within the purpose's, one per line; empty for all of them.",
            field: PlainField(key: const Key('ticket.paths'), controller: _paths, maxLines: 4),
          ),
          if (_d.purpose == 'tiles')
            LabeledField(
              label: 'Lifetime',
              help: 'Up to 1 h; empty for 10m.',
              field: PlainField(key: const Key('ticket.ttl'), controller: _ttl, error: _errors['ttl'], hint: '10m'),
            ),
          FormActions(busy: busy, saveLabel: 'Mint Ticket', onSave: _mint, leading: <Widget>[if (write is WriteFailed) statusLine]),
        ],
      ),
    );
  }
}
