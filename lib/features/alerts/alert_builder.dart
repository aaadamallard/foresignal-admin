import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../sources/source_providers.dart';
import 'alert_area.dart';
import 'alert_builder_draft.dart';
import 'alert_inbox.dart' show severityLabel;
import 'alerts_drafts.dart';
import 'alerts_providers.dart';
import 'area_editor.dart';
import 'channels.dart';
import 'triggers.dart';

/// How long the relevance check may wait for the model before the request
/// counts as failed: a local model can take minutes on a long source list.
const Duration relevanceCheckTimeout = Duration(minutes: 3);

/// The channel types offered first, in this order; the rest follow by name.
const List<String> _preferredTypes = <String>[
  'email',
  'webpush',
  'webhook',
  'ntfy',
  'discord',
  'telegram',
  'pushover',
  'slack',
];

/// The four steps of the flow.
enum BuilderStep {
  /// Node 1: the sources whose records form the dataset.
  dataset('Dataset', 'Sources', Icons.dataset_outlined),

  /// Node 2: where a record must be.
  area('Area', 'Where it fires', Icons.place_outlined),

  /// Node 3: the kinds and conditions that make an alert.
  trigger('Trigger', 'Conditions and thresholds', Icons.filter_alt_outlined),

  /// Node 4: where the alerts go.
  delivery('Delivery', 'Channels', Icons.send_outlined);

  const BuilderStep(this.title, this.caption, this.icon);

  /// The node's heading.
  final String title;

  /// What the node configures.
  final String caption;

  /// The node's icon.
  final IconData icon;
}

/// The Alert Builder (`/alerts/builder`, `/alerts/builder/:ruleId`): a
/// trigger rule built as a four-node flow, Dataset → Area → Trigger →
/// Delivery, on the same rule and channel operations as the Triggers and
/// Channels tabs. A new rule starts empty; a stored one opens with its
/// sources, area, kinds, conditions and the channels that list it.
class AlertBuilderScreen extends ConsumerWidget {
  /// Creates the builder for rule [ruleId], or for a new rule when `null`.
  const AlertBuilderScreen({super.key, this.ruleId});

  /// The rule id; `null` builds a new rule.
  final String? ruleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ruleId;
    final rule = id == null ? null : ref.watch(triggerProvider(id));
    final channels = ref.watch(channelsProvider);
    final name = rule?.value?['name'] as String?;
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: id == null ? 'Alert Builder' : name ?? 'Alert Builder',
          crumbs: <Crumb>[
            const Crumb('Alerts', alertsPath),
            const Crumb('Triggers', alertTriggersPath),
            Crumb(id == null ? 'New alert' : name ?? id),
          ],
          subtitle: 'Choose the sources and the area, say what should fire, and pick where it goes.',
          titleTrailing: <Widget>[if (rule?.value case final r?) ruleStatusLabel(r)],
          actions: <Widget>[
            if (id != null)
              TextButton.icon(
                key: const Key('builder.openForm'),
                onPressed: () => context.go(alertTriggerPath(id)),
                icon: const Icon(Icons.tune, size: 18),
                label: const Text('Full rule form'),
              ),
          ],
        ),
        AsyncView<List<Json>>(
          value: channels,
          onRetry: () => ref.invalidate(channelsProvider),
          data: (channelList) => rule == null
              ? AlertBuilder(key: const ValueKey<String>('builder.new'), channels: channelList)
              : AsyncView<Json>(
                  value: rule,
                  onRetry: () => ref.invalidate(triggerProvider(id!)),
                  data: (r) => AlertBuilder(
                    key: ValueKey<String>('builder.$id'),
                    rule: r,
                    channels: channelList,
                  ),
                ),
        ),
      ],
    );
  }
}

/// The flow and the editor of its selected node, with Save; for a stored
/// rule also the dry run (in the Trigger node) and mute or snooze.
class AlertBuilder extends ConsumerStatefulWidget {
  /// Creates the builder for [rule] (`null` for a new one) over [channels].
  const AlertBuilder({super.key, this.rule, required this.channels});

  /// The stored rule, as read; `null` for a new one.
  final Json? rule;

  /// Every notification channel, as read.
  final List<Json> channels;

  @override
  ConsumerState<AlertBuilder> createState() => _AlertBuilderState();
}

class _AlertBuilderState extends ConsumerState<AlertBuilder> with WriteTracking<AlertBuilder> {
  late AlertBuilderDraft _d;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _search = TextEditingController();
  final List<TextEditingController> _paths = <TextEditingController>[];
  final List<TextEditingController> _values = <TextEditingController>[];
  final List<FocusNode> _pathFocus = <FocusNode>[];
  final Set<String> _openTypes = <String>{};
  BuilderStep _step = BuilderStep.dataset;
  Map<String, String> _errors = const <String, String>{};
  late final AreaLookup _lookup;

  RelevanceCheck? _check;
  bool _checking = false;
  Object? _checkError;

  /// The id of the rule once stored: the one opened, or the one just created.
  String? _ruleId;

  /// What the last save did to each channel, by channel id: `null` when
  /// routed as asked, or the error.
  Map<String, Object?> _routing = const <String, Object?>{};

  @override
  void initState() {
    super.initState();
    _ruleId = widget.rule?['id'] as String?;
    _lookup = AreaLookup(ref.read(backendDioProvider))..addListener(_onLookup);
    _adopt(widget.rule, widget.channels);
  }

