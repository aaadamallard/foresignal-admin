import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/device_id.dart';
import '../../core/form_factor.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../alerts/alert_inbox.dart' show LiveIndicator, LiveStatus, alertStateTone, severityLabel;
import '../alerts/alerts_drafts.dart' show severities;
import '../forecasting/forecasting_widgets.dart';
import '../vetting/vetting_drafts.dart' show toJsonMap;
import 'notifications_drafts.dart';
import 'notifications_providers.dart';
import 'presence.dart';

/// A dotted event name as words, each part capitalized: `analyst.note` is
/// "Analyst · Note", `forecast.resolution_needed` "Forecast · Resolution
/// needed".
String inboxEventLabel(String wire) => wire.split('.').map(wireText).join(' · ');

/// A notification's event and subtype, such as "Alert · fired".
String eventText(Json n) {
  final event = inboxEventLabel('${n['event']}');
  final subtype = n['subtype'] as String?;
  if (subtype == null) {
    return event;
  }
  final dot = subtype.indexOf('.');
  return '$event · ${wireText(dot < 0 ? subtype : subtype.substring(dot + 1))}';
}

/// The badge counts: "3 on the badge · 1 critical". The badge counts unread
/// system notifications and alerts still firing, not every unread
/// notification, so it is labeled as the badge.
class BadgeSummary extends StatelessWidget {
  /// Creates the summary of [badge].
  const BadgeSummary({super.key, required this.badge});

  /// The `NotificationBadge`, or `null` while unknown.
  final Json? badge;

  @override
  Widget build(BuildContext context) {
    final b = badge;
    if (b == null) {
      return const SizedBox.shrink();
    }
    final critical = (b['unreadCritical'] as num?) ?? 0;
    return Row(
      key: const Key('notifications.badge'),
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        StatusLabel(
          label: '${b['unread']} on the badge',
          tone: (b['unread'] as num? ?? 0) > 0 ? StatusTone.info : StatusTone.neutral,
          showIcon: false,
          tooltip:
              'Unread system notifications and alerts still firing on this device: the count a '
              "phone's app badge shows. Other unread notifications are listed but not counted.",
        ),
        if (critical > 0) ...<Widget>[
          const SizedBox(width: 8),
          StatusLabel(label: '$critical critical', tone: StatusTone.error),
        ],
      ],
    );
  }
}

/// The inbox's read choices: a label and whether only unread items show.
const List<(String, bool)> _readChoices = <(String, bool)>[('Unread', true), ('All', false)];

/// The notification inbox (Screens §H, desktop and mobile): newest first,
/// read state kept per device, kept current by `streamNotifications`. Reading
/// never acknowledges an alert.
class NotificationsInboxPanel extends ConsumerStatefulWidget {
  /// Creates the inbox.
  const NotificationsInboxPanel({super.key});

  @override
  ConsumerState<NotificationsInboxPanel> createState() => _NotificationsInboxPanelState();
}

class _NotificationsInboxPanelState extends ConsumerState<NotificationsInboxPanel> {
  int _choice = 0;
  String? _event;
  String? _minSeverity;
  List<Json> _items = const <Json>[];
  Json? _badge;
  String? _nextCursor;
  bool _loading = true;
  bool _marking = false;
  Object? _error;

  /// Repeats the request that set [_error]: the load, the next page, or the
  /// mark-read that failed.
  VoidCallback? _retry;
  Object? _streamError;
  LiveStatus _live = LiveStatus.connecting;
  final Set<int> _fresh = <int>{};

  /// Live notifications that arrived while a reload was in flight; the
  /// reload's page predates them, so they are merged back into it.
  final List<Json> _arrivedDuringLoad = <Json>[];
  StreamSubscription<SseEvent>? _subscription;
  int _load = 0;

  NotificationFilter get _filter => (unreadOnly: _readChoices[_choice].$2, event: _event, minSeverity: _minSeverity);

  @override
  void initState() {
    super.initState();
    unawaited(_reload());
    unawaited(_connect());
  }

  @override
  void dispose() {
    unawaited(_subscription?.cancel());
    super.dispose();
  }

