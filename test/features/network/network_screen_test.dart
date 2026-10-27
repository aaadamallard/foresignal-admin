import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/permissions.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../scoping/per_user_scoping_test.dart' show meBody, openSignedIn;
import '../sources/sources_screens_test.dart' show sourcesBackend;

const String tokyoId = '6b1f0c2e-4a3d-4e5f-9a8b-7c6d5e4f3a2b';

const String homeId = '0d9e8f7a-6b5c-4d3e-8f2a-1b0c9d8e7f6a';

/// A network backend over the sources fake: two egress routes (one tested,
/// one not), the rotation settings, and the aggregators with ADS-B live.
/// Writes are stored and read back.
FakeAdapter networkBackend({Set<String> permissions = const <String>{Permissions.networkManage}}) {
  final sources = sourcesBackend();
  final routes = <String, Map<String, Object?>>{
    tokyoId: <String, Object?>{
      'id': tokyoId,
      'name': 'Tokyo exit',
      'type': 'socks5',
      'enabled': true,
      'url': 'socks5://jp.proxy.example.com:1080',
      'exitIp': '203.0.113.7',
      'health': <String, Object?>{'reachable': true, 'exitIp': '203.0.113.7', 'latencyMs': 182.4},
      'secretsSet': <String>['username', 'password'],
      'available': true,
    },
    homeId: <String, Object?>{
      'id': homeId,
      'name': 'Second uplink',
      'type': 'interface',
      'enabled': true,
      'boundInterface': 'eth1',
      'exitIp': null,
      'health': null,
      'secretsSet': <String>[],
      'available': true,
    },
  };
  var settings = <String, Object?>{'rotation': 'direct', 'defaultRoute': null};
  var adsb = <String, Object?>{
    'domain': 'adsb',
    'name': 'Local ADS-B',
    'enabled': true,
    'mode': 'receiver',
    'endpoint': 'http://readsb/data/aircraft.json',
    'status': 'ok',
    'statusReason': null,
    'lastSeenAt': '2026-10-26T12:00:00Z',
    'supersededSources': <String>['adsblol-global', 'adsbfi-global', 'gpsjam-daily'],
    'disableSupersededSources': true,
    'implemented': true,
    'config': <String, Object?>{'band': 1090},
    'sourceIds': <String>['local-adsb-aggregator'],
  };
  final ground = <String, Object?>{
    'domain': 'ground-sensors',
    'name': 'Ground sensors',
    'enabled': false,
    'mode': null,
    'endpoint': null,
    'status': 'unconfigured',
    'supersededSources': <String>[],
    'implemented': false,
    'config': <String, Object?>{},
  };
  var newId = 0;
  return FakeAdapter((request) {
    final body = request.body;
    final path = request.uri.path;
    switch ((request.method, path)) {
      case ('GET', '/v1/me'):
        return FakeResponse.json(meBody(permissions));
      case ('GET', '/v1/egress'):
        return FakeResponse.json(<String, Object?>{
          'items': routes.values.toList(),
          'nextCursor': null,
        });
      case ('POST', '/v1/egress'):
        final id = '00000000-0000-4000-8000-00000000000${newId++}';
        final sent = body! as Map<String, Object?>;
        routes[id] = <String, Object?>{
          for (final e in sent.entries)
            if (e.key != 'secrets') e.key: e.value,
          'id': id,
          'secretsSet': ((sent['secrets'] as Map?)?.keys.toList() ?? const <Object?>[]),
          'available': true,
        };
        return FakeResponse.json(routes[id], status: 201);
      case ('POST', '/v1/egress/$tokyoId/test'):
        return FakeResponse.json(<String, Object?>{
          'ok': true,
          'exitIp': '198.51.100.42',
          'latencyMs': 190,
          'checkedAt': '2026-10-26T12:05:00Z',
        });
      case ('GET', '/v1/egress/$tokyoId/health'):
        return FakeResponse.json(<String, Object?>{
          'reachable': true,
          'exitIp': '203.0.113.7',
          'latencyMs': 182.4,
          'consecutiveFailures': 0,
          'sources': <Object?>[
            <String, Object?>{
              'sourceId': 'usgs-earthquakes',
              'backoffUntil': '2026-10-26T13:00:00Z',
              'consecutiveThrottles': 2,
            },
          ],
        });
      case ('GET', '/v1/settings/egress'):
        return FakeResponse.json(settings);
      case ('PUT', '/v1/settings/egress'):
        settings = body! as Map<String, Object?>;
        return FakeResponse.json(settings);
      case ('PUT', '/v1/sources/usgs-earthquakes/egress'):
        return FakeResponse.json(body);
      case ('GET', '/v1/aggregators'):
        return FakeResponse.json(<String, Object?>{
          'items': <Object?>[adsb, ground],
        });
      case ('GET', '/v1/aggregators/adsb'):
        return FakeResponse.json(adsb);
      case ('PUT', '/v1/aggregators/adsb'):
        adsb = <String, Object?>{...adsb, ...body! as Map<String, Object?>};
        return FakeResponse.json(adsb);
      case ('POST', '/v1/aggregators/adsb/test'):
        return FakeResponse.json(<String, Object?>{
          'ok': true,
          'reachable': true,
          'sampleCount': 143,
          'checkedAt': '2026-10-26T12:06:00Z',
        });
    }
    if (request.method == 'GET' && path.startsWith('/v1/egress/')) {
      final id = path.substring('/v1/egress/'.length);
      if (routes[id] case final r?) {
        return FakeResponse.json(r);
      }
    }
    return sources.handler(request);
  });
}

