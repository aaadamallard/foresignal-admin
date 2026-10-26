import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/access.dart';
import '../../core/permissions.dart';
import '../forecasting/forecasting_providers.dart' show Json;

/// `getMyPreferences`, read as JSON so a member or value this build has not
/// seen survives a save unchanged.
final myPreferencesProvider = FutureProvider<Json>(
  (ref) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/me/preferences'),
);

/// `listMyNotificationPreferences`, as JSON for the same reason.
final myNotificationPreferencesProvider = FutureProvider<List<Json>>(
  (ref) => jsonArrayCall(ref.watch(backendDioProvider), '/v1/me/notification-preferences'),
);

/// `getMyQuota`: the user's limits and their usage against each.
final myQuotaProvider = FutureProvider<Json>(
  (ref) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/me/quota'),
);

/// The zone the signed-in user's instants are shown in: their preference
/// (`getMyPreferences`), else their principal's (`getMe`); `null` (UTC)
/// for no session, or before either is known.
final displayZoneProvider = Provider<String?>((ref) {
  final access = ref.watch(accessProvider);
  if (access.kind != AccessKind.session) {
    return null;
  }
  final preferred = access.can(Permissions.selfPreferences)
      ? (ref.watch(myPreferencesProvider).value?['timezone'] as String?)
      : null;
  return preferred ?? ref.watch(meProvider).value?.principal.timezone;
});

/// The event types a notification preference can deliver, with their text.
const Map<String, String> notificationEventTypes = <String, String>{
  'mention': 'Mentions',
  'share': 'Shares',
  'report': 'Reports',
  'chronicle': 'Chronicles',
  'assessment': 'Assessments',
  'comment-reply': 'Comment replies',
};

/// The `updateMyPreferences` body from the preferences as read ([read]),
/// with the edits applied. Every member of [read] the editor does not own is
/// sent back as read. `notifications` writes through to every notification
/// preference, so only the members in [notifications] (the ones the user
/// changed) are sent, and none at all when it is empty.
Json preferencesUpdateBody(
  Json read, {
  required String? timezone,
  required String? locale,
  required String? theme,
  required Json ui,
  Json notifications = const <String, Object?>{},
}) => <String, Object?>{
  for (final e in read.entries)
    if (e.key != 'notifications') e.key: e.value,
  'timezone': timezone,
  'locale': locale,
  'theme': theme,
  'ui': ui,
  if (notifications.isNotEmpty) 'notifications': notifications,
};

/// The read-only members of a notification preference and of its channel,
/// which its input form leaves out.
const Set<String> _readOnlyPreference = <String>{'principalId', 'createdAt', 'updatedAt'};
const Set<String> _readOnlyChannel = <String>{'channelId', 'secretFields'};

/// A `NotificationPreference` as read, made into its input form: the same
/// members (unseen ones included) less the read-only ones. Secrets are not
/// sent, so the stored ones are kept.
Json notificationPreferenceInput(Json read) => <String, Object?>{
  for (final e in read.entries)
    if (!_readOnlyPreference.contains(e.key))
      e.key: e.key == 'channel' && e.value is Map
          ? <String, Object?>{
              for (final c in (e.value! as Map).cast<String, Object?>().entries)
                if (!_readOnlyChannel.contains(c.key)) c.key: c.value,
            }
          : e.value,
};
