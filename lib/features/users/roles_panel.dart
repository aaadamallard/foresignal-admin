import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/permissions.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import 'users_providers.dart';

/// The permission catalog (`listPermissions`).
final permissionCatalogProvider = FutureProvider<List<Permission>>((ref) async {
  final list = await callApiRequired(
    () => ref.watch(foresignalApiProvider).getRolesApi().listPermissions(),
  );
  return list.items.toList();
});

/// One role (`getRole`).
final roleProvider = FutureProvider.family<Role, String>(
  (ref, id) =>
      callApiRequired(() => ref.watch(foresignalApiProvider).getRolesApi().getRole(id: id)),
);

/// The Roles tab: built-in and custom roles from `listRoles`, with whether
/// each is built in, how many permissions it grants and, when the server
/// says, how many users hold it. Built-ins open read-only; New role opens the
/// permission editor.
class RolesPanel extends ConsumerWidget {
  /// Creates the panel.
  const RolesPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('roles'),
      title: 'Roles',
      subtitle: 'A role is a named set of permissions; a user holds the union of their roles.',
      actions: <Widget>[
        PermissionGate(
          permission: Permissions.rolesManage,
          child: FilledButton.icon(
            key: const Key('roles.add'),
            onPressed: () => context.go(usersNewRolePath),
            icon: const Icon(Icons.add, size: 18),
            label: const Text('New role'),
          ),
        ),
      ],
      child: AsyncView<List<Role>>(
        value: ref.watch(rolesProvider),
        onRetry: () => ref.invalidate(rolesProvider),
        data: (roles) => DataTableCard<Role>(
          key: const Key('roles.table'),
          rows: roles,
          empty: 'No roles. New role composes one from the permission catalog.',
          onTap: (r) => context.go(usersRolePath(r.id)),
          columns: <TableColumnSpec<Role>>[
            TableColumnSpec<Role>(
              label: 'Role',
              sortBy: (r) => r.name,
              cell: (r) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(r.name, style: const TextStyle(fontWeight: FontWeight.w600)),
                  if ((r.description ?? '').isNotEmpty)
                    Text(r.description!, style: TextStyle(fontSize: 12, color: muted)),
                ],
              ),
            ),
            TableColumnSpec<Role>(
              label: 'Kind',
              sortBy: (r) => r.builtIn,
              cell: (r) => StatusChip(
                key: Key('roles.kind.${r.name}'),
                label: r.builtIn ? 'Built-in' : 'Custom',
                tone: r.builtIn ? StatusTone.neutral : StatusTone.info,
              ),
            ),
            TableColumnSpec<Role>(
              label: 'Permissions',
              numeric: true,
              sortBy: (r) => r.permissions.length,
              cell: (r) => Text('${r.permissions.length}'),
            ),
            TableColumnSpec<Role>(
              label: 'Users',
              numeric: true,
              sortBy: (r) => r.userCount,
              cell: (r) => Text(r.userCount?.toString() ?? '—'),
            ),
          ],
        ),
      ),
    );
  }
}
