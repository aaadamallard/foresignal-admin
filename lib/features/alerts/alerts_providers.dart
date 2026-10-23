import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../vetting/vetting_drafts.dart' show toJsonMap;
import 'alerts_drafts.dart';

export '../forecasting/forecasting_providers.dart' show Json, jsonList, jsonMap;

/// The path of trigger rule [id] (and [action] beneath it).
String triggerPath(String id, [String? action]) =>
    '/v1/triggers/${Uri.encodeComponent(id)}${action == null ? '' : '/$action'}';

/// The path of channel [id].
String channelPath(String id) => '/v1/channels/${Uri.encodeComponent(id)}';

/// Every trigger rule (`listTriggers`), as JSON (see [jsonCall]).
final triggersProvider = FutureProvider<List<Json>>(
  (ref) => jsonArrayCall(ref.watch(backendDioProvider), '/v1/triggers'),
);

/// One trigger rule (`getTrigger`), as JSON (see [jsonCall]).
final triggerProvider = FutureProvider.family<Json, String>(
  (ref, id) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', triggerPath(id)),
);

/// The latest alerts of one rule (`listAlerts?ruleId=`), suppressed ones
/// included.
final ruleAlertsProvider = FutureProvider.family<List<Json>, String>((ref, ruleId) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(
    () => api.getAlertsApi().listAlerts(ruleId: ruleId, limit: 20, includeSuppressed: true),
  );
  return <Json>[for (final a in page.items) toJsonMap(api.serializers, a)];
});

/// The alert inbox filter: states (empty for all), a minimum severity and a
/// rule.
typedef AlertFilter = ({Set<String> states, String? minSeverity, String? ruleId});

/// Whether [alert] passes [filter].
bool alertMatches(Json alert, AlertFilter filter) =>
    (filter.states.isEmpty || filter.states.contains(alert['state'])) &&
    (filter.minSeverity == null ||
        severityRank(alert['severity']) >= severityRank(filter.minSeverity)) &&
    (filter.ruleId == null || alert['ruleId'] == filter.ruleId);

/// A page of alerts newest first (`listAlerts`) for [filter].
Future<({List<Json> items, String? nextCursor})> loadAlerts(
  ForesignalApi api,
  AlertFilter filter, {
  String? cursor,
  int limit = 100,
}) async {
  final page = await callApiRequired(
    () => api.getAlertsApi().listAlerts(
      ruleId: filter.ruleId,
      state: filter.states.isEmpty ? null : BuiltList<String>(filter.states),
      minSeverity: filter.minSeverity,
      cursor: cursor,
      limit: limit,
    ),
  );
  return (
    items: <Json>[for (final a in page.items) toJsonMap(api.serializers, a)],
    nextCursor: page.nextCursor,
  );
}

/// One alert (`getAlert`).
final alertProvider = FutureProvider.family<Json, int>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final alert = await callApiRequired(() => api.getAlertsApi().getAlert(alertId: id));
  return toJsonMap(api.serializers, alert);
});

/// An alert's escalation (`getAlertEscalation`); `null` when its rule has
/// no escalation policy (404).
final alertEscalationProvider = FutureProvider.family<Json?, int>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  try {
    final e = await callApiRequired(() => api.getEscalationApi().getAlertEscalation(alertId: id));
    return toJsonMap(api.serializers, e);
  } on ProblemException catch (e) {
    if (e.status == 404) {
      return null;
    }
    rethrow;
  }
});

/// Every escalation policy (`listEscalationPolicies`).
final escalationPoliciesProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getEscalationApi().listEscalationPolicies());
  return <Json>[for (final p in list) toJsonMap(api.serializers, p)];
});

/// One escalation policy (`getEscalationPolicy`).
final escalationPolicyProvider = FutureProvider.family<Json, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final p = await callApiRequired(() => api.getEscalationApi().getEscalationPolicy(policyId: id));
  return toJsonMap(api.serializers, p);
});

/// The channel types (`listChannelTypes`).
final channelTypesProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getChannelsApi().listChannelTypes());
  return <Json>[for (final t in list) toJsonMap(api.serializers, t)];
});

/// Every notification channel (`listChannels`), as JSON (see [jsonCall]).
final channelsProvider = FutureProvider<List<Json>>(
  (ref) => jsonArrayCall(ref.watch(backendDioProvider), '/v1/channels'),
);

/// One channel (`getChannel`), as JSON (see [jsonCall]).
final channelProvider = FutureProvider.family<Json, String>(
  (ref, id) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', channelPath(id)),
);

/// A channel's deliveries query: the channel and a status (`null` for all).
typedef DeliveryQuery = ({String channelId, String? status});

/// A channel's latest deliveries (`listChannelDeliveries`), up to 100.
final channelDeliveriesProvider = FutureProvider.family<List<Json>, DeliveryQuery>((ref, q) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(
    () => api.getChannelsApi().listChannelDeliveries(channelId: q.channelId, status: q.status, limit: 100),
  );
  return <Json>[for (final d in page.items) toJsonMap(api.serializers, d)];
});

/// Every watchlist (`listWatchlists`), following the cursor.
final watchlistsProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final all = <Json>[];
  String? cursor;
  do {
    final page = await callApiRequired(
      () => api.getWatchlistsApi().listWatchlists(cursor: cursor, limit: 500),
    );
    all.addAll(page.items.map((w) => toJsonMap(api.serializers, w)));
    cursor = page.nextCursor;
  } while (cursor != null && all.length < 5000);
  return all;
});

/// One watchlist (`getWatchlist`).
final watchlistProvider = FutureProvider.family<Json, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final w = await callApiRequired(() => api.getWatchlistsApi().getWatchlist(watchlistId: id));
  return toJsonMap(api.serializers, w);
});

/// A watchlist items query: the list, a value or label prefix, and a page
/// cursor.
typedef WatchlistItemsQuery = ({String watchlistId, String prefix, String? cursor});

/// One page of a watchlist's items (`listWatchlistItems`), up to 100.
final watchlistItemsProvider = FutureProvider.family<Json, WatchlistItemsQuery>((ref, q) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(
    () => api.getWatchlistsApi().listWatchlistItems(
      watchlistId: q.watchlistId,
      q: q.prefix.trim().isEmpty ? null : q.prefix.trim(),
      cursor: q.cursor,
      limit: 100,
    ),
  );
  return toJsonMap(api.serializers, page);
});

/// Refreshes everything that lists or reads trigger rules.
void invalidateTriggers(WidgetRef ref, [String? id]) {
  ref.invalidate(triggersProvider);
  if (id != null) {
    ref.invalidate(triggerProvider(id));
  }
}
