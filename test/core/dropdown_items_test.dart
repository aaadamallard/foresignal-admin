import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/ui/ui.dart';

const List<DropdownMenuItem<String>> _items = <DropdownMenuItem<String>>[
  DropdownMenuItem<String>(value: 'info', child: Text('Info')),
  DropdownMenuItem<String>(value: 'warning', child: Text('Warning')),
];

Widget _dropdown(String? value) => MaterialApp(
  home: Scaffold(
    body: DropdownButtonFormField<String>(
      initialValue: value,
      items: withCurrentItem(_items, value),
      onChanged: (_) {},
    ),
  ),
);

void main() {
  test('a listed or empty value adds nothing', () {
    expect(withCurrentItem(_items, 'info'), same(_items));
    expect(withCurrentItem(_items, null), same(_items));
  });

  testWidgets('a value the list does not know is shown as sent, not a failed form', (tester) async {
    await tester.pumpWidget(_dropdown('severe'));

    expect(tester.takeException(), isNull);
    expect(find.text('severe'), findsOneWidget);
  });

  test('without it the same dropdown fails, which is what it is for', () {
    // The dropdown asserts its value is one item's in its constructor.
    expect(
      () => DropdownButtonFormField<String>(initialValue: 'severe', items: _items, onChanged: (_) {}),
      throwsAssertionError,
    );
  });
}
