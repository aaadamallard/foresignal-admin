import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/access.dart';
import '../../core/format/instant_text.dart';
import '../../core/ownership.dart';
import '../../core/permissions.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_drafts.dart' show instantProblem;
import '../forecasting/forecasting_widgets.dart';
import '../vetting/vetting_drafts.dart' show toJsonMap;
import 'alert_inbox.dart';
import 'alerts_drafts.dart';
import 'alerts_providers.dart';

/// What a rule's status reads: disabled, muted, snoozed or enabled.
Widget ruleStatusLabel(Json rule) {
  if (rule['enabled'] == false) {
    return const StatusLabel(label: 'Disabled', tone: StatusTone.neutral);
  }
  if (rule['mutedUntil'] != null) {
    return StatusLabel(
      label: 'Muted',
      tone: StatusTone.warning,
      tooltip: 'Until ${whenText(rule['mutedUntil'])}: alerts are recorded but not sent.',
    );
  }
  if (rule['snoozedUntil'] != null) {
    return StatusLabel(
      label: 'Snoozed',
      tone: StatusTone.warning,
      tooltip: 'Until ${whenText(rule['snoozedUntil'])}: matches are recorded as suppressed.',
    );
  }
  if (rule['lastError'] != null) {
    return StatusLabel(label: 'Error', tone: StatusTone.error, tooltip: '${rule['lastError']}');
  }
  return const StatusLabel(label: 'Enabled', tone: StatusTone.ok);
}

/// The text for a trigger refusal code, or `null` to show the backend's.
String? triggerProblemText(String? code) => switch (code) {
  'TRIGGER_PATH_VOLATILE' =>
    'A condition reads a payload path that changes on every observation (such as a position '
        'or timestamp), so the rule would fire constantly. Choose a stable path.',
  'PLACES_UNAVAILABLE' => 'Places are not available on this backend, so a near clause with placeIds cannot be used.',
  'FEATURE_UNAVAILABLE' =>
    'A setting needs data the chosen sources do not have (forecastHorizon needs validFrom).',
  'GEOFENCE_TOO_SMALL_FOR_HYSTERESIS' => 'The geofence is too small for its hysteresis band. Shrink hysteresisMeters.',
  'WINDOW_RULE_INVALID' => 'The window does not fit the rule type, or a record-only setting was given to a windowed rule.',
  'UNKNOWN_REGION' => 'A region code in geofenceRef is not known.',
  'REFERENCE_DATA_MISSING' => 'geofenceRef needs region reference data that is not loaded on this backend.',
  _ => null,
};

