import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'forecasting_drafts.dart';
import 'forecasting_providers.dart';
import 'forecasting_widgets.dart';

/// The display name of an EDP source: its manifest's name, else its id.
String edpSourceName(Json s) => '${jsonMap(jsonMap(s, 'manifest'), 'source')?['name'] ?? s['sourceId']}';

/// The external data providers (EDP add-ins), by state, with **Register
/// Provider**.
class EdpSourcesPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const EdpSourcesPanel({super.key});

  @override
  ConsumerState<EdpSourcesPanel> createState() => _EdpSourcesPanelState();
}

class _EdpSourcesPanelState extends ConsumerState<EdpSourcesPanel> {
  String? _state;
  bool _registering = false;

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
            for (final s in <String?>[null, 'pending', 'active', 'suspended'])
              ChoiceChip(
                key: Key('providers.state.${s ?? 'all'}'),
                label: Text(s == null ? 'All' : wireText(s)),
                selected: _state == s,
                onSelected: (_) => setState(() => _state = s),
              ),
            IconButton(
              tooltip: 'Refresh',
              onPressed: () => ref.invalidate(edpSourcesProvider(_state)),
              icon: const Icon(Icons.refresh),
            ),
            TonalButton(
              key: const Key('providers.register'),
              label: 'Register Provider',
              icon: Icons.add,
              onPressed: () => setState(() => _registering = !_registering),
            ),
          ],
        ),
        const SizedBox(height: 16),
        if (_registering) ...<Widget>[
          RegisterEdpSourceCard(onClose: () => setState(() => _registering = false)),
          const SizedBox(height: 16),
        ],
        AsyncView<List<Json>>(
          value: ref.watch(edpSourcesProvider(_state)),
          onRetry: () => ref.invalidate(edpSourcesProvider(_state)),
          data: (rows) => DataTableCard<Json>(
            key: const Key('providers.table'),
            rows: rows,
            empty: 'No providers.',
            onTap: (s) => context.go(forecastingProviderPath('${s['sourceId']}')),
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(
                label: 'Provider',
                cell: (s) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(edpSourceName(s), style: const TextStyle(fontWeight: FontWeight.w600)),
                    Text('${s['sourceId']}', style: TextStyle(color: muted, fontSize: 12)),
                  ],
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Protocol',
                cell: (s) => Text('${jsonMap(s, 'manifest')?['protocol'] ?? '—'}'),
              ),
              TableColumnSpec<Json>(
                label: 'Streams',
                numeric: true,
                cell: (s) => Text('${jsonList(jsonMap(s, 'manifest'), 'streams').length}'),
              ),
              TableColumnSpec<Json>(
                label: 'Registered via',
                cell: (s) => Text(wireText('${s['registeredVia'] ?? 'operator'}')),
              ),
              TableColumnSpec<Json>(label: 'Last item', cell: (s) => Text(whenText(s['lastItemAt']))),
              TableColumnSpec<Json>(label: 'Health', cell: (s) => Text('${s['health'] ?? '—'}')),
              TableColumnSpec<Json>(label: 'State', cell: (s) => stateLabel(s['state'])),
              TableColumnSpec<Json>(
                label: 'Actions',
                cell: (s) => TonalButton(
                  key: Key('providers.configure.${s['sourceId']}'),
                  label: 'Configure',
                  onPressed: () => context.go(forecastingProviderPath('${s['sourceId']}')),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Registers a provider by manifest or manifest URL
/// (`registerExternalSource`) and shows its ingest key once.
class RegisterEdpSourceCard extends ConsumerStatefulWidget {
  /// Creates the card; [onClose] closes it.
  const RegisterEdpSourceCard({super.key, required this.onClose});

  /// Called when it is closed.
  final VoidCallback onClose;

  @override
  ConsumerState<RegisterEdpSourceCard> createState() => _RegisterEdpSourceCardState();
}

class _RegisterEdpSourceCardState extends ConsumerState<RegisterEdpSourceCard>
    with WriteTracking<RegisterEdpSourceCard> {
  bool _byUrl = true;
  final TextEditingController _url = TextEditingController();
  final TextEditingController _manifest = TextEditingController();
  bool _approve = false;
  bool _private = false;
  String? _error;
  ({String sourceId, String ingestKey})? _created;

  @override
  void dispose() {
    _url.dispose();
    _manifest.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    final Map<String, Object?> body;
    if (_byUrl) {
      final u = Uri.tryParse(_url.text.trim());
      if (u == null || !u.hasScheme || !u.host.isNotEmpty) {
        setState(() => _error = 'An https:// URL of the manifest.');
        return;
      }
      body = <String, Object?>{'manifestUrl': u.toString()};
    } else {
      final p = jsonObjectProblem(_manifest.text, required: true);
      if (p != null) {
        setState(() => _error = p);
        return;
      }
      body = <String, Object?>{'manifest': parseJsonObject(_manifest.text)};
    }
    setState(() => _error = null);
    body
      ..['approve'] = _approve
      ..['allowPrivateNetwork'] = _private;
    final api = ref.read(foresignalApiProvider);
    final got = await track(
      () => callApiRequired(
        () => api.getExternalApi().registerExternalSource(
          externalSourceRegistration: fromJsonMap<ExternalSourceRegistration>(api.serializers, body),
        ),
      ),
    );
    if (got != null && mounted) {
      setState(() => _created = (sourceId: got.source_.sourceId, ingestKey: got.ingestKey));
      ref.invalidate(edpSourcesProvider);
    }
  }

  String? get _problem => switch (failedCode) {
    'SOURCE_EXISTS' => 'A provider with this source id is already registered. Update its manifest on its page instead.',
    'URL_NOT_ALLOWED' =>
      'The manifest URL resolves to a private or loopback address. Turn on "Private network" only if the provider really runs on this network.',
    'PROTOCOL_UNSUPPORTED' => 'The manifest names an EDP protocol version this backend does not speak. See the Protocol tab.',
    _ => null,
  };

  @override
  Widget build(BuildContext context) {
    final created = _created;
    if (created != null) {
      return SectionCard(
        key: const Key('providers.created'),
        title: 'Provider registered',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            OneTimeSecret(
              label: 'Ingest key',
              secret: created.ingestKey,
              onDismiss: () {
                setState(() => _created = null);
                widget.onClose();
              },
              extra: (_) => const Footnote(
                'Give this key to the provider for pushing items. It is shown once and not kept by the app.',
              ),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: TonalButton(
                label: 'Open ${created.sourceId}',
                onPressed: () => context.go(forecastingProviderPath(created.sourceId)),
              ),
            ),
          ],
        ),
      );
    }
    return SectionCard(
      key: const Key('providers.registerCard'),
      title: 'Register a provider',
      subtitle:
          'A provider describes itself with an EDP manifest: who it is, how items arrive and the '
          'streams it offers. New providers wait in pending until approved.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: SegmentedButton<bool>(
              segments: const <ButtonSegment<bool>>[
                ButtonSegment<bool>(value: true, label: Text('Manifest URL')),
                ButtonSegment<bool>(value: false, label: Text('Paste manifest')),
              ],
              selected: <bool>{_byUrl},
              onSelectionChanged: (s) => setState(() => _byUrl = s.first),
            ),
          ),
          const SizedBox(height: 12),
          if (_byUrl)
            LabeledField(
              label: 'Manifest URL',
              field: PlainField(
                key: const Key('providers.new.url'),
                controller: _url,
                hint: 'https://provider.example/edp/manifest.json',
                error: _error,
              ),
            )
          else
            LabeledField(
              label: 'Manifest',
              help: 'The EdpManifest JSON document.',
              field: JsonField(
                key: const Key('providers.new.manifest'),
                controller: _manifest,
                minLines: 8,
                maxLines: 24,
                error: _error,
              ),
            ),
          LabeledField(
            label: 'Approve now',
            help: 'Start ingesting at once instead of waiting in pending.',
            field: Align(
              alignment: Alignment.centerLeft,
              child: Switch(
                key: const Key('providers.new.approve'),
                value: _approve,
                onChanged: (v) => setState(() => _approve = v),
              ),
            ),
          ),
          LabeledField(
            label: 'Private network',
            help: 'Allow its URLs to resolve to private or loopback addresses. Only for a provider on this network.',
            field: Align(
              alignment: Alignment.centerLeft,
              child: Switch(value: _private, onChanged: (v) => setState(() => _private = v)),
            ),
          ),
          FormActions(
            busy: busy,
            saveLabel: 'Register',
            onSave: _register,
            onReset: widget.onClose,
            leading: <Widget>[if (_problem == null && write is WriteFailed) WriteStatusLine(state: write)],
          ),
          if (_problem case final p?) ResultPanel(title: 'Not registered', tone: StatusTone.warning, message: p),
        ],
      ),
    );
  }
}

