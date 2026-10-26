import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/access.dart';
import '../../core/permissions.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart' show whenText;
import 'add_user_dialog.dart';
import 'roles_panel.dart';
import 'user_widgets.dart';
import 'users_providers.dart';

/// The tabs of the Users & Roles section.
enum UsersTab {
  /// The user list (`users.manage`).
  users('Users', usersPath, Permissions.usersManage),

  /// The roles (`roles.manage`).
  roles('Roles', usersRolesPath, Permissions.rolesManage);

  const UsersTab(this.label, this.path, this.permission);

  /// The tab text.
  final String label;

  /// The tab's route.
  final String path;

  /// The permission that mounts the tab.
  final String permission;
}

/// Users & Roles (desktop, `users.manage` or `roles.manage`): the user list
/// and each user's lifecycle, and the roles. Each tab is mounted only for a
/// user who holds its permission; with one of the two, the section opens on
/// that one.
class UsersRolesScreen extends ConsumerWidget {
  /// Creates the screen on [tab]; `null` opens the first tab the user may
  /// see.
  const UsersRolesScreen({super.key, this.tab, this.roleFilter});

  /// The tab shown.
  final UsersTab? tab;

  /// The Users list's role filter (a role id), from a role's "Who has this".
  final String? roleFilter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = ref.watch(accessProvider);
    final tabs = <UsersTab>[
      for (final t in UsersTab.values)
        if (access.can(t.permission)) t,
    ];
    if (tabs.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(28),
        child: PermissionDeniedPanel(
          permissions: <String>{Permissions.usersManage, Permissions.rolesManage},
        ),
      );
    }
    final shown = tab != null && tabs.contains(tab) ? tab! : tabs.first;
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: shown == UsersTab.users ? 'Users & Roles' : shown.label,
          crumbs: <Crumb>[const Crumb('Users & Roles', usersPath), Crumb(shown.label)],
          subtitle: 'Who can sign in, what each person may do, and the roles that grant it.',
        ),
        if (tab != null && !tabs.contains(tab)) ...<Widget>[
          PermissionDeniedPanel(permissions: <String>{tab!.permission}),
          const SizedBox(height: 16),
        ],
        DefaultTabController(
          key: ValueKey<UsersTab>(shown),
          length: tabs.length,
          initialIndex: tabs.indexOf(shown),
          child: Builder(
            builder: (context) => TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              onTap: (i) {
                // The tab shown follows the route alone (see SystemScreen).
                DefaultTabController.of(context).index = tabs.indexOf(shown);
                context.go(tabs[i].path);
              },
              tabs: <Widget>[
                for (final t in tabs) Tab(key: Key('users.tab.${t.name}'), text: t.label),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        switch (shown) {
          UsersTab.users => UsersPanel(initialRole: roleFilter),
          UsersTab.roles => const RolesPanel(),
        },
      ],
    );
  }
}

/// The user list: a table from `listUsers` with status, roles, MFA and last
/// login; filtered by status and role and searched by email or name. Add
/// user opens the invite dialog; a row opens the user.
class UsersPanel extends ConsumerStatefulWidget {
  /// Creates the panel, filtered to [initialRole] when given.
  const UsersPanel({super.key, this.initialRole});

  /// A role id to filter by at first.
  final String? initialRole;

  @override
  ConsumerState<UsersPanel> createState() => _UsersPanelState();
}

class _UsersPanelState extends ConsumerState<UsersPanel> {
  final TextEditingController _search = TextEditingController();
  String? _status;
  String _query = '';
  late String? _role = widget.initialRole;

  /// The statuses the contract lists, for the filter.
  static const List<String> statuses = <String>['invited', 'active', 'suspended', 'disabled'];

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  Future<void> _add() async {
    final created = await showDialog<User>(context: context, builder: (_) => const AddUserDialog());
    if (created != null && mounted) {
      invalidateUsers(ref);
    }
  }