  Future<void> _connect() async {
    unawaited(_subscription?.cancel());
    setState(() {
      _live = LiveStatus.connecting;
      _streamError = null;
    });
    final String deviceId;
    try {
      deviceId = await ref.read(deviceIdProvider.future);
    } on Object catch (e) {
      if (mounted) {
        setState(() {
          _live = LiveStatus.stopped;
          _streamError = e;
        });
      }
      return;
    }
    if (!mounted) {
      return;
    }
    _subscription = ref
        .read(sseClientProvider)
        .connect(
          SseStream.notifications,
          headers: <String, Object>{deviceIdHeader: deviceId},
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
    final n = notificationOfEvent(event);
    final badge = badgeOfEvent(event);
    setState(() {
      _live = LiveStatus.live;
      if (n != null) {
        if (!_items.any((i) => i['id'] == n['id']) && n['read'] != true) {
          _fresh.add(n['id']! as int);
        }
        _items = upsertNotification(_items, n, _filter);
        if (_loading) {
          _arrivedDuringLoad.add(n);
        }
      }
      if (badge != null) {
        _badge = badge;
      }
    });
  }

  Future<void> _reload() async {
    final load = ++_load;
    setState(() {
      _loading = true;
      _error = null;
      _arrivedDuringLoad.clear();
    });
    try {
      final api = ref.read(foresignalApiProvider);
      final deviceId = await ref.read(deviceIdProvider.future);
      final page = await loadNotifications(api, deviceId, _filter);
      ref.invalidate(notificationBadgeProvider);
      final badge = await ref.read(notificationBadgeProvider.future);
      if (mounted && load == _load) {
        setState(() {
          var items = page.items;
          for (final n in _arrivedDuringLoad) {
            items = upsertNotification(items, n, _filter);
          }
          _items = items;
          _nextCursor = page.nextCursor;
          _badge = badge;
          _fresh.retainAll(<Object?>{for (final n in _arrivedDuringLoad) n['id']});
          _arrivedDuringLoad.clear();
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
      final api = ref.read(foresignalApiProvider);
      final deviceId = await ref.read(deviceIdProvider.future);
      final page = await loadNotifications(api, deviceId, _filter, cursor: cursor);
      if (mounted) {
        setState(() {
          final known = <Object?>{for (final n in _items) n['id']};
          _items = <Json>[..._items, ...page.items.where((n) => !known.contains(n['id']))];
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

  /// Marks [id], or the [ids] shown, or everything up to [upToId] read. Sparse
  /// reads go in batches of 500, the most one request takes.
  Future<void> _markRead({int? upToId, int? id, Set<int>? ids}) async {
    setState(() {
      _marking = true;
      _error = null;
    });
    try {
      final sparse = <int>{?id, ...?ids}.toList();
      Json? badge;
      if (upToId != null) {
        badge = await markNotificationsRead(ref, upToId: upToId);
      }
      for (var i = 0; i < sparse.length; i += 500) {
        badge = await markNotificationsRead(
          ref,
          ids: sparse.sublist(i, i + 500 > sparse.length ? sparse.length : i + 500),
        );
      }
      if (mounted) {
        setState(() {
          _badge = badge ?? _badge;
          _items = markedRead(_items, _filter, ids: sparse.toSet(), upToId: upToId);
          if (upToId != null) {
            _fresh.clear();
            // Everything up to the newest is read: an unread list has no
            // further page to load.
            if (_filter.unreadOnly) {
              _nextCursor = null;
            }
          } else {
            _fresh.removeAll(sparse);
          }
        });
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() {
          _error = e;
          _retry = () => _markRead(upToId: upToId, id: id, ids: ids);
        });
      }
    } finally {
      if (mounted) {
        setState(() => _marking = false);
      }
    }
  }

  int? get _latestId {
    final fromBadge = (_badge?['latestId'] as num?)?.toInt();
    final shown = _items.isEmpty ? null : (_items.first['id'] as num?)?.toInt();
    if (fromBadge == null) {
      return shown;
    }
    return shown == null || fromBadge > shown ? fromBadge : shown;
  }

  @override
  Widget build(BuildContext context) {
    final desktop = ref.watch(formFactorProvider) == FormFactor.desktop;
    final unread = (_badge?['unread'] as num?) ?? 0;
    final latest = _latestId;
    final shownUnread = <int>{
      for (final n in _items)
        if (n['read'] != true) (n['id']! as num).toInt(),
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Wrap(
          spacing: 8,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            for (var i = 0; i < _readChoices.length; i++)
              ChoiceChip(
                key: Key('notifications.read.${_readChoices[i].$1.toLowerCase()}'),
                label: Text(_readChoices[i].$1),
                selected: _choice == i,
                onSelected: (_) {
                  setState(() => _choice = i);
                  unawaited(_reload());
                },
              ),
            SizedBox(
              width: 240,
              child: WireDropdown(
                key: const Key('notifications.event'),
                value: _event ?? 'any',
                values: const <String>['any', ...inboxEvents],
                labels: <String, String>{
                  'any': 'Any event',
                  for (final e in inboxEvents) e: inboxEventLabel(e),
                },
                onChanged: (v) {
                  setState(() => _event = v == 'any' ? null : v);
                  unawaited(_reload());
                },
              ),
            ),
            SizedBox(
              width: 170,
              child: WireDropdown(
                key: const Key('notifications.minSeverity'),
                value: _minSeverity ?? 'any',
                values: const <String>['any', ...severities],
                labels: const <String, String>{'any': 'Any severity'},
                onChanged: (v) {
                  setState(() => _minSeverity = v == 'any' ? null : v);
                  unawaited(_reload());
                },
              ),
            ),
            LiveIndicator(
              status: _live,
              error: _streamError,
              onReconnect: () => unawaited(_connect()),
              prefix: 'notifications',
              what: 'notifications',
            ),
            IconButton(
              key: const Key('notifications.refresh'),
              tooltip: 'Refresh',
              onPressed: _reload,
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            BadgeSummary(badge: _badge),
            // With an event or severity filter, only the notifications shown
            // are marked: moving the device's read cursor would also mark
            // every notification the filter hides.
            if (_event != null || _minSeverity != null)
              OutlinedButton.icon(
                key: const Key('notifications.markShown'),
                onPressed: _marking || shownUnread.isEmpty ? null : () => _markRead(ids: shownUnread),
                icon: const Icon(Icons.done_all, size: 18),
                label: const Text('Mark Shown Read'),
              )
            else
              OutlinedButton.icon(
                key: const Key('notifications.markAll'),
                onPressed: _marking || (unread == 0 && shownUnread.isEmpty) || latest == null
                    ? null
                    : () => _markRead(upToId: latest),
                icon: const Icon(Icons.done_all, size: 18),
                label: const Text('Mark All Read'),
              ),
            const Footnote('Read state is kept for this device. Reading never acknowledges an alert.'),
          ],
        ),
        const SizedBox(height: 16),
        if (_error case final e?) ...<Widget>[
          ErrorBanner(key: const Key('notifications.error'), error: e, onRetry: _retry),
          const SizedBox(height: 16),
        ],
        if (_loading && _items.isEmpty)
          const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator()))
        // A failed load is not an empty inbox: say nothing rather than
        // "Nothing unread.".
        else if (_error != null && _items.isEmpty)
          const SizedBox.shrink()
        else if (desktop)
          _table(context)
        else
          _cards(context),
        if (_nextCursor != null) ...<Widget>[
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(key: const Key('notifications.more'), onPressed: _more, child: const Text('Load more')),
          ),
        ],
      ],
    );
  }

  Widget _title(Json n, {int maxLines = 1}) {
    final id = n['id']! as int;
    final unread = n['read'] != true;
    return Row(
      children: <Widget>[
        if (_fresh.contains(id)) ...<Widget>[
          const StatusLabel(label: 'New', tone: StatusTone.info, showIcon: false),
          const SizedBox(width: 8),
        ],
        Flexible(
          child: Tooltip(
            message: '${n['title']}',
            child: Text(
              '${n['title']}',
              maxLines: maxLines,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: unread ? FontWeight.w700 : FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }

  Widget _alertState(Json n) => n['alertState'] == null
      ? const Text('—')
      : StatusLabel(label: wireText('${n['alertState']}'), tone: alertStateTone(n['alertState']));

  Widget _actions(Json n) {
    final id = n['id']! as int;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (n['read'] != true)
          IconButton(
            key: Key('notifications.markRead.$id'),
            tooltip: 'Mark read',
            onPressed: _marking ? null : () => _markRead(id: id),
            icon: const Icon(Icons.mark_email_read_outlined, size: 20),
          ),
        IconButton(
          key: Key('notifications.view.$id'),
          tooltip: 'Open',
          onPressed: () => context.go(notificationPath(id)),
          icon: const Icon(Icons.chevron_right, size: 22),
        ),
      ],
    );
  }

  Widget _table(BuildContext context) => DataTableCard<Json>(
    key: const Key('notifications.table'),
    rows: _items,
    empty: _filter.unreadOnly ? 'Nothing unread.' : 'No notifications match.',
    columns: <TableColumnSpec<Json>>[
      TableColumnSpec<Json>(label: 'Severity', cell: (n) => severityLabel(n['severity'])),
      TableColumnSpec<Json>(
        label: 'Notification',
        cell: (n) => ConstrainedBox(constraints: const BoxConstraints(maxWidth: 360), child: _title(n)),
      ),
      TableColumnSpec<Json>(label: 'Event', cell: (n) => Text(eventText(n))),
      TableColumnSpec<Json>(label: 'Alert', cell: _alertState),
      TableColumnSpec<Json>(label: 'Received', cell: (n) => Text(whenText(n['createdAt']))),
      TableColumnSpec<Json>(label: 'Actions', cell: _actions),
    ],
  );

  Widget _cards(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    if (_items.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(24),
        child: Center(child: Text(_filter.unreadOnly ? 'Nothing unread.' : 'No notifications match.')),
      );
    }
    return Column(
      key: const Key('notifications.cards'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        for (final n in _items)
          Card(
            key: Key('notifications.card.${n['id']}'),
            margin: const EdgeInsets.only(bottom: 10),
            child: InkWell(
              onTap: () => context.go(notificationPath(n['id']! as int)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 12, 6, 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        severityLabel(n['severity']),
                        const SizedBox(width: 10),
                        if (n['alertState'] != null) _alertState(n),
                      ],
                    ),
                    const SizedBox(height: 8),
                    _title(n, maxLines: 3),
                    const SizedBox(height: 4),
                    Text('${eventText(n)} · ${whenText(n['createdAt'])}', style: TextStyle(color: muted, fontSize: 12)),
                    Align(alignment: Alignment.centerRight, child: _actions(n)),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

/// This device's presence, as last reported.
class PresenceLine extends ConsumerWidget {
  /// Creates the line.
  const PresenceLine({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final report = ref.watch(presenceStatusProvider);
    if (report == null) {
      return const SizedBox.shrink();
    }
    final failed = report.error != null;
    return StatusLabel(
      key: const Key('notifications.presence'),
      label: failed ? 'Presence not reported' : 'Presence: ${report.state}',
      tone: failed ? StatusTone.warning : StatusTone.neutral,
      tooltip: failed
          ? (report.error is ApiException ? (report.error! as ApiException).message : '${report.error}')
          : 'Reported ${whenText(report.at.toUtc().toIso8601String())}. While a desktop is active, '
                'the backend holds back non-critical phone notifications.',
    );
  }
}

/// One notification (`/notifications/inbox/:notificationId`, desktop and
/// mobile): its body, links, and the action capabilities minted for this
/// device. Opening it marks it read.
class NotificationScreen extends ConsumerWidget {
  /// Creates the page for [notificationId].
  const NotificationScreen({super.key, required this.notificationId});

  /// The notification id, as in the path.
  final String notificationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final desktop = ref.watch(formFactorProvider) == FormFactor.desktop;
    final id = int.tryParse(notificationId);
    final crumbs = <Crumb>[const Crumb('Notifications', notificationsPath), Crumb('Notification $notificationId')];
    if (id == null) {
      return ListView(
        padding: EdgeInsets.all(desktop ? 28 : 16),
        children: <Widget>[
          PageHeader(title: 'Notification', crumbs: crumbs),
          const ResultPanel(title: 'No such notification', tone: StatusTone.warning, message: 'Notification ids are numbers.'),
        ],
      );
    }
    return ListView(
      padding: EdgeInsets.all(desktop ? 28 : 16),
      children: <Widget>[
        PageHeader(
          title: 'Notification $id',
          crumbs: crumbs,
          actions: <Widget>[
            IconButton(
              tooltip: 'Refresh',
              onPressed: () => ref.invalidate(notificationProvider(id)),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        AsyncView<Json>(
          value: ref.watch(notificationProvider(id)),
          onRetry: () => ref.invalidate(notificationProvider(id)),
          data: (n) => _NotificationBody(key: ValueKey<Object?>(n['id']), notification: n, desktop: desktop),
        ),
      ],
    );
  }
}

class _NotificationBody extends ConsumerStatefulWidget {
  const _NotificationBody({super.key, required this.notification, required this.desktop});

  final Json notification;
  final bool desktop;

  @override
  ConsumerState<_NotificationBody> createState() => _NotificationBodyState();
}

class _NotificationBodyState extends ConsumerState<_NotificationBody> {
  bool _read = false;
  Object? _readError;

  @override
  void initState() {
    super.initState();
    _read = widget.notification['read'] == true;
    if (!_read) {
      unawaited(_markRead());
    }
  }

  Future<void> _markRead() async {
    try {
      await markNotificationsRead(ref, ids: <int>[widget.notification['id']! as int]);
      if (mounted) {
        setState(() => _read = true);
        ref.invalidate(notificationBadgeProvider);
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _readError = e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final n = widget.notification;
    final alertId = (n['alertId'] as num?)?.toInt();
    final body = '${n['body'] ?? ''}'.trim();
    final summary = SectionCard(
      key: const Key('notification.summary'),
      title: 'Summary',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('${n['title']}', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 12),
          KeyValueList(
            keyWidth: widget.desktop ? 160 : 120,
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>('Severity', severityLabel(n['severity'])),
              MapEntry<String, Object>('Event', eventText(n)),
              MapEntry<String, Object>('Received', whenText(n['createdAt'])),
              MapEntry<String, Object>(
                'Read',
                _readError != null ? 'Could not mark read' : _read ? 'Yes, on this device' : 'Marking read…',
              ),
              if (alertId != null)
                MapEntry<String, Object>(
                  'Alert',
                  InkWell(
                    key: const Key('notification.alert'),
                    onTap: () => context.go(alertPath(alertId)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Alert $alertId', style: TextStyle(color: Theme.of(context).colorScheme.primary)),
                        if (n['alertState'] != null) ...<Widget>[
                          const SizedBox(width: 10),
                          StatusLabel(label: wireText('${n['alertState']}'), tone: alertStateTone(n['alertState'])),
                        ],
                      ],
                    ),
                  ),
                ),
            ],
          ),
          if (body.isNotEmpty) ...<Widget>[
            const SizedBox(height: 16),
            SelectableText(body, key: const Key('notification.body')),
          ],
          if (_readError case final e?) ...<Widget>[const SizedBox(height: 12), ErrorBanner(error: e)],
        ],
      ),
    );
    final side = <Widget>[
      // Kept for any alert, so an action's result outlives the refresh that
      // follows it, which may leave no actions.
      if (jsonList(n, 'actions').isNotEmpty || alertId != null) ...<Widget>[
        _ActionsCard(notification: n),
        const SizedBox(height: 16),
      ],
      if (jsonList(n, 'links').isNotEmpty) _LinksCard(links: jsonList(n, 'links')),
    ];
    if (!widget.desktop || side.isEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[summary, if (side.isNotEmpty) ...<Widget>[const SizedBox(height: 16), ...side]],
      );
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(child: summary),
        const SizedBox(width: 16),
        SizedBox(width: 440, child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: side)),
      ],
    );
  }
}

class _LinksCard extends StatelessWidget {
  const _LinksCard({required this.links});

  final List<Json> links;

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('notification.links'),
    title: 'Links',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        for (final l in links)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('${l['label']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                      SelectableText('${l['url']}', style: TextStyle(color: AdminPalette.of(context).muted, fontSize: 12)),
                    ],
                  ),
                ),
                IconButton(
                  tooltip: 'Copy link',
                  onPressed: () => unawaited(Clipboard.setData(ClipboardData(text: '${l['url']}'))),
                  icon: const Icon(Icons.copy, size: 18),
                ),
              ],
            ),
          ),
      ],
    ),
  );
}

/// The action capabilities minted for this device (ack, snooze, mute,
/// feedback). Each is single use for 12 hours: it is checked
/// (`getActionConfirm`, which never acts) before it runs (`executeAction`).
class _ActionsCard extends ConsumerStatefulWidget {
  const _ActionsCard({required this.notification});

