import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';
import '../sources/sources_screens_test.dart' show sourcesBackend;

/// A backend for the NP-004 publishing surface: the briefing CRUD, the channel
/// list, and each edition's hosted site. Delegates the rest to [sourcesBackend].
FakeAdapter publishingBackend(List<Map<String, Object?>> editions) {
  final fallback = sourcesBackend();
  const channels = <Map<String, Object?>>[
    <String, Object?>{'id': 'ch1', 'name': 'Ops Email', 'type': 'email', 'enabled': true},
  ];
  Map<String, Object?> siteOf(Map<String, Object?> e) {
    final site = (e['site'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};
    return <String, Object?>{
      'briefingId': e['id'],
      'url': 'https://foresignal.example/editions/${e['id']}/site',
      'feedKeyUrl': null,
      'shareUrl': site['shareable'] == true ? 'https://foresignal.example/k/share-${e['id']}/site' : null,
      'latestRunId': null,
      'updatedAt': null,
    };
  }

  return FakeAdapter((request) {
    final method = request.method;
    final path = request.uri.path;
    final body = request.body is Map ? (request.body! as Map).cast<String, Object?>() : const <String, Object?>{};

    if (path == '/v1/channels' && method == 'GET') {
      return FakeResponse.json(channels);
    }
    if (path == '/v1/briefings' && method == 'GET') {
      return FakeResponse.json(editions);
    }
    final site = RegExp(r'^/v1/editions/([^/]+)/site$').firstMatch(path);
    if (site != null && method == 'GET') {
      final i = editions.indexWhere((e) => e['id'] == site.group(1));
      return i < 0 ? FakeResponse.problem(<String, Object?>{'status': 404}, status: 404) : FakeResponse.json(siteOf(editions[i]));
    }
    final one = RegExp(r'^/v1/briefings/([^/]+)$').firstMatch(path);
    if (one != null) {
      final id = one.group(1)!;
      final i = editions.indexWhere((e) => e['id'] == id);
      if (method == 'GET') {
        return i < 0 ? FakeResponse.problem(<String, Object?>{'status': 404}, status: 404) : FakeResponse.json(editions[i]);
      }
      if (method == 'PUT') {
        editions[i] = <String, Object?>{...body, 'id': id, 'ownerUserId': editions[i]['ownerUserId']};
        return FakeResponse.empty();
      }
    }
    if (path == '/v1/briefings/preview' && method == 'POST') {
      return FakeResponse.json(<String, Object?>{
        'id': 'run1',
        'status': 'succeeded',
        'contentMarkdown': '# Brief',
        'citations': <Object?>[
          <String, Object?>{'id': 'c1', 'seq': 1, 'title': 'Quake', 'provenance': 'USGS', 'corroboration': '2 sources'},
        ],
      });
    }
    return fallback.handler(request);
  });
}

Future<FakeAdapter> _open(WidgetTester tester, String path, FakeAdapter adapter) async {
  tester.view.physicalSize = const Size(1500, 1300);
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

Future<void> _tap(WidgetTester tester, String key) async {
  await tapVisible(tester, find.byKey(Key(key)).first);
  await tester.pumpAndSettle();
}

Map<String, Object?> _bodyOf(RecordedRequest r) => (r.body! as Map).cast<String, Object?>();

RecordedRequest _last(FakeAdapter a, String method, String path) =>
    a.requests.lastWhere((r) => r.method == method && r.uri.path == path);

Map<String, Object?> _edition(Map<String, Object?> extra) => <String, Object?>{
  'id': 'e1',
  'name': 'Brief',
  'enabled': true,
  'schedule': '0 7 * * *',
  'timezone': 'UTC',
  'mode': 'digest',
  'scope': <String, Object?>{'sources': <String>[], 'kinds': <String>[]},
  ...extra,
};

void main() {
  testWidgets('adding a channel target persists in deliveryTargets', (tester) async {
    final store = <Map<String, Object?>>[_edition(<String, Object?>{})];
    final adapter = await _open(tester, editionDetailPath('e1'), publishingBackend(store));

    // Kind defaults to channel, format to email; pick the channel, then add.
    await _tap(tester, 'edition.target.channel'); // open dropdown
    await tapVisible(tester, find.text('Ops Email').last);
    await tester.pumpAndSettle();
    await _tap(tester, 'edition.target.add');
    await _tap(tester, 'edition.save');

    final targets = _bodyOf(_last(adapter, 'PUT', '/v1/briefings/e1'))['deliveryTargets']! as List;
    expect(targets, hasLength(1));
    expect((targets.single as Map)['kind'], 'channel');
    expect((targets.single as Map)['format'], 'email');
    expect((targets.single as Map)['channelId'], 'ch1');
  });

  testWidgets('the hosted-site card shows the canonical URL and a share link when shared', (tester) async {
    final store = <Map<String, Object?>>[
      _edition(<String, Object?>{'site': <String, Object?>{'enabled': true, 'shareable': true}}),
    ];
    await _open(tester, editionDetailPath('e1'), publishingBackend(store));
    expect(find.byKey(const Key('edition.site.card')), findsOneWidget);
    expect(find.byKey(const Key('edition.site.url.copy')), findsOneWidget);
    expect(find.byKey(const Key('edition.site.share.copy')), findsOneWidget);
  });

  testWidgets('issuing a share link toggles site.shareable and persists it', (tester) async {
    final store = <Map<String, Object?>>[
      _edition(<String, Object?>{'site': <String, Object?>{'enabled': true, 'shareable': false}}),
    ];
    final adapter = await _open(tester, editionDetailPath('e1'), publishingBackend(store));
    await _tap(tester, 'edition.site.shareable');
    await _tap(tester, 'edition.save');
    final site = _bodyOf(_last(adapter, 'PUT', '/v1/briefings/e1'))['site']! as Map;
    expect(site['shareable'], isTrue);
    expect((store.single['site']! as Map)['shareable'], isTrue);
  });

  testWidgets('breaking-news config round-trips', (tester) async {
    final store = <Map<String, Object?>>[_edition(<String, Object?>{})];
    final adapter = await _open(tester, editionDetailPath('e1'), publishingBackend(store));
    await _tap(tester, 'edition.breaking.enabled');
    await tester.enterText(find.byKey(const Key('edition.breakingRuleIds')), 'rule-a, rule-b');
    await tester.pumpAndSettle();
    await _tap(tester, 'edition.save');
    final bn = _bodyOf(_last(adapter, 'PUT', '/v1/briefings/e1'))['breakingNews']! as Map;
    expect(bn['enabled'], isTrue);
    expect(bn['ruleIds'], <String>['rule-a', 'rule-b']);
    expect(bn['minSeverity'], 'warning');
    expect(bn['cooldownMinutes'], 60);
  });

  testWidgets('badge toggles persist and reflect in the preview', (tester) async {
    final store = <Map<String, Object?>>[_edition(<String, Object?>{})];
    final adapter = await _open(tester, editionDetailPath('e1'), publishingBackend(store));
    await _tap(tester, 'edition.includeProvenance');
    await _tap(tester, 'edition.preview');
    // The preview reflects the live toggle: the item's provenance is shown.
    expect(find.byKey(const Key('edition.preview.provenance.c1')), findsOneWidget);
    expect(find.byKey(const Key('edition.preview.corroboration.c1')), findsNothing);

    await _tap(tester, 'edition.save');
    final body = _bodyOf(_last(adapter, 'PUT', '/v1/briefings/e1'));
    expect(body['includeProvenance'], isTrue);
    expect(body['includeCorroboration'], isFalse);
  });

  testWidgets('a website target needs no channel and takes html format', (tester) async {
    final store = <Map<String, Object?>>[_edition(<String, Object?>{})];
    final adapter = await _open(tester, editionDetailPath('e1'), publishingBackend(store));
    await _tap(tester, 'edition.target.kind');
    await tapVisible(tester, find.text('website').last);
    await tester.pumpAndSettle();
    await _tap(tester, 'edition.target.add');
    await _tap(tester, 'edition.save');
    final targets = _bodyOf(_last(adapter, 'PUT', '/v1/briefings/e1'))['deliveryTargets']! as List;
    expect((targets.single as Map)['kind'], 'website');
    expect((targets.single as Map)['format'], 'html');
    expect((targets.single as Map)['channelId'], isNull);
  });
}
