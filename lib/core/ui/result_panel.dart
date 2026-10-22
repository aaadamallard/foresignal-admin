import 'package:flutter/material.dart';

import '../theme.dart';
import 'key_value_list.dart';
import 'status_chip.dart';

/// The mocks' outcome panel ("Connection successful", "Fetch completed",
/// "Credentials valid"): a tinted box with an icon and colored title, then
/// optional details.
class ResultPanel extends StatelessWidget {
  /// Creates the panel.
  const ResultPanel({
    super.key,
    required this.title,
    this.tone = StatusTone.ok,
    this.message,
    this.details = const <MapEntry<String, Object>>[],
    this.child,
  });

  /// The outcome headline.
  final String title;

  /// Success (green), warning, error...
  final StatusTone tone;

  /// An optional sentence under the title.
  final String? message;

  /// Label / value rows.
  final List<MapEntry<String, Object>> details;

  /// Anything else to show inside.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final background = tone == StatusTone.ok
        ? AdminPalette.of(context).okPanel
        : tone.colorOf(context).withValues(alpha: 0.08);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: tone.colorOf(context).withValues(alpha: 0.35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(tone.icon, color: tone.colorOf(context), size: 20),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: tone.colorOf(context),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          if (message != null) ...<Widget>[
            const SizedBox(height: 8),
            Text(message!, style: TextStyle(color: AdminPalette.of(context).text)),
          ],
          if (details.isNotEmpty) ...<Widget>[
            const SizedBox(height: 10),
            KeyValueList(entries: details, keyWidth: 150),
          ],
          if (child != null) ...<Widget>[const SizedBox(height: 10), child!],
        ],
      ),
    );
  }
}
