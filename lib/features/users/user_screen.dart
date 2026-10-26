import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/access.dart';
import '../../core/permissions.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart'
    show ConfirmRow, Footnote, PlainField, WriteTracking, whenText;
import 'user_widgets.dart';
import 'users_providers.dart';

/// One user's editor (`/users/{id}`): profile fields, roles, suspend or
/// unsuspend, reset password, resend the invite, the per-user quota, and
/// delete with an explicit reassign-or-delete choice for what they own.
/// Every change is re-read to confirm. The signed-in admin may edit their
/// own account; a change that would lock them out is refused by the server,
/// and the refusal is shown.
class UserScreen extends ConsumerWidget {
  /// Creates the editor for user [userId].
  const UserScreen({super.key, required this.userId});

  /// The user's id.
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(userProvider(userId));
    final access = ref.watch(accessProvider);
    final session = ref.watch(sessionControllerProvider).session;
    final self = session?.userId == userId || access.user?.id == userId;
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<User>(
          value: value,
          onRetry: () => ref.invalidate(userProvider(userId)),
          data: (user) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              PageHeader(
                title: user.fullName,
                crumbs: <Crumb>[
                  const Crumb('Users & Roles', usersPath),
                  const Crumb('Users', usersPath),
                  Crumb(user.fullName),
                ],
                subtitle: user.email,
                titleTrailing: <Widget>[
                  UserStatusChip(status: user.status),
                  if (self)
                    const StatusChip(key: Key('user.self'), label: 'You', tone: StatusTone.info),
                ],
              ),
              _Summary(user: user),
              const SizedBox(height: 20),
              _ProfileCard(user: user),
              const SizedBox(height: 20),
              _RolesCard(user: user, self: self),
              const SizedBox(height: 20),
              _AccountCard(user: user, self: self),
              const SizedBox(height: 20),
              _QuotaCard(userId: user.id),
              const SizedBox(height: 20),
              _DeleteCard(user: user, self: self),
            ],
          ),
        ),
      ],
    );
  }
}

class _Summary extends StatelessWidget {
  const _Summary({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) => SectionCard(
    title: 'Account',
    child: KeyValueList(
      entries: <MapEntry<String, Object>>[
        MapEntry<String, Object>('Status', UserStatusChip(status: user.status)),
        MapEntry<String, Object>('MFA', (user.mfaEnabled ?? false) ? 'On' : 'Off'),
        MapEntry<String, Object>(
          'Last sign-in',
          user.lastLoginAt == null ? 'Never' : whenText(user.lastLoginAt!.toIso8601String()),
        ),
        MapEntry<String, Object>(
          'Created',
          user.createdAt == null ? '—' : whenText(user.createdAt!.toIso8601String()),
        ),
        MapEntry<String, Object>('Created by', user.createdBy ?? 'The first-run setup'),
      ],
    ),
  );
}

/// Full name and email → `updateUser`, re-read with `getUser`.
class _ProfileCard extends ConsumerStatefulWidget {
  const _ProfileCard({required this.user});

  final User user;

  @override
  ConsumerState<_ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends ConsumerState<_ProfileCard> with WriteTracking<_ProfileCard> {
  late final TextEditingController _name = TextEditingController(text: widget.user.fullName);
  late final TextEditingController _email = TextEditingController(text: widget.user.email);

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final api = ref.read(foresignalApiProvider).getUsersApi();
    final id = widget.user.id;
    final name = _name.text.trim();
    final email = _email.text.trim();
    final done = await track(
      () => writeThenConfirm<User>(
        write: () => callApiRequired(
          () => api.updateUser(
            id: id,
            userUpdate: UserUpdate(
              (b) => b
                ..fullName = name
                ..email = email,
            ),
          ),
        ),
        reread: () => callApiRequired(() => api.getUser(id: id)),
        confirm: (u) => u.fullName == name && u.email.toLowerCase() == email.toLowerCase()
            ? null
            : 'The user reads back as ${u.fullName} <${u.email}>.',
      ),
    );
    if (done != null && mounted) {
      invalidateUsers(ref);
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('user.profile'),
    title: 'Profile',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'Full name',
          field: PlainField(key: const Key('user.name'), controller: _name),
        ),
        LabeledField(
          label: 'Email',
          help: 'Their sign-in and where their emails go.',
          field: PlainField(key: const Key('user.email'), controller: _email),
        ),
        const SizedBox(height: 8),
        Row(
          children: <Widget>[
            PermissionGate(
              permission: Permissions.usersManage,
              child: FilledButton(
                key: const Key('user.saveProfile'),
                onPressed: busy ? null : _save,
                child: const Text('Save Changes'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(child: statusLine),
          ],
        ),
      ],
    ),
  );
}

/// The role set → `setUserRoles`, re-read with `getUser`.
class _RolesCard extends ConsumerStatefulWidget {
  const _RolesCard({required this.user, required this.self});

