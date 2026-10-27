import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/permissions.dart';
import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart'
    show Footnote, PlainField, WireDropdown, WriteTracking, whenText;
import '../sources/source_providers.dart' show sourceListProvider;
import 'network_providers.dart';

/// One aggregator (`getAggregator`), by domain.
final aggregatorProvider = FutureProvider.autoDispose.family<Json, String>(
  (ref, domain) => jsonObjectCall(
    ref.watch(backendDioProvider),
    'GET',
    '/v1/aggregators/${Uri.encodeComponent(domain)}',
  ),
);

/// The tone of an aggregator [status].
StatusTone aggregatorTone(Object? status) => switch (status) {
  'ok' => StatusTone.ok,
  'degraded' => StatusTone.warning,
  'down' => StatusTone.error,
  _ => StatusTone.neutral,
};

/// What `config` takes for each domain, from the contract.
const Map<String, String> aggregatorConfigHelp = <String, String>{
  'adsb': 'band: 1090 or 978 (default 1090).',
  'ais':
      'allowSenders: private IPs or CIDRs (required with a udp:// endpoint); stationName '
      '(default "local").',
  'datalink':
      'acars, vdlm2, hfdl, aprs: each a port on the endpoint host or tcp://host:port, at '
      'least one; stationId, stationCallsign, includeMessages.',
  'satellite':
      'location (lat,lon[,altM] or a place id; required with an endpoint), inboxPath, '
      'satdumpVersion (1.2 or 2.0), predictNorad, goes (east or west).',
  'ground-sensors':
      'One object per sensor, each with enabled (at least one on): seismic, same '
      '(source), radiosonde (endpoint udp://, allowSenders, stationCallsign), airq (deviceType, '
      'endpoint, lat, lon, indoor, name), pws (station, endpoint, lat, lon), mesh (meshtastic, '
      'root, meshcore, bridge).',
};

/// Domains that take no endpoint: each sensor's address is in `config`.
const Set<String> endpointlessDomains = <String>{'ground-sensors'};

/// What `endpoint` takes for each domain, from the contract.
const Map<String, String> aggregatorEndpointHint = <String, String>{
  'adsb': 'http://readsb/data/aircraft.json',
  'ais': 'tcp://192.168.1.20:5012 or udp://0.0.0.0:10110',
  'datalink': 'tcp://192.168.1.20',
  'satellite': 'http://192.168.1.30:8081',
};

/// The first-party aggregators (`listAggregators`): local-first collection
/// that supersedes egress wherever a feed can be mirrored. Each row shows
/// the domain, whether it is on, its mode, endpoint and live status, and the
/// public sources it supersedes.
class AggregatorsCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const AggregatorsCard({super.key});

  @override
  ConsumerState<AggregatorsCard> createState() => _AggregatorsCardState();
}

