import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/permissions.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart'
    show ConfirmRow, Footnote, PlainField, WireDropdown, WriteTracking, whenText;
import '../sources/source_providers.dart' show sourceListProvider;
import 'network_providers.dart';

/// The route types, by wire name.
const List<String> egressTypes = <String>['http', 'socks5', 'wireguard', 'interface'];

/// Whether a route of [type] is a proxy reached by URL.
bool isProxyType(String? type) => type == 'http' || type == 'socks5';

/// The egress pool (`listEgressRoutes`): each route's type, whether it is
/// on and usable, the exit IP it last presented and its health. **Test**
/// (`testEgressRoute`) is the headline action: it proves the route works and
/// shows the public address a source would be pulled from.
class EgressPoolCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const EgressPoolCard({super.key});

  @override
  ConsumerState<EgressPoolCard> createState() => _EgressPoolCardState();
}

class _EgressPoolCardState extends ConsumerState<EgressPoolCard>
    with WriteTracking<EgressPoolCard> {
  /// The route being edited; an empty map for a new one, `null` for none.
  Json? _editing;
  String? _deleting;
  String? _healthOf;
  String? _testing;
  final Map<String, Json> _tests = <String, Json>{};
  final Map<String, Object> _testErrors = <String, Object>{};

  Future<void> _test(String id) async {
    setState(() {
      _testing = id;
      _testErrors.remove(id);
    });
    try {
      final result = await jsonObjectCall(
        ref.read(backendDioProvider),
        'POST',
        '/v1/egress/${Uri.encodeComponent(id)}/test',
      );
      if (mounted) {
        setState(() => _tests[id] = result);
        ref.invalidate(egressRoutesProvider);
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _testErrors[id] = e);
      }
    } finally {
      if (mounted) {
        setState(() => _testing = null);
      }
    }
  }

  Future<void> _delete(String id) async {
    setState(() => _deleting = null);
    final done = await track(
      () async {
        await jsonCall(
          ref.read(backendDioProvider),
          'DELETE',
          '/v1/egress/${Uri.encodeComponent(id)}',
        );
        return true;
      },
    );
    if (done == null || !mounted) {
      return;
    }
    setState(() {
      _tests.remove(id);
      if (_healthOf == id) {
        _healthOf = null;
      }
    });
    ref
      ..invalidate(egressRoutesProvider)
      ..invalidate(egressSettingsProvider);
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('egress.pool'),
    title: 'Egress Pool',
    subtitle:
        'The fallback for sources that cannot be self-hosted: proxies, VPN tunnels and bound '
        'addresses that outbound pulls can leave through.',
    actions: <Widget>[
      IconButton(
        tooltip: 'Refresh',
        onPressed: () => ref.invalidate(egressRoutesProvider),
        icon: const Icon(Icons.refresh),
      ),
      PermissionGate(
        permission: Permissions.networkManage,
        child: FilledButton.icon(
          key: const Key('egress.add'),
          onPressed: () => setState(() => _editing = const <String, Object?>{}),
          icon: const Icon(Icons.add),
          label: const Text('Add Route'),
        ),
      ),
    ],
    child: AsyncView<List<Json>>(
      value: ref.watch(egressRoutesProvider),
      onRetry: () => ref.invalidate(egressRoutesProvider),
      data: (routes) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DataTableCard<Json>(
            rows: routes,
            empty: 'No routes. Every pull goes direct.',
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(label: 'Name', cell: (r) => Text('${r['name']}')),
              TableColumnSpec<Json>(
                label: 'Type',
                cell: (r) => Text(egressTypeLabels[r['type']] ?? '${r['type']}'),
              ),
              TableColumnSpec<Json>(
                label: 'Enabled',
                cell: (r) => StatusChip(
                  label: r['enabled'] == false
                      ? 'Off'
                      : (r['available'] == false ? 'Unavailable' : 'On'),
                  tone: r['enabled'] == false
                      ? StatusTone.neutral
                      : (r['available'] == false ? StatusTone.warning : StatusTone.ok),
                  tooltip: r['unavailableReason'] as String?,
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Exit IP',
                cell: (r) => SelectableText(
                  '${_tests[r['id']]?['exitIp'] ?? r['exitIp'] ?? (r['health'] as Map?)?['exitIp'] ?? '—'}',
                  key: Key('egress.exitIp.${r['id']}'),
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Health',
                cell: (r) => EgressHealthChip(
                  key: Key('egress.health.${r['id']}'),
                  health: (r['health'] as Map?)?.cast<String, Object?>(),
                ),
              ),
              TableColumnSpec<Json>(
                label: '',
                cell: (r) {
                  final id = '${r['id']}';
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      PermissionGate(
                        permission: Permissions.networkManage,
                        child: TextButton.icon(
                          key: Key('egress.test.$id'),
                          onPressed: _testing == null ? () => _test(id) : null,
                          icon: const Icon(Icons.network_check, size: 18),
                          label: const Text('Test'),
                        ),
                      ),
                      TextButton(
                        key: Key('egress.showHealth.$id'),
                        onPressed: () => setState(() => _healthOf = _healthOf == id ? null : id),
                        child: const Text('Health'),
                      ),
                      PermissionGate(
                        permission: Permissions.networkManage,
                        child: TextButton(
                          key: Key('egress.edit.$id'),
                          onPressed: () => setState(() => _editing = r),
                          child: const Text('Edit'),
                        ),
                      ),
                      PermissionGate(
                        permission: Permissions.networkManage,
                        child: IconButton(
                          key: Key('egress.delete.$id'),
                          tooltip: 'Delete',
                          onPressed: busy ? null : () => setState(() => _deleting = id),
                          icon: const Icon(Icons.delete_outline),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
          for (final r in routes)
            if (_tests[r['id']] case final t?) ...<Widget>[
              const SizedBox(height: 12),
              EgressTestResultView(
                key: Key('egress.testResult.${r['id']}'),
                name: '${r['name']}',
                result: t,
              ),
            ] else if (_testErrors[r['id']] case final e?) ...<Widget>[
              const SizedBox(height: 12),
              ErrorBanner(error: e, title: 'Could not test ${r['name']}'),
            ],
          if (_testing != null)
            const Padding(padding: EdgeInsets.only(top: 12), child: LinearProgressIndicator()),
          if (_deleting case final id?) ...<Widget>[
            const SizedBox(height: 12),
            ConfirmRow(
              confirmKey: const Key('egress.confirmDelete'),
              message:
                  'Delete route ${routes.where((r) => r['id'] == id).map((r) => r['name']).firstOrNull ?? id}? '
                  'Sources pinned to it go back to the rotation.',
              action: 'Delete',
              onConfirm: () => _delete(id),
              onCancel: () => setState(() => _deleting = null),
            ),
          ],
          if (_healthOf case final id?) ...<Widget>[
            const SizedBox(height: 12),
            EgressHealthView(key: Key('egress.healthView.$id'), routeId: id),
          ],
          if (_editing case final route?) ...<Widget>[
            const SizedBox(height: 16),
            EgressRouteForm(
              key: ValueKey<Object?>(route['id'] ?? 'new'),
              route: route,
              onDone: () => setState(() => _editing = null),
            ),
          ],
          const SizedBox(height: 8),
          statusLine,
        ],
      ),
    ),
  );
}

/// A route's health in a word: reachable with latency, backing off, or
/// unreachable.
class EgressHealthChip extends StatelessWidget {
  /// Creates the chip for [health] (an `EgressHealth`, or `null` when the
  /// route has not been checked).
  const EgressHealthChip({super.key, required this.health});

  /// The health as read.
  final Json? health;

  @override
  Widget build(BuildContext context) {
    final h = health;
    if (h == null) {
      return const StatusChip(label: 'Not checked', tone: StatusTone.neutral);
    }
    final latency = h['latencyMs'] is num ? ' · ${(h['latencyMs']! as num).round()} ms' : '';
    final backoff = h['backoffUntil'];
    if (backoff != null) {
      return StatusChip(
        label: 'Backing off',
        tone: StatusTone.warning,
        tooltip: 'Until ${whenText(backoff)}${h['lastError'] == null ? '' : ': ${h['lastError']}'}',
      );
    }
    return h['reachable'] == true
        ? StatusChip(label: 'Reachable$latency', tone: StatusTone.ok)
        : StatusChip(
            label: 'Unreachable',
            tone: StatusTone.error,
            tooltip: h['lastError'] as String?,
          );
  }
}

/// The answer of `testEgressRoute`, with the exit IP up front.
class EgressTestResultView extends StatelessWidget {
  /// Creates the view of [result] for the route named [name].
  const EgressTestResultView({super.key, required this.name, required this.result});

  /// The route's name.
  final String name;

  /// The `EgressTestResult`.
  final Json result;

  @override
  Widget build(BuildContext context) {
    final ok = result['ok'] == true;
    final exitIp = result['exitIp'];
    return ResultPanel(
      title: ok ? '$name works' : '$name failed its test',
      tone: ok ? StatusTone.ok : StatusTone.error,
      message: result['message'] as String?,
      details: <MapEntry<String, Object>>[
        if (result['latencyMs'] is num)
          MapEntry<String, Object>('Latency', '${(result['latencyMs']! as num).round()} ms'),
        if (result['checkedAt'] != null)
          MapEntry<String, Object>('Checked', whenText(result['checkedAt'])),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Exit IP'),
          SelectableText(
            exitIp == null ? 'None reported' : '$exitIp',
            key: const Key('egress.testExitIp'),
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontFeatures: const <FontFeature>[FontFeature.tabularFigures()],
            ),
          ),
          const Text('The public address a source pulled through this route is seen from.'),
        ],
      ),
    );
  }
}

/// One route's health (`getEgressRouteHealth`) in full, with the sources a
/// rate limit is holding off it.
class EgressHealthView extends ConsumerWidget {
  /// Creates the view for [routeId].
  const EgressHealthView({super.key, required this.routeId});

  /// The route.
  final String routeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) => AsyncView<Json>(
    value: ref.watch(egressHealthProvider(routeId)),
    onRetry: () => ref.invalidate(egressHealthProvider(routeId)),
    data: (h) {
      final held = <Json>[
        for (final s in (h['sources'] as List?) ?? const <Object?>[])
          if (s is Map) s.cast<String, Object?>(),
      ];
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          KeyValueList(
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>('Reachable', h['reachable'] == true ? 'Yes' : 'No'),
              MapEntry<String, Object>('Exit IP', '${h['exitIp'] ?? '—'}'),
              if (h['latencyMs'] is num)
                MapEntry<String, Object>('Latency', '${(h['latencyMs']! as num).round()} ms'),
              MapEntry<String, Object>('Last checked', whenText(h['lastCheckedAt'])),
              MapEntry<String, Object>('Consecutive failures', '${h['consecutiveFailures'] ?? 0}'),
              if (h['backoffUntil'] != null)
                MapEntry<String, Object>('Skipped until', whenText(h['backoffUntil'])),
              if (h['lastError'] != null)
                MapEntry<String, Object>('Last error', '${h['lastError']}'),
            ],
          ),
          if (held.isNotEmpty) ...<Widget>[
            const SizedBox(height: 8),
            Text(
              'Sources held off this route by a rate limit',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            DataTableCard<Json>(
              rows: held,
              columns: <TableColumnSpec<Json>>[
                TableColumnSpec<Json>(label: 'Source', cell: (s) => Text('${s['sourceId']}')),
                TableColumnSpec<Json>(
                  label: 'Until',
                  cell: (s) => Text(whenText(s['backoffUntil'])),
                ),
                TableColumnSpec<Json>(
                  label: 'Throttles in a row',
                  numeric: true,
                  cell: (s) => Text('${s['consecutiveThrottles']}'),
                ),
              ],
            ),
          ],
        ],
      );
    },
  );
}

