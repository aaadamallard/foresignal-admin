import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test/support/test_app.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('the app launches on a real device and shows Connect', (tester) async {
    final container = testContainer(adapter: connectBackend());
    addTearDown(container.dispose);
    await tester.pumpWidget(testApp(container));
    await tester.pumpAndSettle();
    expect(find.text('Connect to ForeSignal'), findsOneWidget);
  });
}