  void _onLookup() {
    if (mounted) {
      setState(() {});
    }
  }

  /// Names the stored area's regions and places and finds whether its
  /// circle is a city, for the Area node.
  Future<void> _resolveArea() async {
    final area = _d.area;
    if (await _lookup.resolve(area) && mounted && identical(area, _d.area)) {
      setState(() {});
    }
  }

  void _adopt(Json? rule, List<Json> channels) {
    _d = rule == null ? AlertBuilderDraft() : AlertBuilderDraft.of(rule, channels);
    _name.text = _d.rule.name;
    for (final c in <ChangeNotifier>[..._paths, ..._values, ..._pathFocus]) {
      c.dispose();
    }
    _paths.clear();
    _values.clear();
    _pathFocus.clear();
    for (final c in _d.conditions) {
      _addControllers(c);
    }
    _openTypes
      ..clear()
      ..addAll(<String>[
        for (final c in channels)
          if (_d.channelIds.contains(c['id'])) '${c['type']}',
      ]);
    _resolveArea();
  }

  /// Adds the text controllers for [c]. Each pushes its text into the draft
  /// as it is typed, so the Trigger node's summary follows the row.
  void _addControllers(BuilderCondition c) {
    _paths.add(TextEditingController(text: c.path)..addListener(_onConditionText));
    _values.add(TextEditingController(text: c.value)..addListener(_onConditionText));
    _pathFocus.add(FocusNode());
  }

  void _onConditionText() {
    if (mounted) {
      setState(_collect);
    }
  }

  @override
  void dispose() {
    for (final c in <ChangeNotifier>[_name, _search, ..._paths, ..._values, ..._pathFocus, _lookup]) {
      c.dispose();
    }
    super.dispose();
  }

  bool get _creating => _ruleId == null;

  void _collect() {
    _d.rule.name = _name.text;
    for (var i = 0; i < _d.conditions.length; i++) {
      _d.conditions[i]
        ..path = _paths[i].text
        ..value = _values[i].text;
    }
  }

  // ---- Dataset ----

  void _toggleSource(String id, bool on) => setState(() {
    if (on && !_d.sources.contains(id)) {
      _d.sources.add(id);
    } else if (!on) {
      _d.sources.remove(id);
    }
  });