/// Adds (`createEgressRoute`) or edits (`updateEgressRoute`) a route. The
/// proxy credentials and the WireGuard profile are write-only: they go to the
/// backend, which keeps them encrypted, and the form shows only which are
/// stored (`secretsSet`).
class EgressRouteForm extends ConsumerStatefulWidget {
  /// Creates the form for [route]; an empty map adds one.
  const EgressRouteForm({super.key, required this.route, required this.onDone});

  /// The route as read, or empty for a new one.
  final Json route;

  /// Called when the form is saved or closed.
  final VoidCallback onDone;

  @override
  ConsumerState<EgressRouteForm> createState() => _EgressRouteFormState();
}

class _EgressRouteFormState extends ConsumerState<EgressRouteForm>
    with WriteTracking<EgressRouteForm> {
  late String _type = widget.route['type'] as String? ?? 'http';
  late bool _enabled = widget.route['enabled'] as bool? ?? true;
  late final Map<String, TextEditingController> _c = <String, TextEditingController>{
    'name': TextEditingController(text: widget.route['name'] as String? ?? ''),
    'url': TextEditingController(text: widget.route['url'] as String? ?? ''),
    'boundInterface': TextEditingController(text: widget.route['boundInterface'] as String? ?? ''),
    'username': TextEditingController(),
    'password': TextEditingController(),
    'wireguardConfig': TextEditingController(),
  };
  Map<String, String> _errors = const <String, String>{};

  String? get _id => widget.route['id'] as String?;

  List<String> get _secretsSet => <String>[
    for (final s in (widget.route['secretsSet'] as List?) ?? const <Object?>[]) '$s',
  ];

  @override
  void dispose() {
    for (final c in _c.values) {
      c.dispose();
    }
    super.dispose();
  }

  String _t(String key) => _c[key]!.text.trim();

  Json? _body() {
    final errors = <String, String>{};
    if (_t('name').isEmpty) {
      errors['name'] = 'A name.';
    }
    if (isProxyType(_type)) {
      final url = Uri.tryParse(_t('url'));
      if (url == null || !url.hasScheme || url.host.isEmpty || !url.hasPort) {
        errors['url'] = _type == 'http'
            ? 'scheme://host:port, e.g. http://proxy.example.com:3128.'
            : 'socks5://host:port.';
      } else if (url.userInfo.isNotEmpty) {
        errors['url'] = 'Put the user name and password in their own fields, not the URL.';
      }
    }
    if (_type == 'interface' && _t('boundInterface').isEmpty) {
      errors['boundInterface'] = 'A host interface (eth1) or source IP.';
    }
    if (_type == 'wireguard' && _id == null && _t('wireguardConfig').isEmpty) {
      errors['wireguardConfig'] = 'Paste the WireGuard profile to import.';
    }
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return null;
    }
    final secrets = <String, Object?>{
      if (isProxyType(_type) && _t('username').isNotEmpty) 'username': _t('username'),
      if (isProxyType(_type) && _c['password']!.text.isNotEmpty) 'password': _c['password']!.text,
      if (_type == 'wireguard' && _c['wireguardConfig']!.text.trim().isNotEmpty)
        'wireguardConfig': _c['wireguardConfig']!.text,
    };
    return <String, Object?>{
      'name': _t('name'),
      'type': _type,
      'enabled': _enabled,
      'url': isProxyType(_type) ? _t('url') : null,
      'boundInterface': _type == 'interface' ? _t('boundInterface') : null,
      if (secrets.isNotEmpty) 'secrets': secrets,
    };
  }

  Future<void> _save() async {
    final body = _body();
    if (body == null) {
      return;
    }
    final dio = ref.read(backendDioProvider);
    final id = _id;
    final done = await track(() async {
      final saved = id == null
          ? await jsonObjectCall(dio, 'POST', '/v1/egress', body: body)
          : await jsonObjectCall(dio, 'PUT', '/v1/egress/${Uri.encodeComponent(id)}', body: body);
      final back = await jsonObjectCall(
        dio,
        'GET',
        '/v1/egress/${Uri.encodeComponent('${saved['id'] ?? id}')}',
      );
      for (final key in <String>['name', 'type', 'enabled', 'url', 'boundInterface']) {
        if ('${back[key]}' != '${body[key]}') {
          throw WriteNotConfirmedException(
            '${wireText(key)} reads back as ${back[key] ?? 'unset'}.',
          );
        }
      }
      return back;
    });
    // The credentials went to the backend once; they are never kept or shown.
    for (final key in <String>['username', 'password', 'wireguardConfig']) {
      _c[key]!.clear();
    }
    if (done != null && mounted) {
      ref.invalidate(egressRoutesProvider);
      widget.onDone();
    }
  }

  Widget _secretField(String key, String label, {int maxLines = 1}) => LabeledField(
    label: label,
    help: _secretsSet.contains(key) ? 'Stored. Type a new one to replace it.' : 'Not stored.',
    field: TextField(
      key: Key('egressRoute.$key'),
      controller: _c[key],
      obscureText: maxLines == 1,
      maxLines: maxLines,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        isDense: true,
        hintText: _secretsSet.contains(key) ? 'Stored (hidden)' : null,
        errorText: _errors[key],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('egressRoute.form'),
    title: _id == null ? 'Add Route' : 'Edit ${widget.route['name']}',
    subtitle:
        'Credentials go to the backend, which stores them encrypted; this app never keeps them.',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'Name',
          field: PlainField(
            key: const Key('egressRoute.name'),
            controller: _c['name']!,
            error: _errors['name'],
          ),
        ),
        LabeledField(
          label: 'Type',
          field: WireDropdown(
            key: const Key('egressRoute.type'),
            value: _type,
            values: egressTypes,
            labels: egressTypeLabels,
            onChanged: (v) => setState(() => _type = v),
          ),
        ),
        SwitchListTile(
          key: const Key('egressRoute.enabled'),
          contentPadding: EdgeInsets.zero,
          value: _enabled,
          onChanged: busy ? null : (v) => setState(() => _enabled = v),
          title: const Text('Enabled'),
        ),
        if (isProxyType(_type)) ...<Widget>[
          LabeledField(
            label: 'Proxy URL',
            help: 'scheme://host:port, without credentials.',
            field: PlainField(
              key: const Key('egressRoute.url'),
              controller: _c['url']!,
              hint: _type == 'http'
                  ? 'http://proxy.example.com:3128'
                  : 'socks5://proxy.example.com:1080',
              error: _errors['url'],
            ),
          ),
          _secretField('username', 'User name'),
          _secretField('password', 'Password'),
        ],
        if (_type == 'wireguard') ...<Widget>[
          _secretField('wireguardConfig', 'WireGuard profile', maxLines: 8),
          const Footnote(
            'The server cannot bring a WireGuard tunnel up itself: a WireGuard route reads as '
            'unavailable until the tunnel is up on the host.',
          ),
        ],
        if (_type == 'interface')
          LabeledField(
            label: 'Interface or IP',
            help: 'The host interface (eth1) or local source IP to bind.',
            field: PlainField(
              key: const Key('egressRoute.boundInterface'),
              controller: _c['boundInterface']!,
              error: _errors['boundInterface'],
            ),
          ),
        if (_id != null)
          Wrap(
            key: const Key('egressRoute.secretsSet'),
            spacing: 8,
            children: <Widget>[
              for (final key
                  in _type == 'wireguard'
                      ? const <String>['wireguardConfig']
                      : (isProxyType(_type)
                            ? const <String>['username', 'password']
                            : const <String>[]))
                StatusChip(
                  label: '${wireText(key)}: ${_secretsSet.contains(key) ? 'set' : 'not set'}',
                  tone: _secretsSet.contains(key) ? StatusTone.ok : StatusTone.neutral,
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
                key: const Key('egressRoute.save'),
                onPressed: busy ? null : _save,
                child: Text(_id == null ? 'Add Route' : 'Save Route'),
              ),
            ),
            TextButton(onPressed: widget.onDone, child: const Text('Cancel')),
            statusLine,
          ],
        ),
      ],
    ),
  );
}

