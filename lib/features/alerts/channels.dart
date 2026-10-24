import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../vetting/vetting_drafts.dart' show toJsonMap;
import 'alert_inbox.dart' show severityLabel;
import 'alerts_drafts.dart';
import 'alerts_providers.dart';

/// Delivery statuses (`listChannelDeliveries?status=`).
const List<String> deliveryStatuses = <String>['pending', 'delivered', 'failed', 'suppressed', 'unacked'];

/// The tone of a delivery status.
StatusTone deliveryTone(Object? wire) => switch (wire) {
  'delivered' => StatusTone.ok,
  'failed' => StatusTone.error,
  'pending' || 'unacked' => StatusTone.warning,
  _ => StatusTone.neutral,
};

/// The type named [id] among [types], or `null`.
Json? channelTypeOf(List<Json> types, Object? id) => types.where((t) => t['id'] == id).firstOrNull;

/// Sends a test message on channel [id] (`testChannel`) and shows the
/// result.
class ChannelTestButton extends ConsumerStatefulWidget {
  /// Creates the button for channel [channelId].
  const ChannelTestButton({
    super.key,
    required this.channelId,
    this.label = 'Test',
    this.compact = false,
  });

  /// The channel.
  final String channelId;

  /// The button text.
  final String label;

  /// Whether the result shows as an icon whose tooltip carries the text, so a
  /// table row keeps its width.
  final bool compact;

  @override
  ConsumerState<ChannelTestButton> createState() => _ChannelTestButtonState();
}

class _ChannelTestButtonState extends ConsumerState<ChannelTestButton> {
  bool _running = false;
  Json? _result;
  Object? _error;

