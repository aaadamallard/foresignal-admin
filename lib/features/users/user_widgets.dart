import 'package:flutter/material.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart' show whenText;
import 'users_providers.dart';

/// The tone of a user's `status`; a status this build has not seen is
/// neutral and shown as sent.
StatusTone userStatusTone(String status) => switch (status) {
  'active' => StatusTone.ok,
  'invited' => StatusTone.info,
  'suspended' => StatusTone.warning,
  'disabled' => StatusTone.neutral,
  _ => StatusTone.neutral,
};

/// A user's status as a chip.
class UserStatusChip extends StatelessWidget {
  /// Creates the chip for [status].
  const UserStatusChip({super.key, required this.status});

  /// The status as the server sent it.
  final String status;

  @override
  Widget build(BuildContext context) =>
      StatusChip(label: wireText(status), tone: userStatusTone(status));
}

/// The outcome of issuing an activation or reset link (`UserLinkIssued`):
/// when the email left, a confirmation; when it did not (no SMTP, or the
/// invite was not to be emailed), the one-time token for the admin to hand
/// over, shown once.
class LinkIssuedPanel extends StatelessWidget {
  /// Creates the panel for [link], issued to [email].
  const LinkIssuedPanel({
    super.key,
    required this.link,
    required this.email,
    required this.onDismiss,
  });

  /// The issued link.
  final UserLinkIssued link;

  /// Who it is for.
  final String email;

  /// Clears the panel (and the token with it).
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    final activation = link.kind != 'reset';
    final what = activation ? 'activation' : 'password reset';
    final details = <MapEntry<String, Object>>[
      MapEntry<String, Object>('Link', '${link.tokenPrefix}…'),
      MapEntry<String, Object>('Expires', whenText(link.expiresAt.toIso8601String())),
    ];
    final token = link.token;
    if (link.emailed || token == null || token.isEmpty) {
      return ResultPanel(
        key: const Key('linkIssued.emailed'),
        title: link.emailed ? 'Email sent to $email' : 'Link issued',
        message: link.emailed
            ? 'The $what link is in the email. It works once.'
            : 'The backend did not email the link and returned no token.',
        tone: link.emailed ? StatusTone.ok : StatusTone.warning,
        details: details,
        child: Align(
          alignment: Alignment.centerRight,
          child: TextButton(onPressed: onDismiss, child: const Text('Dismiss')),
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ResultPanel(
          key: const Key('linkIssued.handOver'),
          title: 'Email not sent — hand the link over',
          tone: StatusTone.warning,
          message:
              'No email left the backend (SMTP is not configured, or the invite was not to be emailed). '
              'Give $email this token. On the sign-in screen they choose '
              '${activation ? '"Have an activation link?"' : '"Forgot password?" then "I have a reset link"'} '
              'and paste it. It is shown only here, once.',
          details: details,
        ),
        const SizedBox(height: 10),
        OneTimeSecret(
          key: const Key('linkIssued.token'),
          label: activation ? 'Activation token' : 'Reset token',
          secret: token,
          onDismiss: onDismiss,
        ),
      ],
    );
  }
}

/// Picks a set of roles from [choices] as filter chips; a held role this
/// build was not offered (not in [choices]) still shows, selected.
class RolePicker extends StatelessWidget {
  /// Creates the picker.
  const RolePicker({
    super.key,
    required this.choices,
    required this.selected,
    required this.onChanged,
    this.enabled = true,
    this.held = const <RoleChoice>[],
  });

  /// The roles offered.
  final List<RoleChoice> choices;

  /// The chosen role ids.
  final Set<String> selected;

  /// Called with the new set.
  final ValueChanged<Set<String>> onChanged;

  /// Whether the chips can be changed.
  final bool enabled;

  /// Roles already held, so one missing from [choices] is still shown.
  final List<RoleChoice> held;

  @override
  Widget build(BuildContext context) {
    final all = <String, RoleChoice>{
      for (final r in choices) r.id: r,
      for (final r in held) r.id: r,
    };
    if (all.isEmpty) {
      return Text(
        'No roles to choose from.',
        style: TextStyle(color: AdminPalette.of(context).muted),
      );
    }
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: <Widget>[
        for (final role in all.values)
          FilterChip(
            key: Key('role.${role.name}'),
            label: Text(role.name),
            selected: selected.contains(role.id),
            onSelected: enabled
                ? (on) => onChanged(
                    on ? <String>{...selected, role.id} : <String>{...selected}
                      ..remove(role.id),
                  )
                : null,
          ),
      ],
    );
  }
}