/// The rotation policy and default route (`getEgressSettings` /
/// `updateEgressSettings`).
class EgressSettingsCard extends ConsumerWidget {
  /// Creates the card.
  const EgressSettingsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routes = ref.watch(egressRoutesProvider).value ?? const <Json>[];
    return SectionCard(
      key: const Key('egress.settings'),
      title: 'Rotation',
      subtitle:
          'Rotation spreads legitimate collection across routes for privacy and resilience. '
          'Each host\'s pacer and Retry-After are still honored per route: it is not a way around a '
          'provider\'s limits.',
      child: AsyncView<Json>(
        value: ref.watch(egressSettingsProvider),
        onRetry: () => ref.invalidate(egressSettingsProvider),
        data: (s) => EgressSettingsForm(
          key: ValueKey<String>('${s['rotation']}|${s['defaultRoute']}|${routes.length}'),
          settings: s,
          routes: routes,
        ),
      ),
    );
  }
}

/// The value standing for "no route" in a route dropdown.
const String noRoute = '';

/// The editor of the egress [settings].
class EgressSettingsForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const EgressSettingsForm({super.key, required this.settings, required this.routes});

  /// The settings as read.
  final Json settings;

  /// The pool, for the default route.
  final List<Json> routes;

  @override
  ConsumerState<EgressSettingsForm> createState() => _EgressSettingsFormState();
}

