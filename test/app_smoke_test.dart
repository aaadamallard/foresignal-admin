import 'package:flutter_test/flutter_test.dart';

import 'support/test_app.dart';

void main() {
  testWidgets('the app starts on Connect when no backend is saved', (tester) async {
    final container = testContainer(adapter: connectBackend());
    addTearDown(container.dispose);
    await tester.pumpWidget(testApp(container));
    await tester.pumpAndSettle();
    expect(find.text('Connect to ForeSignal'), findsOneWidget);
  });
}
