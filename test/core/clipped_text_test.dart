import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/ui/ui.dart';

void main() {
  testWidgets('a long cell stays within its width and keeps the whole text on hover', (tester) async {
    final long = List<String>.filled(30, 'power-plant-osm').join(', ');
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: Row(children: <Widget>[ClippedText(long, maxWidth: 200)])),
      ),
    );
    expect(tester.getSize(find.byType(ClippedText)).width, lessThanOrEqualTo(200));
    expect(tester.widget<Tooltip>(find.byType(Tooltip)).message, long);
  });
}