class _EgressSettingsFormState extends ConsumerState<EgressSettingsForm>
    with WriteTracking<EgressSettingsForm> {
  late String _rotation = widget.settings['rotation'] as String? ?? 'direct';
  late String _default = widget.settings['defaultRoute'] as String? ?? noRoute;

  Future<void> _save() async {
    final body = <String, Object?>{
      ...widget.settings,
      'rotation': _rotation,
      'defaultRoute': _default == noRoute ? null : _default,
    };
    final dio = ref.read(backendDioProvider);
    final done = await track(
      () => writeThenConfirm<Json>(
        write: () => jsonCall(dio, 'PUT', '/v1/settings/egress', body: body),
        reread: () => jsonObjectCall(dio, 'GET', '/v1/settings/egress'),
        confirm: (back) {
          if (back['rotation'] != body['rotation']) {
            return 'The rotation reads back as ${back['rotation']}.';
          }
          if (back['defaultRoute'] != body['defaultRoute']) {
            return 'The default route reads back as ${back['defaultRoute'] ?? 'none'}.';
          }
          return null;
        },
      ),
    );
    if (done != null && mounted) {
      ref.invalidate(egressSettingsProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final rotations = <String>{...rotationLabels.keys, _rotation}.toList();
    final routeIds = <String>[noRoute, for (final r in widget.routes) '${r['id']}'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'Policy',
          help:
              'Direct (the default) uses no routing at all: pins and the default route are ignored.',
          field: WireDropdown(
            key: const Key('egress.rotation'),
            value: _rotation,
            values: rotations,
            labels: rotationLabels,
            onChanged: (v) => setState(() => _rotation = v),
          ),
        ),
        LabeledField(
          label: 'Default route',
          help:
              'With rotation on, where a source excluded from rotation goes; none sends it direct.',
          field: WireDropdown(
            key: const Key('egress.defaultRoute'),
            value: routeIds.contains(_default) ? _default : noRoute,
            values: routeIds,
            labels: <String, String>{
              noRoute: 'None (direct)',
              for (final r in widget.routes) '${r['id']}': '${r['name']}',
            },
            onChanged: (v) => setState(() => _default = v),
          ),
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
                key: const Key('egress.saveSettings'),
                onPressed: busy ? null : _save,
                child: const Text('Save Rotation'),
              ),
            ),
            statusLine,
          ],
        ),
      ],
    );
  }
}

