import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/app.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('the app launches on a real device', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: ForeSignalAdminApp()));
    await tester.pumpAndSettle();
    expect(find.text(appTitle), findsOneWidget);
  });
}
