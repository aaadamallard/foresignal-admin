import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:foresignal_admin/features/alerts/alert_area.dart';
import 'package:foresignal_admin/features/alerts/alert_builder_draft.dart';
import 'package:latlong2/latlong.dart';

import '../../../tool/preview/preview_alerts.dart';
import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../sources/sources_screens_test.dart' show openAt;
import 'alerts_screens_test.dart' show alertsBackend;

Future<void> _tap(WidgetTester tester, String key) => tapVisible(tester, find.byKey(Key(key)).first);

Future<void> _type(WidgetTester tester, String key, String text) async {
  final field = find.byKey(Key(key)).first;
  await tester.ensureVisible(field);
  await tester.enterText(field, text);
  await tester.pump();
}

/// Opens a new alert named [name] at its Area node in [mode].
Future<FakeAdapter> _openArea(WidgetTester tester, PreviewAlerts v, String name, AreaMode mode) async {
  final adapter = await openAt(tester, alertBuilderPath, adapter: alertsBackend(v));
  await _type(tester, 'builder.name', name);
  await _tap(tester, 'builder.node.area');
  await _tap(tester, 'builder.area.mode.${mode.name}');
  await tester.ensureVisible(find.byKey(const Key('builder.area.map')));
  await tester.pumpAndSettle();
  return adapter;
}

/// A point on the map, as a fraction of its width and height.
Offset _at(WidgetTester tester, double fx, double fy) {
  final r = tester.getRect(find.byKey(const Key('builder.area.map')));
  return Offset(r.left + r.width * fx, r.top + r.height * fy);
}

Future<void> _drag(WidgetTester tester, Offset from, Offset to) async {
  final g = await tester.startGesture(from);
  for (var i = 1; i <= 8; i++) {
    await g.moveTo(Offset.lerp(from, to, i / 8)!);
    await tester.pump();
  }
  await g.up();
  await tester.pumpAndSettle();
}

Future<void> _click(WidgetTester tester, Offset at) async {
  await tester.tapAt(at);
  await tester.pumpAndSettle();
}

Future<Map<String, Object?>> _save(WidgetTester tester, FakeAdapter adapter) async {
  await _tap(tester, 'form.save');
  final created = adapter.requests.lastWhere((r) => r.method == 'POST' && r.uri.path == '/v1/triggers');
  return created.body! as Map<String, Object?>;
}

