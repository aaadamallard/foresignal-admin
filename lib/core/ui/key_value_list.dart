import 'package:flutter/material.dart';

import '../theme.dart';

/// Label / value rows in two aligned columns, as in the mocks' "Source
/// information" and result panels. Values are selectable.
class KeyValueList extends StatelessWidget {
  /// Creates the list from [entries] (label → value text or widget).
  const KeyValueList({super.key, required this.entries, this.keyWidth = 160});

  /// The rows; a value is a [String] or a [Widget].
  final List<MapEntry<String, Object>> entries;

  /// The label column width.
  final double keyWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        for (final entry in entries)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: keyWidth,
                  child: Text(entry.key, style: TextStyle(color: AdminPalette.of(context).muted)),
                ),
                Expanded(
                  child: entry.value is Widget
                      ? entry.value as Widget
                      : SelectableText(entry.value.toString()),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
