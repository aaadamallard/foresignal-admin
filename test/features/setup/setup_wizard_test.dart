import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:foresignal_admin/features/setup/setup_wizard_store.dart';

import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';

/// A SourceSummary body.
Map<String, Object?> source(String id, {bool enabled = false, String status = 'disabled', bool needsKey = false}) =>
    <String, Object?>{
      'id': id,
      'name': id.toUpperCase(),
      'kinds': <String>['event'],
      'mode': 'polling',
      'enabled': enabled,
      'status': status,
      'credentialsRequired': needsKey,
      'credentialsSet': false,
    };

FakeAdapter wizardBackend(List<Map<String, Object?>> sources) {
  final connect = connectBackend();
  return FakeAdapter((request) {
    switch (request.uri.path) {
      case '/v1/sources':
        return FakeResponse.json(sources);
      case '/v1/sources/enable-core':
        for (final s in sources) {
          if (s['id'] == 'usgs') {
            s['enabled'] = true;
            s['status'] = 'healthy';
          }
        }
        return FakeResponse.json(<String, Object?>{'enabled': <String>['usgs'], 'count': 1, 'skipped': 2});
      case '/v1/triggers':
        return FakeResponse.json(<Object?>[]);
      case '/v1/channels':
        return FakeResponse.json(<Object?>[]);
      case '/v1/push/providers':
      case '/v1/push/devices':
        return FakeResponse.json(<Object?>[]);
    }
    return connect.handler(request);
  });
}

Future<void> openWizard(WidgetTester tester, FakeAdapter adapter, {InMemorySetupWizardStore? wizardStore}) async {
  tester.view.physicalSize = const Size(1400, 1000);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  final container = testContainer(
    adapter: adapter,
    store: InMemoryConnectionStore(url: Uri.parse('http://h:8080'), token: 'fsr_good'),
    connectedTo: Uri.parse('http://h:8080'),
    wizardStore: wizardStore,
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(testApp(container));
  await tester.pumpAndSettle();
  container.read(routerProvider).go(setupPath);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('the wizard shows seven steps and walks them with Next and Back', (tester) async {
    await openWizard(tester, wizardBackend(<Map<String, Object?>>[source('usgs')]));
    expect(find.text('Welcome to ForeSignal'), findsOneWidget);
    expect(find.text('Step 1 of 7'), findsOneWidget);
    await tester.tap(find.byKey(const Key('setup.next')));
    await tester.pumpAndSettle();
    expect(find.text('Step 2 of 7'), findsOneWidget);
    await tester.tap(find.byKey(const Key('setup.back')));
    await tester.pumpAndSettle();
    expect(find.text('Step 1 of 7'), findsOneWidget);
  });

  testWidgets('Enable Core Sources calls enableCoreSources and re-reads the catalog', (tester) async {
    final sources = <Map<String, Object?>>[source('usgs'), source('gdelt', enabled: true, status: 'healthy')];
    final adapter = wizardBackend(sources);
    await openWizard(tester, adapter);
    await tester.tap(find.byKey(const Key('setup.step.coreSources')));
    await tester.pumpAndSettle();
    expect(find.text('1'), findsWidgets);

    await tester.tap(find.byKey(const Key('setup.enableCore')));
    await tester.pumpAndSettle();

    final post = adapter.requests.where((r) => r.uri.path == '/v1/sources/enable-core').single;
    expect(post.method, 'POST');
    expect(post.options.headers['Authorization'], 'Bearer fsr_good');
    expect(find.text('Enabled 1 source'), findsOneWidget);
    final reads = adapter.requests.where((r) => r.uri.path == '/v1/sources').length;
    expect(reads, greaterThanOrEqualTo(2), reason: 'the catalog is re-read after enabling');
  });

  testWidgets('provider keys lists only sources whose required key is missing', (tester) async {
    await openWizard(
      tester,
      wizardBackend(<Map<String, Object?>>[
        source('acled', enabled: true, needsKey: true),
        source('usgs', enabled: true),
      ]),
    );
    await tester.tap(find.byKey(const Key('setup.step.providerKeys')));
    await tester.pumpAndSettle();
    expect(find.text('ACLED'), findsOneWidget);
    expect(find.text('USGS'), findsNothing);
    expect(find.text('Set key'), findsOneWidget);
  });

  testWidgets('Skip setup records skipped and leaves the wizard', (tester) async {
    final wizardStore = InMemorySetupWizardStore();
    await openWizard(tester, wizardBackend(<Map<String, Object?>>[]), wizardStore: wizardStore);
    await tester.tap(find.byKey(const Key('setup.skip')));
    await tester.pumpAndSettle();
    expect(wizardStore.status, SetupWizardStatus.skipped);
    expect(find.text('Welcome to ForeSignal'), findsNothing);
  });

  testWidgets('Finish on the last step records completed', (tester) async {
    final wizardStore = InMemorySetupWizardStore();
    await openWizard(tester, wizardBackend(<Map<String, Object?>>[]), wizardStore: wizardStore);
    await tester.tap(find.byKey(const Key('setup.step.review')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('setup.next')));
    await tester.pumpAndSettle();
    expect(wizardStore.status, SetupWizardStatus.completed);
  });

  testWidgets('a deep link to a screen not mounted yet lands on its section', (tester) async {
    await openWizard(tester, wizardBackend(<Map<String, Object?>>[source('acled', needsKey: true)]));
    await tester.tap(find.byKey(const Key('setup.step.providerKeys')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Set key'));
    await tester.pumpAndSettle();
    expect(find.text('Welcome to ForeSignal'), findsNothing);
  });

  testWidgets('the first admin connection on desktop opens the wizard; a finished one does not', (tester) async {
    tester.view.physicalSize = const Size(1400, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final container = testContainer(adapter: wizardBackend(<Map<String, Object?>>[]));
    addTearDown(container.dispose);
    await tester.pumpWidget(testApp(container));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('connect.url')), 'http://h:8080');
    await tester.enterText(find.byKey(const Key('connect.token')), 'fsr_good');
    await tester.tap(find.byKey(const Key('connect.test')));
    await tester.pumpAndSettle();
    expect(container.read(routerProvider).state.matchedLocation, setupPath);

    final done = testContainer(
      adapter: wizardBackend(<Map<String, Object?>>[]),
      wizardStore: InMemorySetupWizardStore(SetupWizardStatus.completed),
    );
    addTearDown(done.dispose);
    await tester.pumpWidget(testApp(done));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('connect.url')), 'http://h:8080');
    await tester.enterText(find.byKey(const Key('connect.token')), 'fsr_good');
    await tester.tap(find.byKey(const Key('connect.test')));
    await tester.pumpAndSettle();
    expect(done.read(routerProvider).state.matchedLocation, isNot(setupPath));
  });

  testWidgets('the wizard is not mounted on mobile', (tester) async {
    final container = testContainer(
      adapter: wizardBackend(<Map<String, Object?>>[]),
      formFactor: FormFactor.mobile,
      connectedTo: Uri.parse('http://h:8080'),
    );
    addTearDown(container.dispose);
    await tester.pumpWidget(testApp(container));
    await tester.pumpAndSettle();
    container.read(routerProvider).go(setupPath);
    await tester.pumpAndSettle();
    expect(find.text('Welcome to ForeSignal'), findsNothing);
  });

  test('sectionRootOf', () {
    expect(sectionRootOf('/sources/acled/test'), '/sources');
    expect(sectionRootOf('/setup'), '/setup');
    expect(sectionRootOf('/'), '/');
  });
}
