import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/device_id.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../vetting/vetting_drafts.dart' show toJsonMap;
import 'notifications_drafts.dart';

export '../forecasting/forecasting_providers.dart' show Json, jsonList, jsonMap;

/// A page of the notification inbox newest first (`listNotifications`) for
/// [filter], read with this installation's [deviceId].
Future<({List<Json> items, String? nextCursor})> loadNotifications(
  ForesignalApi api,
  String deviceId,
  NotificationFilter filter, {
  String? cursor,
  int limit = 100,
}) async {
  final page = await callApiRequired(
    () => api.getNotificationsApi().listNotifications(
      unread: filter.unreadOnly ? true : null,
      events: filter.event == null ? null : BuiltList<String>(<String>[filter.event!]),
      minSeverity: filter.minSeverity,
      cursor: cursor,
      limit: limit,
      foresignalDeviceId: deviceId,
    ),
  );
  return (
    items: <Json>[for (final n in page.items) toJsonMap(api.serializers, n)],
    nextCursor: page.nextCursor,
  );
}

/// This device's unread counts (`getNotificationBadge`).
final notificationBadgeProvider = FutureProvider<Json>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final deviceId = await ref.watch(deviceIdProvider.future);
  final badge = await callApiRequired(
    () => api.getNotificationsApi().getNotificationBadge(foresignalDeviceId: deviceId),
  );
  return toJsonMap(api.serializers, badge);
});

/// One notification with its links and fresh action capabilities
/// (`getNotification`).
final notificationProvider = FutureProvider.family<Json, int>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final deviceId = await ref.watch(deviceIdProvider.future);
  final n = await callApiRequired(
    () => api.getNotificationsApi().getNotification(notificationId: id, foresignalDeviceId: deviceId),
  );
  return toJsonMap(api.serializers, n);
});

/// Marks notifications read on this device (`markNotificationsRead`): the
/// cursor up to [upToId], or the sparse [ids]. Returns the new badge.
Future<Json> markNotificationsRead(WidgetRef ref, {int? upToId, List<int>? ids}) async {
  final deviceId = await ref.read(deviceIdProvider.future);
  // Sent as plain JSON: the generated method does not serialize its
  // JsonObject body (see jsonCall).
  return jsonObjectCall(
    ref.read(backendDioProvider),
    'POST',
    '/v1/notifications/read',
    body: upToId != null ? <String, Object?>{'upToId': upToId} : <String, Object?>{'ids': ids},
    headers: <String, Object?>{deviceIdHeader: deviceId},
  );
}

/// The native push providers (`listPushProviders`, admin).
final pushProvidersProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getPushApi().listPushProviders());
  return <Json>[for (final p in list) toJsonMap(api.serializers, p)];
});

/// The registered native devices (`listPushDevices`).
final pushDevicesProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getPushApi().listPushDevices());
  return <Json>[for (final d in list) toJsonMap(api.serializers, d)];
});

/// The Web Push subscriptions (`listPushSubscriptions`).
final pushSubscriptionsProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getPushApi().listPushSubscriptions());
  return <Json>[for (final s in list) toJsonMap(api.serializers, s)];
});

/// The VAPID public key (`getVapidPublicKey`); `null` while Web Push is not
/// configured (404).
final vapidKeyProvider = FutureProvider<String?>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  try {
    final key = await callApiRequired(() => api.getPushApi().getVapidPublicKey());
    return key.publicKey;
  } on ProblemException catch (e) {
    if (e.status == 404) {
      return null;
    }
    rethrow;
  }
});

/// One provider, read from [pushProvidersProvider] (the contract has no
/// single-provider read); `null` when there is none with [id].
final pushProviderProvider = FutureProvider.family<Json?, String>((ref, id) async {
  final all = await ref.watch(pushProvidersProvider.future);
  return all.where((p) => p['id'] == id).firstOrNull;
});

/// One device, read from [pushDevicesProvider] (the contract has no
/// single-device read); `null` when there is none with [id].
final pushDeviceProvider = FutureProvider.family<Json?, String>((ref, id) async {
  final all = await ref.watch(pushDevicesProvider.future);
  return all.where((d) => d['id'] == id).firstOrNull;
});
