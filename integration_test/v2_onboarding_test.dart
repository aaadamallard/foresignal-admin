import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:integration_test/integration_test.dart';

import '../test/features/onboarding/onboarding_test.dart' show firstRunBackend, openWithAdminToken;
import '../test/support/actions.dart';

/// The v2.0 path end to end on a real device, against the contract-shaped
/// fake: a fresh instance lands in onboarding, the first admin is created
/// and signed in, email is skipped past its warning, starter sources are
/// turned on, disk safety is saved, and the app opens signed in with the
/// admin's own account security on the profile.
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('a fresh instance is onboarded and opens signed in', (tester) async {
    final sessions = InMemorySessionStore();
    final adapter = firstRunBackend();
    final container = await openWithAdminToken(tester, adapter, sessions: sessions);
    expect(container.read(routerProvider).state.matchedLocation, onboardingPath);

    await tester.enterText(find.byKey(const Key('onboarding.email')), 'admin@example.com');
    await tester.enterText(find.byKey(const Key('onboarding.name')), 'Ada Admin');
    await tester.enterText(find.byKey(const Key('onboarding.password')), 'correct horse');
    await tester.enterText(find.byKey(const Key('onboarding.again')), 'correct horse');
    await tapVisible(tester, find.byKey(const Key('onboarding.createAdmin')));
    expect((await sessions.read())?.token, 'fss_first_admin');

    await tapVisible(tester, find.byKey(const Key('onboarding.smtpSkip')));
    await tapVisible(tester, find.byKey(const Key('onboarding.confirmSmtpSkip')));

    await tapVisible(tester, find.byKey(const Key('onboarding.enableSources')));
    await tapVisible(tester, find.byKey(const Key('onboarding.sourcesNext')));

    await tapVisible(tester, find.byKey(const Key('thresholds.save')));
    await tapVisible(tester, find.byKey(const Key('onboarding.thresholdsNext')));
    expect(find.textContaining('Skipped: links must be handed over by hand'), findsOneWidget);
    await tapVisible(tester, find.byKey(const Key('onboarding.finish')));
    expect(container.read(routerProvider).state.matchedLocation, sourcesPath);

    container.read(routerProvider).go(profilePath);
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('security')), findsOneWidget);
    expect(find.byKey(const Key('mfa')), findsOneWidget);
  });
}
