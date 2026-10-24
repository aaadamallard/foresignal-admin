import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/nav.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/features/shell/app_shell.dart';

import '../support/test_app.dart';

void main() {
  test('desktop mounts every desktop section; mobile only the §K subset', () {
    expect(navSectionsFor(FormFactor.desktop).map((s) => s.path), <String>[
      '/sources',
      '/usage',
      '/ai',
      '/analysis',
      '/vetting',
      '/forecasting',
      '/alerts',
      '/notifications',
      '/serving',
      '/system',
    ]);
    expect(navSectionsFor(FormFactor.mobile).map((s) => s.path), <String>[
      '/sources',
      '/alerts',
      '/notifications',
      '/device',
    ]);
  });

  test('Connect is the first navigation entry on both form factors', () {
    for (final f in FormFactor.values) {
      expect(AppShell.destinationsFor(f).first.path, connectPath);
    }
  });

  test('form factor follows the platform', () {
    expect(FormFactor.forPlatform(TargetPlatform.linux), FormFactor.desktop);
    expect(FormFactor.forPlatform(TargetPlatform.windows), FormFactor.desktop);
    expect(FormFactor.forPlatform(TargetPlatform.macOS), FormFactor.desktop);
    expect(FormFactor.forPlatform(TargetPlatform.android), FormFactor.mobile);
    expect(FormFactor.forPlatform(TargetPlatform.iOS), FormFactor.mobile);
  });

  testWidgets('with no backend URL every route redirects to Connect', (tester) async {
    final container = testContainer(adapter: connectBackend());
    addTearDown(container.dispose);
    await tester.pumpWidget(testApp(container));
    await tester.pumpAndSettle();
    container.read(routerProvider).go('/system');
    await tester.pumpAndSettle();
    expect(container.read(routerProvider).state.matchedLocation, connectPath);
  });

  testWidgets('a desktop-only route does not exist on mobile', (tester) async {
    final container = testContainer(
      adapter: connectBackend(),
      formFactor: FormFactor.mobile,
      connectedTo: Uri.parse('http://h:8080'),
    );
    addTearDown(container.dispose);
    await tester.pumpWidget(testApp(container));
    await tester.pumpAndSettle();
    final router = container.read(routerProvider);
    router.go('/alerts');
    await tester.pumpAndSettle();
    expect(router.state.matchedLocation, '/alerts');
    router.go('/system');
    await tester.pumpAndSettle();
    // The router's onException sends a route that is not mounted here to
    // Connect: there is no System screen on mobile.
    expect(router.state.matchedLocation, connectPath);
    expect(find.text('System'), findsNothing);
  });

  testWidgets('desktop shows the sidebar; mobile the bottom bar', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final desktop = testContainer(
      adapter: connectBackend(),
      connectedTo: Uri.parse('http://h:8080'),
    );
    addTearDown(desktop.dispose);
    await tester.pumpWidget(testApp(desktop));
    await tester.pumpAndSettle();
    expect(find.byType(Sidebar), findsOneWidget);
    expect(find.byKey(const Key('nav./system')), findsOneWidget);

    final mobile = testContainer(
      adapter: connectBackend(),
      formFactor: FormFactor.mobile,
      connectedTo: Uri.parse('http://h:8080'),
    );
    addTearDown(mobile.dispose);
    await tester.pumpWidget(testApp(mobile));
    await tester.pumpAndSettle();
    expect(find.byType(NavigationBar), findsOneWidget);
    expect(find.text('System'), findsNothing);
  });
}
