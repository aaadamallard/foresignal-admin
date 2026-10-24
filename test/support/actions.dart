import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

/// Taps [finder] the way a person would reach it: lets go of the focused
/// field (which would otherwise scroll itself back into view on the next
/// frame), scrolls the target to the middle of the view (the top edge can
/// sit under a pinned header), then taps and settles.
Future<void> tapVisible(WidgetTester tester, Finder finder) async {
  FocusManager.instance.primaryFocus?.unfocus();
  await tester.pumpAndSettle();
  await Scrollable.ensureVisible(tester.element(finder), alignment: 0.5);
  await tester.pumpAndSettle();
  await tester.tap(finder);
  await tester.pumpAndSettle();
}
