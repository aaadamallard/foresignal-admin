import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/form_factor.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'alerts_drafts.dart';
import 'alerts_providers.dart';

/// The tone of a severity.
StatusTone severityTone(Object? wire) => switch (wire) {
  'critical' => StatusTone.error,
  'warning' => StatusTone.warning,
  'info' => StatusTone.info,
  _ => StatusTone.neutral,
};

/// The tone of an alert state.
StatusTone alertStateTone(Object? wire) => switch (wire) {
  'firing' => StatusTone.error,
  'acknowledged' => StatusTone.warning,
  'resolved' => StatusTone.ok,
  _ => StatusTone.neutral,
};

/// A severity as a [StatusLabel].
Widget severityLabel(Object? wire) =>
    StatusLabel(label: wire == null ? '—' : wireText('$wire'), tone: severityTone(wire));

/// An alert state as a [StatusLabel], noting a snooze.
Widget alertStateLabel(Json alert) {
  final snoozed = alert['snoozedUntil'] != null;
  return StatusLabel(
    label: '${wireText('${alert['state']}')}${snoozed ? ' · snoozed' : ''}',
    tone: alertStateTone(alert['state']),
    tooltip: snoozed ? 'Snoozed until ${whenText(alert['snoozedUntil'])}' : null,
  );
}

/// The alert an alert-stream event carries: `alert`, `alert.updated` and
/// `alert.resolved` send an `AlertEvent` (`{type, alert}`), and
/// `alert.enriched` the `Alert` itself. `null` for any other event.
Json? alertOfEvent(SseEvent event) {
  if (!const <String>{'alert', 'alert.updated', 'alert.resolved', 'alert.enriched'}.contains(event.event)) {
    return null;
  }
  final Object? data;
  try {
    data = event.decodeJson();
  } on FormatException {
    return null;
  }
  if (data is! Map) {
    return null;
  }
  final json = data.cast<String, Object?>();
  final alert = event.event == 'alert.enriched' ? json : jsonMap(json, 'alert');
  return alert?['id'] is int ? alert : null;
}

/// [alerts] with [alert] merged in by id, newest first: a stale revision is
/// ignored, an alert that no longer passes [filter] leaves, and a new one
/// that passes joins.
List<Json> upsertAlert(List<Json> alerts, Json alert, AlertFilter filter) {
  final id = alert['id'];
  final at = alerts.indexWhere((a) => a['id'] == id);
  if (at >= 0 && ((alerts[at]['rev'] as num?) ?? -1) > ((alert['rev'] as num?) ?? 0)) {
    return alerts;
  }
  final next = <Json>[...alerts];
  if (at >= 0) {
    next.removeAt(at);
  }
  if (alertMatches(alert, filter)) {
    next.add(alert);
  }
  next.sort((a, b) => ((b['id'] as num?) ?? 0).compareTo((a['id'] as num?) ?? 0));
  return next;
}

/// How the live alert stream stands.
enum LiveStatus {
  /// Opening the stream.
  connecting,

  /// Events (or heartbeats) are arriving.
  live,

  /// The stream ended; the list no longer updates.
  stopped,
}

/// The inbox's state choices: a label and the states it shows.
const List<(String, Set<String>)> _stateChoices = <(String, Set<String>)>[
  ('Open', <String>{'firing', 'acknowledged'}),
  ('Firing', <String>{'firing'}),
  ('Acknowledged', <String>{'acknowledged'}),
  ('Resolved', <String>{'resolved'}),
  ('All', <String>{}),
];

/// Acknowledges, or resolves when [resolve], alert [id] with [body], and
/// confirms the state by re-reading it.
Future<Json> transitionAlert(WidgetRef ref, int id, {required bool resolve, Json? body}) async {
  final api = ref.read(foresignalApiProvider);
  final alerts = api.getAlertsApi();
  final input = body == null || body.isEmpty
      ? null
      : fromJsonMap<AlertTransitionInput>(api.serializers, body);
  return writeThenConfirm<Json>(
    write: () => resolve
        ? alerts.resolveAlert(alertId: id, alertTransitionInput: input)
        : alerts.acknowledgeAlert(alertId: id, alertTransitionInput: input),
    reread: () async => toJsonMap(api.serializers, await callApiRequired(() => alerts.getAlert(alertId: id))),
    confirm: (a) {
      final ok = resolve ? a['state'] == 'resolved' : a['state'] != 'firing';
      return ok ? null : 'The alert still reads ${a['state']}.';
    },
  );
}

