import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:foresignal_admin/features/notifications/push_arrival.dart';

import '../../../tool/preview/preview_alerts.dart';
import '../../support/actions.dart';
import '../../support/test_app.dart';
import '../alerts/alerts_screens_test.dart' show alertsBackend;

/// Pushes the test hands the app, plus an optional launching tap.
class _FakeArrivals implements PushArrivalSource {
  _FakeArrivals({this.launch});

  final StreamController<PushEvent> controller = StreamController<PushEvent>.broadcast();
  final PushArrival? launch;

  @override
  Stream<PushEvent> events() => controller.stream;

  @override
  Future<PushArrival?> launchedBy() async => launch;

  Future<void> close() => controller.close();
}

/// Opens the mobile companion at the alert inbox with [arrivals]; returns
/// a reader of the router's location.
/// Opens the mobile app on Alerts; with [start] false it stays where the
/// app put itself (a launching push has already opened its alert).
Future<String Function()> _openMobile(
  WidgetTester tester,
  _FakeArrivals arrivals,
  PreviewAlerts v, {
  bool start = true,
}) async {
  tester.view.physicalSize = const Size(420, 900);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  addTearDown(arrivals.close);
  final container = testContainer(
    adapter: alertsBackend(v),
    formFactor: FormFactor.mobile,
    store: InMemoryConnectionStore(url: Uri.parse('http://h:8080'), token: 'fsr_good'),
    connectedTo: Uri.parse('http://h:8080'),
    pushArrivals: arrivals,
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(testApp(container));
  await tester.pumpAndSettle();
  if (start) {
    container.read(routerProvider).go(alertsPath);
    await tester.pumpAndSettle();
  }
  return () => _location(container);
}

String _location(ProviderContainer c) => c.read(routerProvider).state.matchedLocation;

int _firing(PreviewAlerts v) => v.alerts.values.firstWhere((a) => a['state'] == 'firing')['id']! as int;

void main() {
  group('parsing', () {
    test('an FCM data message reads its string members', () {
      final a = PushArrival.fromData(<String, Object?>{
        'v': '1',
        'id': '812',
        'a': '4107',
        's': 'critical',
        'ev': 'alert',
        't': 'M 6.1 – Ovalle',
        'c': 'FORESIGNAL_ALERT',
        'l': 'en',
      })!;
      expect(a.notificationId, 812);
      expect(a.alertId, 4107);
      expect(a.severity, 'critical');
      expect(a.category, 'FORESIGNAL_ALERT');
      expect(a.l, 'en');
      expect(a.heading, 'M 6.1 – Ovalle');
      expect(a.route, alertPath(4107));
    });

    test('an APNs body reads the e object and the visible alert', () {
      final a = PushArrival.fromData(<String, Object?>{
        'aps': <String, Object?>{
          'alert': <String, Object?>{'title': 'Morning briefing', 'body': 'Three things changed'},
          'category': 'FORESIGNAL_BRIEFING',
        },
        'e': <String, Object?>{'v': 1, 'id': 77, 'a': null, 's': 'info', 'ev': 'briefing'},
      })!;
      expect(a.alertId, isNull);
      expect(a.event, 'briefing');
      expect(a.heading, 'Morning briefing');
      expect(a.body, 'Three things changed');
      expect(a.category, 'FORESIGNAL_BRIEFING');
      expect(a.route, notificationPath(77));
    });

    test('e may arrive as JSON text', () {
      final a = PushArrival.fromData(<String, Object?>{
        'e': jsonEncode(<String, Object?>{'v': 1, 'id': 5, 'a': 9, 's': 'warning', 'ev': 'alert'}),
      })!;
      expect(a.alertId, 9);
      expect(a.heading, 'Warning alert');
    });

    test('a test push opens nothing, and a foreign message is not a push', () {
      final t = PushArrival.fromData(<String, Object?>{'v': '1', 'id': '0', 's': 'info', 'ev': 'system'})!;
      expect(t.isTest, isTrue);
      expect(t.route, isNull);
      expect(t.heading, 'Test push');
      expect(PushArrival.fromData(<String, Object?>{'hello': 'world'}), isNull);
      expect(PushArrival.fromData(<String, Object?>{'e': '{not json'}), isNull);
    });

    test('a local notification payload parses back to the same arrival', () {
      final a = PushArrival.fromData(
        <String, Object?>{'v': '1', 'id': '812', 'a': '4107', 's': 'critical', 'ev': 'alert', 't': 'Quake'},
        body: 'Ovalle',
      )!;
      expect(PushArrival.fromPayload(jsonEncode(a.toData())), a);
      expect(PushArrival.fromPayload(null), isNull);
      expect(PushArrival.fromPayload('nope'), isNull);
    });
  });

  group('the mobile companion', () {
    testWidgets('a push in front shows a banner whose Open goes to the alert', (tester) async {
      final v = PreviewAlerts();
      final arrivals = _FakeArrivals();
      final at = await _openMobile(tester, arrivals, v);
      final id = _firing(v);
      arrivals.controller.add((
        arrival: PushArrival(notificationId: 812, alertId: id, severity: 'critical', text: 'Quake near Ovalle'),
        opened: false,
      ));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('push.banner')), findsOneWidget);
      expect(find.text('Quake near Ovalle'), findsOneWidget);
      expect(at(), alertsPath, reason: 'a push in front does not move the page');
      await tapVisible(tester, find.byKey(const Key('push.banner.open')));
      expect(at(), alertPath(id));
      expect(find.byKey(const Key('push.banner')), findsNothing);
    });

    testWidgets('the banner can be dismissed', (tester) async {
      final arrivals = _FakeArrivals();
      final at = await _openMobile(tester, arrivals, PreviewAlerts());
      arrivals.controller.add((arrival: const PushArrival(notificationId: 3, event: 'system'), opened: false));
      await tester.pumpAndSettle();
      await tapVisible(tester, find.byKey(const Key('push.banner.dismiss')));
      expect(find.byKey(const Key('push.banner')), findsNothing);
      expect(at(), alertsPath);
    });

    testWidgets('tapping a push in the tray opens its alert', (tester) async {
      final v = PreviewAlerts();
      final arrivals = _FakeArrivals();
      final at = await _openMobile(tester, arrivals, v);
      final id = _firing(v);
      arrivals.controller.add((arrival: PushArrival(notificationId: 812, alertId: id), opened: true));
      await tester.pumpAndSettle();
      expect(at(), alertPath(id));
      expect(find.byKey(const Key('push.banner')), findsNothing);
    });

    testWidgets('the push that launched the app opens its alert', (tester) async {
      final v = PreviewAlerts();
      final id = _firing(v);
      final at = await _openMobile(
        tester,
        _FakeArrivals(launch: PushArrival(notificationId: 812, alertId: id)),
        v,
        start: false,
      );
      expect(at(), alertPath(id));
    });

    testWidgets('the desktop shell does not listen for pushes', (tester) async {
      tester.view.physicalSize = const Size(1500, 1100);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      final arrivals = _FakeArrivals();
      addTearDown(arrivals.close);
      final container = testContainer(
        adapter: alertsBackend(PreviewAlerts()),
        store: InMemoryConnectionStore(url: Uri.parse('http://h:8080'), token: 'fsr_good'),
        connectedTo: Uri.parse('http://h:8080'),
        pushArrivals: arrivals,
      );
      addTearDown(container.dispose);
      await tester.pumpWidget(testApp(container));
      await tester.pumpAndSettle();
      expect(arrivals.controller.hasListener, isFalse);
    });
  });

  test('desktop builds get no pushes', () async {
    expect(await const NoPushArrivals().events().isEmpty, isTrue);
    expect(await const NoPushArrivals().launchedBy(), isNull);
  });
}
