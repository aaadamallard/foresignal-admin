import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import 'user_widgets.dart';
import 'users_providers.dart';

/// Add user: email, full name and one or more roles → `createUser`. The
/// account starts `invited` and the backend emails the welcome message with
/// the activation link. When it could not (no SMTP), or the admin chose not
/// to email it, the one-time activation token comes back and is shown here
/// to hand over — that is not a failure. Pops with the created [User].
class AddUserDialog extends ConsumerStatefulWidget {
  /// Creates the dialog.
  const AddUserDialog({super.key});

  @override
  ConsumerState<AddUserDialog> createState() => _AddUserDialogState();
}

class _AddUserDialogState extends ConsumerState<AddUserDialog> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  Set<String> _roles = <String>{};
  bool _sendInvite = true;
  bool _busy = false;
  String? _invalid;
  Object? _error;
  User? _created;
  bool _linkDismissed = false;

  @override
  void dispose() {
    _email.dispose();
    _name.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final email = _email.text.trim();
    final name = _name.text.trim();
    final invalid = email.isEmpty
        ? 'Enter the email address.'
        : name.isEmpty
        ? 'Enter the full name.'
        : _roles.isEmpty
        ? 'Choose at least one role.'
        : null;
    setState(() {
      _invalid = invalid;
      _error = null;
    });
    if (invalid != null) {
      return;
    }
    setState(() => _busy = true);
    try {
      final created = await callApiRequired(
        () => ref
            .read(foresignalApiProvider)
            .getUsersApi()
            .createUser(
              userCreate: UserCreate(
                (b) => b
                  ..email = email
                  ..fullName = name
                  ..roles = ListBuilder<String>(_roles)
                  ..sendInvite = _sendInvite,
              ),
            ),
      );
      if (mounted) {
        setState(() {
          _busy = false;
          _created = created;
        });
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() {
          _busy = false;
          _error = error;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final created = _created;
    final choices = ref.watch(roleChoicesProvider);
    final muted = AdminPalette.of(context).muted;
    return AlertDialog(
      key: const Key('addUser'),
      title: const Text('Add user'),
      content: SizedBox(
        width: 520,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (created == null) ...<Widget>[
                Text(
                  'The account starts invited. The backend emails a welcome message with their name, '
                  'role(s) and an activation link; they set their password from it.',
                  style: TextStyle(color: muted),
                ),
                const SizedBox(height: 16),
                TextField(
                  key: const Key('addUser.email'),
                  controller: _email,
                  enabled: !_busy,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                const SizedBox(height: 12),
                TextField(
                  key: const Key('addUser.name'),
                  controller: _name,
                  enabled: !_busy,
                  decoration: const InputDecoration(labelText: 'Full name'),
                ),
                const SizedBox(height: 16),
                const Text('Roles', style: TextStyle(fontWeight: FontWeight.w500)),
                const SizedBox(height: 6),
                AsyncView<List<RoleChoice>>(
                  value: choices,
                  onRetry: () => ref.invalidate(roleChoicesProvider),
                  data: (list) => RolePicker(
                    choices: list,
                    selected: _roles,
                    enabled: !_busy,
                    onChanged: (v) => setState(() => _roles = v),
                  ),
                ),
                const SizedBox(height: 8),
                CheckboxListTile(
                  key: const Key('addUser.sendInvite'),
                  contentPadding: EdgeInsets.zero,
                  value: _sendInvite,
                  onChanged: _busy ? null : (v) => setState(() => _sendInvite = v ?? true),
                  title: const Text('Email the activation link'),
                  subtitle: const Text('Untick to get the link here and hand it over yourself.'),
                ),
                if (_invalid != null) ...<Widget>[
                  const SizedBox(height: 8),
                  ResultPanel(title: 'Check the form', tone: StatusTone.error, message: _invalid),
                ],
                if (_error != null) ...<Widget>[
                  const SizedBox(height: 8),
                  ErrorBanner(error: _error!, title: 'Could not add the user'),
                ],
              ] else ...<Widget>[
                ResultPanel(
                  key: const Key('addUser.created'),
                  title: '${created.fullName} added',
                  message:
                      '${created.email} is invited with ${created.roles.map((r) => r.name).join(', ')}.',
                  details: <MapEntry<String, Object>>[
                    MapEntry<String, Object>('Status', UserStatusChip(status: created.status)),
                  ],
                ),
                const SizedBox(height: 12),
                if (created.activation case final link?)
                  _linkDismissed
                      ? Text('The activation token was dismissed.', style: TextStyle(color: muted))
                      : LinkIssuedPanel(
                          link: link,
                          email: created.email,
                          onDismiss: () => setState(() => _linkDismissed = true),
                        )
                else
                  Text(
                    'The backend reported no activation link with this account.',
                    style: TextStyle(color: muted),
                  ),
              ],
            ],
          ),
        ),
      ),
      actions: <Widget>[
        if (created == null) ...<Widget>[
          TextButton(
            onPressed: _busy ? null : () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            key: const Key('addUser.submit'),
            onPressed: _busy ? null : _submit,
            child: Text(_busy ? 'Adding…' : 'Add and invite'),
          ),
        ] else
          FilledButton(
            key: const Key('addUser.done'),
            onPressed: () => Navigator.of(context).pop(created),
            child: const Text('Done'),
          ),
      ],
    );
  }
}