/// The alert inbox (Screens §G, desktop and mobile): newest first, filtered
/// by state and severity, kept current by `streamAlerts`.
class InboxPanel extends ConsumerStatefulWidget {
  /// Creates the inbox.
  const InboxPanel({super.key});

  @override
  ConsumerState<InboxPanel> createState() => _InboxPanelState();
}

class _InboxPanelState extends ConsumerState<InboxPanel> {
  int _choice = 0;
  String? _minSeverity;
  List<Json> _alerts = const <Json>[];
  String? _nextCursor;
  bool _loading = true;
  Object? _error;

  /// Repeats the request that set [_error]: the load, the next page, or the
  /// acknowledge or resolve that failed.
  VoidCallback? _retry;
  Object? _streamError;
  LiveStatus _live = LiveStatus.connecting;
  final Set<int> _fresh = <int>{};
  final Set<int> _busy = <int>{};
  StreamSubscription<SseEvent>? _subscription;
  int _load = 0;

  AlertFilter get _filter =>
      (states: _stateChoices[_choice].$2, minSeverity: _minSeverity, ruleId: null);

  @override
  void initState() {
    super.initState();
    unawaited(_reload());
    _connect();
  }

  @override
  void dispose() {
    unawaited(_subscription?.cancel());
    super.dispose();
  }

  void _connect() {
    unawaited(_subscription?.cancel());
    setState(() {
      _live = LiveStatus.connecting;
      _streamError = null;
    });
    _subscription = ref
        .read(sseClientProvider)
        .connect(
          SseStream.alerts,
          onOpen: () {
            if (mounted) {
              setState(() => _live = LiveStatus.live);
            }
          },
        )
        .listen(
          _onEvent,
          onError: (Object e) {
            if (mounted) {
              setState(() {
                _live = LiveStatus.stopped;
                _streamError = e;
              });
            }
          },
          onDone: () {
            if (mounted) {
              setState(() => _live = LiveStatus.stopped);
            }
          },
        );
  }

  void _onEvent(SseEvent event) {
    if (!mounted) {
      return;
    }
    if (event.event == 'reset') {
      final data = event.decodeJson();
      if (data is Map && data['reason'] == 'resync_required') {
        unawaited(_reload());
      }
      return;
    }
    final alert = alertOfEvent(event);
    setState(() {
      _live = LiveStatus.live;
      if (alert != null) {
        final known = _alerts.any((a) => a['id'] == alert['id']);
        _alerts = upsertAlert(_alerts, alert, _filter);
        if (!known && event.event == 'alert') {
          _fresh.add(alert['id']! as int);
        }
      }
    });
  }