  Future<void> _test() async {
    setState(() {
      _running = true;
      _result = null;
      _error = null;
    });
    final api = ref.read(foresignalApiProvider);
    try {
      final r = await callApiRequired(() => api.getChannelsApi().testChannel(channelId: widget.channelId));
      if (mounted) {
        setState(() => _result = toJsonMap(api.serializers, r));
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _error = e);
      }
    } finally {
      if (mounted) {
        setState(() => _running = false);
        ref.invalidate(channelDeliveriesProvider((channelId: widget.channelId, status: null)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final r = _result;
    final ok = r?['success'] == true;
    Widget outcome({Key? key, required String label, required StatusTone tone, String? detail}) {
      if (!widget.compact) {
        return StatusLabel(key: key, label: label, tone: tone, tooltip: detail);
      }
      return Tooltip(
        key: key,
        message: detail == null ? label : '$label: $detail',
        child: Icon(tone.icon, size: 16, color: tone.colorOf(context), semanticLabel: label),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextButton.icon(
          key: Key('channels.test.${widget.channelId}'),
          onPressed: _running ? null : _test,
          icon: _running
              ? const SizedBox(width: 14, height: 14, child: CircularProgressIndicator(strokeWidth: 2))
              : const Icon(Icons.send, size: 16),
          label: Text(widget.label),
        ),
        if (r != null)
          outcome(
            key: Key('channels.testResult.${widget.channelId}'),
            label: ok
                ? 'Sent${r['durationMs'] == null ? '' : ' in ${r['durationMs']} ms'}'
                : 'Failed${r['status'] == null ? '' : ' (HTTP ${r['status']})'}',
            tone: ok ? StatusTone.ok : StatusTone.error,
            detail: ok ? null : '${r['error'] ?? 'No detail'}',
          ),
        if (_error != null)
          outcome(
            label: 'Could not test',
            tone: StatusTone.error,
            detail: _error is ApiException ? (_error! as ApiException).message : '$_error',
          ),
      ],
    );
  }
}

/// The notification channels (Screens §G): name, type, events, minimum
/// severity, status and recent failures, with Test and **New Channel**.
class ChannelsPanel extends ConsumerWidget {
  /// Creates the panel.
  const ChannelsPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final types = ref.watch(channelTypesProvider).value ?? const <Json>[];
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            const Spacer(),
            IconButton(
              tooltip: 'Refresh',
              onPressed: () => ref.invalidate(channelsProvider),
              icon: const Icon(Icons.refresh),
            ),
            const SizedBox(width: 8),
            FilledButton.icon(
              key: const Key('channels.new'),
              onPressed: () => context.go(alertNewChannelPath),
              icon: const Icon(Icons.add, size: 18),
              label: const Text('New Channel'),
            ),
          ],
        ),
        const SizedBox(height: 12),
        AsyncView<List<Json>>(
          value: ref.watch(channelsProvider),
          onRetry: () => ref.invalidate(channelsProvider),
          data: (channels) => DataTableCard<Json>(
            key: const Key('channels.table'),
            rows: channels,
            empty: 'No channels yet.',
            onTap: (c) => context.go(alertChannelPath('${c['id']}')),
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(
                label: 'Name',
                cell: (c) => Text('${c['name']}', style: const TextStyle(fontWeight: FontWeight.w600)),
              ),
              TableColumnSpec<Json>(
                label: 'Type',
                cell: (c) => Text('${channelTypeOf(types, c['type'])?['name'] ?? c['type']}'),
              ),
              TableColumnSpec<Json>(
                label: 'Events',
                cell: (c) => ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 220),
                  child: Text(
                    ((c['events'] as List<Object?>?) ?? const <Object?>[]).join(', '),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              TableColumnSpec<Json>(
                label: 'From',
                cell: (c) => c['minSeverity'] == null ? Text('All', style: TextStyle(color: muted)) : severityLabel(c['minSeverity']),
              ),
              TableColumnSpec<Json>(
                label: 'Status',
                cell: (c) {
                  final failed = (c['failedLast24h'] as int?) ?? 0;
                  final warnings = jsonList(c, 'warnings');
                  if (c['enabled'] != true) {
                    return const StatusLabel(label: 'Disabled', tone: StatusTone.neutral);
                  }
                  if (failed > 0) {
                    return StatusLabel(label: '$failed failed (24 h)', tone: StatusTone.error);
                  }
                  if (warnings.isNotEmpty) {
                    return StatusLabel(
                      label: 'Warning',
                      tone: StatusTone.warning,
                      tooltip: warnings.map((w) => '${w['message']}').join('\n'),
                    );
                  }
                  return const StatusLabel(label: 'Enabled', tone: StatusTone.ok);
                },
              ),
              TableColumnSpec<Json>(label: 'Last delivery', cell: (c) => Text(whenText(c['lastDeliveryAt']))),
              TableColumnSpec<Json>(
                label: 'Actions',
                cell: (c) => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ChannelTestButton(channelId: '${c['id']}', compact: true),
                    TextButton(
                      key: Key('channels.configure.${c['id']}'),
                      onPressed: () => context.go(alertChannelPath('${c['id']}')),
                      child: const Text('Configure'),
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

/// One channel (`/alerts/channels/:channelId`), or a new one
/// (`/alerts/new-channel`, after choosing its type): settings, test, recent
/// deliveries and delete.
class ChannelScreen extends ConsumerStatefulWidget {
  /// Creates the page for channel [channelId], or a new channel when `null`.
  const ChannelScreen({super.key, this.channelId});

  /// The channel id; `null` creates one.
  final String? channelId;

  @override
  ConsumerState<ChannelScreen> createState() => _ChannelScreenState();
}

class _ChannelScreenState extends ConsumerState<ChannelScreen> {
  String? _newType;

  @override
  Widget build(BuildContext context) {
    final id = widget.channelId;
    final types = ref.watch(channelTypesProvider);
    final crumbs = <Crumb>[const Crumb('Alerts', alertsPath), const Crumb('Channels', alertChannelsPath)];
    if (id == null) {
      return ListView(
        padding: const EdgeInsets.all(28),
        children: <Widget>[
          PageHeader(title: 'New Channel', crumbs: <Crumb>[...crumbs, const Crumb('New')]),
          AsyncView<List<Json>>(
            value: types,
            onRetry: () => ref.invalidate(channelTypesProvider),
            data: (list) {
              final type = channelTypeOf(list, _newType);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SectionCard(
                    title: 'Type',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(
                          width: 360,
                          child: WireDropdown(
                            key: const Key('channel.type'),
                            value: _newType,
                            values: <String>[for (final t in list) '${t['id']}'],
                            labels: <String, String>{for (final t in list) '${t['id']}': '${t['name']}'},
                            hint: 'Choose a type',
                            onChanged: (v) => setState(() => _newType = v),
                          ),
                        ),
                        if (type?['description'] case final String d) Footnote(d),
                      ],
                    ),
                  ),
                  if (type != null) ...<Widget>[
                    const SizedBox(height: 16),
                    SectionCard(
                      title: 'Settings',
                      child: ChannelForm(key: ValueKey<String>('new.${type['id']}'), type: type),
                    ),
                  ],
                ],
              );
            },
          ),
        ],
      );
    }
    final channel = ref.watch(channelProvider(id));
    final name = channel.value?['name'] as String?;
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: name ?? 'Channel',
          crumbs: <Crumb>[...crumbs, Crumb(name ?? id)],
          actions: <Widget>[ChannelTestButton(channelId: id, label: 'Send Test')],
        ),
        AsyncView<Json>(
          value: channel,
          onRetry: () => ref.invalidate(channelProvider(id)),
          data: (c) => AsyncView<List<Json>>(
            value: types,
            onRetry: () => ref.invalidate(channelTypesProvider),
            data: (list) {
              final type = channelTypeOf(list, c['type']) ??
                  <String, Object?>{'id': c['type'], 'name': c['type'], 'configFields': <Object?>[], 'secretFields': <Object?>[]};
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  for (final w in jsonList(c, 'warnings')) ...<Widget>[
                    ResultPanel(title: '${w['code']}', tone: StatusTone.warning, message: '${w['message']}'),
                    const SizedBox(height: 12),
                  ],
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: SectionCard(
                          title: 'Settings',
                          subtitle: '${type['name']}. Saving replaces the channel; secrets are kept unless you type new ones.',
                          child: ChannelForm(key: ValueKey<String>('channel.${c['updatedAt']}'), type: type, channel: c),
                        ),
                      ),
                      const SizedBox(width: 16),
                      SizedBox(
                        width: 380,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            SectionCard(
                              title: 'Status',
                              child: KeyValueList(
                                keyWidth: 140,
                                entries: <MapEntry<String, Object>>[
                                  MapEntry<String, Object>('Enabled', c['enabled'] == true ? 'Yes' : 'No'),
                                  MapEntry<String, Object>('Last delivery', whenText(c['lastDeliveryAt'])),
                                  MapEntry<String, Object>('Failed (24 h)', '${c['failedLast24h'] ?? 0}'),
                                  MapEntry<String, Object>(
                                    'Secrets set',
                                    ((c['secretFields'] as List<Object?>?) ?? const <Object?>[]).isEmpty
                                        ? 'None'
                                        : (c['secretFields']! as List<Object?>).join(', '),
                                  ),
                                  MapEntry<String, Object>('Updated', whenText(c['updatedAt'])),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            _DeleteChannelCard(channel: c),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  DeliveriesCard(channelId: id),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

/// A channel's settings, shaped by its type's `configFields` and
/// `secretFields`. Created with `createChannel`, or replaced with
/// `updateChannel` and confirmed by re-reading.
class ChannelForm extends ConsumerStatefulWidget {
  /// Creates the form for [channel] of [type], or a new channel of [type].
  const ChannelForm({super.key, required this.type, this.channel, this.initialRuleIds, this.onCreated});

  /// The channel type (`ChannelType`).
  final Json type;

  /// The stored channel; `null` for a new one.
  final Json? channel;

  /// For a new channel: start with only these rules' alerts instead of every
  /// rule's. An empty set is allowed, for a rule not saved yet that is routed
  /// to the channel once it is (the Alert Builder).
  final Set<String>? initialRuleIds;

  /// For a new channel: called with it once created, instead of opening its
  /// page.
  final ValueChanged<Json>? onCreated;

  @override
  ConsumerState<ChannelForm> createState() => _ChannelFormState();
}

class _ChannelFormState extends ConsumerState<ChannelForm> with WriteTracking<ChannelForm> {
  late ChannelDraft _draft;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _body = TextEditingController();
  final TextEditingController _otherConfig = TextEditingController();
  final TextEditingController _more = TextEditingController();
  final Map<String, TextEditingController> _config = <String, TextEditingController>{};
  final Map<String, TextEditingController> _secrets = <String, TextEditingController>{};
  Map<String, String> _errors = const <String, String>{};

  bool get _creating => widget.channel == null;

  @override
  void initState() {
    super.initState();
    _adopt();
  }

  void _adopt() {
    _draft = widget.channel == null ? ChannelDraft(widget.type) : ChannelDraft.of(widget.type, widget.channel!);
    if (widget.channel == null && widget.initialRuleIds != null) {
      _draft
        ..allRules = false
        ..ruleIds.addAll(widget.initialRuleIds!);
    }
    _name.text = _draft.name;
    _title.text = _draft.titleTemplate;
    _body.text = _draft.bodyTemplate;
    _otherConfig.text = _draft.otherConfigText;
    _more.text = _draft.moreText;
    for (final f in channelFields(widget.type, 'configFields')) {
      (_config[f.name] ??= TextEditingController()).text = _draft.config[f.name] ?? '';
    }
    for (final f in channelFields(widget.type, 'secretFields')) {
      (_secrets[f.name] ??= TextEditingController()).clear();
    }
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[_name, _title, _body, _otherConfig, _more, ..._config.values, ..._secrets.values]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    _draft
      ..name = _name.text
      ..titleTemplate = _title.text
      ..bodyTemplate = _body.text
      ..otherConfigText = _otherConfig.text
      ..moreText = _more.text;
    for (final f in channelFields(widget.type, 'configFields')) {
      if (f.type != 'boolean') {
        _draft.config[f.name] = _config[f.name]!.text;
      }
    }
    for (final e in _secrets.entries) {
      _draft.secrets[e.key] = e.value.text;
    }
    setState(() => _errors = _draft.validate(creating: _creating, allowNoRules: widget.initialRuleIds != null));
    if (_errors.isNotEmpty) {
      return;
    }
    // JSON, not the generated client: it drops `config` (see [jsonCall]).
    final dio = ref.read(backendDioProvider);
    final body = _draft.toJson(creating: _creating);
    final id = widget.channel?['id'] as String?;
    if (id == null) {
      final created = await track(() => jsonObjectCall(dio, 'POST', '/v1/channels', body: body));
      if (created != null && mounted) {
        ref.invalidate(channelsProvider);
        if (widget.onCreated case final done?) {
          done(created);
        } else {
          context.go(alertChannelPath('${created['id']}'));
        }
      }
      return;
    }
    final saved = await track(
      () => writeThenConfirm<Json>(
        write: () => jsonCall(dio, 'PUT', channelPath(id), body: body),
        reread: () => jsonObjectCall(dio, 'GET', channelPath(id)),
        confirm: (c) => c['name'] == _draft.name.trim() && c['enabled'] == _draft.enabled
            ? null
            : 'The channel reads back differently.',
      ),
    );
    if (saved != null) {
      for (final c in _secrets.values) {
        c.clear();
      }
      ref
        ..invalidate(channelsProvider)
        ..invalidate(channelProvider(id));
    }
  }

  Widget _configField(ChannelField f) {
    final help = <String>[
      ?f.description,
      if (f.defaultValue != null) 'Default ${f.defaultValue}.',
    ].join(' ');
    final Widget field;
    if (f.type == 'boolean') {
      final text = _draft.config[f.name] ?? '';
      final on = (text.isEmpty ? '${f.defaultValue ?? false}' : text) == 'true';
      field = Align(
        alignment: Alignment.centerLeft,
        child: Switch(
          key: Key('channel.config.${f.name}'),
          value: on,
          onChanged: (v) => setState(() => _draft.config[f.name] = '$v'),
        ),
      );
    } else if (f.type == 'enum' && f.allowed.isNotEmpty) {
      field = WireDropdown(
        key: Key('channel.config.${f.name}'),
        value: _config[f.name]!.text.isEmpty ? null : _config[f.name]!.text,
        values: f.allowed,
        labels: <String, String>{for (final a in f.allowed) a: a},
        hint: f.defaultValue == null ? null : '${f.defaultValue}',
        error: _errors['config.${f.name}'],
        onChanged: (v) => setState(() => _config[f.name]!.text = v),
      );
    } else if (f.type == 'map') {
      field = JsonField(
        key: Key('channel.config.${f.name}'),
        controller: _config[f.name]!,
        error: _errors['config.${f.name}'],
        minLines: 2,
      );
    } else {
      field = PlainField(
        key: Key('channel.config.${f.name}'),
        controller: _config[f.name]!,
        error: _errors['config.${f.name}'],
        hint: f.defaultValue == null ? null : '${f.defaultValue}',
      );
    }
    return LabeledField(label: '${wireText(f.name)}${f.required ? ' *' : ''}', help: help.isEmpty ? null : help, field: field);
  }

  Widget _secretField(ChannelField f) {
    final set = _draft.secretsSet.contains(f.name) ||
        (isWildcardField(f.name) && _draft.secretsSet.any((s) => s.startsWith(f.name.replaceAll('<Name>', ''))));
    final wildcard = isWildcardField(f.name);
    return LabeledField(
      label: '${wireText(f.name.replaceAll('.<Name>', ''))}${f.required ? ' *' : ''}',
      help: <String>[
        ?f.description,
        if (wildcard) 'A JSON object of names to values.',
        if (!_creating) set ? 'Set; leave empty to keep.' : 'Not set.',
      ].join(' '),
      field: wildcard
          ? JsonField(
              key: Key('channel.secret.${f.name}'),
              controller: _secrets[f.name]!,
              error: _errors['secret.${f.name}'],
              hint: '{"Authorization": "Bearer …"}',
              minLines: 2,
            )
          : TextField(
              key: Key('channel.secret.${f.name}'),
              controller: _secrets[f.name],
              obscureText: true,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                isDense: true,
                hintText: set ? '••••••••' : null,
                errorText: _errors['secret.${f.name}'],
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final rules = ref.watch(triggersProvider).value ?? const <Json>[];
    final offered = <String>[...((widget.type['events'] as List<Object?>?) ?? const <Object?>['alert']).map((e) => '$e')];
    final events = <String>{...offered, ..._draft.events}.toList();
    final secretFields = channelFields(widget.type, 'secretFields');
    final typing = _secrets.values.any((c) => c.text.trim().isNotEmpty);
    final urlRefused = failedCode == 'URL_NOT_ALLOWED';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'Name',
          field: PlainField(key: const Key('channel.name'), controller: _name, error: _errors['name']),
        ),
        LabeledField(
          label: 'Enabled',
          field: Align(
            alignment: Alignment.centerLeft,
            child: Switch(
              key: const Key('channel.enabled'),
              value: _draft.enabled,
              onChanged: (v) => setState(() => _draft.enabled = v),
            ),
          ),
        ),
        LabeledField(
          label: 'Events',
          field: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: <Widget>[
                  for (final e in events)
                    FilterChip(
                      key: Key('channel.event.$e'),
                      label: Text(e),
                      selected: _draft.events.contains(e),
                      onSelected: (on) => setState(() => on ? _draft.events.add(e) : _draft.events.remove(e)),
                    ),
                ],
              ),
              if (_errors['events'] case final e?)
                Text(e, style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12)),
            ],
          ),
        ),
        LabeledField(
          label: 'Lowest severity',
          field: WireDropdown(
            key: const Key('channel.minSeverity'),
            value: _draft.minSeverity ?? 'all',
            values: const <String>['all', ...severities],
            labels: const <String, String>{'all': 'Every severity'},
            onChanged: (v) => setState(() => _draft.minSeverity = v == 'all' ? null : v),
          ),
        ),
        LabeledField(
          label: 'Rules',
          help: 'Whose alerts reach this channel.',
          field: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Switch(
                    key: const Key('channel.allRules'),
                    value: _draft.allRules,
                    onChanged: (v) => setState(() => _draft.allRules = v),
                  ),
                  const SizedBox(width: 8),
                  Text(_draft.allRules ? 'Every rule' : 'Only these rules'),
                ],
              ),
              if (!_draft.allRules)
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final r in rules)
                      FilterChip(
                        key: Key('channel.rule.${r['id']}'),
                        label: Text('${r['name']}'),
                        selected: _draft.ruleIds.contains('${r['id']}'),
                        onSelected: (on) => setState(
                          () => on ? _draft.ruleIds.add('${r['id']}') : _draft.ruleIds.remove('${r['id']}'),
                        ),
                      ),
                  ],
                ),
              if (_errors['rules'] case final e?)
                Text(e, style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12)),
            ],
          ),
        ),
        for (final f in channelFields(widget.type, 'configFields')) _configField(f),
        if (secretFields.isNotEmpty) ...<Widget>[
          const Divider(height: 28),
          Text('Secrets', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 4),
          Text(
            'Write-only: they are never shown again.${_creating ? '' : ' Typing any secret replaces every secret, so fill in each one to keep.'}',
            style: TextStyle(color: AdminPalette.of(context).muted, fontSize: 12),
          ),
          const SizedBox(height: 8),
          for (final f in secretFields) _secretField(f),
          if (typing && !_creating)
            const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: StatusLabel(
                key: Key('channel.replacesSecrets'),
                label: 'Saving replaces every secret on this channel',
                tone: StatusTone.warning,
              ),
            ),
          const Divider(height: 28),
        ],
        LabeledField(
          label: 'Title template',
          help: 'Empty for the default.',
          field: PlainField(key: const Key('channel.title'), controller: _title),
        ),
        LabeledField(
          label: 'Body template',
          help: 'Empty for the default.',
          field: PlainField(key: const Key('channel.body'), controller: _body, maxLines: 4),
        ),
        LabeledField(
          label: 'Other configuration',
          help: 'JSON for config the type does not list: actions, attachMap, mapRadiusKm, units, privatePayload.',
          field: JsonField(
            key: const Key('channel.otherConfig'),
            controller: _otherConfig,
            error: _errors['otherConfig'],
            minLines: 2,
          ),
        ),
        LabeledField(
          label: 'More settings',
          help: 'JSON: timezone, quietHours, groupWindowSeconds, backlogCap, editInPlace, '
              'deferWhileActiveSeconds, waitForEnrichmentSeconds, acceptExercise, language.',
          field: JsonField(
            key: const Key('channel.more'),
            controller: _more,
            error: _errors['more'],
            hint: '{"quietHours": {"start": "22:00", "end": "07:00", "bypassSeverity": "critical"}}',
            minLines: 2,
          ),
        ),
        if (urlRefused) ...<Widget>[
          const ResultPanel(
            title: 'URL refused',
            tone: StatusTone.error,
            message: 'The outbound URL policy refuses this destination. Allow it under System → Security, or use another URL.',
          ),
          const SizedBox(height: 12),
        ],
        FormActions(
          busy: busy,
          saveLabel: _creating ? 'Create Channel' : 'Save Changes',
          onSave: _save,
          onReset: () => setState(() {
            _adopt();
            _errors = const <String, String>{};
            write = const WriteIdle();
          }),
          leading: <Widget>[if (!urlRefused) WriteStatusLine(state: write)],
        ),
      ],
    );
  }
}

