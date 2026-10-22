import 'package:flutter/material.dart';

/// A titled card that groups one screen section: a header row (title,
/// optional subtitle and trailing actions) above its [child].
class SectionCard extends StatelessWidget {
  /// Creates a section card.
  const SectionCard({
    super.key,
    required this.title,
    required this.child,
    this.subtitle,
    this.actions = const <Widget>[],
    this.padding = const EdgeInsets.all(16),
  });

  /// The section title.
  final String title;

  /// An optional one-line explanation under the title.
  final String? subtitle;

  /// Buttons or chips shown at the right of the header.
  final List<Widget> actions;

  /// The section body.
  final Widget child;

  /// Padding around the header and body.
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title, style: theme.textTheme.titleMedium),
                      if (subtitle != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(
                            subtitle!,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                ...actions.map(
                  (a) => Padding(padding: const EdgeInsets.only(left: 8), child: a),
                ),
              ],
            ),
            const SizedBox(height: 12),
            child,
          ],
        ),
      ),
    );
  }
}