  Future<void> _reload() async {
    final load = ++_load;
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final page = await loadAlerts(ref.read(foresignalApiProvider), _filter);
      if (mounted && load == _load) {
        setState(() {
          _alerts = page.items;
          _nextCursor = page.nextCursor;
          _fresh.clear();
        });
      }
    } on Object catch (e) {
      if (mounted && load == _load) {
        setState(() {
          _error = e;
          _retry = _reload;
        });
      }
    } finally {
      if (mounted && load == _load) {
        setState(() => _loading = false);
      }
    }
  }

  Future<void> _more() async {
    final cursor = _nextCursor;
    if (cursor == null) {
      return;
    }
    try {
      final page = await loadAlerts(ref.read(foresignalApiProvider), _filter, cursor: cursor);
      if (mounted) {
        setState(() {
          final known = <Object?>{for (final a in _alerts) a['id']};
          _alerts = <Json>[..._alerts, ...page.items.where((a) => !known.contains(a['id']))];
          _nextCursor = page.nextCursor;
        });
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() {
          _error = e;
          _retry = _more;
        });
      }
    }
  }

  Future<void> _transition(Json alert, {required bool resolve}) async {
    final id = alert['id']! as int;
    setState(() {
      _busy.add(id);
      _error = null;
    });
    try {
      final got = await transitionAlert(ref, id, resolve: resolve);
      if (mounted) {
        setState(() {
          _alerts = upsertAlert(_alerts, got, _filter);
          _fresh.remove(id);
        });
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() {
          _error = e;
          _retry = () => _transition(alert, resolve: resolve);
        });
      }
    } finally {
      if (mounted) {
        setState(() => _busy.remove(id));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final desktop = ref.watch(formFactorProvider) == FormFactor.desktop;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Wrap(
          spacing: 8,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            for (var i = 0; i < _stateChoices.length; i++)
              ChoiceChip(
                key: Key('inbox.state.${_stateChoices[i].$1.toLowerCase()}'),
                label: Text(_stateChoices[i].$1),
                selected: _choice == i,
                onSelected: (_) {
                  setState(() => _choice = i);
                  unawaited(_reload());
                },
              ),
            SizedBox(
              width: 170,
              child: WireDropdown(
                key: const Key('inbox.minSeverity'),
                value: _minSeverity ?? 'any',
                values: const <String>['any', ...severities],
                labels: const <String, String>{'any': 'Any severity'},
                onChanged: (v) {
                  setState(() => _minSeverity = v == 'any' ? null : v);
                  unawaited(_reload());
                },
              ),
            ),
            LiveIndicator(status: _live, error: _streamError, onReconnect: _connect),
            IconButton(
              key: const Key('inbox.refresh'),
              tooltip: 'Refresh',
              onPressed: _reload,
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        const SizedBox(height: 16),
        if (_error case final e?) ...<Widget>[
          ErrorBanner(key: const Key('inbox.error'), error: e, onRetry: _retry),
          const SizedBox(height: 16),
        ],
        if (_loading && _alerts.isEmpty)
          const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator()))
        // A failed load is not an empty inbox: say nothing rather than
        // "No alerts match.".
        else if (_error != null && _alerts.isEmpty)
          const SizedBox.shrink()
        else if (desktop)
          _table(context)
        else
          _cards(context),
        if (_nextCursor != null) ...<Widget>[
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(key: const Key('inbox.more'), onPressed: _more, child: const Text('Load more')),
          ),
        ],
      ],
    );
  }

  Widget _actions(Json a) {
    final id = a['id']! as int;
    final busy = _busy.contains(id);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (a['state'] == 'firing')
          IconButton(
            key: Key('inbox.ack.$id'),
            tooltip: 'Acknowledge',
            onPressed: busy ? null : () => _transition(a, resolve: false),
            icon: const Icon(Icons.check, size: 20),
          ),
        if (a['state'] != 'resolved')
          IconButton(
            key: Key('inbox.resolve.$id'),
            tooltip: 'Resolve',
            onPressed: busy ? null : () => _transition(a, resolve: true),
            icon: const Icon(Icons.done_all, size: 20),
          ),
        IconButton(
          key: Key('inbox.view.$id'),
          tooltip: 'Open',
          onPressed: () => context.go(alertPath(id)),
          icon: const Icon(Icons.chevron_right, size: 22),
        ),
      ],
    );
  }

  Widget _message(Json a) {
    final id = a['id']! as int;
    return Row(
      children: <Widget>[
        if (_fresh.contains(id)) ...<Widget>[
          const StatusLabel(label: 'New', tone: StatusTone.info, showIcon: false),
          const SizedBox(width: 8),
        ],
        Flexible(
          child: Tooltip(
            message: '${a['message']}',
            child: Text('${a['message']}', maxLines: 1, overflow: TextOverflow.ellipsis),
          ),
        ),
      ],
    );
  }

  Widget _table(BuildContext context) => DataTableCard<Json>(
    key: const Key('inbox.table'),
    rows: _alerts,
    empty: 'No alerts match these filters. Choose All or Any severity to see more.',
    columns: <TableColumnSpec<Json>>[
      TableColumnSpec<Json>(label: 'Severity', cell: (a) => severityLabel(a['severity'])),
      TableColumnSpec<Json>(
        label: 'Alert',
        cell: (a) => ConstrainedBox(constraints: const BoxConstraints(maxWidth: 340), child: _message(a)),
      ),
      TableColumnSpec<Json>(
        label: 'Rule · source',
        cell: (a) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('${a['ruleName'] ?? '(deleted rule)'}'),
            Text('${a['source']}', style: TextStyle(color: AdminPalette.of(context).muted, fontSize: 12)),
          ],
        ),
      ),
      TableColumnSpec<Json>(label: 'Fired', cell: (a) => Text(whenText(a['firedAt']))),
      const TableColumnSpec<Json>(label: 'State', cell: alertStateLabel),
      TableColumnSpec<Json>(label: 'Actions', cell: _actions),
    ],
  );

  Widget _cards(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    if (_alerts.isEmpty) {
      return const Padding(padding: EdgeInsets.all(24), child: Center(child: Text('No alerts match.')));
    }
    return Column(
      key: const Key('inbox.cards'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        for (final a in _alerts)
          Card(
            key: Key('inbox.card.${a['id']}'),
            margin: const EdgeInsets.only(bottom: 10),
            child: InkWell(
              onTap: () => context.go(alertPath(a['id']! as int)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 12, 6, 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        severityLabel(a['severity']),
                        const SizedBox(width: 10),
                        alertStateLabel(a),
                        const Spacer(),
                        if (_fresh.contains(a['id']))
                          const StatusLabel(label: 'New', tone: StatusTone.info, showIcon: false),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text('${a['message']}', maxLines: 3, overflow: TextOverflow.ellipsis),
                    const SizedBox(height: 4),
                    Text(
                      '${a['ruleName'] ?? '(deleted rule)'} · ${whenText(a['firedAt'])}',
                      style: TextStyle(color: muted, fontSize: 12),
                    ),
                    Align(alignment: Alignment.centerRight, child: _actions(a)),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

/// Whether a live stream is connecting, live, or stopped (with Reconnect).
class LiveIndicator extends StatelessWidget {
  /// Creates the indicator; [prefix] keys it (`$prefix.live`,
  /// `$prefix.reconnect`) and [what] names what arrives live.
  const LiveIndicator({
    super.key,
    required this.status,
    required this.error,
    required this.onReconnect,
    this.prefix = 'inbox',
    this.what = 'alerts',
  });

  /// The stream's state.
  final LiveStatus status;

  /// Why it stopped, if it failed.
  final Object? error;

  /// Opens the stream again.
  final VoidCallback onReconnect;

  /// The key prefix.
  final String prefix;

  /// What the stream carries, in the tooltips.
  final String what;

  @override
  Widget build(BuildContext context) => switch (status) {
    LiveStatus.connecting => StatusLabel(
      key: Key('$prefix.live'),
      label: 'Connecting…',
      tone: StatusTone.neutral,
      tooltip: 'Opening the live $what stream.',
    ),
    LiveStatus.live => StatusLabel(
      key: Key('$prefix.live'),
      label: 'Live',
      tone: StatusTone.ok,
      tooltip: 'New and changed $what appear as they happen.',
    ),
    LiveStatus.stopped => Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        StatusLabel(
          key: Key('$prefix.live'),
          label: 'Not live',
          tone: StatusTone.warning,
          tooltip: error == null ? 'The live stream ended.' : error is ApiException ? (error! as ApiException).message : '$error',
        ),
        TextButton(key: Key('$prefix.reconnect'), onPressed: onReconnect, child: const Text('Reconnect')),
      ],
    ),
  };
}

/// One alert (`/alerts/inbox/:alertId`, desktop and mobile): what fired, the
/// matching record, escalation, and acknowledge, snooze, resolve and
/// feedback.
class AlertScreen extends ConsumerWidget {
  /// Creates the page for alert [alertId].
  const AlertScreen({super.key, required this.alertId});

  /// The alert id, as in the path.
  final String alertId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final desktop = ref.watch(formFactorProvider) == FormFactor.desktop;
    final id = int.tryParse(alertId);
    final crumbs = <Crumb>[const Crumb('Alerts', alertsPath), Crumb('Alert $alertId')];
    if (id == null) {
      return ListView(
        padding: EdgeInsets.all(desktop ? 28 : 16),
        children: <Widget>[
          PageHeader(title: 'Alert', crumbs: crumbs),
          const ResultPanel(title: 'No such alert', tone: StatusTone.warning, message: 'Alert ids are numbers.'),
        ],
      );
    }
    final alert = ref.watch(alertProvider(id));
    return ListView(
      padding: EdgeInsets.all(desktop ? 28 : 16),
      children: <Widget>[
        PageHeader(
          title: 'Alert $id',
          crumbs: crumbs,
          actions: <Widget>[
            IconButton(
              tooltip: 'Refresh',
              onPressed: () {
                ref
                  ..invalidate(alertProvider(id))
                  ..invalidate(alertEscalationProvider(id));
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        AsyncView<Json>(
          value: alert,
          onRetry: () => ref.invalidate(alertProvider(id)),
          data: (a) => _AlertBody(alert: a, desktop: desktop),
        ),
      ],
    );
  }
}

class _AlertBody extends ConsumerWidget {
  const _AlertBody({required this.alert, required this.desktop});

  final Json alert;
  final bool desktop;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = alert['id']! as int;
    final snapshot = jsonMap(alert, 'recordSnapshot');
    final record = jsonMap(alert, 'record');
    final payload = jsonMap(record, 'payload') ?? jsonMap(snapshot, 'payload');
    final summary = SectionCard(
      key: const Key('alert.summary'),
      title: 'Summary',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('${alert['message']}', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 12),
          KeyValueList(
            keyWidth: desktop ? 160 : 120,
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>('Severity', severityLabel(alert['severity'])),
              MapEntry<String, Object>('State', alertStateLabel(alert)),
              MapEntry<String, Object>(
                'Rule',
                desktop && alert['ruleName'] != null
                    ? InkWell(
                        onTap: () => context.go(alertTriggerPath('${alert['ruleId']}')),
                        child: Text(
                          '${alert['ruleName']}',
                          style: TextStyle(color: Theme.of(context).colorScheme.primary),
                        ),
                      )
                    : Text('${alert['ruleName'] ?? '(deleted rule)'}'),
              ),
              MapEntry<String, Object>('Record', '${alert['source']}/${alert['externalId']}'),
              if (alert['kind'] != null) MapEntry<String, Object>('Kind', '${alert['kind']}'),
              MapEntry<String, Object>('Fired', whenText(alert['firedAt'])),
              if (alert['observedAt'] != null) MapEntry<String, Object>('Observed', whenText(alert['observedAt'])),
              if (alert['acknowledgedAt'] != null)
                MapEntry<String, Object>(
                  'Acknowledged',
                  '${whenText(alert['acknowledgedAt'])}${alert['acknowledgedBy'] == null ? '' : ' by ${alert['acknowledgedBy']}'}',
                ),
              if (alert['resolvedAt'] != null)
                MapEntry<String, Object>(
                  'Resolved',
                  '${whenText(alert['resolvedAt'])}${alert['resolvedBy'] == null ? '' : ' (${wireText('${alert['resolvedBy']}')})'}',
                ),
              if (alert['snoozedUntil'] != null) MapEntry<String, Object>('Snoozed until', whenText(alert['snoozedUntil'])),
              if (alert['suppressed'] == true)
                MapEntry<String, Object>('Suppressed', wireText('${alert['suppressedReason'] ?? 'yes'}')),
              if (alert['feedback'] != null) MapEntry<String, Object>('Feedback', wireText('${alert['feedback']}')),
              if (alert['note'] != null) MapEntry<String, Object>('Note', '${alert['note']}'),
              if ((alert['tags'] as List<Object?>?)?.isNotEmpty == true)
                MapEntry<String, Object>('Tags', (alert['tags']! as List<Object?>).join(', ')),
              if (alert['exercise'] == true) const MapEntry<String, Object>('Exercise', 'Yes, a replay'),
            ],
          ),
          if (alert['summary'] case final String s) ...<Widget>[
            const SizedBox(height: 12),
            Text('Context summary', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 4),
            Text(s),
          ],
        ],
      ),
    );
    final recordCard = SectionCard(
      key: const Key('alert.record'),
      title: 'Matching record',
      subtitle: record != null
          ? 'Version ${record['version']} as still retained.'
          : snapshot != null
          ? 'The copy stored on the alert${snapshot['truncated'] == true ? '; the payload was too large to keep' : ''}.'
          : 'No longer retained.',
      child: payload == null
          ? const Text('No payload.')
          : SelectableText(
              jsonObjectText(payload),
              style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
            ),
    );
    final weather = jsonMap(jsonMap(alert, 'context'), 'weather');
    final weatherCard = weather == null
        ? null
        : SectionCard(
            key: const Key('alert.weather'),
            title: 'Weather',
            subtitle: weather['at'] == null
                ? 'Computed for the alert.'
                : 'Computed for ${whenText(weather['at'])}, when the record was observed.',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                if (weather['summary'] case final String text) Text(text),
                if (weatherContextEntries(weather) case final entries when entries.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 12),
                  KeyValueList(keyWidth: desktop ? 160 : 120, entries: entries),
                ],
              ],
            ),
          );
    final cards = <Widget>[
      AlertActionsCard(key: ValueKey<String>('actions.$id.${alert['rev']}'), alert: alert),
      const SizedBox(height: 16),
      _EscalationCard(alertId: id),
      if (jsonList(alert, 'signals').isNotEmpty) ...<Widget>[
        const SizedBox(height: 16),
        SectionCard(
          title: 'Quality signals',
          child: KeyValueList(
            entries: <MapEntry<String, Object>>[
              for (final s in jsonList(alert, 'signals'))
                MapEntry<String, Object>(wireText('${s['type']}'), whenText(s['at'])),
            ],
          ),
        ),
      ],
    ];
    if (!desktop) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          summary,
          if (weatherCard != null) ...<Widget>[const SizedBox(height: 16), weatherCard],
          const SizedBox(height: 16),
          ...cards,
          const SizedBox(height: 16),
          recordCard,
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  summary,
                  if (weatherCard != null) ...<Widget>[const SizedBox(height: 16), weatherCard],
                ],
              ),
            ),
            const SizedBox(width: 16),
            SizedBox(
              width: 460,
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: cards),
            ),
          ],
        ),
        const SizedBox(height: 16),
        recordCard,
      ],
    );
  }
}

