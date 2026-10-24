import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/ui/data_table_card.dart';

void main() {
  test('strings sort without regard to case, and numbers, bools and durations by value', () {
    expect(sortRows(<String>['b', 'A', 'c'], (s) => s, ascending: true), <String>['A', 'b', 'c']);
    expect(sortRows(<int>[10, 9, 100], (n) => n, ascending: true), <int>[9, 10, 100]);
    expect(sortRows(<bool>[true, false], (b) => b, ascending: true), <bool>[false, true]);
    expect(
      sortRows(<Duration>[const Duration(hours: 1), const Duration(minutes: 5)], (d) => d, ascending: false),
      <Duration>[const Duration(hours: 1), const Duration(minutes: 5)],
    );
  });

  test('empty values come last in either direction, and equal values keep their order', () {
    final rows = <(String, int?)>[('a', 2), ('b', null), ('c', 1), ('d', 2)];
    List<String> ids(bool ascending) => sortRows(rows, (r) => r.$2, ascending: ascending).map((r) => r.$1).toList();
    expect(ids(true), <String>['c', 'a', 'd', 'b']);
    expect(ids(false), <String>['a', 'd', 'c', 'b']);
  });
}