  Future<void> _analyze() async {
    final judged = List<String>.of(_d.sources);
    setState(() {
      _checking = true;
      _checkError = null;
    });
    try {
      final analysis = await jsonObjectCall(
        ref.read(backendDioProvider),
        'POST',
        '/v1/triggers/analyze-sources',
        body: <String, Object?>{'sourceIds': judged},
        receiveTimeout: relevanceCheckTimeout,
      );
      if (mounted) {
        setState(() => _check = RelevanceCheck.of(analysis, judged));
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _checkError = e);
      }
    } finally {
      if (mounted) {
        setState(() => _checking = false);
      }
    }
  }

  // ---- Trigger ----

  void _addCondition() => setState(() {
    final c = BuilderCondition();
    _d.conditions.add(c);
    _addControllers(c);
  });

  void _removeCondition(int i) => setState(() {
    _collect();
    _d.conditions.removeAt(i);
    _paths.removeAt(i).dispose();
    _values.removeAt(i).dispose();
    _pathFocus.removeAt(i).dispose();
    _errors = const <String, String>{};
  });

  // ---- Delivery ----

  void _toggleType(String type, bool on) => setState(() {
    if (on) {
      _openTypes.add(type);
      final ofType = widget.channels.where((c) => c['type'] == type).toList();
      // One channel of the type: checking the type means that channel.
      if (ofType.length == 1 && channelRoute(ofType.single, _ruleId) != ChannelRoute.everyRule) {
        _d.channelIds.add('${ofType.single['id']}');
      }
    } else {
      _openTypes.remove(type);
      _d.channelIds.removeWhere((id) => widget.channels.any((c) => c['id'] == id && c['type'] == type));
    }
  });

  Future<void> _newChannel(Json type) async {
    final created = await showDialog<Json>(
      context: context,
      builder: (context) => Dialog(
        key: const Key('builder.newChannel.dialog'),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 760, maxHeight: MediaQuery.sizeOf(context).height * 0.88),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('New ${type['name'] ?? type['id']} channel', style: Theme.of(context).textTheme.titleLarge),
                    ),
                    IconButton(
                      tooltip: 'Close',
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
                Text(
                  _ruleId == null
                      ? 'It takes no rule\'s alerts until you save this alert, which routes it here.'
                      : 'It takes this alert\'s alerts only; add other rules on its page later.',
                  style: TextStyle(color: AdminPalette.of(context).muted),
                ),
                const SizedBox(height: 8),
                Flexible(
                  child: SingleChildScrollView(
                    child: ChannelForm(
                      type: type,
                      initialRuleIds: <String>{?_ruleId},
                      onCreated: (c) => Navigator.of(context).pop(c),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    if (created != null && mounted) {
      setState(() {
        _openTypes.add('${created['type']}');
        _d.channelIds.add('${created['id']}');
      });
    }
  }

  // ---- Save ----

  BuilderStep? _stepOf(String errorKey) => switch (errorKey) {
    'sources' => BuilderStep.dataset,
    'area' => BuilderStep.area,
    'kinds' => BuilderStep.trigger,
    _ when errorKey.startsWith('condition.') => BuilderStep.trigger,
    _ => null,
  };

  Future<void> _save() async {
    _collect();
    final errors = _d.validate();
    setState(() {
      _errors = errors;
      _routing = const <String, Object?>{};
      final first = errors.keys.map(_stepOf).nonNulls.firstOrNull;
      if (first != null) {
        _step = first;
      }
    });
    if (errors.isNotEmpty) {
      return;
    }
    final dio = ref.read(backendDioProvider);
    final body = _d.toJson();
    final existing = _ruleId;
    final saved = await track(
      () => existing == null
          ? jsonObjectCall(dio, 'POST', '/v1/triggers', body: body)
          : writeThenConfirm<Json>(
              write: () => jsonCall(dio, 'PUT', triggerPath(existing), body: body),
              reread: () => jsonObjectCall(dio, 'GET', triggerPath(existing)),
              confirm: (r) => r['name'] == _d.rule.name.trim() ? null : 'The rule reads back differently.',
            ),
    );
    if (saved == null || !mounted) {
      return;
    }
    final id = '${saved['id']}';
    _ruleId = id;
    final routing = await _route(id);
    if (!mounted) {
      return;
    }
    ref
      ..invalidate(triggersProvider)
      ..invalidate(triggerProvider(id))
      ..invalidate(channelsProvider);
    final failed = routing.values.any((e) => e != null);
    if (existing == null && !failed) {
      context.go(alertBuilderRulePath(id));
      return;
    }
    setState(() => _routing = routing);
  }

  /// Routes rule [id] to the chosen channels and away from the ones
  /// unchosen; what each change did, by channel id.
  Future<Map<String, Object?>> _route(String id) async {
    final dio = ref.read(backendDioProvider);
    final types = ref.read(channelTypesProvider).value ?? const <Json>[];
    final out = <String, Object?>{};
    for (final c in widget.channels) {
      final cid = '${c['id']}';
      final type = channelTypeOf(types, c['type']);
      if (type == null) {
        continue;
      }
      final change = routeChannelBody(type, c, id, route: _d.channelIds.contains(cid));
      if (change == null) {
        continue;
      }
      try {
        await jsonCall(dio, 'PUT', channelPath(cid), body: change);
        out[cid] = null;
      } on Object catch (e) {
        out[cid] = e;
      }
    }
    return out;
  }

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    final sources = ref.watch(sourceListProvider);
    final types = ref.watch(channelTypesProvider).value ?? const <Json>[];
    final byId = <String, SourceSummary>{for (final s in sources.value ?? const <SourceSummary>[]) s.id: s};
    final rule = widget.rule;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _ruleBar(context),
        const SizedBox(height: 16),
        _Flow(
          step: _step,
          onSelect: (s) => setState(() {
            _collect();
            _step = s;
          }),
          nodes: <BuilderStep, _NodeSummary>{
            BuilderStep.dataset: _datasetSummary(byId),
            BuilderStep.area: _areaSummary(),
            BuilderStep.trigger: _triggerSummary(),
            BuilderStep.delivery: _deliverySummary(types),
          },
        ),
        const SizedBox(height: 16),
        switch (_step) {
          BuilderStep.dataset => _datasetEditor(context, sources, byId),
          BuilderStep.area => AreaEditor(
            key: ObjectKey(_d.area),
            area: _d.area,
            lookup: _lookup,
            error: _errors['area'],
            onChanged: () => setState(() => _errors = Map<String, String>.of(_errors)..remove('area')),
            actions: <Widget>[_backButton(BuilderStep.dataset), _nextButton(BuilderStep.trigger)],
          ),
          BuilderStep.trigger => _triggerEditor(context, byId),
          BuilderStep.delivery => _deliveryEditor(context, types),
        },
        const SizedBox(height: 16),
        _saveBar(context),
        if (rule != null && _ruleId == rule['id']) ...<Widget>[
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 560,
              child: TriggerPauseCard(key: ValueKey<String>('builder.pause.${rule['updatedAt']}'), rule: rule),
            ),
          ),
        ],
      ],
    );
  }

  Widget _ruleBar(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: Wrap(
        spacing: 24,
        runSpacing: 8,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 420,
            child: TextField(
              key: const Key('builder.name'),
              controller: _name,
              decoration: InputDecoration(
                labelText: 'Alert name',
                hintText: 'Strong earthquakes near the coast',
                isDense: true,
                errorText: _errors['name'],
              ),
            ),
          ),
          SizedBox(
            width: 180,
            child: DropdownButtonFormField<String>(
              key: ValueKey<String>('builder.severity.${_d.rule.severity}'),
              initialValue: _d.rule.severity,
              isExpanded: true,
              decoration: const InputDecoration(labelText: 'Severity', isDense: true),
              items: withCurrentItem(<DropdownMenuItem<String>>[
                for (final s in severities) DropdownMenuItem<String>(value: s, child: severityLabel(s)),
              ], _d.rule.severity),
              onChanged: (v) => setState(() => _d.rule.severity = v ?? _d.rule.severity),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Switch(
                key: const Key('builder.enabled'),
                value: _d.rule.enabled,
                onChanged: (v) => setState(() => _d.rule.enabled = v),
              ),
              const SizedBox(width: 8),
              Text(_d.rule.enabled ? 'On: fires as records arrive' : 'Off: saved, does not fire'),
            ],
          ),
        ],
      ),
    ),
  );

  // ---- Node summaries ----

  _NodeSummary _datasetSummary(Map<String, SourceSummary> byId) {
    final n = _d.sources.length;
    final flagged = _check?.flagged(_d.sources) ?? const <SourceVerdict>[];
    return _NodeSummary(
      lines: <String>[
        if (n == 0) 'Every source' else '$n source${n == 1 ? '' : 's'}',
        if (n > 0) _d.sources.take(3).map((id) => byId[id]?.name ?? id).join(', ') + (n > 3 ? ' +${n - 3}' : ''),
        if (_check == null)
          n >= 2 ? 'Relevance not checked' : ''
        else if (flagged.isNotEmpty)
          '${flagged.length} flagged by the check'
        else
          'Checked: no source flagged',
      ].where((l) => l.isNotEmpty).toList(),
      tone: _errors.containsKey('sources')
          ? StatusTone.error
          : (n == 0 || flagged.isNotEmpty ? StatusTone.warning : StatusTone.ok),
    );
  }

  _NodeSummary _areaSummary() {
    final a = _d.area;
    final problem = a.problem();
    return _NodeSummary(
      lines: <String>[
        if (a.kept != null) 'Kept from the full rule form' else a.mode.label,
        a.describe(),
        if (problem != null && a.mode != AreaMode.none) 'An area to finish',
      ],
      tone: _errors.containsKey('area')
          ? StatusTone.error
          : (problem != null ? StatusTone.warning : StatusTone.ok),
    );
  }

  _NodeSummary _triggerSummary() {
    final rows = _d.conditions;
    final problem = _errors.keys.any((k) => k.startsWith('condition.') || k == 'kinds');
    return _NodeSummary(
      lines: <String>[
        _d.kinds.isEmpty ? 'Every kind' : 'Kinds: ${_d.kinds.join(', ')}',
        if (rows.isEmpty && _d.kept.isEmpty) 'Every record matches',
        for (final c in rows.take(2)) c.problem() != null ? 'A condition to finish' : c.describe(),
        if (rows.length > 2) '+${rows.length - 2} more conditions',
        if (_d.kept.isNotEmpty) '${_d.kept.length} other condition${_d.kept.length == 1 ? '' : 's'} kept',
      ],
      tone: problem
          ? StatusTone.error
          : (rows.any((c) => c.problem() != null) || (rows.isEmpty && _d.kept.isEmpty && _d.kinds.isEmpty)
                ? StatusTone.warning
                : StatusTone.ok),
    );
  }

  _NodeSummary _deliverySummary(List<Json> types) {
    final chosen = <Json>[
      for (final c in widget.channels)
        if (_d.channelIds.contains(c['id'])) c,
    ];
    final everyRule = widget.channels.where((c) => takesAlerts(c) && channelRoute(c, _ruleId) == ChannelRoute.everyRule);
    final typeNames = <String>{
      for (final c in chosen) '${channelTypeOf(types, c['type'])?['name'] ?? c['type']}',
    };
    return _NodeSummary(
      lines: <String>[
        if (chosen.isEmpty) 'No channel chosen' else '${chosen.length} channel${chosen.length == 1 ? '' : 's'}',
        if (typeNames.isNotEmpty) typeNames.join(' · '),
        if (everyRule.isNotEmpty) '+${everyRule.length} that take every rule',
        'Always in the Alert Inbox',
      ],
      tone: _routing.values.any((e) => e != null)
          ? StatusTone.error
          : (chosen.isEmpty && everyRule.isEmpty ? StatusTone.warning : StatusTone.ok),
    );
  }

  // ---- Node 1: Dataset ----

  Widget _datasetEditor(BuildContext context, AsyncValue<List<SourceSummary>> sources, Map<String, SourceSummary> byId) {
    final muted = AdminPalette.of(context).muted;
    final query = _search.text.trim().toLowerCase();
    return SectionCard(
      key: const Key('builder.editor.dataset'),
      title: '1 · Dataset',
      subtitle: 'The sources whose records this alert watches, together. None chosen watches every source.',
      actions: <Widget>[_nextButton(BuilderStep.area)],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_d.sources.isEmpty)
            Text('No source chosen: the alert watches every source.', style: TextStyle(color: muted))
          else
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: <Widget>[
                for (final id in _d.sources)
                  InputChip(
                    key: Key('builder.source.chip.$id'),
                    avatar: _verdictDot(context, _check?.of(id)?.verdict),
                    label: Text(byId[id]?.name ?? id),
                    tooltip: _check?.of(id) == null ? id : '${verdictText(_check!.of(id)!.verdict)}: ${_check!.of(id)!.reason}',
                    onDeleted: () => _toggleSource(id, false),
                    deleteButtonTooltipMessage: 'Remove',
                  ),
              ],
            ),
          if (_errors['sources'] case final e?)
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(e, style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12)),
            ),
          const SizedBox(height: 16),
          LayoutBuilder(
            builder: (context, constraints) {
              final picker = _sourcePicker(context, sources, query);
              final check = _relevancePanel(context, byId);
              if (constraints.maxWidth < 900) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[picker, const SizedBox(height: 16), check],
                );
              }
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: picker),
                  const SizedBox(width: 20),
                  Expanded(child: check),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _sourcePicker(BuildContext context, AsyncValue<List<SourceSummary>> sources, String query) {
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text('Add sources', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 6),
        TextField(
          key: const Key('builder.source.search'),
          controller: _search,
          onChanged: (_) => setState(() {}),
          decoration: const InputDecoration(
            isDense: true,
            prefixIcon: Icon(Icons.search, size: 18),
            hintText: 'Search by name, id or kind',
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 300,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: AdminPalette.of(context).border),
              borderRadius: BorderRadius.circular(8),
            ),
            child: AsyncView<List<SourceSummary>>(
              value: sources,
              onRetry: () => ref.invalidate(sourceListProvider),
              data: (all) {
                final shown = <SourceSummary>[
                  for (final s in all)
                    if (query.isEmpty ||
                        s.name.toLowerCase().contains(query) ||
                        s.id.toLowerCase().contains(query) ||
                        s.kinds.any((k) => k.toLowerCase().contains(query)))
                      s,
                ];
                if (shown.isEmpty) {
                  return Center(child: Text('No source matches.', style: TextStyle(color: muted)));
                }
                return ListView.builder(
                  itemCount: shown.length,
                  itemBuilder: (context, i) {
                    final s = shown[i];
                    final on = _d.sources.contains(s.id);
                    return CheckboxListTile(
                      key: Key('builder.source.${s.id}'),
                      dense: true,
                      value: on,
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (v) => _toggleSource(s.id, v ?? false),
                      title: Text(s.name, maxLines: 1, overflow: TextOverflow.ellipsis),
                      subtitle: Text(
                        '${s.id} · ${s.kinds.isEmpty ? 'no kinds' : s.kinds.join(', ')}${s.enabled ? '' : ' · disabled'}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: muted, fontSize: 12),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _relevancePanel(BuildContext context, Map<String, SourceSummary> byId) {
    final muted = AdminPalette.of(context).muted;
    final check = _check;
    final canRun = _d.sources.length >= 2 && _d.sources.length <= 50 && !_checking;
    final flagged = check?.flagged(_d.sources) ?? const <SourceVerdict>[];
    return Column(
      key: const Key('builder.relevance'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(child: Text('Do these sources belong together?', style: Theme.of(context).textTheme.titleSmall)),
            TonalButton(
              key: const Key('builder.analyze'),
              label: _checking ? 'Checking…' : (check == null ? 'Check Relevance' : 'Check Again'),
              icon: Icons.auto_awesome,
              onPressed: canRun ? _analyze : null,
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          'The AI model reads each source\'s catalog entry and rates what it adds to the set. '
          'It only advises: nothing is removed unless you omit it.',
          style: TextStyle(color: muted, fontSize: 12),
        ),
        const SizedBox(height: 10),
        if (_d.sources.length < 2 && check == null)
          Text('Choose two or more sources to check them.', style: TextStyle(color: muted)),
        if (_checking)
          const Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: <Widget>[
                SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2)),
                SizedBox(width: 10),
                Expanded(child: Text('Asking the model; a local one can take a minute.')),
              ],
            ),
          ),
        if (_checkError case final e? when !_checking)
          ErrorBanner(
            key: const Key('builder.analyze.error'),
            title: e is ProblemException && e.code == 'LLM_NOT_CONFIGURED'
                ? 'No AI model is set up for checks'
                : 'The relevance check failed',
            error: e,
            onRetry: canRun ? _analyze : null,
          ),
        if (check != null && !_checking) ...<Widget>[
          if (check.isStaleFor(_d.sources))
            const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                'The selection changed since this check; check again to rate the new sources.',
                key: Key('builder.analyze.stale'),
              ),
            ),
          if (check.summary case final s?)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(s, key: const Key('builder.analyze.summary'), style: const TextStyle(fontStyle: FontStyle.italic)),
            ),
          if (flagged.isNotEmpty)
            ResultPanel(
              key: const Key('builder.flagged'),
              title: flagged.length == 1 ? '1 source may not belong' : '${flagged.length} sources may not belong',
              tone: StatusTone.warning,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  for (final v in flagged)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '${byId[v.sourceId]?.name ?? v.name} · ${verdictText(v.verdict)}',
                                  style: const TextStyle(fontWeight: FontWeight.w600),
                                ),
                                Text(v.reason, key: Key('builder.flagged.reason.${v.sourceId}')),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          OutlinedButton(
                            key: Key('builder.omit.${v.sourceId}'),
                            onPressed: () => _toggleSource(v.sourceId, false),
                            child: const Text('Omit'),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            )
          else if (!check.isStaleFor(_d.sources))
            const ResultPanel(title: 'No source flagged', message: 'Each source adds to the set.'),
          const SizedBox(height: 8),
          for (final v in check.verdicts)
            if (_d.sources.contains(v.sourceId) && !isFlaggedVerdict(v.verdict))
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 130,
                      child: StatusLabel(
                        key: Key('builder.verdict.${v.sourceId}'),
                        label: verdictText(v.verdict),
                        tone: _verdictTone(v.verdict),
                      ),
                    ),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          children: <InlineSpan>[
                            TextSpan(
                              text: '${byId[v.sourceId]?.name ?? v.name}  ',
                              style: const TextStyle(fontWeight: FontWeight.w600),
                            ),
                            TextSpan(text: v.reason, style: TextStyle(color: muted)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        ],
      ],
    );
  }

  static StatusTone _verdictTone(Object? verdict) => switch (verdict) {
    'relevant' => StatusTone.ok,
    'marginal' => StatusTone.warning,
    'not-meaningful' => StatusTone.error,
    _ => StatusTone.neutral,
  };

  Widget? _verdictDot(BuildContext context, String? verdict) => verdict == null
      ? null
      : Icon(_verdictTone(verdict).icon, size: 16, color: _verdictTone(verdict).colorOf(context));

  // ---- Node 2: Trigger ----

  Widget _triggerEditor(BuildContext context, Map<String, SourceSummary> byId) {
    final muted = AdminPalette.of(context).muted;
    final windowed = isWindowed(_d.rule.type);
    final offered = <String>{
      for (final id in _d.sources) ...?byId[id]?.kinds,
      if (_d.sources.isEmpty) for (final s in byId.values) ...s.kinds,
      ..._d.kinds,
    }.toList()..sort();
    final fields = <String>{
      for (final id in _d.sources)
        ...?ref.watch(sourceDetailProvider(id)).value?.descriptor.fieldSpecs?.keys,
    }.toList()..sort();
    final ruleId = _ruleId;
    return Column(
      key: const Key('builder.editor.trigger'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionCard(
          title: '3 · Trigger',
          subtitle: 'What in those records makes an alert. Every condition must hold.',
          actions: <Widget>[_backButton(BuilderStep.area), _nextButton(BuilderStep.delivery)],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (windowed)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: StatusLabel(
                    label: 'A ${wireText(_d.rule.type)} rule: its window is kept and edited in the full rule form.',
                    tone: StatusTone.info,
                  ),
                )
              else
                LabeledField(
                  label: 'Fire when a record',
                  field: WireDropdown(
                    key: ValueKey<String>('builder.mode.${_d.rule.mode}'),
                    value: _d.rule.mode,
                    values: ruleModes,
                    labels: const <String, String>{
                      'match': 'matches (every matching update)',
                      'enter': 'starts matching',
                      'exit': 'stops matching',
                    },
                    onChanged: (v) => setState(() => _d.rule.mode = v),
                  ),
                ),
              LabeledField(
                label: 'Kinds',
                help: _d.kinds.isEmpty ? 'None chosen: every kind.' : null,
                field: offered.isEmpty
                    ? Text('Choose sources to see their kinds.', style: TextStyle(color: muted))
                    : Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: <Widget>[
                          for (final k in offered)
                            FilterChip(
                              key: Key('builder.kind.$k'),
                              label: Text(k),
                              selected: _d.kinds.contains(k),
                              onSelected: (on) => setState(() => on ? _d.kinds.add(k) : _d.kinds.remove(k)),
                            ),
                        ],
                      ),
              ),
              if (_errors['kinds'] case final e?)
                Text(e, style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12)),
              const Divider(height: 24),
              Text('Conditions', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 4),
              if (_d.conditions.isEmpty && _d.kept.isEmpty)
                Text('No condition: every record of these kinds fires.', style: TextStyle(color: muted)),
              for (var i = 0; i < _d.conditions.length; i++) ...<Widget>[
                if (i > 0)
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text('and', style: TextStyle(color: muted, fontSize: 12)),
                  ),
                _conditionRow(context, i, fields),
              ],
              if (_d.kept.isNotEmpty) ...<Widget>[
                const SizedBox(height: 8),
                Text(
                  'Also kept as they are (edit them in the full rule form):',
                  style: TextStyle(color: muted, fontSize: 12),
                ),
                for (final k in _d.kept)
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: SelectableText(
                      jsonArrayText(<Object?>[k]).replaceAll(RegExp(r'\s+'), ' '),
                      style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                    ),
                  ),
              ],
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                  key: const Key('builder.condition.add'),
                  onPressed: _addCondition,
                  icon: const Icon(Icons.add, size: 18),
                  label: const Text('Add Condition'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        if (ruleId == null)
          SectionCard(
            title: 'Dry run',
            child: Text(
              'Save the alert to dry-run it against stored records; the dry run tests the saved rule and creates '
              'nothing.',
              key: const Key('builder.dryRun.saveFirst'),
              style: TextStyle(color: muted),
            ),
          )
        else
          TriggerTestCard(key: ValueKey<String>('builder.test.$ruleId'), ruleId: ruleId),
      ],
    );
  }

  Widget _conditionRow(BuildContext context, int i, List<String> fields) {
    final c = _d.conditions[i];
    final error = _errors['condition.$i'];
    final pathField = RawAutocomplete<String>(
      textEditingController: _paths[i],
      focusNode: _pathFocus[i],
      optionsBuilder: (v) {
        final q = v.text.trim().toLowerCase();
        return fields.where((f) => q.isEmpty || f.toLowerCase().contains(q)).take(12);
      },
      fieldViewBuilder: (context, controller, focus, onSubmit) => TextField(
        key: Key('builder.condition.$i.path'),
        controller: controller,
        focusNode: focus,
        decoration: const InputDecoration(isDense: true, hintText: 'Field, such as mag'),
      ),
      optionsViewBuilder: (context, onSelected, options) => Align(
        alignment: Alignment.topLeft,
        child: Material(
          elevation: 4,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 240, maxWidth: 260),
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: <Widget>[
                for (final o in options)
                  ListTile(dense: true, title: Text(o), onTap: () => onSelected(o)),
              ],
            ),
          ),
        ),
      ),
    );
    final Widget valueField = c.op == 'exists'
        ? WireDropdown(
            key: ValueKey<String>('builder.condition.$i.value.${_values[i].text}'),
            value: _values[i].text == 'false' ? 'false' : (_values[i].text == 'true' ? 'true' : null),
            values: const <String>['true', 'false'],
            labels: const <String, String>{'true': 'yes', 'false': 'no'},
            hint: 'yes or no',
            onChanged: (v) => setState(() => _values[i].text = v),
          )
        : TextField(
            key: Key('builder.condition.$i.value'),
            controller: _values[i],
            decoration: InputDecoration(
              isDense: true,
              hintText: switch (c.op) {
                'in' || 'notIn' => 'a, b, c',
                'matches' => 'pattern',
                '>' || '>=' || '<' || '<=' => 'number',
                _ => 'value',
              },
            ),
          );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(flex: 4, child: pathField),
              const SizedBox(width: 10),
              Expanded(
                flex: 3,
                child: WireDropdown(
                  key: ValueKey<String>('builder.condition.$i.op.${c.op}'),
                  value: c.op,
                  values: builderOps,
                  labels: <String, String>{for (final o in builderOps) o: opText(o)},
                  onChanged: (v) => setState(() {
                    _collect();
                    c.op = v;
                  }),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(flex: 3, child: valueField),
              IconButton(
                key: Key('builder.condition.$i.remove'),
                tooltip: 'Remove condition',
                onPressed: () => _removeCondition(i),
                icon: const Icon(Icons.close, size: 18),
              ),
            ],
          ),
          if (error != null)
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                error,
                key: Key('builder.condition.$i.error'),
                style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }

  // ---- Node 3: Delivery ----

  Widget _deliveryEditor(BuildContext context, List<Json> types) {
    final muted = AdminPalette.of(context).muted;
    final ordered = <Json>[
      for (final id in _preferredTypes) ?channelTypeOf(types, id),
      ...(types.where((t) => !_preferredTypes.contains(t['id'])).toList()
        ..sort((a, b) => '${a['name']}'.compareTo('${b['name']}'))),
    ];
    return SectionCard(
      key: const Key('builder.editor.delivery'),
      title: '4 · Delivery',
      subtitle: 'Where the alerts go. Every alert also appears in the Alert Inbox.',
      actions: <Widget>[_backButton(BuilderStep.trigger)],
      child: AsyncView<List<Json>>(
        value: ref.watch(channelTypesProvider),
        onRetry: () => ref.invalidate(channelTypesProvider),
        data: (_) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            for (final t in ordered) _typeRow(context, t),
            if (ordered.isEmpty) Text('The backend offers no channel types.', style: TextStyle(color: muted)),
          ],
        ),
      ),
    );
  }

  Widget _typeRow(BuildContext context, Json type) {
    final muted = AdminPalette.of(context).muted;
    final id = '${type['id']}';
    final ofType = widget.channels.where((c) => c['type'] == id).toList();
    final routed = ofType.where((c) => _d.channelIds.contains(c['id'])).length;
    final everyRule = ofType.any((c) => takesAlerts(c) && channelRoute(c, _ruleId) == ChannelRoute.everyRule);
    // A type with a channel that takes every rule's alerts delivers this
    // one too, so it shows as chosen.
    final open = _openTypes.contains(id) || routed > 0 || everyRule;
    final creatable = id != 'webpush';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        CheckboxListTile(
          key: Key('builder.type.$id'),
          contentPadding: EdgeInsets.zero,
          dense: true,
          controlAffinity: ListTileControlAffinity.leading,
          value: open,
          onChanged: (v) => _toggleType(id, v ?? false),
          title: Text('${type['name'] ?? id}', style: const TextStyle(fontWeight: FontWeight.w600)),
          subtitle: Text(
            '${ofType.isEmpty ? 'No channel yet' : '${ofType.length} channel${ofType.length == 1 ? '' : 's'}'}'
            '${routed > 0 ? ' · $routed routed' : ''}'
            '${type['description'] == null ? '' : ' · ${type['description']}'}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: muted, fontSize: 12),
          ),
        ),
        if (open)
          Padding(
            padding: const EdgeInsets.only(left: 40, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                for (final c in ofType) _channelRow(context, c),
                if (ofType.isEmpty)
                  Text('No ${type['name'] ?? id} channel yet.', style: TextStyle(color: muted)),
                if (creatable)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton.icon(
                      key: Key('builder.type.$id.new'),
                      onPressed: () => _newChannel(type),
                      icon: const Icon(Icons.add, size: 18),
                      label: Text('New ${type['name'] ?? id} Channel'),
                    ),
                  ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _channelRow(BuildContext context, Json c) {
    final id = '${c['id']}';
    final route = channelRoute(c, _ruleId);
    final everyRule = route == ChannelRoute.everyRule && takesAlerts(c);
    final notes = <String>[
      if (everyRule) 'takes every rule\'s alerts already',
      if (!takesAlerts(c)) 'not subscribed to alerts; saving subscribes it for this alert',
      if (c['enabled'] == false) 'disabled',
      if (severityRank(c['minSeverity'] ?? 'info') > severityRank(_d.rule.severity))
        'takes ${c['minSeverity']} and above, so this ${_d.rule.severity} alert will not reach it',
    ];
    final error = _routing[id];
    return Row(
      children: <Widget>[
        Checkbox(
          key: Key('builder.channel.$id'),
          value: everyRule || _d.channelIds.contains(id),
          onChanged: everyRule
              ? null
              : (v) => setState(() => v == true ? _d.channelIds.add(id) : _d.channelIds.remove(id)),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('${c['name']}'),
              if (notes.isNotEmpty)
                Text(notes.join(' · '), style: TextStyle(color: AdminPalette.of(context).muted, fontSize: 12)),
              if (error != null)
                Text(
                  'Not routed: ${error is ApiException ? error.message : error}',
                  key: Key('builder.channel.$id.error'),
                  style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12),
                ),
            ],
          ),
        ),
        ChannelTestButton(channelId: id, compact: true),
        IconButton(
          tooltip: 'Open channel',
          onPressed: () => context.go(alertChannelPath(id)),
          icon: const Icon(Icons.open_in_new, size: 16),
        ),
      ],
    );
  }

  // ---- Buttons ----

  Widget _nextButton(BuilderStep to) => TonalButton(
    key: Key('builder.next.${to.name}'),
    label: 'Next: ${to.title}',
    icon: Icons.arrow_forward,
    onPressed: () => setState(() {
      _collect();
      _step = to;
    }),
  );

  Widget _backButton(BuilderStep to) => TextButton(
    key: Key('builder.back.${to.name}'),
    onPressed: () => setState(() {
      _collect();
      _step = to;
    }),
    child: Text('Back: ${to.title}'),
  );

  Widget _saveBar(BuildContext context) {
    final problem = triggerProblemText(failedCode);
    final failures = _routing.entries.where((e) => e.value != null).toList();
    final routed = _routing.entries.where((e) => e.value == null).length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (problem != null) ...<Widget>[
          ResultPanel(title: 'Not saved', tone: StatusTone.error, message: problem),
          const SizedBox(height: 12),
        ],
        if (_routing.isNotEmpty && write is WriteConfirmed) ...<Widget>[
          ResultPanel(
            key: const Key('builder.routing'),
            title: failures.isEmpty
                ? 'Saved; $routed channel${routed == 1 ? '' : 's'} updated'
                : 'Saved, but ${failures.length} channel${failures.length == 1 ? ' was' : 's were'} not updated',
            tone: failures.isEmpty ? StatusTone.ok : StatusTone.error,
            message: failures.isEmpty ? null : 'See Delivery for each one; Save again to retry.',
          ),
          const SizedBox(height: 12),
        ],
        FormActions(
          busy: busy,
          saveLabel: _creating ? 'Create Alert' : 'Save Alert',
          onSave: _save,
          onReset: () => setState(() {
            _adopt(widget.rule, widget.channels);
            _errors = const <String, String>{};
            _routing = const <String, Object?>{};
            write = const WriteIdle();
          }),
          leading: <Widget>[if (problem == null) WriteStatusLine(state: write)],
        ),
      ],
    );
  }
}