/// Acknowledge, resolve, snooze and feedback for one alert, each confirmed
/// by re-reading it.
class AlertActionsCard extends ConsumerStatefulWidget {
  /// Creates the card for [alert].
  const AlertActionsCard({super.key, required this.alert});

  /// The alert, as read.
  final Json alert;

  @override
  ConsumerState<AlertActionsCard> createState() => _AlertActionsCardState();
}

class _AlertActionsCardState extends ConsumerState<AlertActionsCard> with WriteTracking<AlertActionsCard> {
  late final TextEditingController _note = TextEditingController(text: '${widget.alert['note'] ?? ''}');
  final TextEditingController _for = TextEditingController(text: '2h');
  final TextEditingController _until = TextEditingController();
  late String? _feedback = widget.alert['feedback'] as String?;
  Map<String, String> _errors = const <String, String>{};

  int get _id => widget.alert['id']! as int;

  @override
  void dispose() {
    _note.dispose();
    _for.dispose();
    _until.dispose();
    super.dispose();
  }

  AlertNoteDraft get _noteDraft => AlertNoteDraft()
    ..feedback = _feedback
    ..note = _note.text;

  void _done() {
    ref
      ..invalidate(alertProvider(_id))
      ..invalidate(alertEscalationProvider(_id));
  }