  final Json notification;

  @override
  ConsumerState<_ActionsCard> createState() => _ActionsCardState();
}

class _ActionsCardState extends ConsumerState<_ActionsCard> with WriteTracking<_ActionsCard> {
  Json? _confirming;
  Json? _result;
  bool _expired = false;

  Future<void> _run(Json action) async {
    final token = actionToken(action['url']);
    if (token == null) {
      return;
    }
    setState(() {
      _confirming = null;
      _result = null;
      _expired = false;
    });
    final api = ref.read(foresignalApiProvider).getNotificationsApi();
    final result = await track(() async {
      try {
        await callApi(() => api.getActionConfirm(token: token));
      } on ApiException catch (e) {
        if (e is ProblemException && e.status == 410 || e is HttpStatusException && e.status == 410) {
          return null;
        }
        rethrow;
      }
      final done = await callApiRequired(() => api.executeAction(token: token));
      return toJsonMap(ref.read(foresignalApiProvider).serializers, done);
    });
    if (!mounted) {
      return;
    }
    if (write is WriteConfirmed && result == null) {
      setState(() => _expired = true);
      return;
    }
    if (result != null) {
      setState(() => _result = result);
      final id = widget.notification['id']! as int;
      ref.invalidate(notificationProvider(id));
    }
  }

