import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/api.dart';
import 'nav.dart';
import 'permissions.dart';

/// Which credential the app is running on, which decides who governs access.
enum AccessKind {
  /// A signed-in user: the permission model governs.
  session,

  /// The pasted admin token, with no session: full access (machine and
  /// break-glass use).
  adminToken,

  /// Neither: reads only, while the backend's open reads allow them.
  anonymous,
}

/// The current principal and the set of effective permissions — the one
/// place the UI asks "may this user do that?".
class AccessState {
  /// Creates the state.
  const AccessState({
    required this.kind,
    this.permissions = const <String>{},
    this.user,
    this.email,
  });

  /// Full access on the admin token.
  const AccessState.adminToken() : this(kind: AccessKind.adminToken);

  /// No credential at all.
  const AccessState.anonymous() : this(kind: AccessKind.anonymous);

  /// Which credential is in use.
  final AccessKind kind;

  /// The effective permissions (the union of the user's roles), exactly as
  /// the server sent them; empty unless [kind] is [AccessKind.session].
  final Set<String> permissions;

  /// The signed-in user, once `getMe` has described them.
  final User? user;

  /// The email the user signed in with.
  final String? email;

  /// Whether the current principal may do what [permission] guards. The
  /// admin token may do everything; with no credential, nothing is allowed
  /// (writes are refused before they are sent).
  bool can(String permission) => switch (kind) {
    AccessKind.adminToken => true,
    AccessKind.session => permissions.contains(permission),
    AccessKind.anonymous => false,
  };

  /// Whether [can] holds for at least one of [anyOf]; an empty set always
  /// holds.
  bool canAny(Iterable<String> anyOf) => anyOf.isEmpty || anyOf.any(can);

  /// Whether the principal holds every permission of [tier] (so a custom role
  /// with the same permissions passes too).
  bool holdsTier(RoleTier tier) => tier.permissions.every(can);

  /// Whether the principal holds the Admin tier's permissions.
  bool get isAdmin => holdsTier(RoleTier.admin);

  /// Whether the principal holds the Operator tier's permissions.
  bool get isOperator => holdsTier(RoleTier.operator);

  /// Whether the principal holds the Editor tier's permissions.
  bool get isEditor => holdsTier(RoleTier.editor);

  /// Whether the principal holds the Viewer tier's permissions.
  bool get isViewer => holdsTier(RoleTier.viewer);

  /// Whether the principal holds the Auditor tier's permissions.
  bool get isAuditor => holdsTier(RoleTier.auditor);

  /// Whether [section] is mounted for this principal. Anonymous use keeps
  /// every section the backend serves openly, as before sign-in existed.
  bool canSee(NavSection section) =>
      kind == AccessKind.anonymous || canAny(section.readPermissions);

  /// Whether this principal may change what [section] configures.
  bool canChange(NavSection section) => canAny(section.writePermissions);
}

/// Whether an admin token is stored. Connect invalidates it when the token
/// is saved or forgotten.
final adminTokenPresentProvider = FutureProvider<bool>((ref) async {
  final token = await ref.watch(adminTokenStoreProvider).read();
  return token != null && token.isNotEmpty;
});

/// The signed-in principal from `getMe` (`null` when nobody is signed in).
/// Read at startup and after a sign-in; [refreshAccess] reads it again after
/// a role change. Its `permissions` replace the ones the login returned.
final meProvider = FutureProvider<Me?>((ref) async {
  final session = ref.watch(sessionControllerProvider.select((s) => s.session?.token));
  if (session == null || ref.watch(backendEndpointProvider) == null) {
    return null;
  }
  final me = await callApiRequired(
    () => ref.read(foresignalApiProvider).getCollaborationApi().getMe(),
  );
  final permissions = me.permissions;
  if (permissions != null) {
    await ref.read(sessionControllerProvider.notifier).updatePermissions(permissions.toList());
  }
  return me;
});

/// Reads the current user's effective permissions again (after a role
/// change, or when a 403 suggests they changed).
void refreshAccess(WidgetRef ref) => ref.invalidate(meProvider);

/// The current [AccessState]: seeded from the permissions the login
/// returned, refreshed by `getMe`; full access on the admin token alone.
final accessProvider = Provider<AccessState>((ref) {
  final session = ref.watch(sessionControllerProvider).session;
  if (session != null) {
    final me = ref.watch(meProvider).value;
    final fromMe = me?.permissions;
    return AccessState(
      kind: AccessKind.session,
      permissions: Set<String>.unmodifiable(fromMe ?? session.permissions),
      user: me?.user,
      email: me?.user?.email ?? session.email,
    );
  }
  final hasToken = ref.watch(adminTokenPresentProvider).value ?? false;
  return hasToken ? const AccessState.adminToken() : const AccessState.anonymous();
});

/// The permission a 403 says the action needed: the problem's
/// `requiredPermission`, which the backend sends with `PERMISSION_DENIED`
/// (the contract's `Problem` does not list the member yet; it is read from
/// the body as sent). `null` for anything else.
String? requiredPermissionOf(Object error) {
  if (error is! ProblemException || error.status != 403) {
    return null;
  }
  final permission = error.body['requiredPermission'];
  return permission is String && permission.isNotEmpty ? permission : null;
}

/// Whether [error] is a 403 refusing a signed-in user's permission (as
/// opposed to an API token's scope).
bool isPermissionDenied(Object error) =>
    error is ProblemException &&
    error.status == 403 &&
    (error.code == 'PERMISSION_DENIED' || requiredPermissionOf(error) != null);