class _AggregatorsCardState extends ConsumerState<AggregatorsCard> {
  String? _open;

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('aggregators'),
    title: 'First-Party Aggregators',
    subtitle:
        'Your own receivers and decoders. Once one is live, the public mirrors it supersedes '
        'are turned off by default; they stay in the catalog as a fallback you can turn back on.',
    actions: <Widget>[
      IconButton(
        tooltip: 'Refresh',
        onPressed: () => ref.invalidate(aggregatorsProvider),
        icon: const Icon(Icons.refresh),
      ),
    ],
    child: AsyncView<List<Json>>(
      value: ref.watch(aggregatorsProvider),
      onRetry: () => ref.invalidate(aggregatorsProvider),
      data: (aggregators) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DataTableCard<Json>(
            rows: aggregators,
            empty: 'The server lists no aggregators.',
            onTap: (a) => setState(() => _open = _open == a['domain'] ? null : '${a['domain']}'),
            selected: (a) => a['domain'] == _open,
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(
                label: 'Domain',
                cell: (a) => Text(
                  aggregatorDomainLabels[a['domain']] ?? '${a['name']}',
                  key: Key('aggregator.row.${a['domain']}'),
                ),
              ),
              TableColumnSpec<Json>(label: 'Name', cell: (a) => Text('${a['name']}')),
              TableColumnSpec<Json>(
                label: 'Enabled',
                cell: (a) => Text(
                  a['implemented'] == false
                      ? 'Not on this server'
                      : (a['enabled'] == true ? 'On' : 'Off'),
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Mode',
                cell: (a) => Text(aggregatorModeLabels[a['mode']] ?? '${a['mode'] ?? '—'}'),
              ),
              TableColumnSpec<Json>(
                label: 'Endpoint',
                cell: (a) => SelectableText('${a['endpoint'] ?? '—'}'),
              ),
              TableColumnSpec<Json>(
                label: 'Status',
                cell: (a) => StatusChip(
                  label: wireText('${a['status'] ?? 'unconfigured'}'),
                  tone: aggregatorTone(a['status']),
                  tooltip: a['statusReason'] as String?,
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Last seen',
                cell: (a) => Text(whenText(a['lastSeenAt'])),
              ),
              TableColumnSpec<Json>(
                label: 'Supersedes',
                cell: (a) => Text(
                  '${((a['supersededSources'] as List?) ?? const <Object?>[]).length} public sources',
                  key: Key('aggregator.supersedes.${a['domain']}'),
                ),
              ),
            ],
          ),
          for (final a in aggregators)
            if (a['domain'] == _open) ...<Widget>[
              const SizedBox(height: 16),
              AggregatorSetup(
                key: ValueKey<String>('aggregator.${a['domain']}'),
                domain: '${a['domain']}',
              ),
            ],
          if (_open == null)
            const Footnote('Pick a domain to set it up, test it, or see what it supersedes.'),
        ],
      ),
    ),
  );
}

/// One aggregator's setup: read with `getAggregator`, saved with
/// `updateAggregator` (the configuration is replaced whole), proved live
/// with `testAggregator`.
class AggregatorSetup extends ConsumerWidget {
  /// Creates the setup of [domain].
  const AggregatorSetup({super.key, required this.domain});

  /// The domain, e.g. `adsb`.
  final String domain;

  @override
  Widget build(BuildContext context, WidgetRef ref) => SectionCard(
    key: Key('aggregator.setup.$domain'),
    title: aggregatorDomainLabels[domain] ?? domain,
    child: AsyncView<Json>(
      value: ref.watch(aggregatorProvider(domain)),
      onRetry: () => ref.invalidate(aggregatorProvider(domain)),
      data: (a) => AggregatorForm(key: ValueKey<String>(jsonEncode(a)), aggregator: a),
    ),
  );
}

/// The editor of one [aggregator].
class AggregatorForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const AggregatorForm({super.key, required this.aggregator});

  /// The aggregator as read.
  final Json aggregator;

  @override
  ConsumerState<AggregatorForm> createState() => _AggregatorFormState();
}