/// A channel's latest deliveries (`listChannelDeliveries`), by status.
class DeliveriesCard extends ConsumerStatefulWidget {
  /// Creates the card for channel [channelId].
  const DeliveriesCard({super.key, required this.channelId});

  /// The channel.
  final String channelId;

  @override
  ConsumerState<DeliveriesCard> createState() => _DeliveriesCardState();
}

class _DeliveriesCardState extends ConsumerState<DeliveriesCard> {
  String? _status;

  @override
  Widget build(BuildContext context) {
    final query = (channelId: widget.channelId, status: _status);
    return SectionCard(
      key: const Key('channel.deliveries'),
      title: 'Recent deliveries',
      actions: <Widget>[
        SizedBox(
          width: 160,
          child: WireDropdown(
            key: const Key('channel.deliveries.status'),
            value: _status ?? 'all',
            values: const <String>['all', ...deliveryStatuses],
            labels: const <String, String>{'all': 'Every status'},
            onChanged: (v) => setState(() => _status = v == 'all' ? null : v),
          ),
        ),
        IconButton(
          tooltip: 'Refresh',
          onPressed: () => ref.invalidate(channelDeliveriesProvider(query)),
          icon: const Icon(Icons.refresh),
        ),
      ],
      child: AsyncView<List<Json>>(
        value: ref.watch(channelDeliveriesProvider(query)),
        onRetry: () => ref.invalidate(channelDeliveriesProvider(query)),
        data: (rows) => DataTableCard<Json>(
          rows: rows,
          empty: 'No deliveries.',
          columns: <TableColumnSpec<Json>>[
            TableColumnSpec<Json>(
              label: 'Event',
              cell: (d) => Text('${d['event']}${d['alertId'] == null ? '' : ' · alert ${d['alertId']}'}'),
            ),
            TableColumnSpec<Json>(label: 'Kind', cell: (d) => Text(wireText('${d['kind'] ?? 'send'}'))),
            TableColumnSpec<Json>(
              label: 'Status',
              cell: (d) => StatusLabel(
                label: wireText('${d['status']}'),
                tone: deliveryTone(d['status']),
                tooltip: d['lastError'] as String?,
              ),
            ),
            TableColumnSpec<Json>(label: 'Attempts', numeric: true, cell: (d) => Text('${d['attempts']}')),
            TableColumnSpec<Json>(
              label: 'Delivered / next',
              cell: (d) => Text(
                d['deliveredAt'] != null ? whenText(d['deliveredAt']) : 'Next ${whenText(d['nextAttemptAt'])}',
              ),
            ),
            TableColumnSpec<Json>(
              label: 'Note',
              cell: (d) => Text(
                <String>[
                  if (d['deferredReason'] != null) 'held: ${wireText('${d['deferredReason']}')}',
                  if (d['escalationStep'] != null) 'escalation step ${d['escalationStep']}',
                  if (d['note'] != null) '${d['note']}',
                ].join(' · '),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DeleteChannelCard extends ConsumerStatefulWidget {
  const _DeleteChannelCard({required this.channel});

  final Json channel;

  @override
  ConsumerState<_DeleteChannelCard> createState() => _DeleteChannelCardState();
}

class _DeleteChannelCardState extends ConsumerState<_DeleteChannelCard> with WriteTracking<_DeleteChannelCard> {
  bool _confirming = false;

  Future<void> _delete() async {
    final id = '${widget.channel['id']}';
    final dio = ref.read(backendDioProvider);
    final ok = await track(() async {
      await jsonCall(dio, 'DELETE', channelPath(id));
      try {
        await jsonObjectCall(dio, 'GET', channelPath(id));
      } on ProblemException catch (e) {
        if (e.status == 404) {
          return true;
        }
        rethrow;
      }
      throw const WriteNotConfirmedException('The channel still reads back.');
    });
    if (ok == true && mounted) {
      ref.invalidate(channelsProvider);
      context.go(alertChannelsPath);
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    title: 'Delete',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (_confirming)
          ConfirmRow(
            message: 'Delete "${widget.channel['name']}"?',
            action: 'Delete',
            confirmKey: const Key('channel.delete.confirm'),
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
              key: const Key('channel.delete'),
              label: 'Delete Channel',
              onPressed: busy ? null : () => setState(() => _confirming = true),
            ),
          ),
        if (write is WriteFailed) statusLine,
      ],
    ),
  );
}
