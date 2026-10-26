import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/permissions.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart'
    show ConfirmRow, Footnote, PlainField, WriteTracking;
import 'roles_panel.dart';
import 'users_providers.dart';

/// The catalog groups in the order the editor shows them, with their
/// headings; a group this build has not seen follows under its own name.
const List<(String, String)> permissionGroups = <(String, String)>[
  ('identity', 'Identity'),
  ('platform', 'Platform (global)'),
  ('self', 'Self-service'),
  ('data', 'Data'),
];

/// [catalog] grouped by `group`, in [permissionGroups] order, then any other
/// group, then — under "Not in the catalog" — keys in [held] that the
/// catalog does not list (kept, never dropped).
List<(String, List<Permission>)> groupPermissions(List<Permission> catalog, Set<String> held) {
  final byGroup = <String, List<Permission>>{};
  for (final p in catalog) {
    byGroup.putIfAbsent(p.group, () => <Permission>[]).add(p);
  }
  final out = <(String, List<Permission>)>[
    for (final (group, label) in permissionGroups)
      if (byGroup[group] case final list?) (label, list),
    for (final entry in byGroup.entries)
      if (!permissionGroups.any((g) => g.$1 == entry.key)) (wireText(entry.key), entry.value),
  ];
  final known = <String>{for (final p in catalog) p.key};
  final unknown = held.where((k) => !known.contains(k)).toList()..sort();
  if (unknown.isNotEmpty) {
    out.add((
      'Not in the catalog',
      <Permission>[
        for (final k in unknown)
          Permission(
            (b) => b
              ..key = k
              ..group = 'unknown'
              ..description = 'Held by this role; the catalog this server sent does not list it.',
          ),
      ],
    ));
  }
  return out;
}

/// One role (`/users/roles/{id}`), or a new custom role
/// (`/users/roles/new`): its name, description and the permission editor.
/// A built-in role is read-only and cannot be deleted. A custom role is
/// saved with `createRole` or `updateRole` and re-read with `getRole`;
/// `deleteRole` sits behind a confirm, and a refusal (still assigned)
/// is shown. "Who has this" opens the Users list filtered to the role.
class RoleScreen extends ConsumerWidget {
  /// Creates the editor for [roleId], or for a new role when `null`.
  const RoleScreen({super.key, this.roleId});