  Future<void> _transition({required bool resolve}) async {
    final d = _noteDraft;
    setState(() => _errors = d.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    if (await track(() => transitionAlert(ref, _id, resolve: resolve, body: d.toJson())) != null) {
      _done();
    }
  }

  Future<void> _feedbackOnly() async {
    final d = _noteDraft;
    setState(() => _errors = d.validate(feedbackRequired: true));
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final alerts = api.getAlertsApi();
    final ok = await track(
      () => writeThenConfirm<Json>(
        write: () => alerts.setAlertFeedback(
          alertId: _id,
          alertFeedbackInput: fromJsonMap<AlertFeedbackInput>(api.serializers, d.toJson()),
        ),
        reread: () async => toJsonMap(api.serializers, await callApiRequired(() => alerts.getAlert(alertId: _id))),
        confirm: (a) => a['feedback'] == d.feedback ? null : 'The feedback still reads ${a['feedback']}.',
      ),
    );
    if (ok != null) {
      _done();
    }
  }

  Future<void> _snooze() async {
    final d = ExpiryDraft(forText: _for.text)..untilText = _until.text;
    setState(() => _errors = d.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final alerts = api.getAlertsApi();
    final ok = await track(
      () => writeThenConfirm<Json>(
        write: () => alerts.snoozeAlert(
          alertId: _id,
          snoozeInput: fromJsonMap<SnoozeInput>(api.serializers, d.toJson()),
        ),
        reread: () async => toJsonMap(api.serializers, await callApiRequired(() => alerts.getAlert(alertId: _id))),
        confirm: (a) => a['snoozedUntil'] != null ? null : 'The alert does not read as snoozed.',
      ),
    );
    if (ok != null) {
      _done();
    }
  }

  Future<void> _unsnooze() async {
    final api = ref.read(foresignalApiProvider);
    final alerts = api.getAlertsApi();
    final ok = await track(
      () => writeThenConfirm<Json>(
        write: () => alerts.unsnoozeAlert(alertId: _id),
        reread: () async => toJsonMap(api.serializers, await callApiRequired(() => alerts.getAlert(alertId: _id))),
        confirm: (a) => a['snoozedUntil'] == null ? null : 'The alert still reads as snoozed.',
      ),
    );
    if (ok != null) {
      _done();
    }
  }

  @override
  Widget build(BuildContext context) {
    final a = widget.alert;
    final state = a['state'];
    final snoozed = a['snoozedUntil'] != null;
    return SectionCard(
      key: const Key('alert.actions'),
      title: 'Work this alert',
      subtitle: 'A note and feedback go with Acknowledge or Resolve, or on their own with Record Feedback.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('Feedback', style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 6),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              for (final f in alertFeedback)
                ChoiceChip(
                  key: Key('alert.feedback.$f'),
                  label: Text(wireText(f)),
                  selected: _feedback == f,
                  onSelected: (on) => setState(() => _feedback = on ? f : null),
                ),
            ],
          ),
          if (_errors['feedback'] case final e?)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(e, style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12)),
            ),
          const SizedBox(height: 10),
          PlainField(key: const Key('alert.note'), controller: _note, hint: 'Note', error: _errors['note'], maxLines: 3),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              if (state == 'firing')
                FilledButton(
                  key: const Key('alert.ack'),
                  onPressed: busy ? null : () => _transition(resolve: false),
                  child: const Text('Acknowledge'),
                ),
              if (state != 'resolved')
                TonalButton(
                  key: const Key('alert.resolve'),
                  label: 'Resolve',
                  onPressed: busy ? null : () => _transition(resolve: true),
                ),
              OutlinedButton(
                key: const Key('alert.feedback.save'),
                onPressed: busy ? null : _feedbackOnly,
                child: const Text('Record Feedback'),
              ),
            ],
          ),
          if (state != 'resolved') ...<Widget>[
            const Divider(height: 28),
            Text(
              snoozed ? 'Snoozed until ${whenText(a['snoozedUntil'])}' : 'Snooze',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 4),
            Text(
              'New matches of the same rule and record are recorded as suppressed and not sent.',
              style: TextStyle(color: AdminPalette.of(context).muted, fontSize: 12),
            ),
            const SizedBox(height: 8),
            if (snoozed)
              Align(
                alignment: Alignment.centerLeft,
                child: OutlinedButton(
                  key: const Key('alert.unsnooze'),
                  onPressed: busy ? null : _unsnooze,
                  child: const Text('Unsnooze'),
                ),
              )
            else
              Wrap(
                spacing: 8,
                runSpacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 110,
                    child: PlainField(key: const Key('alert.snooze.for'), controller: _for, hint: '2h', error: _errors['for']),
                  ),
                  const Text('or until'),
                  SizedBox(
                    width: 190,
                    child: PlainField(
                      key: const Key('alert.snooze.until'),
                      controller: _until,
                      hint: '2026-10-24T08:00Z',
                      error: _errors['until'],
                    ),
                  ),
                  OutlinedButton(
                    key: const Key('alert.snooze'),
                    onPressed: busy ? null : _snooze,
                    child: const Text('Snooze'),
                  ),
                ],
              ),
          ],
          const SizedBox(height: 8),
          statusLine,
        ],
      ),
    );
  }
}

