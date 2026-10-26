import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';

/// The most pages a list reads before stopping (500 rows each).
const int maxListPages = 20;

/// The Users list's server-side filter: `status` and the search text `q`.
typedef UserFilter = ({String? status, String q});

/// Every user matching [UserFilter] (`listUsers`, all pages).
final usersProvider = FutureProvider.family<List<User>, UserFilter>((ref, filter) async {
  final api = ref.watch(foresignalApiProvider).getUsersApi();
  final users = <User>[];
  String? cursor;
  for (var page = 0; page < maxListPages; page++) {
    final result = await callApiRequired(
      () => api.listUsers(
        status: filter.status,
        q: filter.q.trim().isEmpty ? null : filter.q.trim(),
        cursor: cursor,
        limit: 500,
      ),
    );
    users.addAll(result.items);
    cursor = result.nextCursor;
    if (cursor == null || cursor.isEmpty) {
      break;
    }
  }
  return users;
});

/// One user (`getUser`).
final userProvider = FutureProvider.family<User, String>(
  (ref, id) =>
      callApiRequired(() => ref.watch(foresignalApiProvider).getUsersApi().getUser(id: id)),
);

/// Every role (`listRoles`, all pages).
final rolesProvider = FutureProvider<List<Role>>((ref) async {
  final api = ref.watch(foresignalApiProvider).getRolesApi();
  final roles = <Role>[];
  String? cursor;
  for (var page = 0; page < maxListPages; page++) {
    final result = await callApiRequired(() => api.listRoles(cursor: cursor, limit: 500));
    roles.addAll(result.items);
    cursor = result.nextCursor;
    if (cursor == null || cursor.isEmpty) {
      break;
    }
  }
  return roles;
});

/// A role a user can be given: its id and name.
typedef RoleChoice = ({String id, String name});

/// The roles the role pickers offer: `listRoles` when the caller may read it
/// (`roles.manage`); otherwise every role already held by a listed user, so
/// an admin with `users.manage` alone can still assign the roles in use.
final roleChoicesProvider = FutureProvider<List<RoleChoice>>((ref) async {
  try {
    final roles = await ref.watch(rolesProvider.future);
    return <RoleChoice>[for (final r in roles) (id: r.id, name: r.name)];
  } on ProblemException catch (error) {
    if (error.status != 403) {
      rethrow;
    }
  }
  final users = await ref.watch(usersProvider((status: null, q: '')).future);
  final byId = <String, RoleChoice>{};
  for (final u in users) {
    for (final r in u.roles) {
      byId[r.id] = (id: r.id, name: r.name);
    }
  }
  final choices = byId.values.toList()..sort((a, b) => a.name.compareTo(b.name));
  return choices;
});

/// One user's quota (`getUserQuota`).
final userQuotaProvider = FutureProvider.family<Quota, String>(
  (ref, id) =>
      callApiRequired(() => ref.watch(foresignalApiProvider).getQuotasApi().getUserQuota(id: id)),
);

/// Refreshes every list and record that shows users.
void invalidateUsers(WidgetRef ref) {
  ref.invalidate(usersProvider);
  ref.invalidate(userProvider);
  ref.invalidate(roleChoicesProvider);
}