  /// The role, or `null` for a new one.
  final String? roleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catalog = ref.watch(permissionCatalogProvider);
    final id = roleId;
    if (id == null) {
      return ListView(
        padding: const EdgeInsets.all(28),
        children: <Widget>[
          const PageHeader(
            title: 'New role',
            crumbs: <Crumb>[
              Crumb('Users & Roles', usersPath),
              Crumb('Roles', usersRolesPath),
              Crumb('New role'),
            ],
            subtitle: 'Compose a custom role from the permission catalog.',
          ),
          AsyncView<List<Permission>>(
            value: catalog,
            onRetry: () => ref.invalidate(permissionCatalogProvider),
            data: (list) => RoleEditor(catalog: list),
          ),
        ],
      );
    }
    final role = ref.watch(roleProvider(id));
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<Role>(
          value: role,
          onRetry: () => ref.invalidate(roleProvider(id)),
          data: (r) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              PageHeader(
                title: r.name,
                crumbs: <Crumb>[
                  const Crumb('Users & Roles', usersPath),
                  const Crumb('Roles', usersRolesPath),
                  Crumb(r.name),
                ],
                subtitle: r.description,
                titleTrailing: <Widget>[
                  StatusChip(
                    label: r.builtIn ? 'Built-in' : 'Custom',
                    tone: r.builtIn ? StatusTone.neutral : StatusTone.info,
                  ),
                ],
                actions: <Widget>[
                  TonalButton(
                    key: const Key('role.whoHas'),
                    label: r.userCount == null ? 'Who has this' : 'Who has this (${r.userCount})',
                    icon: Icons.people_outline,
                    onPressed: () => context.go(usersWithRolePath(r.id)),
                  ),
                ],
              ),
              AsyncView<List<Permission>>(
                value: catalog,
                onRetry: () => ref.invalidate(permissionCatalogProvider),
                data: (list) => RoleEditor(key: ValueKey<Role>(r), catalog: list, role: r),
              ),
              if (!r.builtIn) ...<Widget>[
                const SizedBox(height: 20),
                _DeleteRoleCard(role: r),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

/// Name, description and the grouped permission checkboxes of [role] (or a
/// new role), saved and re-read; read-only for a built-in role.
class RoleEditor extends ConsumerStatefulWidget {
  /// Creates the editor over [catalog] for [role] (`null` for a new role).
  const RoleEditor({super.key, required this.catalog, this.role});

  /// The permission catalog.
  final List<Permission> catalog;

  /// The role as read, or `null`.
  final Role? role;

  @override
  ConsumerState<RoleEditor> createState() => _RoleEditorState();
}

class _RoleEditorState extends ConsumerState<RoleEditor> with WriteTracking<RoleEditor> {
  late final TextEditingController _name = TextEditingController(text: widget.role?.name ?? '');
  late final TextEditingController _description = TextEditingController(
    text: widget.role?.description ?? '',
  );
  late Set<String> _held = <String>{...?widget.role?.permissions};
  String? _invalid;

  bool get _readOnly => widget.role?.builtIn ?? false;

  @override
  void dispose() {
    _name.dispose();
    _description.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final name = _name.text.trim();
    if (name.isEmpty) {
      setState(() => _invalid = 'Enter a name for the role.');
      return;
    }
    setState(() => _invalid = null);
    final api = ref.read(foresignalApiProvider).getRolesApi();
    final description = _description.text.trim();
    final held = <String>{..._held};
    final input = RoleInput(
      (b) => b
        ..name = name
        ..description = description.isEmpty ? null : description
        ..permissions = ListBuilder<String>(held),
    );
    String? confirmRole(Role r) {
      final back = r.permissions.toSet();
      if (r.name != name) {
        return 'The role reads back named ${r.name}.';
      }
      return back.length == held.length && back.containsAll(held)
          ? null
          : 'The role reads back with ${back.length} permissions, not ${held.length}.';
    }

    final existing = widget.role;
    if (existing == null) {
      final created = await track(() async {
        final role = await callApiRequired(() => api.createRole(roleInput: input));
        final reread = await callApiRequired(() => api.getRole(id: role.id));
        final difference = confirmRole(reread);
        if (difference != null) {
          throw WriteNotConfirmedException(difference);
        }
        return reread;
      });
      if (created != null && mounted) {
        ref.invalidate(rolesProvider);
        ref.invalidate(roleChoicesProvider);
        context.go(usersRolePath(created.id));
      }
      return;
    }
    final done = await track(
      () => writeThenConfirm<Role>(
        write: () => callApiRequired(() => api.updateRole(id: existing.id, roleInput: input)),
        reread: () => callApiRequired(() => api.getRole(id: existing.id)),
        confirm: confirmRole,
      ),
    );
    if (done != null && mounted) {
      ref.invalidate(rolesProvider);
      ref.invalidate(roleChoicesProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final groups = groupPermissions(widget.catalog, _held);
    final muted = AdminPalette.of(context).muted;
    final roles = ref.watch(rolesProvider).value ?? const <Role>[];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionCard(
          title: 'Role',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (_readOnly)
                const Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: ResultPanel(
                    key: Key('role.builtInNote'),
                    title: 'Built-in role',
                    tone: StatusTone.info,
                    message:
                        'Its name and permissions are fixed by the server and it cannot be deleted. '
                        'To grant a different set, create a custom role.',
                  ),
                ),
              LabeledField(
                label: 'Name',
                field: _readOnly
                    ? Text(_name.text)
                    : PlainField(key: const Key('role.name'), controller: _name),
              ),
              LabeledField(
                label: 'Description',
                field: _readOnly
                    ? Text(_description.text.isEmpty ? '—' : _description.text)
                    : PlainField(
                        key: const Key('role.description'),
                        controller: _description,
                        maxLines: 3,
                      ),
              ),
              if (widget.role == null && roles.isNotEmpty)
                LabeledField(
                  label: 'Start from',
                  help: 'Copies that role\'s permissions into this one.',
                  field: Align(
                    alignment: Alignment.centerLeft,
                    child: DropdownButton<String>(
                      key: const Key('role.startFrom'),
                      hint: const Text('An existing role'),
                      items: <DropdownMenuItem<String>>[
                        for (final r in roles)
                          DropdownMenuItem<String>(value: r.id, child: Text(r.name)),
                      ],
                      onChanged: (id) {
                        final from = roles.where((r) => r.id == id).firstOrNull;
                        if (from != null) {
                          setState(() => _held = <String>{...from.permissions});
                        }
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SectionCard(
          key: const Key('role.permissions'),
          title: 'Permissions',
          subtitle: '${_held.length} of ${widget.catalog.length} granted.',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for (final (label, permissions) in groups) ...<Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 4),
                  child: Text(
                    label,
                    key: Key('role.group.$label'),
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                for (final p in permissions)
                  CheckboxListTile(
                    key: Key('perm.${p.key}'),
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _held.contains(p.key),
                    onChanged: _readOnly || busy
                        ? null
                        : (on) => setState(() {
                            _held = on ?? false
                                ? <String>{..._held, p.key}
                                : (<String>{..._held}..remove(p.key));
                          }),
                    title: Text(p.key, style: const TextStyle(fontFamily: 'monospace')),
                    subtitle: (p.description ?? '').isEmpty
                        ? null
                        : Text(p.description!, style: TextStyle(color: muted, fontSize: 12)),
                  ),
              ],
              if (!_readOnly) ...<Widget>[
                if (_invalid != null)
                  ResultPanel(title: 'Check the role', tone: StatusTone.error, message: _invalid),
                const SizedBox(height: 12),
                Row(
                  children: <Widget>[
                    PermissionGate(
                      permission: Permissions.rolesManage,
                      child: FilledButton(
                        key: const Key('role.save'),
                        onPressed: busy ? null : _save,
                        child: Text(widget.role == null ? 'Create role' : 'Save Changes'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(child: statusLine),
                  ],
                ),
                const Footnote(
                  'Users holding this role pick up a change on their next permission refresh.',
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _DeleteRoleCard extends ConsumerStatefulWidget {
  const _DeleteRoleCard({required this.role});

  final Role role;

  @override
  ConsumerState<_DeleteRoleCard> createState() => _DeleteRoleCardState();
}

class _DeleteRoleCardState extends ConsumerState<_DeleteRoleCard>
    with WriteTracking<_DeleteRoleCard> {
  bool _confirming = false;

  Future<void> _delete() async {
    final api = ref.read(foresignalApiProvider).getRolesApi();
    final done = await track(() async {
      await callApi(() => api.deleteRole(id: widget.role.id));
      return true;
    });
    if (mounted) {
      setState(() => _confirming = false);
    }
    if (done != null && mounted) {
      ref.invalidate(rolesProvider);
      ref.invalidate(roleChoicesProvider);
      context.go(usersRolesPath);
    }
  }

  @override
  Widget build(BuildContext context) {
    final count = widget.role.userCount;
    return SectionCard(
      key: const Key('role.delete'),
      title: 'Delete role',
      subtitle: count != null && count > 0
          ? '$count user${count == 1 ? '' : 's'} hold this role; the server refuses to delete a role still assigned. '
                'Change their roles first.'
          : 'Removes this custom role.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_confirming)
            ConfirmRow(
              confirmKey: const Key('role.confirmDelete'),
              message: 'Delete the ${widget.role.name} role? This cannot be undone.',
              action: 'Delete',
              onConfirm: _delete,
              onCancel: () => setState(() => _confirming = false),
            )
          else
            Align(
              alignment: Alignment.centerLeft,
              child: PermissionGate(
                permission: Permissions.rolesManage,
                child: DangerButton(
                  key: const Key('role.deleteButton'),
                  label: 'Delete role',
                  icon: Icons.delete_outline,
                  onPressed: busy ? null : () => setState(() => _confirming = true),
                ),
              ),
            ),
          const SizedBox(height: 8),
          statusLine,
        ],
      ),
    );
  }
}
