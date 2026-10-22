import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/app.dart';

void main() {
  testWidgets('the app starts and shows its title', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: ForeSignalAdminApp()));
    await tester.pumpAndSettle();
    expect(find.text(appTitle), findsOneWidget);
  });
}
