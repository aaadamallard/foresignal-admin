import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../../tool/preview/preview_system.dart';
import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';
import 'system_screens_test.dart' show systemBackend;

/// Opens the desktop app connected to [adapter] at [path].
Future<FakeAdapter> _open(WidgetTester tester, String path, FakeAdapter adapter) async {
  tester.view.physicalSize = const Size(1500, 1100);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  final container = testContainer(
    adapter: adapter,
    store: InMemoryConnectionStore(url: Uri.parse('http://h:8080'), token: 'fsr_good'),
    connectedTo: Uri.parse('http://h:8080'),
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(testApp(container));
  await tester.pumpAndSettle();
  container.read(routerProvider).go(path);
  await tester.pumpAndSettle();
  return adapter;
}

Future<void> _enter(WidgetTester tester, String key, String text) async {
  await tester.ensureVisible(find.byKey(Key(key)).first);
  await tester.enterText(find.byKey(Key(key)).first, text);
  await tester.pumpAndSettle();
}

Future<void> _tap(WidgetTester tester, String key) async {
  await tapVisible(tester, find.byKey(Key(key)).first);
}

Map<String, Object?> _bodyOf(RecordedRequest r) => (r.body! as Map).cast<String, Object?>();

RecordedRequest _last(FakeAdapter a, String method, String path) =>
    a.requests.lastWhere((r) => r.method == method && r.uri.path == path);

void main() {
  const path = '/v1/settings/translation';

  testWidgets('the panel reads the effective translation settings', (tester) async {
    await _open(tester, systemTranslationPath, systemBackend(PreviewSystem()));
    expect(find.byKey(const Key('translation.enabled')), findsOneWidget);
    expect(find.text('en es'), findsOneWidget);
    expect(find.byKey(const Key('translation.spend')), findsOneWidget);
  });

  testWidgets('changing the target languages round-trips and is re-read', (tester) async {
    final v = PreviewSystem();
    final adapter = await _open(tester, systemTranslationPath, systemBackend(v));

    await _enter(tester, 'translation.languages', 'en es pt-BR');
    await _tap(tester, 'translation.save');
    await tester.pumpAndSettle();

    final body = _bodyOf(_last(adapter, 'PUT', path));
    expect(body['targetLanguages'], <String>['en', 'es', 'pt-BR']);
    expect(v.settings[path]!['targetLanguages'], <String>['en', 'es', 'pt-BR']);
    // Write-then-confirm re-reads the resource after saving.
    expect(adapter.requests.where((r) => r.method == 'GET' && r.uri.path == path).length, greaterThan(1));
    expect(find.textContaining('Saved and confirmed'), findsOneWidget);
  });

  testWidgets('duplicate and whitespace-separated tags are normalized', (tester) async {
    final v = PreviewSystem();
    final adapter = await _open(tester, systemTranslationPath, systemBackend(v));

    await _enter(tester, 'translation.languages', 'en, en  fr');
    await _tap(tester, 'translation.save');
    await tester.pumpAndSettle();

    expect(_bodyOf(_last(adapter, 'PUT', path))['targetLanguages'], <String>['en', 'fr']);
  });

  testWidgets('disabling translation is persisted and reflected on re-read', (tester) async {
    final v = PreviewSystem();
    final adapter = await _open(tester, systemTranslationPath, systemBackend(v));

    await _tap(tester, 'translation.enabled'); // was on
    await _tap(tester, 'translation.save');
    await tester.pumpAndSettle();

    expect(_bodyOf(_last(adapter, 'PUT', path))['enabled'], isFalse);
    expect(v.settings[path]!['enabled'], isFalse);
    final sw = tester.widget<SwitchListTile>(find.byKey(const Key('translation.enabled')));
    expect(sw.value, isFalse);
  });

  testWidgets('a target language that is not BCP 47 is refused before sending', (tester) async {
    final adapter = await _open(tester, systemTranslationPath, systemBackend(PreviewSystem()));

    await _enter(tester, 'translation.languages', 'english!');
    await _tap(tester, 'translation.save');
    await tester.pumpAndSettle();

    expect(adapter.requests.any((r) => r.method == 'PUT' && r.uri.path == path), isFalse);
    expect(find.textContaining('BCP 47'), findsOneWidget);
  });
}