/// Pins a source to a route, or keeps it out of the rotation
/// (`assignSourceEgress`). With [sourceId] the source is fixed (the source's
/// own page); without it, a source is picked here.
class SourceEgressCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const SourceEgressCard({super.key, this.sourceId});

  /// The source, when fixed.
  final String? sourceId;

  @override
  ConsumerState<SourceEgressCard> createState() => _SourceEgressCardState();
}

class _SourceEgressCardState extends ConsumerState<SourceEgressCard>
    with WriteTracking<SourceEgressCard> {
  late String? _source = widget.sourceId;
  String _route = noRoute;
  bool _exclude = false;
  Json? _assigned;

  Future<void> _assign() async {
    final source = _source;
    if (source == null) {
      return;
    }
    final assigned = await track(
      () => jsonObjectCall(
        ref.read(backendDioProvider),
        'PUT',
        '/v1/sources/${Uri.encodeComponent(source)}/egress',
        body: <String, Object?>{
          'routeId': _route == noRoute ? null : _route,
          'excludeFromRotation': _exclude,
        },
      ),
    );
    if (assigned != null && mounted) {
      setState(() => _assigned = assigned);
    }
  }

  @override
  Widget build(BuildContext context) {
    final routes = ref.watch(egressRoutesProvider).value ?? const <Json>[];
    final routeIds = <String>[noRoute, for (final r in routes) '${r['id']}'];
    final names = <String, String>{for (final r in routes) '${r['id']}': '${r['name']}'};
    final sources = widget.sourceId == null
        ? ref.watch(sourceListProvider).value?.map((s) => s.id).toList()
        : null;
    return SectionCard(
      key: const Key('egress.assign'),
      title: 'Source Egress',
      subtitle:
          'Pin a source to a route (a geo-locked source to an in-region exit, say), or keep it '
          'out of the rotation. Applies only with rotation on.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (widget.sourceId == null)
            LabeledField(
              label: 'Source',
              field: WireDropdown(
                key: const Key('egressAssign.source'),
                value: _source,
                values: sources ?? const <String>[],
                hint: sources == null ? 'Loading sources…' : 'Pick a source',
                onChanged: (v) => setState(() {
                  _source = v;
                  _assigned = null;
                }),
              ),
            ),
          LabeledField(
            label: 'Route',
            help: 'A pinned route that is unusable fails the pull rather than moving it.',
            field: WireDropdown(
              key: const Key('egressAssign.route'),
              value: routeIds.contains(_route) ? _route : noRoute,
              values: routeIds,
              labels: <String, String>{noRoute: 'The rotation (no pin)', ...names},
              onChanged: (v) => setState(() => _route = v),
            ),
          ),
          CheckboxListTile(
            key: const Key('egressAssign.exclude'),
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            value: _exclude,
            onChanged: busy ? null : (v) => setState(() => _exclude = v ?? false),
            title: const Text('Exclude from rotation'),
            subtitle: const Text('With no pin, the source uses the default route, or goes direct.'),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 12,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              PermissionGate(
                permission: Permissions.networkManage,
                child: FilledButton(
                  key: const Key('egressAssign.save'),
                  onPressed: busy || _source == null ? null : _assign,
                  child: const Text('Assign'),
                ),
              ),
              statusLine,
            ],
          ),
          if (_assigned case final a?)
            Footnote(
              '${_source ?? ''} now uses '
              '${a['routeId'] == null ? (a['excludeFromRotation'] == true ? 'the default route (excluded from rotation)' : 'the rotation') : 'route ${names[a['routeId']] ?? a['routeId']}'}.',
            )
          else
            const Footnote(
              'The server does not report a source\'s current assignment; this sets it.',
            ),
        ],
      ),
    );
  }
}
