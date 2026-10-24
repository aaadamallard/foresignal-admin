import 'package:flutter/material.dart';

import '../theme.dart';

/// One column of a [DataTableCard].
class TableColumnSpec<T> {
  /// Creates a column with a header [label] and a [cell] builder; a [sortBy]
  /// makes it sortable from its header.
  const TableColumnSpec({
    required this.label,
    required this.cell,
    this.numeric = false,
    this.sortBy,
  });

  /// The header text.
  final String label;

  /// Builds the cell for one row.
  final Widget Function(T row) cell;

  /// Whether the column holds numbers (right-aligned).
  final bool numeric;

  /// The value a row sorts by in this column (a [String], [num], [bool],
  /// [Duration], [DateTime] or other [Comparable]; `null` sorts last), or
  /// `null` when the column is not sortable.
  final Object? Function(T row)? sortBy;
}

/// Orders two sort values: strings without regard to case, `false` before
/// `true`, and anything else by its [Comparable] order. `null` is not passed.
int compareSortValues(Object a, Object b) {
  if (a is String && b is String) {
    final folded = a.toLowerCase().compareTo(b.toLowerCase());
    return folded != 0 ? folded : a.compareTo(b);
  }
  if (a is bool && b is bool) {
    return a == b ? 0 : (a ? 1 : -1);
  }
  if (a is Comparable && b is Comparable) {
    try {
      return a.compareTo(b);
    } on TypeError {
      // Values of different types: keep the given order.
    }
  }
  return 0;
}

/// [rows] ordered by [key], ascending or not, keeping the given order among
/// equal values; rows whose value is `null` come last either way.
List<T> sortRows<T>(List<T> rows, Object? Function(T row) key, {required bool ascending}) {
  final indexed = <(int, T, Object?)>[for (var i = 0; i < rows.length; i++) (i, rows[i], key(rows[i]))];
  indexed.sort((x, y) {
    final a = x.$3;
    final b = y.$3;
    if (a == null || b == null) {
      final nulls = a == null ? (b == null ? 0 : 1) : -1;
      return nulls != 0 ? nulls : x.$1.compareTo(y.$1);
    }
    final order = compareSortValues(a, b);
    return order != 0 ? (ascending ? order : -order) : x.$1.compareTo(y.$1);
  });
  return <T>[for (final entry in indexed) entry.$2];
}

/// A dense, horizontally scrollable table of [rows], with an [empty] message
/// when there are none and an optional row tap handler. Rows grow to fit
/// their tallest cell. A column with a `sortBy` sorts the table when its
/// header is clicked, ascending first and then descending, with the
/// direction arrow on that header; [numbered] adds a leading `#` column that
/// numbers the rows as shown.
class DataTableCard<T> extends StatefulWidget {
  /// Creates a table.
  const DataTableCard({
    super.key,
    required this.columns,
    required this.rows,
    this.onTap,
    this.empty = 'Nothing here yet.',
    this.selected,
    this.columnSpacing = 24,
    this.numbered = false,
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

  /// Whether a leading `#` column numbers the rows in the order shown.
  final bool numbered;

  @override
  State<DataTableCard<T>> createState() => _DataTableCardState<T>();
}

class _DataTableCardState<T> extends State<DataTableCard<T>> {
  /// The sorted column, as an index into [DataTableCard.columns], or `null`
  /// for the order the rows were given in.
  int? _sortColumn;
  bool _ascending = true;

  @override
  void didUpdateWidget(DataTableCard<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    final column = _sortColumn;
    if (column != null && (column >= widget.columns.length || widget.columns[column].sortBy == null)) {
      _sortColumn = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final columns = widget.columns;
    final onTap = widget.onTap;
    final sortColumn = _sortColumn;
    final rows = sortColumn == null
        ? widget.rows
        : sortRows(widget.rows, columns[sortColumn].sortBy!, ascending: _ascending);
    final offset = widget.numbered ? 1 : 0;
    if (rows.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(widget.empty, style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
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
              columnSpacing: widget.columnSpacing,
              sortColumnIndex: sortColumn == null ? null : sortColumn + offset,
              sortAscending: _ascending,
              // A row is as tall as its tallest cell (a two-line claim with
              // its subline), never clipped to the default 48.
              dataRowMinHeight: kMinInteractiveDimension,
              dataRowMaxHeight: double.infinity,
              headingRowColor: WidgetStatePropertyAll<Color>(AdminPalette.of(context).input),
              columns: <DataColumn>[
                if (widget.numbered) const DataColumn(label: Text('#'), numeric: true),
                for (var i = 0; i < columns.length; i++)
                  DataColumn(
                    label: Text(columns[i].label),
                    numeric: columns[i].numeric,
                    onSort: columns[i].sortBy == null
                        ? null
                        : (_, ascending) => setState(() {
                            // A new column starts ascending; the same column flips.
                            _ascending = _sortColumn == i ? ascending : true;
                            _sortColumn = i;
                          }),
                  ),
              ],
              rows: <DataRow>[
                for (var r = 0; r < rows.length; r++)
                  DataRow(
                    selected: widget.selected?.call(rows[r]) ?? false,
                    onSelectChanged: onTap == null ? null : (_) => onTap(rows[r]),
                    cells: <DataCell>[
                      if (widget.numbered) DataCell(Text('${r + 1}')),
                      for (final column in columns) DataCell(column.cell(rows[r])),
                    ],
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