Future<void> openNetwork(
  WidgetTester tester,
  FakeAdapter adapter, {
  String location = systemNetworkPath,
}) => openSignedIn(tester, adapter, <String>{Permissions.networkManage}, location);

Iterable<RecordedRequest> calls(FakeAdapter adapter, String method, String path) =>
    adapter.requests.where((r) => r.method == method && r.uri.path == path);

Future<void> pick(WidgetTester tester, Key dropdown, String label) async {
  await tapVisible(tester, find.byKey(dropdown));
  await tester.tap(find.text(label).last);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('the Network / Sourcing tab is shown only with network.manage', (tester) async {
    await openSignedIn(
      tester,
      networkBackend(permissions: const <String>{Permissions.systemSettings}),
      <String>{Permissions.systemSettings},
      systemPath,
    );
    expect(find.byKey(const Key('system.tab.network')), findsNothing);

    await openNetwork(tester, networkBackend());
    expect(find.byKey(const Key('system.tab.network')), findsOneWidget);
    expect(find.byKey(const Key('egress.pool')), findsOneWidget);
  });

  testWidgets('the egress table shows each route\'s exit IP and health', (tester) async {
    await openNetwork(tester, networkBackend());

    expect(find.text('Tokyo exit'), findsWidgets);
    expect(find.text('203.0.113.7'), findsOneWidget);
    expect(
      find.descendant(
        of: find.byKey(const Key('egress.health.$tokyoId')),
        matching: find.textContaining('Reachable · 182 ms'),
      ),
      findsOneWidget,
    );
    expect(
      find.descendant(
        of: find.byKey(const Key('egress.health.$homeId')),
        matching: find.text('Not checked'),
      ),
      findsOneWidget,
    );
  });

  testWidgets('Test surfaces the exit IP testEgressRoute returns', (tester) async {
    final adapter = networkBackend();
    await openNetwork(tester, adapter);

    await tapVisible(tester, find.byKey(const Key('egress.test.$tokyoId')));
    expect(calls(adapter, 'POST', '/v1/egress/$tokyoId/test'), hasLength(1));
    expect(find.byKey(const Key('egress.testResult.$tokyoId')), findsOneWidget);
    expect(
      find.descendant(
        of: find.byKey(const Key('egress.testResult.$tokyoId')),
        matching: find.text('198.51.100.42'),
      ),
      findsOneWidget,
    );
  });

  testWidgets('a route\'s health lists the sources held off it', (tester) async {
    await openNetwork(tester, networkBackend());

    await tapVisible(tester, find.byKey(const Key('egress.showHealth.$tokyoId')));
    expect(find.byKey(const Key('egress.healthView.$tokyoId')), findsOneWidget);
    expect(find.text('usgs-earthquakes'), findsWidgets);
  });

  testWidgets('adding a proxy route sends its credentials once, then shows only secretsSet', (
    tester,
  ) async {
    final adapter = networkBackend();
    await openNetwork(tester, adapter);

    await tapVisible(tester, find.byKey(const Key('egress.add')));
    await tester.enterText(find.byKey(const Key('egressRoute.name')), 'Frankfurt exit');
    await tester.enterText(
      find.byKey(const Key('egressRoute.url')),
      'http://de.proxy.example.com:3128',
    );
    await tester.enterText(find.byKey(const Key('egressRoute.username')), 'collector');
    await tester.enterText(find.byKey(const Key('egressRoute.password')), 'hunter2');
    await tapVisible(tester, find.byKey(const Key('egressRoute.save')));

    final post = calls(adapter, 'POST', '/v1/egress').single.body! as Map;
    expect(post['type'], 'http');
    expect(post['url'], 'http://de.proxy.example.com:3128');
    expect(post['secrets'], <String, Object?>{'username': 'collector', 'password': 'hunter2'});
    expect(find.text('hunter2'), findsNothing);
    expect(find.text('Frankfurt exit'), findsWidgets);
  });

  testWidgets('editing a route shows secretsSet only and sends no secret unless typed', (
    tester,
  ) async {
    final adapter = networkBackend();
    await openNetwork(tester, adapter);

    await tapVisible(tester, find.byKey(const Key('egress.edit.$tokyoId')));
    expect(find.text('Username: set'), findsOneWidget);
    expect(find.text('Password: set'), findsOneWidget);
    final password = tester.widget<TextField>(find.byKey(const Key('egressRoute.password')));
    expect(password.controller!.text, isEmpty);
    expect(password.obscureText, isTrue);
  });

  testWidgets('the rotation policy and default route save with updateEgressSettings and re-read', (
    tester,
  ) async {
    final adapter = networkBackend();
    await openNetwork(tester, adapter);

    await pick(tester, const Key('egress.rotation'), 'Rotate on rate limit');
    await pick(tester, const Key('egress.defaultRoute'), 'Second uplink');
    await tapVisible(tester, find.byKey(const Key('egress.saveSettings')));

    expect(calls(adapter, 'PUT', '/v1/settings/egress').single.body, <String, Object?>{
      'rotation': 'rotate-on-rate-limit',
      'defaultRoute': homeId,
    });
    expect(calls(adapter, 'GET', '/v1/settings/egress').length, greaterThanOrEqualTo(2));
  });

  testWidgets('a source is pinned to a route from its own page with assignSourceEgress', (
    tester,
  ) async {
    final adapter = networkBackend();
    await openNetwork(tester, adapter, location: sourceDetailPath('usgs-earthquakes'));

    await tapVisible(tester, find.byKey(const Key('source.tab.health')));
    expect(find.byKey(const Key('egress.assign')), findsOneWidget);
    await pick(tester, const Key('egressAssign.route'), 'Tokyo exit');
    await tapVisible(tester, find.byKey(const Key('egressAssign.save')));

    expect(
      calls(adapter, 'PUT', '/v1/sources/usgs-earthquakes/egress').single.body,
      <String, Object?>{
        'routeId': tokyoId,
        'excludeFromRotation': false,
      },
    );
  });

  testWidgets(
    'the aggregators list a domain with its superseded sources and the default-off control',
    (
      tester,
    ) async {
      final adapter = networkBackend();
      await openNetwork(tester, adapter);

      expect(find.byKey(const Key('aggregator.row.adsb')), findsOneWidget);
      expect(find.text('Own receiver'), findsOneWidget);
      expect(find.text('http://readsb/data/aircraft.json'), findsOneWidget);
      expect(find.text('3 public sources'), findsOneWidget);
      expect(find.text('Not on this server'), findsOneWidget);

      await tapVisible(tester, find.byKey(const Key('aggregator.row.adsb')));
      expect(find.byKey(const Key('aggregator.superseded.adsblol-global')), findsOneWidget);
      expect(find.byKey(const Key('aggregator.superseded.gpsjam-daily')), findsOneWidget);
      final toggle = tester.widget<SwitchListTile>(
        find.byKey(const Key('aggregator.disableSuperseded')),
      );
      expect(toggle.value, isTrue);
      expect(find.text('Live now: the sources below are held off.'), findsOneWidget);
    },
  );

  testWidgets('an aggregator is configured with updateAggregator and tested', (tester) async {
    final adapter = networkBackend();
    await openNetwork(tester, adapter);

    await tapVisible(tester, find.byKey(const Key('aggregator.row.adsb')));
    await tester.enterText(
      find.byKey(const Key('aggregator.endpoint')),
      'http://192.168.1.40/data/aircraft.json',
    );
    await tapVisible(tester, find.byKey(const Key('aggregator.disableSuperseded')));
    await tapVisible(tester, find.byKey(const Key('aggregator.save')));

    final put = calls(adapter, 'PUT', '/v1/aggregators/adsb').single.body! as Map;
    expect(put['enabled'], isTrue);
    expect(put['mode'], 'receiver');
    expect(put['endpoint'], 'http://192.168.1.40/data/aircraft.json');
    expect(put['config'], <String, Object?>{'band': 1090});
    expect(put['disableSupersededSources'], isFalse);

    await tapVisible(tester, find.byKey(const Key('aggregator.test')));
    expect(calls(adapter, 'POST', '/v1/aggregators/adsb/test'), hasLength(1));
    expect(find.byKey(const Key('aggregator.testResult')), findsOneWidget);
    expect(find.text('143'), findsOneWidget);
  });
}