/// The trigger rules (Screens §G): name, type, severity, scope, status and
/// counts, with **New Trigger**. A rule belongs to the user who created it
/// (`ownerPrincipalId`): a signed-in user lists only their own, and an admin
/// who manages users sees every rule with whose it is.
class TriggersPanel extends ConsumerWidget {
  /// Creates the panel.
  const TriggersPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    final access = ref.watch(accessProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            const Spacer(),
            IconButton(
              tooltip: 'Refresh',
              onPressed: () => ref.invalidate(triggersProvider),
              icon: const Icon(Icons.refresh),
            ),
            const SizedBox(width: 8),
            TonalButton(
              key: const Key('triggers.builder'),
              label: 'Alert Builder',
              icon: Icons.account_tree_outlined,
              onPressed: () => context.go(alertBuilderPath),
            ),
            const SizedBox(width: 8),
            PermissionGate(
              permission: Permissions.selfAlerts,
              child: FilledButton.icon(
                key: const Key('triggers.new'),
                onPressed: () => context.go(alertNewTriggerPath),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('New Trigger'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        AsyncView<List<Json>>(
          value: ref.watch(triggersProvider),
          onRetry: () => ref.invalidate(triggersProvider),
          data: (rules) => DataTableCard<Json>(
            key: const Key('triggers.table'),
            rows: ownedByCaller(access, rules, (r) => r['ownerPrincipalId'] as String?),
            empty: seesEveryOwner(access) ? 'No trigger rules yet.' : 'You have no trigger rules yet.',
            onTap: (r) => context.go(alertTriggerPath('${r['id']}')),
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(
                label: 'Name',
                cell: (r) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('${r['name']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                    if ((r['tags'] as List<Object?>?)?.isNotEmpty == true)
                      Text((r['tags']! as List<Object?>).join(', '), style: TextStyle(color: muted, fontSize: 12)),
                  ],
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Type',
                cell: (r) {
                  final type = '${r['type'] ?? 'record'}';
                  return Text(isWindowed(type) ? wireText(type) : 'Record · ${r['mode'] ?? 'match'}');
                },
              ),
              TableColumnSpec<Json>(label: 'Severity', cell: (r) => severityLabel(r['severity'] ?? 'warning')),
              TableColumnSpec<Json>(
                label: 'Owner',
                cell: (r) => OwnershipChip(
                  key: Key('triggers.owner.${r['id']}'),
                  ownership: ownershipOf(access, r['ownerPrincipalId'] as String?),
                  ownerPrincipalId: r['ownerPrincipalId'] as String?,
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Sources',
                cell: (r) {
                  final s = (r['sources'] as List<Object?>?) ?? const <Object?>[];
                  return Text(s.isEmpty ? 'All' : s.join(', '), maxLines: 1, overflow: TextOverflow.ellipsis);
                },
              ),
              const TableColumnSpec<Json>(label: 'Status', cell: ruleStatusLabel),
              TableColumnSpec<Json>(label: 'Last fired', cell: (r) => Text(whenText(r['lastFiredAt']))),
              TableColumnSpec<Json>(
                label: 'Open / all',
                numeric: true,
                cell: (r) => Text('${r['openAlertCount'] ?? 0} / ${r['alertCount'] ?? 0}'),
              ),
              TableColumnSpec<Json>(
                label: 'Actions',
                cell: (r) => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextButton(
                      key: Key('triggers.edit.${r['id']}'),
                      onPressed: () => context.go(alertTriggerPath('${r['id']}')),
                      child: const Text('Edit'),
                    ),
                    TextButton(
                      key: Key('triggers.builderEdit.${r['id']}'),
                      onPressed: () => context.go(alertBuilderRulePath('${r['id']}')),
                      child: const Text('Builder'),
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

/// One trigger rule (`/alerts/triggers/:ruleId`), or a new one
/// (`/alerts/new-trigger`): the rule form, and for a stored rule its
/// counts, a dry-run test, mute and snooze, its latest alerts and delete.
class TriggerScreen extends ConsumerWidget {
  /// Creates the page for rule [ruleId], or for a new rule when `null`.
  const TriggerScreen({super.key, this.ruleId});

  /// The rule id; `null` authors a new rule.
  final String? ruleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ruleId;
    final crumbs = <Crumb>[const Crumb('Alerts', alertsPath), const Crumb('Triggers', alertTriggersPath)];
    if (id == null) {
      return ListView(
        padding: const EdgeInsets.all(28),
        children: <Widget>[
          PageHeader(title: 'New Trigger', crumbs: <Crumb>[...crumbs, const Crumb('New')]),
          const SectionCard(title: 'Rule', child: TriggerForm()),
        ],
      );
    }
    final rule = ref.watch(triggerProvider(id));
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: rule.value?['name'] as String? ?? 'Trigger',
          crumbs: <Crumb>[...crumbs, Crumb(rule.value?['name'] as String? ?? id)],
          titleTrailing: <Widget>[if (rule.value case final r?) ruleStatusLabel(r)],
          actions: <Widget>[
            TextButton.icon(
              key: const Key('trigger.openBuilder'),
              onPressed: () => context.go(alertBuilderRulePath(id)),
              icon: const Icon(Icons.account_tree_outlined, size: 18),
              label: const Text('Open in Builder'),
            ),
            IconButton(
              tooltip: 'Refresh',
              onPressed: () {
                invalidateTriggers(ref, id);
                ref.invalidate(ruleAlertsProvider(id));
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        AsyncView<Json>(
          value: rule,
          onRetry: () => ref.invalidate(triggerProvider(id)),
          data: (r) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: SectionCard(
                      title: 'Rule',
                      subtitle: 'Saving replaces the rule whole.',
                      child: TriggerForm(key: ValueKey<String>('form.$id'), rule: r),
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 440,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        _RuleCountsCard(rule: r),
                        const SizedBox(height: 16),
                        TriggerPauseCard(key: ValueKey<String>('pause.$id.${r['updatedAt']}'), rule: r),
                        const SizedBox(height: 16),
                        _DeleteRuleCard(rule: r),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TriggerTestCard(ruleId: id),
              const SizedBox(height: 16),
              _RuleAlertsCard(ruleId: id),
            ],
          ),
        ),
      ],
    );
  }
}

/// The trigger rule form. A new rule is created with `createTrigger` and
/// opened; a stored one is replaced with `updateTrigger` and confirmed by
/// re-reading it.
class TriggerForm extends ConsumerStatefulWidget {
  /// Creates the form for [rule], or for a new rule.
  const TriggerForm({super.key, this.rule});

  /// The stored rule; `null` for a new one.
  final Json? rule;

  @override
  ConsumerState<TriggerForm> createState() => _TriggerFormState();
}

class _TriggerFormState extends ConsumerState<TriggerForm> with WriteTracking<TriggerForm> {
  late TriggerDraft _draft;
  final Map<String, TextEditingController> _c = <String, TextEditingController>{
    for (final k in <String>['name', 'sources', 'kinds', 'tags', 'cooldown', 'message', 'conditions', 'window', 'more'])
      k: TextEditingController(),
  };
  final TextEditingController _watchPath = TextEditingController();
  String? _watchlist;
  Map<String, String> _errors = const <String, String>{};

  bool get _creating => widget.rule == null;

  @override
  void initState() {
    super.initState();
    _adopt();
  }

  void _adopt() {
    _draft = widget.rule == null ? TriggerDraft() : TriggerDraft.of(widget.rule!);
    _c['name']!.text = _draft.name;
    _c['sources']!.text = _draft.sources;
    _c['kinds']!.text = _draft.kinds;
    _c['tags']!.text = _draft.tags;
    _c['cooldown']!.text = _draft.cooldown;
    _c['message']!.text = _draft.messageTemplate;
    _c['conditions']!.text = _draft.conditionsText;
    _c['window']!.text = _draft.windowText;
    _c['more']!.text = _draft.moreText;
  }

  @override
  void dispose() {
    for (final c in _c.values) {
      c.dispose();
    }
    _watchPath.dispose();
    super.dispose();
  }

  void _collect() {
    _draft
      ..name = _c['name']!.text
      ..sources = _c['sources']!.text
      ..kinds = _c['kinds']!.text
      ..tags = _c['tags']!.text
      ..cooldown = _c['cooldown']!.text
      ..messageTemplate = _c['message']!.text
      ..conditionsText = _c['conditions']!.text
      ..windowText = _c['window']!.text
      ..moreText = _c['more']!.text;
  }

  void _setType(String type) {
    setState(() {
      _draft.type = type;
      if (isWindowed(type) && _c['window']!.text.trim().isEmpty) {
        _c['window']!.text = jsonObjectText(windowTemplates[type]);
      }
    });
  }

  void _addWatchlistCondition() {
    final id = _watchlist;
    if (id == null) {
      return;
    }
    final List<Map<String, Object?>> current;
    try {
      current = parseObjectArray(_c['conditions']!.text);
    } on FormatException catch (e) {
      setState(() => _errors = <String, String>{'conditions': e.message});
      return;
    }
    _c['conditions']!.text = jsonArrayText(<Object?>[...current, watchlistCondition(id, path: _watchPath.text)]);
    setState(() => _errors = const <String, String>{});
  }

  Future<void> _save() async {
    _collect();
    setState(() => _errors = _draft.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final dio = ref.read(backendDioProvider);
    final body = _draft.toJson();
    final id = widget.rule?['id'] as String?;
    if (id == null) {
      final created = await track(() => jsonObjectCall(dio, 'POST', '/v1/triggers', body: body));
      if (created != null && mounted) {
        ref.invalidate(triggersProvider);
        context.go(alertTriggerPath('${created['id']}'));
      }
      return;
    }
    final name = _draft.name.trim();
    final saved = await track(
      () => writeThenConfirm<Json>(
        write: () => jsonCall(dio, 'PUT', triggerPath(id), body: body),
        reread: () => jsonObjectCall(dio, 'GET', triggerPath(id)),
        confirm: (r) => r['name'] == name && r['enabled'] == _draft.enabled && r['severity'] == _draft.severity
            ? null
            : 'The rule reads back differently.',
      ),
    );
    if (saved != null) {
      invalidateTriggers(ref, id);
    }
  }

  Widget _field(String label, String key, {String? help, String? hint, String? errorKey, int maxLines = 1}) =>
      LabeledField(
        label: label,
        help: help,
        field: PlainField(
          key: Key('trigger.$key'),
          controller: _c[key]!,
          hint: hint,
          error: _errors[errorKey ?? key],
          maxLines: maxLines,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final windowed = isWindowed(_draft.type);
    final policies = ref.watch(escalationPoliciesProvider).value ?? const <Json>[];
    final watchlists = ref.watch(watchlistsProvider).value ?? const <Json>[];
    final problem = triggerProblemText(failedCode);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _field('Name', 'name'),
        LabeledField(
          label: 'Enabled',
          field: Align(
            alignment: Alignment.centerLeft,
            child: Switch(
              key: const Key('trigger.enabled'),
              value: _draft.enabled,
              onChanged: (v) => setState(() => _draft.enabled = v),
            ),
          ),
        ),
        LabeledField(
          label: 'Type',
          help: windowed
              ? 'Evaluated over a window: count of distinct entities, absence, or an anomaly against a baseline.'
              : 'Evaluated on each new version of a record.',
          field: WireDropdown(
            key: const Key('trigger.type'),
            value: _draft.type,
            values: ruleTypes,
            onChanged: _setType,
          ),
        ),
        if (!windowed)
          LabeledField(
            label: 'Mode',
            help: 'Match fires on every matching version; enter when a record starts matching; exit when it stops.',
            field: WireDropdown(
              key: const Key('trigger.mode'),
              value: _draft.mode,
              values: ruleModes,
              onChanged: (v) => setState(() => _draft.mode = v),
            ),
          ),
        LabeledField(
          label: 'Severity',
          field: WireDropdown(
            key: const Key('trigger.severity'),
            value: _draft.severity,
            values: severities,
            onChanged: (v) => setState(() => _draft.severity = v),
          ),
        ),
        _field('Sources', 'sources', help: 'Source ids, comma-separated; empty for every source.', hint: 'usgs-earthquakes'),
        _field('Kinds', 'kinds', help: 'Comma-separated; empty for every kind.'),
        _field('Tags', 'tags', help: 'Copied to each alert. Lower-case, comma-separated.'),
        LabeledField(
          label: 'Conditions',
          help: 'A JSON array, all of which must hold: {"path": "mag", "op": ">=", "value": 5}. '
              'inWatchlist / notInWatchlist take a watchlist id; approach conditions use "type": "approach".',
          field: JsonField(
            key: const Key('trigger.conditions'),
            controller: _c['conditions']!,
            error: _errors['conditions'],
            hint: '[{"path": "mag", "op": ">=", "value": 5}]',
            minLines: 3,
          ),
        ),
        LabeledField(
          label: 'Scope to a watchlist',
          help: 'Adds an inWatchlist condition. Leave the path empty to match on each source\'s declared identity.',
          field: Wrap(
            spacing: 8,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 240,
                child: WireDropdown(
                  key: const Key('trigger.watchlist'),
                  value: _watchlist,
                  values: <String>[for (final w in watchlists) '${w['id']}'],
                  labels: <String, String>{for (final w in watchlists) '${w['id']}': '${w['name']} (${w['identity']})'},
                  hint: watchlists.isEmpty ? 'No watchlists' : 'Watchlist',
                  onChanged: (v) => setState(() => _watchlist = v),
                ),
              ),
              SizedBox(
                width: 180,
                child: PlainField(key: const Key('trigger.watchlist.path'), controller: _watchPath, hint: 'Path (optional)'),
              ),
              TonalButton(
                key: const Key('trigger.watchlist.add'),
                label: 'Add Condition',
                onPressed: _watchlist == null ? null : _addWatchlistCondition,
              ),
            ],
          ),
        ),
        if (windowed)
          LabeledField(
            label: 'Window',
            help: switch (_draft.type) {
              'count' => 'Fires when the count of distinct entities in the window crosses the threshold.',
              'absence' => 'Fires when nothing matches for the window while the sources are healthy.',
              _ => 'Per-bucket counts against a learned baseline.',
            },
            field: JsonField(key: const Key('trigger.window'), controller: _c['window']!, error: _errors['window']),
          ),
        _field('Cooldown', 'cooldown', help: 'Quiet time after an alert, such as 15m or 7d; empty for none.', hint: '15m'),
        _field(
          'Message',
          'message',
          help: 'Placeholders such as {{name}}, {{title}}, {{severity}}, {{payload.mag}}; empty for the default.',
          maxLines: 3,
        ),
        LabeledField(
          label: 'Escalation policy',
          field: WireDropdown(
            key: const Key('trigger.policy'),
            value: _draft.escalationPolicyId ?? 'none',
            values: <String>['none', for (final p in policies) '${p['id']}'],
            labels: <String, String>{'none': 'None', for (final p in policies) '${p['id']}': '${p['name']}'},
            onChanged: (v) => setState(() => _draft.escalationPolicyId = v == 'none' ? null : v),
          ),
        ),
        LabeledField(
          label: 'More settings',
          help: 'JSON for everything else the rule takes: geofence, near, geofenceRef, autoResolve, '
              'activeWindow, maxAlertsPerHour, enrich and the rest.',
          field: JsonField(
            key: const Key('trigger.more'),
            controller: _c['more']!,
            error: _errors['more'],
            hint: '{"near": {"placeId": "port-of-odesa", "radiusKm": 25}}',
            minLines: 3,
          ),
        ),
        if (problem != null) ...<Widget>[
          ResultPanel(title: 'Not saved', tone: StatusTone.error, message: problem),
          const SizedBox(height: 12),
        ],
        FormActions(
          busy: busy,
          saveLabel: _creating ? 'Create Trigger' : 'Save Changes',
          onSave: _save,
          onReset: () => setState(() {
            _adopt();
            _errors = const <String, String>{};
            write = const WriteIdle();
          }),
          leading: <Widget>[if (problem == null) WriteStatusLine(state: write)],
        ),
      ],
    );
  }
}

class _RuleCountsCard extends StatelessWidget {
  const _RuleCountsCard({required this.rule});

  final Json rule;

  @override
  Widget build(BuildContext context) {
    final feedback = jsonMap(rule, 'feedbackCounts');
    final window = jsonMap(rule, 'windowStatus');
    final states = jsonMap(window, 'states');
    return SectionCard(
      key: const Key('trigger.counts'),
      title: 'Activity',
      child: KeyValueList(
        keyWidth: 150,
        entries: <MapEntry<String, Object>>[
          MapEntry<String, Object>('Alerts', '${rule['alertCount'] ?? 0} (${rule['openAlertCount'] ?? 0} open)'),
          MapEntry<String, Object>('Last fired', whenText(rule['lastFiredAt'])),
          MapEntry<String, Object>('Suppressed by cap', '${rule['suppressedCount'] ?? 0}'),
          if (rule['lastStormAt'] != null) MapEntry<String, Object>('Last storm', whenText(rule['lastStormAt'])),
          if (feedback != null)
            MapEntry<String, Object>(
              'Feedback',
              alertFeedback.map((f) => '${wireText(f)} ${feedback[f] ?? 0}').join(' · '),
            ),
          if (rule['lastError'] != null)
            MapEntry<String, Object>('Last error', '${rule['lastError']} (${whenText(rule['lastErrorAt'])})'),
          if (rule['anchorStatus'] != null) MapEntry<String, Object>('Anchor', wireText('${rule['anchorStatus']}')),
          if (states != null)
            MapEntry<String, Object>(
              'Window groups',
              '${window!['groups']}: ${states.entries.map((e) => '${e.value} ${e.key}').join(', ')}',
            ),
          if (window?['learningUntil'] != null)
            MapEntry<String, Object>('Learning until', whenText(window!['learningUntil'])),
          MapEntry<String, Object>('Updated', whenText(rule['updatedAt'])),
        ],
      ),
    );
  }
}

/// Mute (alerts recorded, not sent; escalations stop) and snooze (matches
/// recorded as suppressed) for one rule, each up to seven days and
/// confirmed by re-reading the rule.
class TriggerPauseCard extends ConsumerStatefulWidget {
  /// Creates the card for [rule].
  const TriggerPauseCard({super.key, required this.rule});

  /// The rule, as read.
  final Json rule;

  @override
  ConsumerState<TriggerPauseCard> createState() => _TriggerPauseCardState();
}

class _TriggerPauseCardState extends ConsumerState<TriggerPauseCard> with WriteTracking<TriggerPauseCard> {
  final TextEditingController _for = TextEditingController(text: '4h');
  final TextEditingController _until = TextEditingController();
  Map<String, String> _errors = const <String, String>{};

  String get _id => '${widget.rule['id']}';

  @override
  void dispose() {
    _for.dispose();
    _until.dispose();
    super.dispose();
  }

  Future<void> _run(
    Future<Object?> Function(String id) write,
    String member, {
    required bool set,
  }) async {
    final dio = ref.read(backendDioProvider);
    final ok = await track(
      () => writeThenConfirm<Json>(
        write: () => write(_id),
        reread: () => jsonObjectCall(dio, 'GET', triggerPath(_id)),
        confirm: (r) => (r[member] != null) == set ? null : 'The rule does not read as expected.',
      ),
    );
    if (ok != null) {
      invalidateTriggers(ref, _id);
    }
  }

  Future<void> _pause({required bool mute}) async {
    final d = ExpiryDraft(forText: _for.text)..untilText = _until.text;
    setState(
      () => _errors = d.validate(
        min: mute ? const Duration(hours: 1) : null,
        max: const Duration(days: 7),
      ),
    );
    if (_errors.isNotEmpty) {
      return;
    }
    final dio = ref.read(backendDioProvider);
    final action = mute ? 'mute' : 'snooze';
    await _run(
      (id) => jsonCall(dio, 'POST', triggerPath(id, action), body: d.toJson()),
      mute ? 'mutedUntil' : 'snoozedUntil',
      set: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final dio = ref.read(backendDioProvider);
    final muted = widget.rule['mutedUntil'];
    final snoozed = widget.rule['snoozedUntil'];
    return SectionCard(
      key: const Key('trigger.pause'),
      title: 'Mute or snooze',
      subtitle: 'Mute: alerts are recorded but not sent, and escalations stop (1 hour to 7 days). '
          'Snooze: matches are recorded as suppressed alerts (up to 7 days).',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (muted != null)
            _PauseRow(
              text: 'Muted until ${whenText(muted)}',
              action: 'Unmute',
              actionKey: const Key('trigger.unmute'),
              onPressed: busy ? null : () => _run((id) => jsonCall(dio, 'DELETE', triggerPath(id, 'mute')), 'mutedUntil', set: false),
            ),
          if (snoozed != null)
            _PauseRow(
              text: 'Snoozed until ${whenText(snoozed)}',
              action: 'Unsnooze',
              actionKey: const Key('trigger.unsnooze'),
              onPressed: busy
                  ? null
                  : () => _run((id) => jsonCall(dio, 'DELETE', triggerPath(id, 'snooze')), 'snoozedUntil', set: false),
            ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 90,
                child: PlainField(key: const Key('trigger.pause.for'), controller: _for, hint: '4h', error: _errors['for']),
              ),
              const Text('or until'),
              SizedBox(
                width: 200,
                child: PlainField(
                  key: const Key('trigger.pause.until'),
                  controller: _until,
                  hint: '2026-10-25T06:00Z',
                  error: _errors['until'],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            children: <Widget>[
              TonalButton(
                key: const Key('trigger.mute'),
                label: muted == null ? 'Mute' : 'Mute Again',
                icon: Icons.volume_off,
                onPressed: busy ? null : () => _pause(mute: true),
              ),
              OutlinedButton.icon(
                key: const Key('trigger.snooze'),
                onPressed: busy ? null : () => _pause(mute: false),
                icon: const Icon(Icons.snooze, size: 18),
                label: Text(snoozed == null ? 'Snooze' : 'Snooze Again'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          statusLine,
        ],
      ),
    );
  }
}

class _PauseRow extends StatelessWidget {
  const _PauseRow({required this.text, required this.action, required this.actionKey, required this.onPressed});

  final String text;
  final String action;
  final Key actionKey;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Row(
      children: <Widget>[
        Expanded(child: Text(text)),
        TextButton(key: actionKey, onPressed: onPressed, child: Text(action)),
      ],
    ),
  );
}

/// The dry-run test of a stored rule (`testTrigger`) over a time range, raw
/// or simulated with cooldown, snooze, the storm cap and active windows.
class TriggerTestCard extends ConsumerStatefulWidget {
  /// Creates the card for rule [ruleId].
  const TriggerTestCard({super.key, required this.ruleId});

  /// The rule.
  final String ruleId;

  @override
  ConsumerState<TriggerTestCard> createState() => _TriggerTestCardState();
}

class _TriggerTestCardState extends ConsumerState<TriggerTestCard> {
  final TextEditingController _since = TextEditingController();
  final TextEditingController _until = TextEditingController();
  final TextEditingController _limit = TextEditingController(text: '100');
  bool _simulate = false;
  bool _running = false;
  Json? _result;
  Object? _error;
  Map<String, String> _errors = const <String, String>{};

  @override
  void dispose() {
    _since.dispose();
    _until.dispose();
    _limit.dispose();
    super.dispose();
  }

  Future<void> _test() async {
    final limit = int.tryParse(_limit.text.trim());
    final errors = <String, String>{
      'since': ?instantProblem(_since.text),
      'until': ?instantProblem(_until.text),
      if (limit == null || limit < 1 || limit > 1000) 'limit': '1 to 1000.',
    };
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    setState(() {
      _running = true;
      _error = null;
    });
    final api = ref.read(foresignalApiProvider);
    try {
      final got = await callApiRequired(
        () => api.getTriggersApi().testTrigger(
          ruleId: widget.ruleId,
          since: parseInstantText(_since.text),
          until: parseInstantText(_until.text),
          limit: limit,
          simulate: _simulate,
        ),
      );
      if (mounted) {
        setState(() => _result = toJsonMap(api.serializers, got));
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _error = e);
      }
    } finally {
      if (mounted) {
        setState(() => _running = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final r = _result;
    return SectionCard(
      key: const Key('trigger.test'),
      title: 'Test against stored data',
      subtitle: 'Runs the saved rule over stored versions and creates nothing. Save changes first to test them.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            spacing: 12,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 200,
                child: PlainField(
                  key: const Key('trigger.test.since'),
                  controller: _since,
                  hint: 'Since (default 24 h ago)',
                  error: _errors['since'],
                ),
              ),
              SizedBox(
                width: 200,
                child: PlainField(
                  key: const Key('trigger.test.until'),
                  controller: _until,
                  hint: 'Until (default now)',
                  error: _errors['until'],
                ),
              ),
              SizedBox(
                width: 90,
                child: PlainField(key: const Key('trigger.test.limit'), controller: _limit, error: _errors['limit']),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Checkbox(
                    key: const Key('trigger.test.simulate'),
                    value: _simulate,
                    onChanged: (v) => setState(() => _simulate = v ?? false),
                  ),
                  const Text('Simulate cooldown, snooze and the storm cap'),
                ],
              ),
              FilledButton.icon(
                key: const Key('trigger.test.run'),
                onPressed: _running ? null : _test,
                icon: _running
                    ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))
                    : const Icon(Icons.play_arrow, size: 18),
                label: const Text('Run Test'),
              ),
            ],
          ),
          if (_error case final e?) ...<Widget>[const SizedBox(height: 12), ErrorBanner(error: e)],
          if (r != null) ...<Widget>[const SizedBox(height: 16), _TestResult(result: r)],
        ],
      ),
    );
  }
}

class _TestResult extends StatelessWidget {
  const _TestResult({required this.result});

  final Json result;

  @override
  Widget build(BuildContext context) {
    final matches = jsonList(result, 'matches');
    final evaluations = jsonList(result, 'windowEvaluations');
    final count = result['matchCount'] ?? matches.length;
    return Column(
      key: const Key('trigger.test.result'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ResultPanel(
          title: '$count ${count == 1 ? 'match' : 'matches'}${result['truncated'] == true ? ' (more than shown)' : ''}',
          tone: count == 0 ? StatusTone.neutral : StatusTone.ok,
          details: <MapEntry<String, Object>>[
            if (result['evaluatedFrom'] != null) MapEntry<String, Object>('From', whenText(result['evaluatedFrom'])),
            if (result['fromSeq'] != null) MapEntry<String, Object>('Sequence', '${result['fromSeq']} – ${result['toSeq']}'),
            if (result['simulated'] == true) ...<MapEntry<String, Object>>[
              MapEntry<String, Object>('Would fire', '${result['wouldFire'] ?? 0}'),
              MapEntry<String, Object>('Would suppress', '${result['wouldSuppress'] ?? 0}'),
            ],
            if (result['approximate'] == true)
              MapEntry<String, Object>('Approximate', '${result['approximateReason'] ?? 'versions only'}'),
            if (result['truncatedByRetention'] == true)
              const MapEntry<String, Object>('Retention', 'The range starts before the oldest retained data.'),
            if (result['enrich'] == true)
              const MapEntry<String, Object>('Enrichment', 'Would add a context summary (not run in tests).'),
            for (final w in jsonList(result, 'warnings')) MapEntry<String, Object>('${w['code']}', '${w['message']}'),
          ],
        ),
        if (matches.isNotEmpty) ...<Widget>[
          const SizedBox(height: 12),
          DataTableCard<Json>(
            key: const Key('trigger.test.matches'),
            rows: matches,
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(label: 'Record', cell: (m) => Text('${m['source']}/${m['externalId']}')),
              TableColumnSpec<Json>(label: 'Title', cell: (m) => Text('${m['title'] ?? '—'}')),
              TableColumnSpec<Json>(label: 'Kind', cell: (m) => Text('${m['kind']}')),
              TableColumnSpec<Json>(label: 'Observed', cell: (m) => Text(whenText(m['observedAt']))),
              TableColumnSpec<Json>(label: 'Seq', numeric: true, cell: (m) => Text('${m['seq']}')),
            ],
          ),
        ],
        if (evaluations.isNotEmpty) ...<Widget>[
          const SizedBox(height: 12),
          DataTableCard<Json>(
            key: const Key('trigger.test.windows'),
            rows: evaluations,
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(label: 'At', cell: (w) => Text(whenText(w['at']))),
              TableColumnSpec<Json>(label: 'Group', cell: (w) => Text('${w['groupKey'] ?? '—'}')),
              TableColumnSpec<Json>(label: 'Value', numeric: true, cell: (w) => Text('${w['value'] ?? '—'}')),
              TableColumnSpec<Json>(label: 'State', cell: (w) => stateLabel(w['state'])),
            ],
          ),
        ],
      ],
    );
  }
}

class _RuleAlertsCard extends ConsumerWidget {
  const _RuleAlertsCard({required this.ruleId});

  final String ruleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) => SectionCard(
    key: const Key('trigger.alerts'),
    title: 'Latest alerts',
    subtitle: 'Including suppressed ones.',
    child: AsyncView<List<Json>>(
      value: ref.watch(ruleAlertsProvider(ruleId)),
      onRetry: () => ref.invalidate(ruleAlertsProvider(ruleId)),
      data: (alerts) => DataTableCard<Json>(
        rows: alerts,
        empty: 'This rule has not fired.',
        onTap: (a) => context.go(alertPath(a['id']! as int)),
        columns: <TableColumnSpec<Json>>[
          TableColumnSpec<Json>(label: 'Severity', cell: (a) => severityLabel(a['severity'])),
          TableColumnSpec<Json>(
            label: 'Alert',
            cell: (a) => ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Text('${a['message']}', maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
          ),
          TableColumnSpec<Json>(label: 'Fired', cell: (a) => Text(whenText(a['firedAt']))),
          const TableColumnSpec<Json>(label: 'State', cell: alertStateLabel),
          TableColumnSpec<Json>(
            label: 'Suppressed',
            cell: (a) => Text(a['suppressed'] == true ? wireText('${a['suppressedReason'] ?? 'yes'}') : '—'),
          ),
        ],
      ),
    ),
  );
}

class _DeleteRuleCard extends ConsumerStatefulWidget {
  const _DeleteRuleCard({required this.rule});

  final Json rule;

  @override
  ConsumerState<_DeleteRuleCard> createState() => _DeleteRuleCardState();
}

class _DeleteRuleCardState extends ConsumerState<_DeleteRuleCard> with WriteTracking<_DeleteRuleCard> {
  bool _confirming = false;

  Future<void> _delete() async {
    final id = '${widget.rule['id']}';
    final dio = ref.read(backendDioProvider);
    final ok = await track(() async {
      await jsonCall(dio, 'DELETE', triggerPath(id));
      try {
        await jsonObjectCall(dio, 'GET', triggerPath(id));
      } on ProblemException catch (e) {
        if (e.status == 404) {
          return true;
        }
        rethrow;
      }
      throw const WriteNotConfirmedException('The rule still reads back.');
    });
    if (ok == true && mounted) {
      ref.invalidate(triggersProvider);
      context.go(alertTriggersPath);
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    title: 'Delete',
    subtitle: 'Its alerts are kept.',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (_confirming)
          ConfirmRow(
            message: 'Delete "${widget.rule['name']}"?',
            action: 'Delete',
            confirmKey: const Key('trigger.delete.confirm'),
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
              key: const Key('trigger.delete'),
              label: 'Delete Rule',
              onPressed: busy ? null : () => setState(() => _confirming = true),
            ),
          ),
        if (write is WriteFailed) statusLine,
      ],
    ),
  );
}
