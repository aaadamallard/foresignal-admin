import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../../tool/preview/preview_alerts.dart' show PreviewText;
import '../../../tool/preview/preview_serving.dart';
import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';
import '../sources/sources_screens_test.dart' show sourcesBackend;

/// A fake backend answering the sink, export, archive, peer and federation
/// operations from [v], then the source operations.
FakeAdapter servingBackend(PreviewServing v) {
  final fallback = sourcesBackend();
  return FakeAdapter((request) {
    final reply = answerServing(
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
    if (body is PreviewText) {
      return FakeResponse.text(body.text, status: reply.status, contentType: body.contentType);
    }
    return reply.status >= 400
        ? FakeResponse.problem(body as Map<String, Object?>, status: reply.status)
        : FakeResponse.json(body, status: reply.status);
  });
}

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

Future<void> _tapKey(WidgetTester tester, String key) async {
  await tapVisible(tester, find.byKey(Key(key)).first);
}

Future<void> _tapText(WidgetTester tester, String label) async {
  await tapVisible(tester, find.text(label).last);
}

Future<void> _enter(WidgetTester tester, String key, String text) async {
  await tester.ensureVisible(find.byKey(Key(key)).first);
  await tester.enterText(find.byKey(Key(key)).first, text);
  await tester.pumpAndSettle();
}

Map<String, Object?> _bodyOf(RecordedRequest r) => (r.body! as Map).cast<String, Object?>();

RecordedRequest _last(FakeAdapter a, String method, String path) =>
    a.requests.lastWhere((r) => r.method == method && r.uri.path == path);

void main() {
  testWidgets('the sinks tab lists every sink and the sink types', (tester) async {
    await _open(tester, servingPath, servingBackend(PreviewServing()));
    expect(find.byKey(const Key('sinks.table')), findsOneWidget);
    expect(find.text('Home Assistant'), findsWidgets);
    expect(find.text('Events webhook'), findsWidgets);
    expect(find.byKey(const Key('sinks.types')), findsOneWidget);
  });

  testWidgets('a hold is added from the archive tab and listed', (tester) async {
    final v = PreviewServing();
    final adapter = await _open(tester, servingArchivePath, servingBackend(v));
    final before = v.holds.length;
    await _tapKey(tester, 'holds.add');
    expect(find.byKey(const Key('hold.form')), findsOneWidget);
    await _enter(tester, 'hold.name', 'Case 41');
    await _enter(tester, 'hold.reason', 'Litigation hold');
    await _enter(tester, 'hold.sources', 'ais-baltic');
    await _tapText(tester, 'Add Hold');
    final body = _bodyOf(_last(adapter, 'POST', '/v1/holds'));
    expect(body['name'], 'Case 41');
    expect(body['reason'], 'Litigation hold');
    expect(body['sources'], <String>['ais-baltic']);
    expect(v.holds.length, before + 1);
    expect(find.text('Case 41'), findsWidgets);
  });

  testWidgets('a hold without a reason is refused before sending', (tester) async {
    final adapter = await _open(tester, servingArchivePath, servingBackend(PreviewServing()));
    await _tapKey(tester, 'holds.add');
    await _enter(tester, 'hold.name', 'Case 41');
    await _tapText(tester, 'Add Hold');
    expect(adapter.requests.where((r) => r.method == 'POST' && r.uri.path == '/v1/holds'), isEmpty);
    expect(find.text('Required.'), findsOneWidget);
  });

  testWidgets('a mismatched peer fails its test, and re-pinning sends a null pin', (tester) async {
    final v = PreviewServing();
    final adapter = await _open(tester, servingPeerPath('partner-coast'), servingBackend(v));
    await _tapKey(tester, 'peer.test.run');
    expect(find.text('Test failed'), findsOneWidget);
    expect(find.textContaining('key does not match the pin.'), findsOneWidget);
    await _tapKey(tester, 'peer.repin');
    await _tapKey(tester, 'peer.repin.confirm');
    final put = _bodyOf(_last(adapter, 'PUT', '/v1/peers/partner-coast'));
    expect(put.containsKey('pinnedKid'), isTrue);
    expect(put['pinnedKid'], isNull);
    expect(find.byKey(const Key('peer.replication.done')), findsOneWidget);
  });

  testWidgets('Re-pin is offered only for a pulled peer with a pin', (tester) async {
    await _open(tester, servingPeerPath('edge-van-3'), servingBackend(PreviewServing()));
    expect(find.byKey(const Key('peer.repin')), findsNothing);
    expect(find.byKey(const Key('peer.ingestKey')), findsOneWidget);
  });

  testWidgets('rotating an ingest key shows the new key once', (tester) async {
    final adapter = await _open(tester, servingPeerPath('edge-van-3'), servingBackend(PreviewServing()));
    await _tapKey(tester, 'peer.ingestKey.rotate');
    expect(adapter.requests.where((r) => r.uri.path.endsWith('/ingest-key')), isEmpty);
    await _tapKey(tester, 'peer.ingestKey.confirm');
    expect(_last(adapter, 'POST', '/v1/peers/edge-van-3/ingest-key'), isNotNull);
    expect(find.textContaining('shown once'), findsOneWidget);
  });

  testWidgets('registering a pulled peer needs its token', (tester) async {
    final v = PreviewServing();
    final adapter = await _open(tester, servingNewPeerPath, servingBackend(v));
    await _enter(tester, 'peer.id', 'hub-south');
    await _enter(tester, 'peer.name', 'Hub south');
    await _enter(tester, 'peer.baseUrl', 'https://hub-south.example');
    await _tapText(tester, 'Register Peer');
    expect(adapter.requests.where((r) => r.method == 'POST' && r.uri.path == '/v1/peers'), isEmpty);
    await _enter(tester, 'peer.token', 'fsr_remote');
    await _tapText(tester, 'Register Peer');
    final body = _bodyOf(_last(adapter, 'POST', '/v1/peers'));
    expect(body['id'], 'hub-south');
    expect(body['mode'], 'PULL');
    expect(body['token'], 'fsr_remote');
    expect(v.peers, contains('hub-south'));
  });
}
