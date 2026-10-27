import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../alerts/alerts_drafts.dart' show severities;
import '../forecasting/forecasting_widgets.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'notifications_drafts.dart';
import 'notifications_providers.dart';

/// The text of a list of strings, or "—".
String listText(Object? list) => list is List && list.isNotEmpty ? list.join(', ') : '—';

/// What a `PushFilters` lets through, in words.
String filtersText(Json? filters) {
  if (filters == null) {
    return 'Every alert';
  }
  final events = (filters['events'] as List<Object?>?)?.map((e) => '$e').toList() ?? const <String>['alert'];
  final parts = <String>[
    events.map(wireText).join(', '),
    if (filters['minSeverity'] != null) '${wireText('${filters['minSeverity']}')} and up',
    if ((filters['tags'] as List<Object?>?)?.isNotEmpty == true) 'tags ${listText(filters['tags'])}',
    if (filters['ruleIds'] is List) '${(filters['ruleIds']! as List<Object?>).length} rules',
  ];
  return parts.join(' · ');
}

/// The fields of a [PushFiltersDraft]: events, lowest severity, tags and
/// rules. [prefix] keys them.
class FiltersFields extends StatefulWidget {
  /// Creates the fields editing [draft].
  const FiltersFields({super.key, required this.draft, required this.prefix, this.errors = const <String, String>{}});

  /// The draft, edited in place.
  final PushFiltersDraft draft;

  /// The key prefix (`$prefix.event.alert`, …).
  final String prefix;

  /// Problems by field.
  final Map<String, String> errors;

  @override
  State<FiltersFields> createState() => _FiltersFieldsState();
}

class _FiltersFieldsState extends State<FiltersFields> {
  late final TextEditingController _tags = TextEditingController(text: widget.draft.tags);
  late final TextEditingController _rules = TextEditingController(text: widget.draft.ruleIds);

  @override
  void initState() {
    super.initState();
    _tags.addListener(() => widget.draft.tags = _tags.text);
    _rules.addListener(() => widget.draft.ruleIds = _rules.text);
  }

  @override
  void dispose() {
    _tags.dispose();
    _rules.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final d = widget.draft;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'Events',
          field: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: <Widget>[
                  for (final e in notificationEvents)
                    FilterChip(
                      key: Key('${widget.prefix}.event.$e'),
                      label: Text(e),
                      selected: d.events.contains(e),
                      onSelected: (on) => setState(() => on ? d.events.add(e) : d.events.remove(e)),
                    ),
                ],
              ),
              if (widget.errors['events'] case final e?)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(e, style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12)),
                ),
            ],
          ),
        ),
        LabeledField(
          label: 'Lowest severity',
          field: WireDropdown(
            key: Key('${widget.prefix}.minSeverity'),
            value: d.minSeverity ?? 'any',
            values: const <String>['any', ...severities],
            labels: const <String, String>{'any': 'Every severity'},
            onChanged: (v) => setState(() => d.minSeverity = v == 'any' ? null : v),
          ),
        ),
        LabeledField(
          label: 'Tags',
          help: 'Any of these rule tags, comma-separated; empty for every tag.',
          field: PlainField(
            key: Key('${widget.prefix}.tags'),
            controller: _tags,
          ),
        ),
        LabeledField(
          label: 'Rules',
          help: 'Rule ids, comma-separated; empty for every rule.',
          field: PlainField(
            key: Key('${widget.prefix}.ruleIds'),
            controller: _rules,
            error: widget.errors['ruleIds'],
          ),
        ),
      ],
    );
  }
}

/// A `PushTestResult` as a status line that wraps when it is long.
Widget pushTestLabel(Json result, {Key? key}) => Builder(
  key: key,
  builder: (context) {
    final tone = result['success'] == true ? StatusTone.ok : StatusTone.error;
    final color = tone.colorOf(context);
    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(padding: const EdgeInsets.only(right: 6), child: Icon(tone.icon, size: 16, color: color)),
          ),
          TextSpan(text: pushTestText(result)),
        ],
      ),
      style: TextStyle(color: color, fontWeight: FontWeight.w600),
    );
  },
);

