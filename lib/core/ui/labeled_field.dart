import 'package:flutter/material.dart';

/// A form row: a fixed-width [label] (with optional [help]) beside its
/// [field] on wide layouts, stacked above it on narrow ones.
class LabeledField extends StatelessWidget {
  /// Creates a labeled field.
  const LabeledField({
    super.key,
    required this.label,
    required this.field,
    this.help,
    this.labelWidth = 200,
  });

  /// The field's label.
  final String label;

  /// An optional explanation under the label.
  final String? help;

  /// The input widget.
  final Widget field;

  /// The label column width on wide layouts.
  final double labelWidth;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final labelColumn = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(label, style: theme.textTheme.labelLarge),
        if (help != null)
          Text(
            help!,
            style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
          ),
      ],
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < labelWidth * 2.5) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[labelColumn, const SizedBox(height: 6), field],
            );
          }
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: labelWidth,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, right: 12),
                  child: labelColumn,
                ),
              ),
              Expanded(child: field),
            ],
          );
        },
      ),
    );
  }
}
