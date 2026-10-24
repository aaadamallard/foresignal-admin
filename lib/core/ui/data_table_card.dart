import 'package:flutter/material.dart';

import '../theme.dart';

/// One column of a [DataTableCard].
class TableColumnSpec<T> {
  /// Creates a column with a header [label] and a [cell] builder.
  const TableColumnSpec({required this.label, required this.cell, this.numeric = false});

  /// The header text.
  final String label;

  /// Builds the cell for one row.
  final Widget Function(T row) cell;

  /// Whether the column holds numbers (right-aligned).
  final bool numeric;
}

/// A dense, horizontally scrollable table of [rows], with an [empty] message
/// when there are none and an optional row tap handler. Rows grow to fit
/// their tallest cell.
class DataTableCard<T> extends StatelessWidget {
  /// Creates a table.
  const DataTableCard({
    super.key,
    required this.columns,
    required this.rows,
    this.onTap,
    this.empty = 'Nothing here yet.',
    this.selected,
    this.columnSpacing = 24,
  });

  /// The columns, in order.
  final List<TableColumnSpec<T>> columns;

  /// The rows.
  final List<T> rows;

  /// Called when a row is tapped.
  final void Function(T row)? onTap;

  /// Shown instead of the table when [rows] is empty.
  final String empty;

  /// Whether a row is shown as selected.
  final bool Function(T row)? selected;

  /// The gap between columns; a table with many narrow columns may use less
  /// so it fits a desktop window without scrolling.
  final double columnSpacing;

  @override
  Widget build(BuildContext context) {
    if (rows.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(empty, style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
      );
    }
    return Card(
      clipBehavior: Clip.antiAlias,
      child: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: constraints.maxWidth),
            child: DataTable(
              showCheckboxColumn: false,
              columnSpacing: columnSpacing,
              // A row is as tall as its tallest cell (a two-line claim with
              // its subline), never clipped to the default 48.
              dataRowMinHeight: kMinInteractiveDimension,
              dataRowMaxHeight: double.infinity,
              headingRowColor: WidgetStatePropertyAll<Color>(AdminPalette.of(context).input),
              columns: <DataColumn>[
                for (final column in columns)
                  DataColumn(label: Text(column.label), numeric: column.numeric),
              ],
              rows: <DataRow>[
                for (final row in rows)
                  DataRow(
                    selected: selected?.call(row) ?? false,
                    onSelectChanged: onTap == null ? null : (_) => onTap!(row),
                    cells: <DataCell>[for (final column in columns) DataCell(column.cell(row))],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// [text] at most [maxWidth] wide, wrapping onto further lines rather than
/// being cut: a table cell for a value that may be long (a name, a list of
/// kinds) so it cannot push the other columns off the table, while the row
/// grows to show all of it.
class BoundedText extends StatelessWidget {
  /// Creates the cell.
  const BoundedText(this.text, {super.key, this.maxWidth = 240, this.style});

  /// The full text.
  final String text;

  /// The widest the cell may be.
  final double maxWidth;

  /// The text style.
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => ConstrainedBox(
    constraints: BoxConstraints(maxWidth: maxWidth),
    child: Text(text, style: style),
  );
}