/// Native push (Screens §H, desktop): the APNs and FCM providers the backend
/// signs with, and the devices registered to receive through them.
class NativePushPanel extends ConsumerWidget {
  /// Creates the panel.
  const NativePushPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[_ProvidersCard(), SizedBox(height: 20), _DevicesCard()],
    );
  }
}

class _ProvidersCard extends ConsumerWidget {
  const _ProvidersCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providers = ref.watch(pushProvidersProvider);
    return SectionCard(
      key: const Key('push.providers'),
      title: 'Providers',
      subtitle: 'Apple (APNs) and Google (FCM) keys. Secrets go to the backend and are never shown again.',
      actions: <Widget>[
        IconButton(
          tooltip: 'Refresh',
          onPressed: () => ref.invalidate(pushProvidersProvider),
          icon: const Icon(Icons.refresh),
        ),
        FilledButton.icon(
          key: const Key('push.providers.new'),
          onPressed: () => context.go(pushNewProviderPath),
          icon: const Icon(Icons.add),
          label: const Text('Add Provider'),
        ),
      ],
      child: AsyncView<List<Json>>(
        value: providers,
        onRetry: () => ref.invalidate(pushProvidersProvider),
        data: (list) => DataTableCard<Json>(
          key: const Key('push.providers.table'),
          rows: list,
          empty: 'No providers yet. Add Provider takes an APNs key for iPhones or an FCM service account for Android.',
          columns: <TableColumnSpec<Json>>[
            TableColumnSpec<Json>(
              label: 'Provider',
              cell: (p) => Text('${p['id']}', style: const TextStyle(fontWeight: FontWeight.w600)),
            ),
            TableColumnSpec<Json>(label: 'Type', cell: (p) => Text(p['type'] == 'apns' ? 'APNs' : 'FCM')),
            TableColumnSpec<Json>(label: 'App ids', cell: (p) => Text(listText(p['appIds']))),
            TableColumnSpec<Json>(
              label: 'Key',
              cell: (p) {
                final c = jsonMap(p, 'config') ?? const <String, Object?>{};
                return Text(
                  p['type'] == 'apns'
                      ? '${c['keyId']} · ${wireText('${c['keyEnvironment']}')}'
                      : '${c['projectId']}',
                );
              },
            ),
            TableColumnSpec<Json>(label: 'Secrets set', cell: (p) => Text(listText(p['secretFields']))),
            TableColumnSpec<Json>(
              label: 'Status',
              cell: (p) => p['lastError'] != null
                  ? StatusLabel(label: 'Failing', tone: StatusTone.error, tooltip: '${p['lastError']}')
                  : p['enabled'] == true
                  ? const StatusLabel(label: 'Enabled', tone: StatusTone.ok)
                  : const StatusLabel(label: 'Disabled', tone: StatusTone.neutral),
            ),
            TableColumnSpec<Json>(label: 'Last test', cell: (p) => Text(whenText(p['lastTestAt']))),
            TableColumnSpec<Json>(
              label: 'Actions',
              cell: (p) => TextButton(
                key: Key('push.providers.configure.${p['id']}'),
                onPressed: () => context.go(pushProviderPath('${p['id']}')),
                child: const Text('Configure'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DevicesCard extends ConsumerStatefulWidget {
  const _DevicesCard();

  @override
  ConsumerState<_DevicesCard> createState() => _DevicesCardState();
}

class _DevicesCardState extends ConsumerState<_DevicesCard> {
  final Map<String, Json> _results = <String, Json>{};
  final Set<String> _testing = <String>{};
  Object? _error;

  Future<void> _test(String id) async {
    setState(() {
      _testing.add(id);
      _error = null;
    });
    try {
      final api = ref.read(foresignalApiProvider);
      final r = await callApiRequired(() => api.getPushApi().testPushDevice(deviceId: id));
      if (mounted) {
        setState(() => _results[id] = toJsonMap(api.serializers, r));
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _error = e);
      }
    } finally {
      if (mounted) {
        setState(() => _testing.remove(id));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final devices = ref.watch(pushDevicesProvider);
    return SectionCard(
      key: const Key('push.devices'),
      title: 'Registered devices',
      subtitle: 'Phones register themselves from the mobile companion. Tokens are never shown; a gone token removes its device.',
      actions: <Widget>[
        IconButton(
          tooltip: 'Refresh',
          onPressed: () => ref.invalidate(pushDevicesProvider),
          icon: const Icon(Icons.refresh),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_error case final e?) ...<Widget>[ErrorBanner(error: e), const SizedBox(height: 12)],
          AsyncView<List<Json>>(
            value: devices,
            onRetry: () => ref.invalidate(pushDevicesProvider),
            data: (list) => DataTableCard<Json>(
              key: const Key('push.devices.table'),
              rows: list,
              empty: 'No devices registered. Phones register themselves from the mobile companion.',
              columns: <TableColumnSpec<Json>>[
                TableColumnSpec<Json>(
                  label: 'Device',
                  cell: (d) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('${d['name'] ?? d['deviceName'] ?? 'Unnamed'}', style: const TextStyle(fontWeight: FontWeight.w600)),
                      Text(
                        '${platformText(d['platform'])} · ${d['appId']}${d['appVersion'] == null ? '' : ' ${d['appVersion']}'}',
                        style: TextStyle(color: AdminPalette.of(context).muted, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                TableColumnSpec<Json>(
                  label: 'Through',
                  cell: (d) => Text(
                    '${d['transport'] == 'apns' ? 'APNs' : 'FCM'}${d['environment'] == null ? '' : ' ${d['environment']}'}',
                  ),
                ),
                TableColumnSpec<Json>(label: 'Token', cell: (d) => Text('…${d['tokenSuffix']}')),
                TableColumnSpec<Json>(
                  label: 'Receives',
                  cell: (d) => ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 220),
                    child: Text(
                      '${filtersText(jsonMap(d, 'filters'))} · ${d['contentLevel'] ?? 'minimal'}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                TableColumnSpec<Json>(
                  label: 'Last sent',
                  cell: (d) {
                    final failures = (d['failureCount'] as num?) ?? 0;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(whenText(d['lastSuccessAt'])),
                        if (failures > 0)
                          Text(
                            '$failures failed${d['lastStatus'] == null ? '' : ' · HTTP ${d['lastStatus']}'}',
                            style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12),
                          ),
                      ],
                    );
                  },
                ),
                TableColumnSpec<Json>(
                  label: 'Actions',
                  cell: (d) {
                    final id = '${d['id']}';
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextButton.icon(
                          key: Key('push.devices.test.$id'),
                          onPressed: _testing.contains(id) ? null : () => _test(id),
                          icon: const Icon(Icons.send, size: 16),
                          label: const Text('Test'),
                        ),
                        TextButton(
                          key: Key('push.devices.edit.$id'),
                          onPressed: () => context.go(pushDevicePath(id)),
                          child: const Text('Edit'),
                        ),
                        // The outcome as an icon, its words on hover, so the
                        // table keeps its width.
                        if (_results[id] case final r?)
                          Tooltip(
                            key: Key('push.devices.result.$id'),
                            message: pushTestText(r),
                            child: Icon(
                              r['success'] == true ? StatusTone.ok.icon : StatusTone.error.icon,
                              size: 18,
                              color: (r['success'] == true ? StatusTone.ok : StatusTone.error).colorOf(context),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// One native push provider (`/notifications/push/providers/:providerId`,
/// or new at `/notifications/push/new-provider`): its key, a test, and
/// delete.
class PushProviderScreen extends ConsumerWidget {
  /// Creates the page for [providerId], or a new provider when `null`.
  const PushProviderScreen({super.key, this.providerId});

  /// The provider id, or `null` for a new one.
  final String? providerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = providerId;
    final crumbs = <Crumb>[
      const Crumb('Notifications', notificationsPath),
      const Crumb('Native Push', pushPath),
      Crumb(id ?? 'New provider'),
    ];
    if (id == null) {
      return ListView(
        padding: const EdgeInsets.all(28),
        children: <Widget>[
          PageHeader(title: 'New Push Provider', crumbs: crumbs),
          const PushProviderForm(key: ValueKey<String>('new'), provider: null),
        ],
      );
    }
    final provider = ref.watch(pushProviderProvider(id));
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(title: id, crumbs: crumbs),
        AsyncView<Json?>(
          value: provider,
          onRetry: () => ref.invalidate(pushProvidersProvider),
          data: (p) => p == null
              ? const ResultPanel(
                  title: 'No such provider',
                  tone: StatusTone.warning,
                  message: 'It may have been deleted.',
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(child: PushProviderForm(key: ValueKey<Object?>(p['id']), provider: p)),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          _ProviderTestCard(provider: p),
                          const SizedBox(height: 16),
                          _DeleteProviderCard(providerId: id),
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

/// The provider settings (`putPushProvider`), confirmed by re-listing.
class PushProviderForm extends ConsumerStatefulWidget {
  /// Creates the form for stored [provider], or a new one when `null`.
  const PushProviderForm({super.key, required this.provider});

  /// The provider as read, or `null`.
  final Json? provider;

  @override
  ConsumerState<PushProviderForm> createState() => _PushProviderFormState();
}

class _PushProviderFormState extends ConsumerState<PushProviderForm> with WriteTracking<PushProviderForm> {
  late PushProviderDraft _draft = _fresh();
  final Map<String, TextEditingController> _c = <String, TextEditingController>{};
  Map<String, String> _errors = const <String, String>{};

  bool get _creating => widget.provider == null;

  PushProviderDraft _fresh() => widget.provider == null ? PushProviderDraft() : PushProviderDraft.of(widget.provider!);

  TextEditingController _ctl(String key, String text) => _c.putIfAbsent(key, () => TextEditingController(text: text));

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() {
    final d = _draft;
    for (final e in <String, String>{
      'id': d.id,
      'appIds': d.appIds,
      'teamId': d.teamId,
      'keyId': d.keyId,
      'projectId': d.projectId,
      'clientEmail': d.clientEmail,
      'tokenUri': d.tokenUri,
      'p8': '',
      'serviceAccountJson': '',
    }.entries) {
      _ctl(e.key, e.value).text = e.value;
    }
  }

  @override
  void dispose() {
    for (final c in _c.values) {
      c.dispose();
    }
    super.dispose();
  }

  void _collect() {
    _draft
      ..id = _c['id']!.text
      ..appIds = _c['appIds']!.text
      ..teamId = _c['teamId']!.text
      ..keyId = _c['keyId']!.text
      ..projectId = _c['projectId']!.text
      ..clientEmail = _c['clientEmail']!.text
      ..tokenUri = _c['tokenUri']!.text
      ..p8 = _c['p8']!.text
      ..serviceAccountJson = _c['serviceAccountJson']!.text;
  }

  Future<void> _save() async {
    _collect();
    setState(() => _errors = _draft.validate(creating: _creating));
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final push = api.getPushApi();
    final id = _draft.id.trim();
    final body = fromJsonMap<PushProviderInput>(api.serializers, _draft.toJson());
    final saved = await track(
      () => writeThenConfirm<Json>(
        write: () => push.putPushProvider(providerId: id, pushProviderInput: body),
        reread: () async {
          final list = await callApiRequired(push.listPushProviders);
          final p = list.where((p) => p.id == id).firstOrNull;
          if (p == null) {
            throw const WriteNotConfirmedException('The provider does not read back.');
          }
          return toJsonMap(api.serializers, p);
        },
        confirm: (p) =>
            p['type'] == _draft.type && p['enabled'] == _draft.enabled ? null : 'The provider reads back differently.',
      ),
    );
    if (saved != null && mounted) {
      ref.invalidate(pushProvidersProvider);
      if (_creating) {
        context.go(pushProviderPath(id));
      } else {
        _c['p8']!.clear();
        _c['serviceAccountJson']!.clear();
      }
    }
  }

  Widget _field(String label, String key, {String? help, String? hint, int maxLines = 1, bool json = false}) =>
      LabeledField(
        label: label,
        help: help,
        field: json
            ? JsonField(key: Key('provider.$key'), controller: _c[key]!, error: _errors[key], hint: hint, minLines: 3)
            : PlainField(
                key: Key('provider.$key'),
                controller: _c[key]!,
                error: _errors[key],
                hint: hint,
                maxLines: maxLines,
              ),
      );

  @override
  Widget build(BuildContext context) {
    final d = _draft;
    final apns = d.type == 'apns';
    final secretSet = d.secretsSet.contains(apns ? 'p8' : 'serviceAccountJson');
    return SectionCard(
      key: const Key('provider.form'),
      title: 'Settings',
      subtitle: _creating
          ? 'The id is fixed once saved. Saving replaces the provider.'
          : 'Saving replaces the provider; the key is kept unless you paste a new one.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_creating)
            _field('Id', 'id', help: 'Lower-case words joined by -, such as apns-main.', hint: 'apns-main')
          else
            LabeledField(label: 'Id', field: Text(d.id)),
          LabeledField(
            label: 'Type',
            field: _creating
                ? WireDropdown(
                    key: const Key('provider.type'),
                    value: d.type,
                    values: pushTransports,
                    labels: const <String, String>{'apns': 'APNs (Apple)', 'fcm': 'FCM (Google)'},
                    onChanged: (v) => setState(() => d.type = v),
                  )
                : Text(apns ? 'APNs (Apple)' : 'FCM (Google)'),
          ),
          LabeledField(
            label: 'Enabled',
            field: Align(
              alignment: Alignment.centerLeft,
              child: Switch(
                key: const Key('provider.enabled'),
                value: d.enabled,
                onChanged: (v) => setState(() => d.enabled = v),
              ),
            ),
          ),
          _field(
            'App ids',
            'appIds',
            help: apns ? 'Bundle ids this key serves, comma-separated.' : 'Android package names, comma-separated.',
            hint: apns ? 'com.foresignal.foresignalAdmin' : 'com.foresignal.foresignal_admin',
          ),
          if (apns) ...<Widget>[
            _field('Team id', 'teamId', help: '10 characters, from the Apple developer account.'),
            _field('Key id', 'keyId', help: '10 characters, from the .p8 key.'),
            LabeledField(
              label: 'Key environment',
              help: 'Which APNs environments the key serves.',
              field: WireDropdown(
                key: const Key('provider.keyEnvironment'),
                value: d.keyEnvironment,
                values: apnsKeyEnvironments,
                onChanged: (v) => setState(() => d.keyEnvironment = v),
              ),
            ),
            LabeledField(
              label: 'Time sensitive',
              help: 'Only when the app has the Time Sensitive capability.',
              field: Align(
                alignment: Alignment.centerLeft,
                child: Switch(
                  key: const Key('provider.timeSensitive'),
                  value: d.timeSensitive,
                  onChanged: (v) => setState(() => d.timeSensitive = v),
                ),
              ),
            ),
            _field(
              '.p8 key',
              'p8',
              help: secretSet ? 'Set. Paste a new key to replace it; leave empty to keep.' : 'Paste the .p8 file\'s text.',
              hint: '-----BEGIN PRIVATE KEY-----',
              maxLines: 6,
            ),
          ] else ...<Widget>[
            _field(
              'Service account',
              'serviceAccountJson',
              help: secretSet
                  ? 'Set. Paste a new service-account JSON to replace it; leave empty to keep. Only its private key is stored, encrypted.'
                  : 'The service-account JSON from Google Cloud. Only its private key is stored, encrypted.',
              json: true,
            ),
            _field('Project id', 'projectId', help: 'Taken from the service account when empty.'),
            _field('Client email', 'clientEmail', help: 'Taken from the service account when empty.'),
            _field('Token endpoint', 'tokenUri', help: 'The OAuth endpoint; change it only for a local stand-in.'),
          ],
          FormActions(
            busy: busy,
            onSave: _save,
            saveLabel: _creating ? 'Add Provider' : 'Save Changes',
            onReset: _creating
                ? null
                : () => setState(() {
                    _draft = _fresh();
                    _errors = const <String, String>{};
                    _load();
                  }),
            leading: <Widget>[statusLine],
          ),
        ],
      ),
    );
  }
}

class _ProviderTestCard extends ConsumerStatefulWidget {
  const _ProviderTestCard({required this.provider});

  final Json provider;

  @override
  ConsumerState<_ProviderTestCard> createState() => _ProviderTestCardState();
}

class _ProviderTestCardState extends ConsumerState<_ProviderTestCard> with WriteTracking<_ProviderTestCard> {
  String? _deviceId;
  Json? _result;

  Future<void> _test() async {
    final api = ref.read(foresignalApiProvider);
    final r = await track(
      () => callApiRequired(
        () => api.getPushApi().testPushProvider(
          providerId: '${widget.provider['id']}',
          pushProviderTestRequest: fromJsonMap<PushProviderTestRequest>(api.serializers, <String, Object?>{
            'deviceId': _deviceId,
          }),
        ),
      ),
    );
    if (r != null && mounted) {
      setState(() => _result = toJsonMap(api.serializers, r));
      ref.invalidate(pushProvidersProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final devices = ref.watch(pushDevicesProvider).asData?.value ?? const <Json>[];
    final served = <Json>[
      for (final d in devices)
        if (d['transport'] == widget.provider['type'] && listText(widget.provider['appIds']).contains('${d['appId']}')) d,
    ];
    return SectionCard(
      key: const Key('provider.test'),
      title: 'Test',
      subtitle: 'Obtains an APNs or FCM credential with the stored key and, with a device chosen, sends it a test alert.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          WireDropdown(
            key: const Key('provider.test.device'),
            value: _deviceId ?? 'none',
            values: <String>['none', for (final d in served) '${d['id']}'],
            labels: <String, String>{
              'none': 'Credential only',
              for (final d in served) '${d['id']}': '${d['name'] ?? d['deviceName'] ?? 'Device'} (…${d['tokenSuffix']})',
            },
            onChanged: (v) => setState(() => _deviceId = v == 'none' ? null : v),
          ),
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              FilledButton.icon(
                key: const Key('provider.test.run'),
                onPressed: busy ? null : _test,
                icon: const Icon(Icons.send, size: 18),
                label: const Text('Send Test'),
              ),
            ],
          ),
          if (_result case final r?) ...<Widget>[
            const SizedBox(height: 10),
            pushTestLabel(r, key: const Key('provider.test.result')),
          ],
          if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
          if (widget.provider['lastError'] case final String e) ...<Widget>[
            const SizedBox(height: 12),
            Text('Last error: $e', style: TextStyle(color: Theme.of(context).colorScheme.error)),
          ],
        ],
      ),
    );
  }
}

class _DeleteProviderCard extends ConsumerStatefulWidget {
  const _DeleteProviderCard({required this.providerId});

  final String providerId;

  @override
  ConsumerState<_DeleteProviderCard> createState() => _DeleteProviderCardState();
}

class _DeleteProviderCardState extends ConsumerState<_DeleteProviderCard> with WriteTracking<_DeleteProviderCard> {
  bool _confirming = false;

  Future<void> _delete() async {
    final push = ref.read(foresignalApiProvider).getPushApi();
    final ok = await track(() async {
      await callApi(() => push.deletePushProvider(providerId: widget.providerId));
      final list = await callApiRequired(push.listPushProviders);
      if (list.any((p) => p.id == widget.providerId)) {
        throw const WriteNotConfirmedException('The provider is still listed.');
      }
      return true;
    });
    if (ok == true && mounted) {
      ref.invalidate(pushProvidersProvider);
      context.go(pushPath);
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('provider.delete'),
    title: 'Delete',
    subtitle: 'Devices served only by this provider stop receiving push.',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (_confirming)
          ConfirmRow(
            message: 'Delete provider ${widget.providerId}?',
            action: 'Delete',
            confirmKey: const Key('provider.delete.confirm'),
            onConfirm: _delete,
            onCancel: () => setState(() => _confirming = false),
          )
        else
          Align(
            alignment: Alignment.centerLeft,
            child: FilledButton(
              key: const Key('provider.delete.start'),
              style: FilledButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.error),
              onPressed: busy ? null : () => setState(() => _confirming = true),
              child: const Text('Delete Provider'),
            ),
          ),
        if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
      ],
    ),
  );
}

/// One registered device (`/notifications/push/devices/:deviceId`): its
/// name, filters and content level (`updatePushDevice`), a test, and
/// removal.
class PushDeviceScreen extends ConsumerWidget {
  /// Creates the page for [deviceId].
  const PushDeviceScreen({super.key, required this.deviceId});

  /// The device id.
  final String deviceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final crumbs = <Crumb>[
      const Crumb('Notifications', notificationsPath),
      const Crumb('Native Push', pushPath),
      const Crumb('Device'),
    ];
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(title: 'Registered Device', crumbs: crumbs),
        AsyncView<Json?>(
          value: ref.watch(pushDeviceProvider(deviceId)),
          onRetry: () => ref.invalidate(pushDevicesProvider),
          data: (d) => d == null
              ? const ResultPanel(
                  title: 'No such device',
                  tone: StatusTone.warning,
                  message: 'It may have been removed, or its token expired.',
                )
              : PushDeviceCard(key: ValueKey<Object?>(d['id']), device: d, afterRemove: () => context.go(pushPath)),
        ),
      ],
    );
  }
}

/// A registered device's settings, test and removal; used on the desktop
/// device page and the companion's own page. [afterRemove] runs once the
/// removal is confirmed.
class PushDeviceCard extends ConsumerStatefulWidget {
  /// Creates the card for [device].
  const PushDeviceCard({super.key, required this.device, required this.afterRemove});

  /// The device as read.
  final Json device;

  /// Runs after the device is removed.
  final VoidCallback afterRemove;

  @override
  ConsumerState<PushDeviceCard> createState() => _PushDeviceCardState();
}

class _PushDeviceCardState extends ConsumerState<PushDeviceCard> with WriteTracking<PushDeviceCard> {
  late PushDeviceUpdateDraft _draft = PushDeviceUpdateDraft.of(widget.device);
  late final TextEditingController _name = TextEditingController(text: _draft.name);
  late final TextEditingController _lang = TextEditingController(text: _draft.lang);
  Map<String, String> _errors = const <String, String>{};
  Json? _test;
  bool _testing = false;
  Object? _testError;
  bool _confirmingRemove = false;
  int _formKey = 0;

  String get _id => '${widget.device['id']}';

  @override
  void dispose() {
    _name.dispose();
    _lang.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    _draft
      ..name = _name.text
      ..lang = _lang.text;
    setState(() => _errors = _draft.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final push = api.getPushApi();
    final body = _draft.toJson();
    final saved = await track(
      () => writeThenConfirm<Json>(
        write: () => push.updatePushDevice(
          deviceId: _id,
          pushDeviceUpdate: fromJsonMap<PushDeviceUpdate>(api.serializers, body),
        ),
        reread: () async {
          final list = await callApiRequired(push.listPushDevices);
          final d = list.where((d) => d.id == _id).firstOrNull;
          if (d == null) {
            throw const WriteNotConfirmedException('The device is no longer registered.');
          }
          return toJsonMap(api.serializers, d);
        },
        confirm: (d) => d['contentLevel'] == body['contentLevel'] && d['name'] == body['name']
            ? null
            : 'The device reads back differently.',
      ),
    );
    if (saved != null) {
      ref.invalidate(pushDevicesProvider);
    }
  }

  Future<void> _runTest() async {
    setState(() {
      _testing = true;
      _testError = null;
    });
    try {
      final api = ref.read(foresignalApiProvider);
      final r = await callApiRequired(() => api.getPushApi().testPushDevice(deviceId: _id));
      if (mounted) {
        setState(() => _test = toJsonMap(api.serializers, r));
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

  Future<void> _remove() async {
    final push = ref.read(foresignalApiProvider).getPushApi();
    final ok = await track(() async {
      await callApi(() => push.deletePushDevice(deviceId: _id));
      final list = await callApiRequired(push.listPushDevices);
      if (list.any((d) => d.id == _id)) {
        throw const WriteNotConfirmedException('The device is still registered.');
      }
      return true;
    });
    if (ok == true && mounted) {
      ref.invalidate(pushDevicesProvider);
      widget.afterRemove();
    }
  }

  @override
  Widget build(BuildContext context) {
    final d = widget.device;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionCard(
          key: const Key('device.summary'),
          title: '${d['name'] ?? d['deviceName'] ?? 'Unnamed device'}',
          child: KeyValueList(
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>('Platform', platformText(d['platform'])),
              MapEntry<String, Object>(
                'Through',
                '${d['transport'] == 'apns' ? 'APNs' : 'FCM'}${d['environment'] == null ? '' : ' (${d['environment']})'}',
              ),
              MapEntry<String, Object>('App', '${d['appId']}${d['appVersion'] == null ? '' : ' ${d['appVersion']}'}'),
              MapEntry<String, Object>('Token', '…${d['tokenSuffix']}'),
              MapEntry<String, Object>('Registered', whenText(d['createdAt'])),
              MapEntry<String, Object>('Last sent', whenText(d['lastSuccessAt'])),
              if (((d['failureCount'] as num?) ?? 0) > 0)
                MapEntry<String, Object>(
                  'Failures',
                  '${d['failureCount']}, last ${whenText(d['lastFailureAt'])}${d['lastStatus'] == null ? '' : ' (HTTP ${d['lastStatus']})'}',
                ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SectionCard(
          key: const Key('device.settings'),
          title: 'What it receives',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              LabeledField(label: 'Name', field: PlainField(key: const Key('device.name'), controller: _name)),
              LabeledField(
                label: 'Content',
                help: 'Minimal sends no alert text through Apple or Google; short sends a title of up to 40 characters.',
                field: WireDropdown(
                  key: const Key('device.contentLevel'),
                  value: _draft.contentLevel,
                  values: contentLevels,
                  onChanged: (v) => setState(() => _draft.contentLevel = v),
                ),
              ),
              LabeledField(
                label: 'Language',
                help: 'BCP 47, such as en or de; empty for the server default.',
                field: PlainField(key: const Key('device.lang'), controller: _lang),
              ),
              FiltersFields(key: ValueKey<int>(_formKey), draft: _draft.filters, prefix: 'device.filters', errors: _errors),
              FormActions(
                busy: busy,
                onSave: _save,
                onReset: () => setState(() {
                  _draft = PushDeviceUpdateDraft.of(widget.device);
                  _name.text = _draft.name;
                  _lang.text = _draft.lang;
                  _errors = const <String, String>{};
                  _formKey++;
                }),
                leading: <Widget>[statusLine],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SectionCard(
          key: const Key('device.test'),
          title: 'Test and remove',
          subtitle: 'A test sends a short system notice; up to 5 an hour. A gone token removes the device.',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Wrap(
                spacing: 12,
                runSpacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  FilledButton.icon(
                    key: const Key('device.test.run'),
                    onPressed: _testing ? null : _runTest,
                    icon: const Icon(Icons.send, size: 18),
                    label: const Text('Send Test'),
                  ),
                  if (_test case final r?) pushTestLabel(r, key: const Key('device.test.result')),
                  OutlinedButton(
                    key: const Key('device.remove'),
                    onPressed: busy ? null : () => setState(() => _confirmingRemove = true),
                    child: const Text('Remove Device'),
                  ),
                ],
              ),
              if (_testError case final e?) ...<Widget>[const SizedBox(height: 8), ErrorBanner(error: e)],
              if (_confirmingRemove) ...<Widget>[
                const SizedBox(height: 12),
                ConfirmRow(
                  message: 'Stop push to this device?',
                  action: 'Remove',
                  confirmKey: const Key('device.remove.confirm'),
                  onConfirm: () {
                    setState(() => _confirmingRemove = false);
                    unawaited(_remove());
                  },
                  onCancel: () => setState(() => _confirmingRemove = false),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
