import 'package:flutter/material.dart';

import '../theme.dart';

/// The tone of a status: its icon, and its color in the active palette.
enum StatusTone {
  /// Healthy, enabled, confirmed.
  ok(Icons.check_circle),

  /// Needs attention.
  warning(Icons.warning_amber_rounded),

  /// Failed or refused.
  error(Icons.error),

  /// Informational.
  info(Icons.info),

  /// Off or unknown.
  neutral(Icons.circle_outlined);

  const StatusTone(this.icon);

  /// The tone's icon.
  final IconData icon;

  /// The tone's color in [context]'s theme.
  Color colorOf(BuildContext context) {
    final p = AdminPalette.of(context);
    return switch (this) {
      StatusTone.ok => p.ok,
      StatusTone.warning => p.warning,
      StatusTone.error => p.error,
      StatusTone.info => p.info,
      StatusTone.neutral => p.neutral,
    };
  }
}

/// A compact, colored status label: an icon and a short text.
class StatusChip extends StatelessWidget {
  /// Creates a status chip.
  const StatusChip({super.key, required this.label, required this.tone, this.tooltip});

  /// The text shown.
  final String label;

  /// The color and icon.
  final StatusTone tone;

  /// An optional longer explanation shown on hover.
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final chip = Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: tone.colorOf(context).withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: tone.colorOf(context).withValues(alpha: 0.5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(tone.icon, size: 14, color: tone.colorOf(context)),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              color: tone.colorOf(context),
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
    return tooltip == null ? chip : Tooltip(message: tooltip, child: chip);
  }
}
