import 'package:flutter/material.dart';

import 'status_chip.dart';

/// The mocks' inline status: a colored icon and colored text
/// ("● Healthy", "✓ Active", "Not set"), without a pill.
class StatusLabel extends StatelessWidget {
  /// Creates a status label.
  const StatusLabel({
    super.key,
    required this.label,
    required this.tone,
    this.icon,
    this.showIcon = true,
    this.tooltip,
  });

  /// The text shown.
  final String label;

  /// The color (and default icon).
  final StatusTone tone;

  /// An icon replacing the tone's default.
  final IconData? icon;

  /// Whether to show an icon at all ("Not set" in the mocks has none).
  final bool showIcon;

  /// An optional longer explanation shown on hover.
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final label = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (showIcon) ...<Widget>[
          Icon(icon ?? tone.icon, size: 16, color: tone.colorOf(context)),
          const SizedBox(width: 6),
        ],
        Text(
          this.label,
          style: TextStyle(color: tone.colorOf(context), fontWeight: FontWeight.w600),
        ),
      ],
    );
    return tooltip == null ? label : Tooltip(message: tooltip, child: label);
  }
}
