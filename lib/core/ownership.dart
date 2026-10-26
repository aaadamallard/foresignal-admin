import 'package:flutter/material.dart';

import 'access.dart';
import 'permissions.dart';
import 'ui/ui.dart';

/// Whose an owned item (a trigger rule, channel, saved view or personal LLM
/// provider) is, as seen by the current principal.
enum Ownership {
  /// The signed-in user owns it.
  mine('Yours', StatusTone.info),

  /// No owner: managed by an admin, visible to everyone (a shared rule or
  /// view, from before v2.0 or created with an API token).
  shared('Shared', StatusTone.neutral),

  /// No owner, instance-wide (a global channel).
  global('Global', StatusTone.neutral),

  /// Another user owns it; only an admin who manages users sees these.
  otherUser('Another user', StatusTone.warning);

  const Ownership(this.label, this.tone);

  /// The chip text.
  final String label;

  /// The chip tone.
  final StatusTone tone;
}

/// Whose an item with [ownerPrincipalId] is for [access]. An item with no
/// owner is [Ownership.global] when [global] says so and [Ownership.shared]
/// otherwise; on the admin token, or before `getMe` has named the user, an
/// owned item is [Ownership.otherUser].
Ownership ownershipOf(AccessState access, String? ownerPrincipalId, {bool global = false}) {
  if (ownerPrincipalId == null) {
    return global ? Ownership.global : Ownership.shared;
  }
  return ownerPrincipalId == access.principalId ? Ownership.mine : Ownership.otherUser;
}

/// Whether [access] manages every user's items, not just its own: the admin
/// token, an anonymous reader (who sees whatever the server shares), or a
/// session holding `users.manage`.
bool seesEveryOwner(AccessState access) =>
    access.kind != AccessKind.session || access.can(Permissions.usersManage);

/// [items] as the signed-in user's own: for a user who does not manage
/// every owner, only the items they own, plus the unowned ones when
/// [keepUnowned] (global channels are everyone's to use). Everyone else, and
/// a session whose principal `getMe` has not named yet (the server already
/// scopes the list), gets [items] unchanged.
List<T> ownedByCaller<T>(
  AccessState access,
  Iterable<T> items,
  String? Function(T item) ownerOf, {
  bool keepUnowned = false,
}) {
  if (seesEveryOwner(access) || access.principalId == null) {
    return items.toList();
  }
  return <T>[
    for (final item in items)
      if (switch (ownerOf(item)) {
        null => keepUnowned,
        final owner => owner == access.principalId,
      })
        item,
  ];
}

/// A chip naming an item's [ownership]; an item another user owns carries
/// their principal id as a tooltip.
class OwnershipChip extends StatelessWidget {
  /// Creates the chip.
  const OwnershipChip({super.key, required this.ownership, this.ownerPrincipalId});

  /// Whose the item is.
  final Ownership ownership;

  /// The owner's principal id, shown on hover for another user's item.
  final String? ownerPrincipalId;

  @override
  Widget build(BuildContext context) {
    final chip = StatusChip(label: ownership.label, tone: ownership.tone);
    final owner = ownerPrincipalId;
    return ownership == Ownership.otherUser && owner != null
        ? Tooltip(message: 'Owner principal $owner', child: chip)
        : chip;
  }
}
