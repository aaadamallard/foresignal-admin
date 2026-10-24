import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/ui/ui.dart';

void main() {
  testWidgets('a long cell stays within its width and wraps the whole text, never cut', (tester) async {
    final long = List<String>.filled(30, 'power-plant-osm').join(', ');
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: Row(children: <Widget>[BoundedText(long, maxWidth: 200)])),
      ),
    );
    expect(tester.getSize(find.byType(BoundedText)).width, lessThanOrEqualTo(200));
    final text = tester.widget<Text>(find.text(long));
    expect(text.maxLines, isNull);
    expect(text.overflow, isNull);
    expect(tester.getSize(find.text(long)).height, greaterThan(20));
  });
}