  final User user;
  final bool self;

  @override
  ConsumerState<_RolesCard> createState() => _RolesCardState();
}

class _RolesCardState extends ConsumerState<_RolesCard> with WriteTracking<_RolesCard> {
  late Set<String> _roles = <String>{for (final r in widget.user.roles) r.id};

  Future<void> _save() async {
    final api = ref.read(foresignalApiProvider).getUsersApi();
    final id = widget.user.id;
    final roles = <String>{..._roles};
    final done = await track(
      () => writeThenConfirm<User>(
        write: () => callApiRequired(
          () => api.setUserRoles(
            id: id,
            roleAssignment: RoleAssignment((b) => b..roles = ListBuilder<String>(roles)),
          ),
        ),
        reread: () => callApiRequired(() => api.getUser(id: id)),
        confirm: (u) {
          final held = <String>{for (final r in u.roles) r.id};
          return held.length == roles.length && held.containsAll(roles)
              ? null
              : 'The user reads back with ${u.roles.map((r) => r.name).join(', ')}.';
        },
      ),
    );
    if (done != null && mounted) {
      invalidateUsers(ref);
      if (widget.self) {
        refreshAccess(ref);
      }
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('user.roles'),
    title: 'Roles',
    subtitle:
        'Their permissions are the union of these roles. The user is emailed about the change.',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        AsyncView<List<RoleChoice>>(
          value: ref.watch(roleChoicesProvider),
          onRetry: () => ref.invalidate(roleChoicesProvider),
          data: (choices) => RolePicker(
            choices: choices,
            held: <RoleChoice>[for (final r in widget.user.roles) (id: r.id, name: r.name)],
            selected: _roles,
            enabled: !busy,
            onChanged: (v) => setState(() => _roles = v),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: <Widget>[
            PermissionGate(
              permission: Permissions.usersManage,
              child: FilledButton(
                key: const Key('user.saveRoles'),
                onPressed: busy ? null : _save,
                child: const Text('Save Roles'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(child: statusLine),
          ],
        ),
        Footnote(
          widget.self
              ? 'These are your own roles. Removing your last admin role is refused by the server; '
                    'any change applies to you once your permissions are read again.'
              : 'A signed-in user picks up the change on their next permission refresh '
                    '(sign-in, app start, or reload).',
        ),
      ],
    ),
  );
}

/// Suspend or unsuspend, reset the password, resend the invite.
class _AccountCard extends ConsumerStatefulWidget {
  const _AccountCard({required this.user, required this.self});

  final User user;
  final bool self;

  @override
  ConsumerState<_AccountCard> createState() => _AccountCardState();
}

class _AccountCardState extends ConsumerState<_AccountCard> with WriteTracking<_AccountCard> {
  bool _confirmSuspend = false;
  UserLinkIssued? _link;

  bool get _suspended => widget.user.status == 'suspended';

  Future<void> _setSuspended(bool suspend) async {
    final api = ref.read(foresignalApiProvider).getUsersApi();
    final id = widget.user.id;
    final done = await track(
      () => writeThenConfirm<User>(
        write: () =>
            callApiRequired(() => suspend ? api.suspendUser(id: id) : api.unsuspendUser(id: id)),
        reread: () => callApiRequired(() => api.getUser(id: id)),
        confirm: (u) =>
            (u.status == 'suspended') == suspend ? null : 'The user reads back as ${u.status}.',
      ),
    );
    if (mounted) {
      setState(() => _confirmSuspend = false);
    }
    if (done != null && mounted) {
      invalidateUsers(ref);
    }
  }

  Future<void> _issue({required bool invite}) async {
    final api = ref.read(foresignalApiProvider).getUsersApi();
    final id = widget.user.id;
    final link = await track(
      () => callApiRequired(
        () => invite ? api.resendUserInvite(id: id) : api.adminResetUserPassword(id: id),
      ),
    );
    if (link != null && mounted) {
      setState(() => _link = link);
    }
  }

  @override
  Widget build(BuildContext context) {
    final invited = widget.user.status == 'invited';
    final link = _link;
    return SectionCard(
      key: const Key('user.account'),
      title: 'Access',
      subtitle: 'Suspend, reset the password, or send the invite again.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_confirmSuspend)
            ConfirmRow(
              confirmKey: const Key('user.confirmSuspend'),
              message: widget.self
                  ? 'Suspend your own account? You are signed out everywhere at once; the server refuses it if '
                        'you are the last admin.'
                  : 'Suspend ${widget.user.fullName}? Every session they have is revoked at once and they cannot '
                        'sign in. Their account and what they own are kept.',
              action: 'Suspend',
              onConfirm: () => _setSuspended(true),
              onCancel: () => setState(() => _confirmSuspend = false),
            ),
          PermissionGate(
            permission: Permissions.usersManage,
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: <Widget>[
                if (_suspended)
                  TonalButton(
                    key: const Key('user.unsuspend'),
                    label: 'Unsuspend',
                    icon: Icons.lock_open,
                    onPressed: busy ? null : () => _setSuspended(false),
                  )
                else
                  TonalButton(
                    key: const Key('user.suspend'),
                    label: 'Suspend',
                    icon: Icons.block,
                    onPressed: busy ? null : () => setState(() => _confirmSuspend = true),
                  ),
                TonalButton(
                  key: const Key('user.resetPassword'),
                  label: 'Send password reset',
                  icon: Icons.password,
                  onPressed: busy ? null : () => _issue(invite: false),
                ),
                if (invited)
                  TonalButton(
                    key: const Key('user.resendInvite'),
                    label: 'Resend invite',
                    icon: Icons.forward_to_inbox,
                    onPressed: busy ? null : () => _issue(invite: true),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          statusLine,
          if (link != null) ...<Widget>[
            const SizedBox(height: 10),
            LinkIssuedPanel(
              link: link,
              email: widget.user.email,
              onDismiss: () => setState(() => _link = null),
            ),
          ],
        ],
      ),
    );
  }
}

/// The per-user quota → `updateUserQuota`, re-read with `getUserQuota`.
class _QuotaCard extends ConsumerWidget {
  const _QuotaCard({required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) => SectionCard(
    key: const Key('user.quota'),
    title: 'Quota',
    subtitle: 'Limits for this user alone; leave one empty for the instance default.',
    child: AsyncView<Quota>(
      value: ref.watch(userQuotaProvider(userId)),
      onRetry: () => ref.invalidate(userQuotaProvider(userId)),
      data: (quota) => QuotaEditor(key: ValueKey<Quota>(quota), userId: userId, quota: quota),
    ),
  );
}

/// The members of `Quota`, with their labels, in the order shown.
const List<(String, String)> quotaMembers = <(String, String)>[
  ('apiRateLimitPerMinute', 'API requests per minute'),
  ('maxStorageBytes', 'Storage (bytes)'),
  ('maxAlerts', 'Alert rules'),
  ('maxChannels', 'Channels'),
  ('maxSavedViews', 'Saved views'),
];

/// Reads [member] of [quota].
int? quotaValue(Quota quota, String member) => switch (member) {
  'apiRateLimitPerMinute' => quota.apiRateLimitPerMinute,
  'maxStorageBytes' => quota.maxStorageBytes,
  'maxAlerts' => quota.maxAlerts,
  'maxChannels' => quota.maxChannels,
  'maxSavedViews' => quota.maxSavedViews,
  _ => null,
};

/// The quota fields of one user.
class QuotaEditor extends ConsumerStatefulWidget {
  /// Creates the editor over [quota] as read.
  const QuotaEditor({super.key, required this.userId, required this.quota});

  /// The user.
  final String userId;

  /// The quota as read.
  final Quota quota;

  @override
  ConsumerState<QuotaEditor> createState() => _QuotaEditorState();
}

class _QuotaEditorState extends ConsumerState<QuotaEditor> with WriteTracking<QuotaEditor> {
  late final Map<String, TextEditingController> _fields = <String, TextEditingController>{
    for (final (member, _) in quotaMembers)
      member: TextEditingController(text: quotaValue(widget.quota, member)?.toString() ?? ''),
  };
  String? _invalid;

  @override
  void dispose() {
    for (final c in _fields.values) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    final values = <String, int?>{};
    for (final (member, label) in quotaMembers) {
      final text = _fields[member]!.text.trim();
      final n = text.isEmpty ? null : int.tryParse(text);
      if (text.isNotEmpty && (n == null || n < 0)) {
        setState(() => _invalid = '$label must be a whole number, or empty for the default.');
        return;
      }
      values[member] = n;
    }
    setState(() => _invalid = null);
    final api = ref.read(foresignalApiProvider).getQuotasApi();
    final quota = Quota(
      (b) => b
        ..apiRateLimitPerMinute = values['apiRateLimitPerMinute']
        ..maxStorageBytes = values['maxStorageBytes']
        ..maxAlerts = values['maxAlerts']
        ..maxChannels = values['maxChannels']
        ..maxSavedViews = values['maxSavedViews'],
    );
    final done = await track(
      () => writeThenConfirm<Quota>(
        write: () => callApiRequired(() => api.updateUserQuota(id: widget.userId, quota: quota)),
        reread: () => callApiRequired(() => api.getUserQuota(id: widget.userId)),
        confirm: (q) {
          for (final (member, label) in quotaMembers) {
            if (quotaValue(q, member) != values[member]) {
              return '$label reads back as ${quotaValue(q, member) ?? 'the default'}.';
            }
          }
          return null;
        },
      ),
    );
    if (done != null && mounted) {
      ref.invalidate(userQuotaProvider(widget.userId));
    }
  }

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      for (final (member, label) in quotaMembers)
        LabeledField(
          label: label,
          field: PlainField(key: Key('quota.$member'), controller: _fields[member]!),
        ),
      if (_invalid != null)
        ResultPanel(title: 'Check the quota', tone: StatusTone.error, message: _invalid),
      const SizedBox(height: 8),
      Row(
        children: <Widget>[
          PermissionGate(
            permission: Permissions.usersManage,
            child: FilledButton(
              key: const Key('quota.save'),
              onPressed: busy ? null : _save,
              child: const Text('Save Quota'),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(child: statusLine),
        ],
      ),
    ],
  );
}

/// Delete, with the reassign-or-delete choice for what the user owns.
class _DeleteCard extends ConsumerStatefulWidget {
  const _DeleteCard({required this.user, required this.self});

  final User user;
  final bool self;

  @override
  ConsumerState<_DeleteCard> createState() => _DeleteCardState();
}

class _DeleteCardState extends ConsumerState<_DeleteCard> with WriteTracking<_DeleteCard> {
  bool _reassign = true;
  bool _confirming = false;

  Future<void> _delete() async {
    final api = ref.read(foresignalApiProvider).getUsersApi();
    final reassign = _reassign;
    final result = await track(
      () => callApiRequired(() => api.deleteUser(id: widget.user.id, reassign: reassign)),
    );
    if (mounted) {
      setState(() => _confirming = false);
    }
    if (result != null && mounted) {
      invalidateUsers(ref);
      final outcome = result.ownedConfigDisposition == 'deleted'
          ? 'what they owned was deleted'
          : 'what they owned was reassigned${result.reassignedTo == null ? '' : ' to ${result.reassignedTo}'}';
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(content: Text('${widget.user.fullName} was deleted; $outcome.')),
      );
      context.go(usersPath);
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('user.delete'),
      title: 'Delete user',
      subtitle:
          'Removes the account. Choose what happens to the alerts, channels, LLM providers and views they own.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RadioGroup<bool>(
            groupValue: _reassign,
            onChanged: (v) => setState(() => _reassign = v ?? true),
            child: Column(
              children: <Widget>[
                RadioListTile<bool>(
                  key: const Key('user.delete.reassign'),
                  contentPadding: EdgeInsets.zero,
                  value: true,
                  title: const Text('Reassign what they own to an admin (recommended)'),
                  subtitle: Text(
                    'Their trigger rules, channels, personal LLM providers and saved views keep working, owned by an admin.',
                    style: TextStyle(color: muted),
                  ),
                ),
                RadioListTile<bool>(
                  key: const Key('user.delete.deleteOwned'),
                  contentPadding: EdgeInsets.zero,
                  value: false,
                  title: const Text('Delete what they own too'),
                  subtitle: Text(
                    'Their trigger rules, channels, personal LLM providers and saved views are deleted with the account.',
                    style: TextStyle(color: muted),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          if (_confirming)
            ConfirmRow(
              confirmKey: const Key('user.confirmDelete'),
              message:
                  'Delete ${widget.user.email} and ${_reassign ? 'reassign' : 'delete'} what they own? '
                  'This cannot be undone.${widget.self ? ' This is your own account.' : ''}',
              action: 'Delete',
              onConfirm: _delete,
              onCancel: () => setState(() => _confirming = false),
            )
          else
            Align(
              alignment: Alignment.centerLeft,
              child: PermissionGate(
                permission: Permissions.usersManage,
                child: DangerButton(
                  key: const Key('user.deleteButton'),
                  label: 'Delete user',
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