class _EscalationCard extends ConsumerWidget {
  const _EscalationCard({required this.alertId});

  final int alertId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final desktop = ref.watch(formFactorProvider) == FormFactor.desktop;
    return SectionCard(
      key: const Key('alert.escalation'),
      title: 'Escalation',
      child: AsyncView<Json?>(
        value: ref.watch(alertEscalationProvider(alertId)),
        onRetry: () => ref.invalidate(alertEscalationProvider(alertId)),
        data: (e) => e == null
            ? const Text("This alert's rule has no escalation policy.")
            : KeyValueList(
                entries: <MapEntry<String, Object>>[
                  MapEntry<String, Object>('State', stateLabel(e['state'])),
                  MapEntry<String, Object>(
                    'Policy',
                    desktop
                        ? InkWell(
                            onTap: () => context.go(alertPolicyPath('${e['policyId']}')),
                            child: Text(
                              'Open policy',
                              style: TextStyle(color: Theme.of(context).colorScheme.primary),
                            ),
                          )
                        : '${e['policyId']}',
                  ),
                  if (e['nextStep'] != null) MapEntry<String, Object>('Next step', '${e['nextStep']}'),
                  if (e['nextAt'] != null) MapEntry<String, Object>('Next at', whenText(e['nextAt'])),
                  MapEntry<String, Object>('Repeats done', '${e['repeatsDone'] ?? 0}'),
                  if (e['stoppedReason'] != null) MapEntry<String, Object>('Stopped', wireText('${e['stoppedReason']}')),
                ],
              ),
      ),
    );
  }
}

/// The weather sections of an alert's `context.weather` (`WeatherContext`)
/// that are not `ok`, each with its status and explanation: an unknown
/// section means unknown, never clear, so it is spelled out beside the
/// summary. A context whose computation failed is one entry.
List<MapEntry<String, Object>> weatherContextEntries(Json weather) {
  if (weather['status'] != 'ok') {
    return <MapEntry<String, Object>>[
      MapEntry<String, Object>('Weather', '${wireText('${weather['status'] ?? 'unavailable'}')}; unknown, not clear'),
    ];
  }
  const sections = <String, String>{
    'radar': 'Radar',
    'lightning': 'Lightning',
    'precip': 'Precipitation',
    'warnings': 'Warnings',
    'wind': 'Wind',
    'smoke': 'Smoke',
  };
  return <MapEntry<String, Object>>[
    for (final MapEntry(:key, :value) in sections.entries)
      if (jsonMap(weather, key) case final section? when section['status'] != 'ok')
        MapEntry<String, Object>(
          value,
          <String>[
            wireText('${section['status']}'),
            if (section['statusText'] case final String why) why,
            if (section['asOf'] != null) 'last good ${whenText(section['asOf'])}',
          ].join(' · '),
        ),
  ];
}
