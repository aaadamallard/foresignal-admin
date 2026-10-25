import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/connection_store.dart';

import '../../support/test_app.dart';

void main() {
  testWidgets('entering a URL and token and testing shows the result and saves the token', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1400, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final store = InMemoryConnectionStore();
    final adapter = connectBackend();
    final container = testContainer(adapter: adapter, store: store);
    addTearDown(container.dispose);

    await tester.pumpWidget(testApp(container));
    await tester.pumpAndSettle();
    expect(find.text('Connect to ForeSignal'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('connect.url')), 'http://foresignal.local:8080');
    await tester.enterText(find.byKey(const Key('connect.token')), 'fsr_good');
    await tester.tap(find.byKey(const Key('connect.test')));
    await tester.pumpAndSettle();

    expect(find.text('Connection successful'), findsOneWidget);
    expect(find.text('Compatible (1.4.0)'), findsOneWidget);
    expect(find.text('2026-10-22 16:30:00 UTC'), findsOneWidget);
    expect(await store.read(), 'fsr_good');
    expect(adapter.requests.last.options.headers['Authorization'], 'Bearer fsr_good');
  });

  testWidgets('a rejected token is shown on the screen, not as a crash', (tester) async {
    tester.view.physicalSize = const Size(1400, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final container = testContainer(adapter: connectBackend());
    addTearDown(container.dispose);

    await tester.pumpWidget(testApp(container));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('connect.url')), 'http://h:8080');
    await tester.enterText(find.byKey(const Key('connect.token')), 'fsr_bad');
    await tester.tap(find.byKey(const Key('connect.test')));
    await tester.pumpAndSettle();

    expect(find.text('Backend reachable — token rejected'), findsOneWidget);
    expect(find.textContaining('Nothing was saved'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('a secure store that refuses is reported, and the connection still works', (tester) async {
    tester.view.physicalSize = const Size(1400, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final store = _UnsavedStore();
    final container = testContainer(adapter: connectBackend(), store: store);
    addTearDown(container.dispose);

    await tester.pumpWidget(testApp(container));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('connect.notSaved')), findsOneWidget);
    expect(find.textContaining('No Secret Service'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('connect.url')), 'http://h:8080');
    await tester.enterText(find.byKey(const Key('connect.token')), 'fsr_good');
    await tester.tap(find.byKey(const Key('connect.test')));
    await tester.pumpAndSettle();
    expect(find.text('Connection successful'), findsOneWidget);
    expect(find.byKey(const Key('connect.notSaved')), findsOneWidget);
  });
}

/// A store whose saving fails, like libsecret without a keyring.
class _UnsavedStore extends InMemoryConnectionStore {
  @override
  String? get persistenceProblem => 'No Secret Service';
}