  @override
  Widget build(BuildContext context) {
    final actions = jsonList(widget.notification, 'actions');
    final confirming = _confirming;
    return SectionCard(
      key: const Key('notification.actions'),
      title: 'Act on the alert',
      subtitle: 'Each action works once, for 12 hours from when this page was opened.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (actions.isEmpty) const Footnote('No actions are open for this alert now.'),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              for (final a in actions)
                OutlinedButton(
                  key: Key('notification.action.${a['action']}'),
                  onPressed: busy ? null : () => setState(() => _confirming = a),
                  child: Text('${a['label'] ?? actionText(a)}'),
                ),
            ],
          ),
          if (confirming != null) ...<Widget>[
            const SizedBox(height: 12),
            ConfirmRow(
              message: '${actionText(confirming)}?',
              action: 'Run',
              confirmKey: const Key('notification.action.confirm'),
              onConfirm: () => _run(confirming),
              onCancel: () => setState(() => _confirming = null),
            ),
          ],
          if (_result case final r?) ...<Widget>[
            const SizedBox(height: 12),
            ResultPanel(
              key: const Key('notification.action.result'),
              title: wireText('${r['result']}'),
              tone: '${r['result']}'.startsWith('already') ? StatusTone.info : StatusTone.ok,
              message: 'Alert ${r['alertId']}: ${actionText(<String, Object?>{'action': r['action']})}.',
            ),
          ],
          if (_expired) ...<Widget>[
            const SizedBox(height: 12),
            ResultPanel(
              key: const Key('notification.action.expired'),
              title: 'Action expired',
              tone: StatusTone.warning,
              message: 'It was used or is older than 12 hours. Refresh for fresh actions.',
              child: TextButton(
                onPressed: () => ref.invalidate(notificationProvider(widget.notification['id']! as int)),
                child: const Text('Refresh'),
              ),
            ),
          ],
          if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
        ],
      ),
    );
  }
}
