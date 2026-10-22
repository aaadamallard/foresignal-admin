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
/// when there are none and an optional row tap handler.
class DataTableCard<T> extends StatelessWidget {
  /// Creates a table.
  const DataTableCard({
    super.key,
    required this.columns,
    required this.rows,
    this.onTap,
    this.empty = 'Nothing here yet.',
    this.selected,
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
              columnSpacing: 24,
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
