import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../../tool/preview/preview_system.dart';
import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';
import '../sources/sources_screens_test.dart' show sourcesBackend;

/// A fake backend answering the system, settings, token, key, signing,
/// plugin and bundle operations from [v], then the source operations.
FakeAdapter systemBackend(PreviewSystem v) {
  final fallback = sourcesBackend();
  return FakeAdapter((request) {
    final reply = answerSystem(
      request.method,
      request.uri.path,
      request.uri.queryParametersAll,
      request.body,
      v,
    );
    if (reply == null) {
      return fallback.handler(request);
    }
    final body = reply.body;
    if (body == null) {
      return FakeResponse.empty(status: reply.status);
    }
    return reply.status >= 400
        ? FakeResponse.problem(body as Map<String, Object?>, status: reply.status)
        : FakeResponse.json(body, status: reply.status);
  });
}

/// Opens the desktop app connected to [adapter] through [store] at [path].
Future<FakeAdapter> _open(WidgetTester tester, String path, FakeAdapter adapter, {InMemoryConnectionStore? store}) async {
  tester.view.physicalSize = const Size(1500, 1100);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  final container = testContainer(
    adapter: adapter,
    store: store ?? InMemoryConnectionStore(url: Uri.parse('http://h:8080'), token: 'fsr_good'),
    connectedTo: Uri.parse('http://h:8080'),
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(testApp(container));
  await tester.pumpAndSettle();
  container.read(routerProvider).go(path);
  await tester.pumpAndSettle();
  return adapter;
}

Future<void> _tapKey(WidgetTester tester, String key) async {
  await tapVisible(tester, find.byKey(Key(key)).first);
}

Future<void> _tapText(WidgetTester tester, String label) async {
  await tapVisible(tester, find.text(label).last);
}

Future<void> _tapIn(WidgetTester tester, String key, String label) async {
  final target = find.descendant(of: find.byKey(Key(key)), matching: find.text(label));
  await tapVisible(tester, target);
}

Future<void> _enter(WidgetTester tester, String key, String text) async {
  await tester.ensureVisible(find.byKey(Key(key)).first);
  await tester.enterText(find.byKey(Key(key)).first, text);
  await tester.pumpAndSettle();
}

Map<String, Object?> _bodyOf(RecordedRequest r) => (r.body! as Map).cast<String, Object?>();

RecordedRequest _last(FakeAdapter a, String method, String path) =>
    a.requests.lastWhere((r) => r.method == method && r.uri.path == path);

Iterable<RecordedRequest> _sent(FakeAdapter a, String method, String path) =>
    a.requests.where((r) => r.method == method && r.uri.path == path);

void main() {
  testWidgets('the overview shows status, warnings and history tiers', (tester) async {
    await _open(tester, systemPath, systemBackend(PreviewSystem()));
    expect(find.byKey(const Key('system.status')), findsOneWidget);
    expect(find.text('Degraded'), findsWidgets);
    expect(find.byKey(const Key('system.warnings')), findsOneWidget);
    await tester.ensureVisible(find.byKey(const Key('system.history')));
    expect(find.text('Track'), findsOneWidget);
  });

  testWidgets('saving the server settings keeps members the form does not edit', (tester) async {
    final v = PreviewSystem();
    final adapter = await _open(tester, systemServerPath, systemBackend(v));
    await _enter(tester, 'server.publicBaseUrl', 'https://foresignal.example.org');
    await _tapIn(tester, 'server.actions', 'Save Changes');
    final body = _bodyOf(_last(adapter, 'PUT', '/v1/settings/server'));
    expect(body['publicBaseUrl'], 'https://foresignal.example.org');
    expect(body.containsKey('clientLinks'), isTrue);
    expect(body.containsKey('warnings'), isFalse);
    expect(v.settings['/v1/settings/server']!['publicBaseUrl'], 'https://foresignal.example.org');
    expect(find.textContaining('Saved and confirmed'), findsOneWidget);
  });

  testWidgets('an identity provider without an issuer is refused before sending', (tester) async {
    final adapter = await _open(tester, systemSecurityPath, systemBackend(PreviewSystem()));
    await _tapKey(tester, 'mcp.mode');
    await _tapText(tester, 'Identity provider');
    await _tapIn(tester, 'mcp.actions', 'Save Changes');
    expect(_sent(adapter, 'PUT', '/v1/settings/mcp-auth'), isEmpty);
    expect(find.text('Required with an identity provider.'), findsOneWidget);
  });

  testWidgets('image links without an https public URL show the backend refusal', (tester) async {
    await _open(tester, systemOperationsPath, systemBackend(PreviewSystem()));
    // The key is on the full-width row; the switch sits at its left.
    await tapVisible(
      tester,
      find.descendant(of: find.byKey(const Key('notifications.imageLinks')), matching: find.byType(Switch)),
    );
    await _tapIn(tester, 'notifications.actions', 'Save Changes');
    expect(find.textContaining('IMAGE_LINKS_REQUIRE_HTTPS'), findsOneWidget);
  });

  testWidgets('a new token is shown once and carries its restriction', (tester) async {
    final v = PreviewSystem();
    final adapter = await _open(tester, systemTokensPath, systemBackend(v));
    final before = v.tokens.length;
    await _tapKey(tester, 'tokens.add');
    await _enter(tester, 'token.name', 'Home Assistant');
    await _enter(tester, 'token.sources', 'noaa-tides');
    await _tapText(tester, 'Create Token');
    final body = _bodyOf(_last(adapter, 'POST', '/v1/tokens'));
    expect(body['name'], 'Home Assistant');
    expect((body['restrictions']! as Map)['sources'], <String>['noaa-tides']);
    expect(v.tokens.length, before + 1);
    // The secret's panel, not the card's subtitle that says values are shown once.
    expect(find.textContaining('Token — shown once'), findsOneWidget);
  });

  testWidgets('the bootstrap token cannot be revoked, others can', (tester) async {
    final v = PreviewSystem();
    final adapter = await _open(tester, systemTokensPath, systemBackend(v));
    final bootstrap = v.tokens.values.firstWhere((t) => t['bootstrap'] == true);
    final paired = v.tokens.values.firstWhere((t) => t['scope'] == 'agent');
    expect(find.byKey(Key('tokens.revoke.${bootstrap['id']}')), findsNothing);
    await _tapKey(tester, 'tokens.revoke.${paired['id']}');
    await _tapKey(tester, 'tokens.revoke.confirm');
    expect(_last(adapter, 'DELETE', '/v1/tokens/${paired['id']}'), isNotNull);
    expect(paired['revokedAt'], isNotNull);
  });

  testWidgets('rotating the admin token stores the new one for this app', (tester) async {
    final v = PreviewSystem();
    final store = InMemoryConnectionStore(url: Uri.parse('http://h:8080'), token: 'fsr_good');
    final adapter = await _open(tester, systemTokensPath, systemBackend(v), store: store);
    await _tapKey(tester, 'adminToken.rotate');
    expect(_sent(adapter, 'POST', '/v1/system/admin-token/rotate'), isEmpty);
    await _tapKey(tester, 'adminToken.confirm');
    expect(_last(adapter, 'POST', '/v1/system/admin-token/rotate'), isNotNull);
    expect(await store.read(), v.adminToken);
    expect(_last(adapter, 'GET', '/v1/settings/server').options.headers['Authorization'], 'Bearer ${v.adminToken}');
  });

  testWidgets('approving a plugin sends the hash of its file', (tester) async {
    final v = PreviewSystem();
    final adapter = await _open(tester, systemPluginsPath, systemBackend(v));
    await _tapText(tester, 'aprs-is');
    expect(find.byKey(const Key('plugin.enable')), findsOneWidget);
    await _tapKey(tester, 'plugin.reviewed');
    await _tapKey(tester, 'plugin.enable');
    final body = _bodyOf(_last(adapter, 'PUT', '/v1/plugins/aprs-is'));
    expect(body['enabled'], isTrue);
    expect(body['sha256'], v.plugins['aprs-is']!['actualSha256']);
    expect(v.plugins['aprs-is']!['state'], 'enabled');
  });

  testWidgets('a plugin whose file differs from its declared hash is not offered for approval', (tester) async {
    final v = PreviewSystem();
    v.plugins['sbs-legacy']!['enabled'] = false;
    await _open(tester, systemPluginsPath, systemBackend(v));
    await _tapText(tester, 'sbs-legacy');
    expect(find.byKey(const Key('plugin.enable')), findsNothing);
    expect(find.textContaining('does not hash to the sha256 plugin.json declares'), findsOneWidget);
  });

  testWidgets('an exported bundle imports back after confirmation', (tester) async {
    final v = PreviewSystem();
    final adapter = await _open(tester, systemBackupPath, systemBackend(v));
    await _tapText(tester, 'Export');
    await _tapKey(tester, 'export.use');
    final text = tester.widget<EditableText>(
      find.descendant(of: find.byKey(const Key('import.json')), matching: find.byType(EditableText)),
    );
    final bundle = jsonDecode(text.controller.text) as Map<String, Object?>;
    await _tapIn(tester, 'import', 'Import');
    expect(_sent(adapter, 'PUT', '/v1/settings/import'), isEmpty);
    await _tapKey(tester, 'import.confirm');
    expect(_bodyOf(_last(adapter, 'PUT', '/v1/settings/import'))['sources'], bundle['sources']);
    expect(find.byKey(const Key('import.report')), findsOneWidget);
    expect(find.textContaining('3 sources applied'), findsOneWidget);
  });
}
