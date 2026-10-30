import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';
import '../sources/sources_screens_test.dart' show sourcesBackend;

/// A backend holding [editions] in memory and answering the briefing/edition
/// operations, delegating everything else (the shell, access and the source
/// catalog) to [sourcesBackend].
FakeAdapter editionsBackend(List<Map<String, Object?>> editions) {
  final fallback = sourcesBackend();
  var nextId = 100;
  Map<String, Object?> run(String status) => <String, Object?>{
    'id': 'run-$status',
    'status': status,
    'mode': 'digest',
    'contentMarkdown': '# Morning Brief\n\nTwo earthquakes overnight.',
    'citations': <Object?>[
      <String, Object?>{'id': 'c1', 'seq': 1, 'title': 'M5.2 offshore', 'type': 'record', 'provenance': 'USGS feed', 'corroboration': '2 sources'},
    ],
  };
  return FakeAdapter((request) {
    final method = request.method;
    final path = request.uri.path;
    final body = request.body is Map ? (request.body! as Map).cast<String, Object?>() : const <String, Object?>{};

    if (path == '/v1/briefings' && method == 'GET') {
      return FakeResponse.json(editions);
    }
    if (path == '/v1/briefings' && method == 'POST') {
      final created = <String, Object?>{...body, 'id': 'edition-${nextId++}', 'ownerUserId': null};
      editions.add(created);
      return FakeResponse.json(created, status: 201);
    }
    if (path == '/v1/briefings/preview' && method == 'POST') {
      return FakeResponse.json(run('succeeded'));
    }
    final m = RegExp(r'^/v1/briefings/([^/]+)$').firstMatch(path);
    if (m != null) {
      final id = m.group(1)!;
      final i = editions.indexWhere((e) => e['id'] == id);
      if (method == 'GET') {
        return i < 0 ? FakeResponse.problem(<String, Object?>{'status': 404}, status: 404) : FakeResponse.json(editions[i]);
      }
      if (method == 'PUT') {
        editions[i] = <String, Object?>{...body, 'id': id, 'ownerUserId': editions[i]['ownerUserId']};
        return FakeResponse.empty();
      }
      if (method == 'DELETE') {
        editions.removeAt(i);
        return FakeResponse.empty();
      }
    }
    final mr = RegExp(r'^/v1/briefings/([^/]+)/run$').firstMatch(path);
    if (mr != null && method == 'POST') {
      return FakeResponse.json(run('succeeded'));
    }
    return fallback.handler(request);
  });
}

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
  await tester.pumpAndSettle();
}

Map<String, Object?> _bodyOf(RecordedRequest r) => (r.body! as Map).cast<String, Object?>();

RecordedRequest _last(FakeAdapter a, String method, String path) =>
    a.requests.lastWhere((r) => r.method == method && r.uri.path == path);

Map<String, Object?> _edition({required String id, required String name, Map<String, Object?>? extra}) => <String, Object?>{
  'id': id,
  'name': name,
  'enabled': true,
  'schedule': '0 7 * * *',
  'timezone': 'America/Chicago',
  'mode': 'digest',
  'outputLanguage': 'en',
  'scope': <String, Object?>{'sources': <String>['usgs-earthquakes'], 'kinds': <String>[], 'includeHealth': true},
  ...?extra,
};

void main() {
  testWidgets('the editions list shows editions and a New button', (tester) async {
    await _open(tester, editionsPath, editionsBackend(<Map<String, Object?>>[_edition(id: 'e1', name: 'Morning Brief')]));
    expect(find.text('Morning Brief'), findsOneWidget);
    expect(find.byKey(const Key('editions.new')), findsOneWidget);
  });

  testWidgets('creating an edition round-trips the feed, schedule and language', (tester) async {
    final store = <Map<String, Object?>>[];
    final adapter = await _open(tester, editionNewPath, editionsBackend(store));

    await _enter(tester, 'edition.name', 'Evening Wrap');
    await _enter(tester, 'edition.schedule', '0 18 * * *');
    await _enter(tester, 'edition.outputLanguage', 'es');
    await _tap(tester, 'edition.source.usgs-earthquakes');
    await _tap(tester, 'edition.save');

    final body = _bodyOf(_last(adapter, 'POST', '/v1/briefings'));
    expect(body['name'], 'Evening Wrap');
    expect(body['schedule'], '0 18 * * *');
    expect(body['outputLanguage'], 'es');
    expect((body['scope']! as Map)['sources'], contains('usgs-earthquakes'));
    expect(store.single['name'], 'Evening Wrap');
  });

  testWidgets('previewing posts the composed edition and shows the run', (tester) async {
    final adapter = await _open(tester, editionNewPath, editionsBackend(<Map<String, Object?>>[]));
    await _enter(tester, 'edition.name', 'Preview Me');
    await _tap(tester, 'edition.preview');

    expect(adapter.requests.any((r) => r.method == 'POST' && r.uri.path == '/v1/briefings/preview'), isTrue);
    expect(find.byKey(const Key('edition.preview.card')), findsOneWidget);
    expect(find.byKey(const Key('edition.preview.status')), findsOneWidget);
  });

  testWidgets('editing an edition preserves the NP-004 delivery/site members it does not edit', (tester) async {
    final edition = _edition(
      id: 'e9',
      name: 'Keep Me',
      extra: <String, Object?>{
        'deliveryTargets': <Object?>[<String, Object?>{'kind': 'email', 'format': 'html'}],
        'site': <String, Object?>{'enabled': true, 'shareable': true},
        'includeProvenance': true,
      },
    );
    final adapter = await _open(tester, editionDetailPath('e9'), editionsBackend(<Map<String, Object?>>[edition]));

    await _enter(tester, 'edition.name', 'Renamed');
    await _tap(tester, 'edition.save');

    final body = _bodyOf(_last(adapter, 'PUT', '/v1/briefings/e9'));
    expect(body['name'], 'Renamed');
    expect(body['deliveryTargets'], isNotNull);
    expect((body['site']! as Map)['shareable'], isTrue);
    expect(body['includeProvenance'], isTrue);
    // The read-only, server-owned members are not sent back.
    expect(body.containsKey('ownerUserId'), isFalse);
    expect(body.containsKey('id'), isFalse);
  });

  testWidgets('an edition with no name is refused before any request', (tester) async {
    final adapter = await _open(tester, editionNewPath, editionsBackend(<Map<String, Object?>>[]));
    await _enter(tester, 'edition.name', '');
    await _tap(tester, 'edition.save');
    expect(adapter.requests.any((r) => r.method == 'POST' && r.uri.path == '/v1/briefings'), isFalse);
    expect(find.textContaining('A name for the edition.'), findsOneWidget);
  });

  testWidgets('deleting an edition removes it and returns to the list', (tester) async {
    final store = <Map<String, Object?>>[_edition(id: 'e1', name: 'Doomed')];
    final adapter = await _open(tester, editionDetailPath('e1'), editionsBackend(store));
    await _tap(tester, 'edition.delete');
    expect(adapter.requests.any((r) => r.method == 'DELETE' && r.uri.path == '/v1/briefings/e1'), isTrue);
    expect(store, isEmpty);
  });
}