class _AggregatorFormState extends ConsumerState<AggregatorForm>
    with WriteTracking<AggregatorForm> {
  late bool _enabled = widget.aggregator['enabled'] == true;
  late String _mode = widget.aggregator['mode'] as String? ?? 'receiver';
  late bool _disableSuperseded = widget.aggregator['disableSupersededSources'] as bool? ?? true;
  late final TextEditingController _endpoint = TextEditingController(
    text: widget.aggregator['endpoint'] as String? ?? '',
  );
  late final TextEditingController _config = TextEditingController(
    text: const JsonEncoder.withIndent(
      '  ',
    ).convert(widget.aggregator['config'] ?? const <String, Object?>{}),
  );
  Map<String, String> _errors = const <String, String>{};
  Json? _test;
  Object? _testError;
  bool _testing = false;

  String get _domain => '${widget.aggregator['domain']}';

  bool get _implemented => widget.aggregator['implemented'] != false;

  bool get _endpointless => endpointlessDomains.contains(_domain);

  bool get _live =>
      widget.aggregator['enabled'] == true &&
      (_endpointless || widget.aggregator['endpoint'] != null) &&
      widget.aggregator['status'] != 'unconfigured';

  @override
  void dispose() {
    _endpoint.dispose();
    _config.dispose();
    super.dispose();
  }

  Json? _body() {
    final errors = <String, String>{};
    Object? config;
    try {
      config = _config.text.trim().isEmpty ? <String, Object?>{} : jsonDecode(_config.text);
      if (config is! Map) {
        errors['config'] = 'A JSON object.';
      }
    } on FormatException catch (e) {
      errors['config'] = 'Not JSON: ${e.message}.';
    }
    final endpoint = _endpointless ? '' : _endpoint.text.trim();
    if (_enabled && endpoint.isEmpty && !_endpointless) {
      errors['endpoint'] = 'An endpoint is needed to enable it.';
    }
    if (_enabled && !_implemented) {
      errors['enabled'] = 'This server has no backend for this domain; it can only be saved off.';
    }
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return null;
    }
    return <String, Object?>{
      'enabled': _enabled,
      'mode': _mode,
      'endpoint': endpoint.isEmpty ? null : endpoint,
      'config': config,
      'disableSupersededSources': _disableSuperseded,
    };
  }

  Future<void> _save() async {
    final body = _body();
    if (body == null) {
      return;
    }
    final dio = ref.read(backendDioProvider);
    final path = '/v1/aggregators/${Uri.encodeComponent(_domain)}';
    final done = await track(
      () => writeThenConfirm<Json>(
        write: () => jsonCall(dio, 'PUT', path, body: body),
        reread: () => jsonObjectCall(dio, 'GET', path),
        confirm: (back) {
          for (final key in <String>['enabled', 'mode', 'endpoint', 'disableSupersededSources']) {
            if ('${back[key]}' != '${body[key]}') {
              return '${wireText(key)} reads back as ${back[key] ?? 'unset'}.';
            }
          }
          return null;
        },
      ),
    );
    if (done != null && mounted) {
      // Turning an aggregator on or off flips the sources it supersedes.
      ref
        ..invalidate(aggregatorsProvider)
        ..invalidate(aggregatorProvider(_domain))
        ..invalidate(sourceListProvider);
    }
  }

  Future<void> _runTest() async {
    setState(() {
      _testing = true;
      _test = null;
      _testError = null;
    });
    try {
      final result = await jsonObjectCall(
        ref.read(backendDioProvider),
        'POST',
        '/v1/aggregators/${Uri.encodeComponent(_domain)}/test',
      );
      if (mounted) {
        setState(() => _test = result);
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _testError = e);
      }
    } finally {
      if (mounted) {
        setState(() => _testing = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final a = widget.aggregator;
    final superseded = <String>[
      for (final s in (a['supersededSources'] as List?) ?? const <Object?>[]) '$s',
    ];
    final modes = <String>{...aggregatorModeLabels.keys, _mode}.toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Wrap(
          spacing: 12,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            StatusChip(
              key: const Key('aggregator.status'),
              label: wireText('${a['status'] ?? 'unconfigured'}'),
              tone: aggregatorTone(a['status']),
            ),
            if (a['statusReason'] case final r?) Text('$r'),
            if (a['lastSeenAt'] != null) Text('Last data ${whenText(a['lastSeenAt'])}'),
          ],
        ),
        if (!_implemented) ...<Widget>[
          const SizedBox(height: 8),
          const ResultPanel(
            title: 'Not on this server yet',
            tone: StatusTone.info,
            message:
                'This server has no backend for this domain. It can be configured, but only '
                'saved off.',
          ),
        ],
        SwitchListTile(
          key: const Key('aggregator.enabled'),
          contentPadding: EdgeInsets.zero,
          value: _enabled,
          onChanged: busy ? null : (v) => setState(() => _enabled = v),
          title: const Text('Enabled'),
          subtitle: _errors['enabled'] == null
              ? Text(
                  _endpointless
                      ? 'Live once enabled with at least one sensor on.'
                      : 'Live once enabled with an endpoint.',
                )
              : Text(
                  _errors['enabled']!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
        ),
        LabeledField(
          label: 'Mode',
          help: 'Your own receiver, an aggregated feed, or both.',
          field: WireDropdown(
            key: const Key('aggregator.mode'),
            value: _mode,
            values: modes,
            labels: aggregatorModeLabels,
            onChanged: (v) => setState(() => _mode = v),
          ),
        ),
        if (!_endpointless)
          LabeledField(
            label: 'Local endpoint',
            help: 'On this host or the LAN; it must resolve to a local address.',
            field: PlainField(
              key: const Key('aggregator.endpoint'),
              controller: _endpoint,
              hint: aggregatorEndpointHint[_domain],
              error: _errors['endpoint'],
            ),
          ),
        LabeledField(
          label: 'Settings',
          help: aggregatorConfigHelp[_domain] ?? 'Domain settings, as JSON.',
          field: PlainField(
            key: const Key('aggregator.config'),
            controller: _config,
            maxLines: 6,
            error: _errors['config'],
          ),
        ),
        const SizedBox(height: 8),
        Text('Superseded public sources', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 4),
        Text(
          'Enabling this aggregator is what turns these mirrors off. They stay in the catalog and '
          'can be turned back on as a fallback; turning this off, or the aggregator going down, '
          'turns them back on.',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SwitchListTile(
          key: const Key('aggregator.disableSuperseded'),
          contentPadding: EdgeInsets.zero,
          value: _disableSuperseded,
          onChanged: busy ? null : (v) => setState(() => _disableSuperseded = v),
          title: const Text('Public mirrors off by default while this is live'),
          subtitle: Text(
            _live && (a['disableSupersededSources'] == true)
                ? 'Live now: the sources below are held off.'
                : 'Not in effect until the aggregator is live.',
          ),
        ),
        Wrap(
          key: const Key('aggregator.superseded'),
          spacing: 8,
          runSpacing: 8,
          children: <Widget>[
            if (superseded.isEmpty) const Text('None under the current settings.'),
            for (final s in superseded)
              ActionChip(
                key: Key('aggregator.superseded.$s'),
                label: Text(s),
                tooltip: 'Open $s to turn it back on as a fallback',
                onPressed: () => context.go(sourceDetailPath(s)),
              ),
          ],
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            PermissionGate(
              permission: Permissions.networkManage,
              child: FilledButton(
                key: const Key('aggregator.save'),
                onPressed: busy ? null : _save,
                child: const Text('Save Aggregator'),
              ),
            ),
            PermissionGate(
              permission: Permissions.networkManage,
              child: TonalButton(
                key: const Key('aggregator.test'),
                label: 'Test',
                icon: Icons.sensors,
                onPressed: _testing ? null : _runTest,
              ),
            ),
            statusLine,
          ],
        ),
        if (_testing)
          const Padding(padding: EdgeInsets.only(top: 12), child: LinearProgressIndicator()),
        if (_testError case final e?) ...<Widget>[
          const SizedBox(height: 12),
          ErrorBanner(error: e, title: 'Could not test the aggregator'),
        ],
        if (_test case final t?) ...<Widget>[
          const SizedBox(height: 12),
          ResultPanel(
            key: const Key('aggregator.testResult'),
            title: t['ok'] == true
                ? 'Live'
                : (t['reachable'] == true ? 'Reachable, but not healthy' : 'Not reachable'),
            tone: t['ok'] == true ? StatusTone.ok : StatusTone.error,
            message: t['message'] as String?,
            details: <MapEntry<String, Object>>[
              MapEntry<String, Object>('Reachable', t['reachable'] == true ? 'Yes' : 'No'),
              if (t['sampleCount'] != null)
                MapEntry<String, Object>('Objects in a sample', '${t['sampleCount']}'),
              if (t['checkedAt'] != null)
                MapEntry<String, Object>('Checked', whenText(t['checkedAt'])),
            ],
          ),
        ],
      ],
    );
  }
}