/// Registration tokens that let a provider register itself
/// (`listRegistrationTokens`, `createRegistrationToken`,
/// `deleteRegistrationToken`).
class RegistrationTokensPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const RegistrationTokensPanel({super.key});

  @override
  ConsumerState<RegistrationTokensPanel> createState() => _RegistrationTokensPanelState();
}

class _RegistrationTokensPanelState extends ConsumerState<RegistrationTokensPanel>
    with WriteTracking<RegistrationTokensPanel> {
  final TokenDraft _draft = TokenDraft();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _expires = TextEditingController();
  final TextEditingController _uses = TextEditingController();
  final TextEditingController _prefix = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  String? _secret;
  Json? _confirmDelete;

  @override
  void dispose() {
    for (final c in <TextEditingController>[_name, _expires, _uses, _prefix]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _create() async {
    _draft
      ..name = _name.text
      ..expiresAt = _expires.text
      ..maxUses = _uses.text
      ..sourceIdPrefix = _prefix.text;
    final errors = _draft.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final got = await track(
      () => callApiRequired(
        () => api.getExternalApi().createRegistrationToken(
          registrationTokenInput: fromJsonMap<RegistrationTokenInput>(api.serializers, _draft.toJson()),
        ),
      ),
    );
    if (got != null && mounted) {
      for (final c in <TextEditingController>[_name, _expires, _uses, _prefix]) {
        c.clear();
      }
      setState(() => _secret = got.token);
      ref.invalidate(registrationTokensProvider);
    }
  }

  Future<void> _delete(String id) async {
    setState(() => _confirmDelete = null);
    final external = ref.read(foresignalApiProvider).getExternalApi();
    await track(() async {
      await callApi(() => external.deleteRegistrationToken(tokenId: id));
      final left = await callApiRequired(external.listRegistrationTokens);
      if (left.any((t) => t.id == id)) {
        throw const WriteNotConfirmedException('the token still reads back');
      }
    });
    ref.invalidate(registrationTokensProvider);
  }

  @override
  Widget build(BuildContext context) {
    final pending = _confirmDelete;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionCard(
          title: 'New registration token',
          subtitle:
              'A provider presents the token to register itself; it then waits in pending for '
              'approval like any other.',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (_secret case final s?) ...<Widget>[
                OneTimeSecret(
                  key: const Key('tokens.secret'),
                  label: 'Registration token',
                  secret: s,
                  onDismiss: () => setState(() => _secret = null),
                ),
                const SizedBox(height: 12),
              ],
              LabeledField(
                label: 'Name',
                field: PlainField(key: const Key('tokens.name'), controller: _name, error: _errors['name']),
              ),
              LabeledField(
                label: 'Expires',
                help: 'A UTC date or date-time; empty for never.',
                field: PlainField(controller: _expires, hint: '2027-01-01', error: _errors['expiresAt']),
              ),
              LabeledField(
                label: 'Registrations allowed',
                help: 'Empty for one.',
                field: PlainField(controller: _uses, error: _errors['maxUses']),
              ),
              LabeledField(
                label: 'Source id prefix',
                help: 'Only manifests whose source id starts with this.',
                field: PlainField(controller: _prefix),
              ),
              FormActions(
                busy: busy,
                saveLabel: 'Create Token',
                onSave: _create,
                leading: <Widget>[WriteStatusLine(state: write)],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        if (pending != null)
          ConfirmRow(
            message: 'Delete the token "${pending['name']}"? Providers can no longer register with it.',
            action: 'Delete',
            confirmKey: const Key('tokens.delete.confirm'),
            onConfirm: () => _delete('${pending['id']}'),
            onCancel: () => setState(() => _confirmDelete = null),
          ),
        AsyncView<List<Json>>(
          value: ref.watch(registrationTokensProvider),
          onRetry: () => ref.invalidate(registrationTokensProvider),
          data: (rows) => DataTableCard<Json>(
            key: const Key('tokens.table'),
            rows: rows,
            empty: 'No registration tokens.',
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(label: 'Name', cell: (t) => Text('${t['name']}')),
              TableColumnSpec<Json>(label: 'Prefix', cell: (t) => Text('${t['prefix']}…')),
              TableColumnSpec<Json>(
                label: 'Uses',
                numeric: true,
                cell: (t) => Text('${t['uses'] ?? 0} of ${t['maxUses'] ?? 1}'),
              ),
              TableColumnSpec<Json>(label: 'Source ids', cell: (t) => Text('${t['sourceIdPrefix'] ?? 'Any'}')),
              TableColumnSpec<Json>(
                label: 'Expires',
                cell: (t) => Text(t['expiresAt'] == null ? 'Never' : whenText(t['expiresAt'])),
              ),
              TableColumnSpec<Json>(label: 'Created', cell: (t) => Text(whenText(t['createdAt']))),
              TableColumnSpec<Json>(
                label: 'Actions',
                cell: (t) => TextButton(
                  key: Key('tokens.delete.${t['id']}'),
                  onPressed: busy ? null : () => setState(() => _confirmDelete = t),
                  child: const Text('Delete'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// The EDP protocol this backend speaks (`getEdpProtocol`) and a dry-run
/// validator.
class EdpProtocolPanel extends ConsumerWidget {
  /// Creates the panel.
  const EdpProtocolPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionCard(
          title: 'Protocol',
          child: AsyncView<Json>(
            value: ref.watch(edpProtocolProvider),
            onRetry: () => ref.invalidate(edpProtocolProvider),
            data: (p) => KeyValueList(
              key: const Key('protocol.info'),
              entries: <MapEntry<String, Object>>[
                MapEntry<String, Object>('Protocol', '${p['protocol']}'),
                if (p['supported'] case final List<Object?> s) MapEntry<String, Object>('Supported', s.join(', ')),
                if (p['maxMinor'] != null) MapEntry<String, Object>('Highest minor version', '1.${p['maxMinor']}'),
                MapEntry<String, Object>('Item types', ((p['itemTypes'] as List<Object?>?) ?? const <Object?>[]).join(', ')),
                MapEntry<String, Object>('Modes', ((p['modes'] as List<Object?>?) ?? const <Object?>[]).join(', ')),
                if (p['schemas'] case final List<Object?> s) MapEntry<String, Object>('Schemas', s.join(', ')),
                if (p['documentation'] != null) MapEntry<String, Object>('Documentation', '${p['documentation']}'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        const EdpValidateCard(),
      ],
    );
  }
}

/// One rejected item (`EdpItemRejection`) as a line of text.
String rejectionText(Json e) {
  final errors = <String>[for (final x in jsonList(e, 'schemaErrors')) '${x['path']}: ${x['message']}'];
  return 'Item ${e['index'] ?? '?'}${e['stream'] == null ? '' : ' (${e['stream']})'}'
      '${e['id'] == null ? '' : ' ${e['id']}'}: ${e['reason']}'
      '${errors.isEmpty ? '' : ' — ${errors.join('; ')}'}';
}

/// A validation report (`EdpValidationReport`).
class EdpValidationView extends StatelessWidget {
  /// Creates the view of [report].
  const EdpValidationView({super.key, required this.report});

  /// The report, in its wire shape.
  final Json report;

  @override
  Widget build(BuildContext context) {
    final r = report;
    final manifestErrors = jsonList(r, 'manifestErrors');
    final rejected = jsonList(r, 'rejected');
    final breaking = ((r['breakingChanges'] as List<Object?>?) ?? const <Object?>[]).cast<Object?>();
    final ok = r['manifestValid'] != false && rejected.isEmpty;
    return ResultPanel(
      key: const Key('edp.validation'),
      title: ok ? 'Valid' : 'Problems found',
      tone: ok ? (breaking.isEmpty ? StatusTone.ok : StatusTone.warning) : StatusTone.error,
      message: <String>[
        if (r['manifestValid'] != null) 'Manifest ${r['manifestValid'] == true ? 'valid' : 'invalid'}.',
        '${r['itemsValid'] ?? 0} items valid, ${rejected.length} rejected.',
        if (breaking.isNotEmpty) 'Breaking changes return the provider to pending: ${breaking.join('; ')}.',
      ].join(' '),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          for (final e in manifestErrors) Text('${e['path']}: ${e['message']}'),
          for (final e in rejected) Text(rejectionText(e)),
        ],
      ),
    );
  }
}

/// Validates a manifest and sample items without registering anything
/// (`validateEdp`).
class EdpValidateCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const EdpValidateCard({super.key});

  @override
  ConsumerState<EdpValidateCard> createState() => _EdpValidateCardState();
}

class _EdpValidateCardState extends ConsumerState<EdpValidateCard> with WriteTracking<EdpValidateCard> {
  final TextEditingController _manifest = TextEditingController();
  final TextEditingController _items = TextEditingController();
  final TextEditingController _sourceId = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  Json? _report;

  @override
  void dispose() {
    _manifest.dispose();
    _items.dispose();
    _sourceId.dispose();
    super.dispose();
  }

  Future<void> _validate() async {
    final errors = <String, String>{'manifest': ?jsonObjectProblem(_manifest.text)};
    List<Map<String, Object?>>? items;
    try {
      items = parseJsonObjectList(_items.text);
    } on FormatException catch (e) {
      errors['items'] = e.message;
    }
    if (errors.isEmpty && _manifest.text.trim().isEmpty && items == null) {
      errors['manifest'] = 'A manifest, items, or both.';
    }
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final body = <String, Object?>{
      'manifest': ?parseJsonObject(_manifest.text),
      if (_sourceId.text.trim().isNotEmpty) 'sourceId': _sourceId.text.trim(),
      'items': ?items,
    };
    final got = await track(
      () => callApiRequired(
        () => api.getExternalApi().validateEdp(
          edpValidationRequest: fromJsonMap<EdpValidationRequest>(api.serializers, body),
        ),
      ),
    );
    if (got != null && mounted) {
      setState(() {
        _report = toJsonMap(api.serializers, got);
        write = const WriteIdle();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: 'Validate',
      subtitle:
          'Checks a manifest and sample items against the protocol without registering anything. '
          'With a source id, items are checked against that provider\'s streams and a manifest is '
          'compared with its current one for breaking changes.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LabeledField(
            label: 'Manifest',
            field: JsonField(key: const Key('validate.manifest'), controller: _manifest, error: _errors['manifest']),
          ),
          LabeledField(
            label: 'Items',
            help: 'A JSON array of items.',
            field: JsonField(key: const Key('validate.items'), controller: _items, error: _errors['items']),
          ),
          LabeledField(label: 'Source id', field: PlainField(controller: _sourceId)),
          FormActions(
            busy: busy,
            saveLabel: 'Validate',
            onSave: _validate,
            leading: <Widget>[if (write is WriteFailed) WriteStatusLine(state: write)],
          ),
          if (_report case final r?) EdpValidationView(report: r),
        ],
      ),
    );
  }
}