  @override
  Widget build(BuildContext context) {
    final filter = (status: _status, q: _query);
    final value = ref.watch(usersProvider(filter));
    final muted = AdminPalette.of(context).muted;
    final roleNames = <String, String>{
      for (final u in value.value ?? const <User>[])
        for (final r in u.roles) r.id: r.name,
      for (final r in ref.watch(roleChoicesProvider).value ?? const <RoleChoice>[]) r.id: r.name,
    };
    return SectionCard(
      key: const Key('users'),
      title: 'Users',
      subtitle: 'Adding a user emails them an activation link; the account starts invited.',
      actions: <Widget>[
        PermissionGate(
          permission: Permissions.usersManage,
          child: FilledButton.icon(
            key: const Key('users.add'),
            onPressed: _add,
            icon: const Icon(Icons.person_add, size: 18),
            label: const Text('Add user'),
          ),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            spacing: 12,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 280,
                child: TextField(
                  key: const Key('users.search'),
                  controller: _search,
                  decoration: const InputDecoration(
                    isDense: true,
                    prefixIcon: Icon(Icons.search, size: 18),
                    hintText: 'Search email or name',
                  ),
                  onSubmitted: (v) => setState(() => _query = v),
                ),
              ),
              DropdownButton<String?>(
                key: const Key('users.status'),
                value: _status,
                hint: const Text('Any status'),
                items: <DropdownMenuItem<String?>>[
                  const DropdownMenuItem<String?>(child: Text('Any status')),
                  for (final s in statuses)
                    DropdownMenuItem<String?>(value: s, child: Text(wireText(s))),
                ],
                onChanged: (v) => setState(() => _status = v),
              ),
              DropdownButton<String?>(
                key: const Key('users.role'),
                value: roleNames.containsKey(_role) ? _role : null,
                hint: const Text('Any role'),
                items: <DropdownMenuItem<String?>>[
                  const DropdownMenuItem<String?>(child: Text('Any role')),
                  for (final e in roleNames.entries)
                    DropdownMenuItem<String?>(value: e.key, child: Text(e.value)),
                ],
                onChanged: (v) => setState(() => _role = v),
              ),
            ],
          ),
          const SizedBox(height: 12),
          AsyncView<List<User>>(
            value: value,
            onRetry: () => ref.invalidate(usersProvider(filter)),
            data: (users) {
              final rows = _role == null
                  ? users
                  : users.where((u) => u.roles.any((r) => r.id == _role)).toList();
              return DataTableCard<User>(
                key: const Key('users.table'),
                rows: rows,
                empty: _status == null && _query.isEmpty && _role == null
                    ? 'No users yet. Add user invites the first one.'
                    : 'No users match these filters.',
                onTap: (u) => context.go(userPath(u.id)),
                columns: <TableColumnSpec<User>>[
                  TableColumnSpec<User>(
                    label: 'User',
                    sortBy: (u) => u.email,
                    cell: (u) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(u.fullName, style: const TextStyle(fontWeight: FontWeight.w600)),
                        Text(u.email, style: TextStyle(fontSize: 12, color: muted)),
                      ],
                    ),
                  ),
                  TableColumnSpec<User>(
                    label: 'Status',
                    sortBy: (u) => u.status,
                    cell: (u) => UserStatusChip(status: u.status),
                  ),
                  TableColumnSpec<User>(
                    label: 'Roles',
                    cell: (u) =>
                        Text(u.roles.isEmpty ? 'None' : u.roles.map((r) => r.name).join(', ')),
                  ),
                  TableColumnSpec<User>(
                    label: 'MFA',
                    sortBy: (u) => u.mfaEnabled ?? false,
                    cell: (u) => Text((u.mfaEnabled ?? false) ? 'On' : 'Off'),
                  ),
                  TableColumnSpec<User>(
                    label: 'Last sign-in',
                    sortBy: (u) => u.lastLoginAt,
                    cell: (u) => Text(
                      u.lastLoginAt == null ? 'Never' : whenText(u.lastLoginAt!.toIso8601String()),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
