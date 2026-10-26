import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../access.dart';
import '../theme.dart';

/// How a [PermissionGate] treats a control the user may not use.
enum GateMode {
  /// Shown, but disabled, with a quiet "Needs (permission)" hint.
  disable,

  /// Not shown at all.
  hide,
}

/// Shows [child] — a write control — only to a user who holds [permission]
/// (or one of [anyOf]). Without it the control is disabled with a quiet
/// "Needs (permission)" hint ([GateMode.disable]), or left out
/// ([GateMode.hide]). Reads are never gated: wrap only the controls that
/// change something.
class PermissionGate extends ConsumerWidget {
  /// Gates [child] behind [permission].
  const PermissionGate({
    super.key,
    required String permission,
    required this.child,
    this.mode = GateMode.disable,
  }) : anyOf = const <String>{},
       _single = permission;

  /// Gates [child] behind holding at least one of [anyOf].
  const PermissionGate.any({
    super.key,
    required this.anyOf,
    required this.child,
    this.mode = GateMode.disable,
  }) : _single = null;

  final String? _single;

  /// The permissions, any one of which opens the gate.
  final Set<String> anyOf;

  /// The write control.
  final Widget child;

  /// Disable or hide when the permission is missing.
  final GateMode mode;

  /// The permissions this gate checks.
  Set<String> get required => _single == null ? anyOf : <String>{_single};

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = ref.watch(accessProvider);
    if (access.canAny(required)) {
      return child;
    }
    if (mode == GateMode.hide) {
      return const SizedBox.shrink();
    }
    final hint = neededText(required, signedIn: access.kind == AccessKind.session);
    return Tooltip(
      message: hint,
      child: Semantics(
        label: hint,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: IgnorePointer(
                child: ExcludeFocus(child: Opacity(opacity: 0.45, child: child)),
              ),
            ),
            const SizedBox(width: 6),
            Icon(Icons.lock_outline, size: 14, color: AdminPalette.of(context).muted),
          ],
        ),
      ),
    );
  }

  /// "Needs users.manage", "Needs one of a, b", or — with no credential —
  /// "Sign in to change this".
  static String neededText(Set<String> permissions, {required bool signedIn}) {
    if (!signedIn) {
      return 'Sign in to change this';
    }
    return 'Needs ${describe(permissions)}';
  }

  /// "users.manage" for one permission, "one of a, b" for several.
  static String describe(Set<String> permissions) =>
      permissions.length == 1 ? permissions.single : 'one of ${permissions.join(', ')}';
}

/// Builds with whether the user holds [permission] (or one of [anyOf]), for a
/// control that takes `onPressed: allowed ? save : null` itself.
class PermissionBuilder extends ConsumerWidget {
  /// Creates the builder for [permission].
  const PermissionBuilder({super.key, required String permission, required this.builder})
    : anyOf = const <String>{},
      _single = permission;

  /// Creates the builder for holding one of [anyOf].
  const PermissionBuilder.any({super.key, required this.anyOf, required this.builder})
    : _single = null;

  final String? _single;

  /// The permissions, any one of which allows.
  final Set<String> anyOf;

  /// Builds the control.
  final Widget Function(BuildContext context, bool allowed) builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final required = _single == null ? anyOf : <String>{_single};
    return builder(context, ref.watch(accessProvider).canAny(required));
  }
}

/// The shared permission-denied surface: what the action or page needed, and
/// that an administrator grants it. Drawn inside the page, so the shell's
/// Back control stays above it.
class PermissionDeniedPanel extends StatelessWidget {
  /// Creates the panel; [permissions] names what was needed (any one of
  /// them), when known.
  const PermissionDeniedPanel({
    super.key,
    this.permissions = const <String>{},
    this.detail,
    this.title = 'Permission needed',
  });

  /// The permissions the action or page needed; any one would do.
  final Set<String> permissions;

  /// The server's own sentence, when it gave one.
  final String? detail;

  /// The heading.
  final String title;

  /// The sentence naming what was needed.
  String get neededSentence => switch (permissions.length) {
    0 => 'Your account does not have the permission this needs.',
    1 => 'This needs the ${permissions.single} permission.',
    _ => 'This needs one of these permissions: ${permissions.join(', ')}.',
  };

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = AdminPalette.of(context).warning;
    return Container(
      key: const Key('permissionDenied'),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.lock_outline, color: color, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title, style: theme.textTheme.titleSmall?.copyWith(color: color)),
                const SizedBox(height: 4),
                SelectableText(
                  neededSentence,
                  key: const Key('permissionDenied.permission'),
                  style: theme.textTheme.bodySmall,
                ),
                if (detail != null && detail!.isNotEmpty)
                  SelectableText(detail!, style: theme.textTheme.bodySmall),
                Text(
                  'An administrator can grant it by giving you a role that includes it.',
                  style: theme.textTheme.bodySmall?.copyWith(color: AdminPalette.of(context).muted),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