/// What a node card shows: its lines and how complete it is.
class _NodeSummary {
  const _NodeSummary({required this.lines, required this.tone});

  final List<String> lines;
  final StatusTone tone;
}

/// The nodes side by side, joined by arrows; stacked when narrow.
class _Flow extends StatelessWidget {
  const _Flow({required this.step, required this.onSelect, required this.nodes});

  final BuilderStep step;
  final ValueChanged<BuilderStep> onSelect;
  final Map<BuilderStep, _NodeSummary> nodes;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final wide = constraints.maxWidth >= 760;
      final muted = AdminPalette.of(context).muted;
      Widget arrow() => Padding(
        padding: wide ? const EdgeInsets.symmetric(horizontal: 6) : const EdgeInsets.symmetric(vertical: 4),
        child: Icon(wide ? Icons.arrow_forward : Icons.arrow_downward, color: muted, size: 28),
      );
      final cards = <Widget>[
        for (final s in BuilderStep.values)
          _FlowNode(
            key: Key('builder.node.${s.name}'),
            step: s,
            selected: s == step,
            summary: nodes[s]!,
            onTap: () => onSelect(s),
          ),
      ];
      if (!wide) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            for (var i = 0; i < cards.length; i++) ...<Widget>[if (i > 0) arrow(), cards[i]],
          ],
        );
      }
      return IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            for (var i = 0; i < cards.length; i++) ...<Widget>[
              if (i > 0) Center(child: arrow()),
              Expanded(child: cards[i]),
            ],
          ],
        ),
      );
    },
  );
}

/// One node of the flow: its number, title and current configuration.
class _FlowNode extends StatelessWidget {
  const _FlowNode({super.key, required this.step, required this.selected, required this.summary, required this.onTap});

  final BuilderStep step;
  final bool selected;
  final _NodeSummary summary;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final theme = Theme.of(context);
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: selected ? palette.primary : palette.border, width: selected ? 2 : 1),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: selected ? palette.primary : palette.tonal,
                    child: Text(
                      '${step.index + 1}',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: selected ? palette.primaryText : palette.text,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Icon(step.icon, size: 18, color: palette.muted),
                  const SizedBox(width: 6),
                  Expanded(child: Text(step.title, style: theme.textTheme.titleMedium)),
                  Icon(summary.tone.icon, size: 18, color: summary.tone.colorOf(context)),
                ],
              ),
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.only(left: 36),
                child: Text(step.caption, style: TextStyle(color: palette.muted, fontSize: 12)),
              ),
              const SizedBox(height: 8),
              for (final line in summary.lines)
                Padding(
                  padding: const EdgeInsets.only(left: 36, top: 2),
                  child: Text(line, maxLines: 1, overflow: TextOverflow.ellipsis),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
