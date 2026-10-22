import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/theme.dart';
import 'package:foresignal_admin/core/theme_mode.dart';

import '../support/test_app.dart';

void main() {
  test('each theme carries its palette', () {
    expect(buildAdminTheme().extension<AdminPalette>(), AdminPalette.dark);
    expect(buildAdminLightTheme().extension<AdminPalette>(), AdminPalette.light);
    expect(buildAdminTheme().brightness, Brightness.dark);
    expect(buildAdminLightTheme().brightness, Brightness.light);
  });

  test('the light palette keeps text readable: body text darker than its background', () {
    const p = AdminPalette.light;
    expect(p.text.computeLuminance(), lessThan(0.05));
    expect(p.card.computeLuminance(), greaterThan(0.9));
  });

  test('parseThemeMode', () {
    expect(parseThemeMode('light'), ThemeMode.light);
    expect(parseThemeMode('system'), ThemeMode.system);
    expect(parseThemeMode('neon'), isNull);
    expect(parseThemeMode(null), isNull);
  });

  test('the controller defaults to dark, saves changes, and toggles', () async {
    final container = testContainer(adapter: connectBackend());
    addTearDown(container.dispose);
    final overridden = container;
    expect(overridden.read(themeModeProvider), ThemeMode.dark);
    await overridden.read(themeModeProvider.notifier).set(ThemeMode.light);
    expect(overridden.read(themeModeProvider), ThemeMode.light);
    await overridden.read(themeModeProvider.notifier).toggle(Brightness.dark);
    expect(overridden.read(themeModeProvider), ThemeMode.dark);
    expect(await overridden.read(themePreferenceStoreProvider).read(), ThemeMode.dark);
  });

  testWidgets('picking Light from the theme menu switches the running app', (tester) async {
    tester.view.physicalSize = const Size(1400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final container = testContainer(
      adapter: connectBackend(),
      connectedTo: Uri.parse('http://h:8080'),
    );
    addTearDown(container.dispose);
    await tester.pumpWidget(testApp(container));
    await tester.pumpAndSettle();
    expect(Theme.of(tester.element(find.text('Sources').first)).brightness, Brightness.dark);

    await tester.tap(find.byKey(const Key('theme.menu')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Light').last);
    await tester.pumpAndSettle();

    expect(container.read(themeModeProvider), ThemeMode.light);
    expect(Theme.of(tester.element(find.text('Sources').first)).brightness, Brightness.light);
  });
}