void main() {
  group('AreaDraft', () {
    test('each mode writes one area member, and an empty mode writes none', () {
      final named = AreaDraft()
        ..mode = AreaMode.named
        ..addRegion(const AreaRegion(RegionKind.country, 'JP'))
        ..addRegion(const AreaRegion(RegionKind.admin1, 'US-TX'));
      expect(named.toJson(), <String, Object?>{
        'geofenceRef': <String, Object?>{
          'country': <String>['JP'],
          'admin1': <String>['US-TX'],
        },
      });

      final city = AreaDraft()
        ..mode = AreaMode.named
        ..chooseCity('Austin, Texas', const LatLng(30.26715, -97.74306), radius: 10);
      expect(city.toJson(), <String, Object?>{
        'near': <String, Object?>{
          'point': <double>[-97.74306, 30.26715],
          'radiusKm': 10.0,
        },
      });
      expect(city.describe(), 'Within 10 km (6.21 mi) of Austin, Texas');

      final places = AreaDraft()
        ..mode = AreaMode.named
        ..addSavedPlace(const SavedPlace('pl-1', 'Port'));
      expect(places.toJson(), <String, Object?>{
        'near': <String, Object?>{
          'placeIds': <String>['pl-1'],
        },
      });

      final box = AreaDraft()
        ..mode = AreaMode.box
        ..shapes.add(boxRing(const LatLng(10, 20), const LatLng(12, 23)));
      expect(box.toJson()['geofence'], <String, Object?>{
        'type': 'MultiPolygon',
        'coordinates': <Object?>[
          <Object?>[
            <Object?>[
              <double>[20, 10],
              <double>[23, 10],
              <double>[23, 12],
              <double>[20, 12],
              <double>[20, 10],
            ],
          ],
        ],
      });

      final route = AreaDraft()
        ..mode = AreaMode.route
        ..halfWidthKm = 2.5
        ..lines.add(<LatLng>[const LatLng(0, 0), const LatLng(1, 1)]);
      expect(route.toJson(), <String, Object?>{
        'geofence': <String, Object?>{
          'type': 'LineString',
          'coordinates': <Object?>[
            <double>[0, 0],
            <double>[1, 1],
          ],
        },
        'bufferMeters': 2500.0,
      });

      for (final m in AreaMode.values) {
        expect((AreaDraft()..mode = m).toJson(), isEmpty, reason: '$m');
      }
    });

    test('a stored area reads back in the mode that made it', () {
      expect(
        AreaDraft.of(<String, Object?>{
          'geofenceRef': <String, Object?>{
            'country': <Object?>['JP'],
          },
        }).mode,
        AreaMode.named,
      );
      final circle = AreaDraft.of(<String, Object?>{
        'near': <String, Object?>{
          'point': <num>[168.3, -17.7],
          'radiusKm': 300,
        },
      });
      expect(circle.mode, AreaMode.circle);
      expect(circle.center, const LatLng(-17.7, 168.3));
      expect(circle.radiusKm, 300);

      final boxRule = <String, Object?>{
        ...(AreaDraft()
              ..mode = AreaMode.box
              ..shapes.add(boxRing(const LatLng(1, 2), const LatLng(3, 4))))
            .toJson(),
      };
      expect(AreaDraft.of(boxRule).mode, AreaMode.box);
      final triangle = <String, Object?>{
        'geofence': <String, Object?>{
          'type': 'Polygon',
          'coordinates': <Object?>[
            <Object?>[
              <num>[0, 0],
              <num>[4, 0],
              <num>[2, 3],
              <num>[0, 0],
            ],
          ],
        },
      };
      final poly = AreaDraft.of(triangle);
      expect(poly.mode, AreaMode.polygon);
      expect(poly.shapes.single, hasLength(3));

      // A stored route reads back as its buffered polygon plus the line.
      final route = AreaDraft.of(<String, Object?>{
        'geofence': triangle['geofence'],
        'geofenceRoute': <String, Object?>{
          'type': 'LineString',
          'coordinates': <Object?>[
            <num>[0, 0],
            <num>[1, 1],
          ],
        },
        'bufferMeters': 5000,
      });
      expect(route.mode, AreaMode.route);
      expect(route.halfWidthKm, 5);
      expect(route.toJson()['geofence'], <String, Object?>{
        'type': 'LineString',
        'coordinates': <Object?>[
          <double>[0, 0],
          <double>[1, 1],
        ],
      });

      final places = AreaDraft.of(<String, Object?>{
        'near': <String, Object?>{
          'placeIds': <Object?>['pl-1'],
          'radiusKm': 3,
        },
      });
      expect(places.mode, AreaMode.named);
      expect(places.savedPlaces.single.id, 'pl-1');
      expect(places.placeRadiusKm, 3);
    });

    test('an area the builder cannot draw is kept and sent back unchanged', () {
      final county = <String, Object?>{
        'geofenceRef': <String, Object?>{
          'county': <Object?>['48453'],
        },
      };
      final kept = AreaDraft.of(county);
      expect(kept.kept, isNotNull);
      expect(kept.toJson(), county);
      final anchor = <String, Object?>{
        'near': <String, Object?>{
          'anchor': <String, Object?>{'source': 'ais', 'externalId': '1'},
          'radiusKm': 5,
        },
      };
      expect(AreaDraft.of(anchor).toJson(), anchor);
      final holed = <String, Object?>{
        'geofence': <String, Object?>{
          'type': 'Polygon',
          'coordinates': <Object?>[
            <Object?>[
              <num>[0, 0],
              <num>[9, 0],
              <num>[9, 9],
              <num>[0, 0],
            ],
            <Object?>[
              <num>[1, 1],
              <num>[2, 1],
              <num>[2, 2],
              <num>[1, 1],
            ],
          ],
        },
      };
      expect(AreaDraft.of(holed).toJson(), holed);
    });

    test('each mode says what is missing', () {
      expect((AreaDraft()..mode = AreaMode.named).problem(), contains('Choose a country'));
      expect((AreaDraft()..mode = AreaMode.circle).problem(), contains('Drop a pin'));
      expect(
        (AreaDraft()
              ..mode = AreaMode.circle
              ..center = const LatLng(0, 0)
              ..radiusKm = 5000)
            .problem(),
        contains('0.1 to 2000 km'),
      );
      expect((AreaDraft()..mode = AreaMode.box).problem(), 'Drag a box on the map.');
      final open = AreaDraft()
        ..mode = AreaMode.polygon
        ..drawing.addAll(<LatLng>[const LatLng(0, 0), const LatLng(1, 1)]);
      expect(open.problem(), contains('at least 3 points'));
      open.drawing.add(const LatLng(0, 2));
      expect(open.problem(), contains('Close the shape'));
      expect(open.closeShape(), isTrue);
      expect(open.problem(), isNull);
      final line = AreaDraft()
        ..mode = AreaMode.route
        ..lines.add(<LatLng>[const LatLng(0, 0), const LatLng(1, 1)])
        ..halfWidthKm = 80;
      expect(line.problem(), contains('50 km'));
      expect(AreaDraft().problem(), isNull);
    });

    test('a rule with a hysteresis distance needs an area with an edge', () {
      final d = AlertBuilderDraft.of(<String, Object?>{
        'id': 'r1',
        'name': 'n',
        'mode': 'enter',
        'hysteresisMeters': 200,
        'geofenceRef': <String, Object?>{
          'country': <Object?>['JP'],
        },
      }, const <Map<String, Object?>>[]);
      expect(d.validate()['area'], contains('hysteresis'));
      d.area
        ..mode = AreaMode.circle
        ..center = const LatLng(35, 139);
      expect(d.validate(), isEmpty);
      final body = d.toJson();
      expect(body.containsKey('geofenceRef'), isFalse);
      expect(body['near'], isNotNull);
      expect(body['hysteresisMeters'], 200);
    });

    test('distances read in kilometers and miles', () {
      expect(distanceText(25), '25 km (15.5 mi)');
      expect(distanceText(0.5), '500 m (0.31 mi)');
      expect(distanceText(160.9344), '161 km (100 mi)');
      expect(isBox(boxRing(const LatLng(1, 1), const LatLng(2, 3))), isTrue);
      expect(isBox(<LatLng>[const LatLng(0, 0), const LatLng(0, 1), const LatLng(1, 2), const LatLng(1, 0)]), isFalse);
    });
  });

  testWidgets('a circle is a click for the pin and a drag for the radius, and saves as near.point', (tester) async {
    final v = PreviewAlerts();
    final adapter = await _openArea(tester, v, 'Circle', AreaMode.circle);
    await _drag(tester, _at(tester, 0.5, 0.5), _at(tester, 0.6, 0.5));
    final summary = tester.widget<Text>(find.byKey(const Key('builder.area.summary'))).data!;
    expect(summary, startsWith('Within '));
    expect(summary, contains(' mi) of '));
    expect(find.byKey(const Key('builder.area.pin')), findsOneWidget);
    final body = await _save(tester, adapter);
    final near = body['near']! as Map<String, Object?>;
    expect(near['point'], hasLength(2));
    // A tenth of the map's width at the world view is hundreds of kilometers.
    expect(near['radiusKm']! as num, greaterThan(100));
    expect(body.containsKey('geofence'), isFalse);
    // Reopened, it is a circle again.
    expect(find.text('Circle'), findsWidgets);
  });

  testWidgets('a box is dragged out; two boxes save as one MultiPolygon and reopen as boxes', (tester) async {
    final v = PreviewAlerts();
    final adapter = await _openArea(tester, v, 'Boxes', AreaMode.box);
    await _drag(tester, _at(tester, 0.2, 0.3), _at(tester, 0.35, 0.5));
    expect(find.text('Inside 1 box'), findsWidgets);
    await _drag(tester, _at(tester, 0.6, 0.3), _at(tester, 0.7, 0.6));
    expect(find.text('Inside any of 2 boxes'), findsWidgets);
    await _tap(tester, 'builder.area.undo');
    expect(find.text('Inside 1 box'), findsWidgets);
    await _drag(tester, _at(tester, 0.6, 0.3), _at(tester, 0.7, 0.6));
    final body = await _save(tester, adapter);
    final fence = body['geofence']! as Map<String, Object?>;
    expect(fence['type'], 'MultiPolygon');
    expect(fence['coordinates'], hasLength(2));
    final ring = ((fence['coordinates']! as List<Object?>).first! as List<Object?>).first! as List<Object?>;
    expect(ring, hasLength(5));
    expect(ring.first, ring.last);
    await _tap(tester, 'builder.node.area');
    expect(tester.widget<ChoiceChip>(find.byKey(const Key('builder.area.mode.box'))).selected, isTrue);
  });

  testWidgets('a polygon is clicked corner by corner, closed on its first corner, and a corner can be dragged', (
    tester,
  ) async {
    final v = PreviewAlerts();
    final adapter = await _openArea(tester, v, 'Shape', AreaMode.polygon);
    await _click(tester, _at(tester, 0.3, 0.3));
    await _click(tester, _at(tester, 0.5, 0.3));
    expect(find.text('Finish the shape: it needs at least 3 points.'), findsOneWidget);
    await _click(tester, _at(tester, 0.4, 0.6));
    await _click(tester, _at(tester, 0.3, 0.55));
    await _tap(tester, 'builder.area.undo');
    // Clicking the first corner closes the shape.
    await _click(tester, _at(tester, 0.3, 0.3));
    expect(find.text('Inside 1 shape'), findsWidgets);
    // Drag the third corner down.
    await _drag(tester, _at(tester, 0.4, 0.6), _at(tester, 0.4, 0.75));
    final body = await _save(tester, adapter);
    final fence = body['geofence']! as Map<String, Object?>;
    final ring = ((fence['coordinates']! as List<Object?>).single! as List<Object?>).single! as List<Object?>;
    expect(ring, hasLength(4));
    final moved = ring[2]! as List<Object?>;
    final first = ring[0]! as List<Object?>;
    expect((moved[1]! as num) < (first[1]! as num), isTrue, reason: 'the dragged corner is further south');
    await _tap(tester, 'builder.node.area');
    expect(tester.widget<ChoiceChip>(find.byKey(const Key('builder.area.mode.polygon'))).selected, isTrue);
  });

  testWidgets('a route is clicked point by point with a width either side, and saves as a line and bufferMeters', (
    tester,
  ) async {
    final v = PreviewAlerts();
    final adapter = await _openArea(tester, v, 'Corridor', AreaMode.route);
    await _click(tester, _at(tester, 0.2, 0.5));
    await _click(tester, _at(tester, 0.4, 0.4));
    await _click(tester, _at(tester, 0.6, 0.45));
    await _tap(tester, 'builder.area.finish');
    await _type(tester, 'builder.area.halfWidth', '12.5');
    expect(find.textContaining('12.5 km (7.77 mi) either side of a route'), findsWidgets);
    final body = await _save(tester, adapter);
    expect((body['geofence']! as Map<String, Object?>)['type'], 'LineString');
    expect(((body['geofence']! as Map<String, Object?>)['coordinates']! as List<Object?>), hasLength(3));
    expect(body['bufferMeters'], 12500);
  });

  testWidgets('a city found by name saves as a circle around it and reopens as that city', (tester) async {
    final v = PreviewAlerts();
    final adapter = await _openArea(tester, v, 'Austin', AreaMode.named);
    await _type(tester, 'builder.area.search', 'Austin');
    await tester.pump(const Duration(milliseconds: 400));
    await tester.pumpAndSettle();
    await _tap(tester, 'builder.area.hit.0');
    expect(find.byKey(const Key('builder.area.city')), findsOneWidget);
    await _type(tester, 'builder.area.radius', '40');
    final body = await _save(tester, adapter);
    expect(body['near'], <String, Object?>{
      'point': <double>[-97.74306, 30.26715],
      'radiusKm': 40.0,
    });
    // Reopened: the circle's center is the city's own point, so it is the city.
    expect(adapter.requests.where((r) => r.uri.path == '/v1/reference/reverse'), isNotEmpty);
    expect(find.text('Within 40 km (24.9 mi) of Austin, Texas, United States of America'), findsWidgets);
    expect(find.text('Named place'), findsWidgets);
  });

  testWidgets('clicking the map in Named place offers the state and country there', (tester) async {
    final v = PreviewAlerts();
    final adapter = await _openArea(tester, v, 'Here', AreaMode.named);
    // Without tiles the world view centers on 25° N, 0°; zoom in on Japan first by picking it.
    await _type(tester, 'builder.area.search', 'Japan');
    await tester.pump(const Duration(milliseconds: 400));
    await tester.pumpAndSettle();
    await _tap(tester, 'builder.area.hit.0');
    await tester.pumpAndSettle();
    await _click(tester, _at(tester, 0.5, 0.5));
    // The map tells a tap from a double tap after a short wait.
    await tester.pump(const Duration(milliseconds: 400));
    await tester.pumpAndSettle();
    expect(adapter.requests.where((r) => r.uri.path == '/v1/reference/reverse'), isNotEmpty);
    expect(find.byKey(const Key('builder.area.here.country')), findsOneWidget);
    expect(find.text('Inside Japan'), findsWidgets);
  });

  testWidgets('a saved place is chosen from the list and saves as near.placeIds', (tester) async {
    final v = PreviewAlerts();
    final adapter = await _openArea(tester, v, 'Port', AreaMode.named);
    await _tap(tester, 'builder.area.place.pl-port-of-houston');
    expect(find.text('Inside Port of Houston'), findsWidgets);
    final body = await _save(tester, adapter);
    expect(body['near'], <String, Object?>{
      'placeIds': <String>['pl-port-of-houston'],
    });
  });

  testWidgets('an unfinished area keeps the alert from saving and opens the Area node', (tester) async {
    final v = PreviewAlerts();
    final adapter = await _openArea(tester, v, 'Unfinished', AreaMode.polygon);
    await _click(tester, _at(tester, 0.3, 0.3));
    await _tap(tester, 'builder.node.delivery');
    await _tap(tester, 'form.save');
    expect(adapter.requests.where((r) => r.method == 'POST' && r.uri.path == '/v1/triggers'), isEmpty);
    expect(find.byKey(const Key('builder.editor.area')), findsOneWidget);
    expect(find.byKey(const Key('builder.area.error')), findsOneWidget);
  });
}
