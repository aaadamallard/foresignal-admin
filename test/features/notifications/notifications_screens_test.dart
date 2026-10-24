import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:foresignal_admin/features/notifications/notifications_drafts.dart';
import 'package:foresignal_admin/features/notifications/push_token.dart';

import '../../../tool/preview/preview_alerts.dart' show PreviewText;
import '../../../tool/preview/preview_notifications.dart';
import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';
import '../sources/sources_screens_test.dart' show sourcesBackend;

/// The id the live stream's new notification carries.
const int _liveId = 9100;

/// The seeded notification about firing alert 4107.
const int _firingId = 9007;

const String _apnsDevice = '3e1f9a72-5c4b-4d8e-9f01-2a3b4c5d6e01';

const String _subscription =
    '{"endpoint": "https://updates.push.services.mozilla.com/wpush/v2/abc", "keys": {"p256dh": "BNc", "auth": "tBH"}}';

/// A fake backend answering the notification and push operations from [v],
/// then the source operations. The first `/v1/notifications/stream` request
/// gets one new notification and ends; later ones are refused with 410, so
/// the client's reconnect stops instead of leaving a timer behind.
FakeAdapter notificationsBackend(PreviewNotifications v) {
  final fallback = sourcesBackend();
  var streams = 0;
  return FakeAdapter((request) {
    if (request.uri.path == '/v1/notifications/stream') {
      if (streams++ > 0) {
        return FakeResponse.problem(
          <String, Object?>{'title': 'Gone', 'status': 410, 'code': 'GONE'},
          status: 410,
        );
      }
      final n = <String, Object?>{
        ...v.notifications[_firingId]!,
        'id': _liveId,
        'title': 'M 6.4 – Banda Sea',
        'read': false,
      };
      return FakeResponse.eventStream(<String>[
        ': connected\n\n',
        'id: $_liveId\nevent: notification\ndata: ${jsonEncode(n)}\n\n',
      ]);
    }
    final reply = answerNotifications(
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

/// A push token source that hands out [token], or refuses when it is null.
class _Tokens implements PushTokenSource {
  _Tokens([this.token]);

  final PushToken? token;

  @override
  Future<PushToken> obtain() async => token ?? (throw const PushTokenUnavailable('No Firebase in this test.'));
}

/// Opens the app connected to [adapter] at [path].
Future<FakeAdapter> _open(
  WidgetTester tester,
  String path,
  FakeAdapter adapter, {
  FormFactor formFactor = FormFactor.desktop,
  bool reportPresence = false,
  PushTokenSource? pushTokens,
}) async {
  tester.view.physicalSize = formFactor == FormFactor.desktop ? const Size(1500, 1100) : const Size(420, 900);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  final container = testContainer(
    adapter: adapter,
    formFactor: formFactor,
    store: InMemoryConnectionStore(url: Uri.parse('http://h:8080'), token: 'fsr_good'),
    connectedTo: Uri.parse('http://h:8080'),
    reportPresence: reportPresence,
    pushTokens: pushTokens,
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(testApp(container));
  await tester.pumpAndSettle();
  container.read(routerProvider).go(path);
  await tester.pumpAndSettle();
  return adapter;
}

/// Lets the stream's reconnect delay pass, so the refused reconnect ends it.
Future<void> _drainStream(WidgetTester tester) async {
  await tester.pump(const Duration(seconds: 31));
  await tester.pumpAndSettle();
}

Future<void> _tapKey(WidgetTester tester, String key) async {
  await tapVisible(tester, find.byKey(Key(key)).first);
}

Future<void> _tapText(WidgetTester tester, String label) async {
  await tester.ensureVisible(find.text(label).last);
  await tester.tap(find.text(label).last);
  await tester.pumpAndSettle();
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
  testWidgets('the inbox lists unread notifications and a live one joins at the top', (tester) async {
    final adapter = await _open(tester, notificationsPath, notificationsBackend(PreviewNotifications()));
    expect(find.byKey(const Key('notifications.table')), findsOneWidget);
    expect(find.text('M 6.1 – 42 km SW of Ovalle, Chile'), findsOneWidget);
    // Read by the seeded cursor.
    expect(find.text('Source opensky is failing'), findsNothing);
    expect(find.text('M 6.4 – Banda Sea'), findsOneWidget);
    expect(find.text('New'), findsOneWidget);
    expect(
      tester.getTopLeft(find.text('M 6.4 – Banda Sea')).dy,
      lessThan(tester.getTopLeft(find.text('M 6.1 – 42 km SW of Ovalle, Chile')).dy),
    );
    final list = _last(adapter, 'GET', '/v1/notifications');
    expect(list.uri.queryParameters['unread'], 'true');
    expect(list.options.headers[deviceIdHeader], testDeviceId);
    final stream = adapter.requests.firstWhere((r) => r.uri.path == '/v1/notifications/stream');
    expect(stream.options.headers[deviceIdHeader], testDeviceId);
    await _drainStream(tester);
  });

  testWidgets('a failed inbox load shows the problem and a Retry, not an empty inbox', (tester) async {
    final inner = notificationsBackend(PreviewNotifications());
    var failing = true;
    final adapter = await _open(
      tester,
      notificationsPath,
      FakeAdapter((request) {
        if (failing && request.method == 'GET' && request.uri.path == '/v1/notifications') {
          return FakeResponse.problem(<String, Object?>{
            'title': 'Service Unavailable',
            'status': 503,
            'code': 'QUERY_TIMEOUT',
            'detail': 'The query ran longer than 10000 ms; narrow the filters or retry.',
          }, status: 503);
        }
        return inner.handler(request);
      }),
    );
    expect(find.byKey(const Key('notifications.error')), findsOneWidget);
    expect(find.textContaining('The query ran longer than 10000 ms'), findsOneWidget);
    expect(find.textContaining('Backend unreachable'), findsNothing);
    expect(find.text('Nothing unread.'), findsNothing);
    final before = adapter.requests.where((r) => r.uri.path == '/v1/notifications').length;
    failing = false;
    await tapVisible(tester, find.widgetWithText(TextButton, 'Retry'));
    expect(adapter.requests.where((r) => r.uri.path == '/v1/notifications').length, before + 1);
    expect(find.byKey(const Key('notifications.error')), findsNothing);
    expect(find.text('M 6.1 – 42 km SW of Ovalle, Chile'), findsOneWidget);
    await _drainStream(tester);
  });

  testWidgets('marking one read posts its id with the device header and drops it', (tester) async {
    final v = PreviewNotifications();
    final adapter = await _open(tester, notificationsPath, notificationsBackend(v));
    await _tapKey(tester, 'notifications.markRead.9006');
    final post = _last(adapter, 'POST', '/v1/notifications/read');
    expect(_bodyOf(post), <String, Object?>{
      'ids': <int>[9006],
    });
    expect(post.options.headers[deviceIdHeader], testDeviceId);
    expect(v.readIds, contains(9006));
    expect(find.text('MV Kerch Strait entered the Odesa approach (12 km)'), findsNothing);
    await _drainStream(tester);
  });

  testWidgets('Mark All Read moves the cursor to the latest', (tester) async {
    final v = PreviewNotifications();
    final adapter = await _open(tester, notificationsPath, notificationsBackend(v));
    await _tapKey(tester, 'notifications.markAll');
    final body = _bodyOf(_last(adapter, 'POST', '/v1/notifications/read'));
    expect(body['upToId'], greaterThanOrEqualTo(_firingId));
    expect(find.text('M 6.1 – 42 km SW of Ovalle, Chile'), findsNothing);
    await _drainStream(tester);
  });

  testWidgets('Mark All Read works when the badge is zero but notifications are unread', (tester) async {
    final v = PreviewNotifications();
    // The firing alerts are read; a briefing and an acknowledged alert stay
    // unread, and neither counts on the badge.
    v.readIds.addAll(<int>[9005, 9006, 9007]);
    final adapter = await _open(tester, notificationsPath, notificationsBackend(v));
    expect(find.text('0 on the badge'), findsOneWidget);
    expect(find.text('Morning briefing is ready'), findsOneWidget);
    await _tapKey(tester, 'notifications.markAll');
    final body = _bodyOf(_last(adapter, 'POST', '/v1/notifications/read'));
    expect(body['upToId'], greaterThanOrEqualTo(9007));
    expect(find.text('Morning briefing is ready'), findsNothing);
    await _drainStream(tester);
  });

  testWidgets('after Mark All Read the unread list offers no further page', (tester) async {
    final v = PreviewNotifications();
    final inner = notificationsBackend(v);
    final adapter = FakeAdapter((request) async {
      final reply = await inner.handler(request);
      if (request.method == 'GET' && request.uri.path == '/v1/notifications' && reply.status == 200) {
        final page = (jsonDecode(utf8.decode(reply.bytes)) as Map).cast<String, Object?>();
        return FakeResponse.json(<String, Object?>{...page, 'nextCursor': 'next-page'});
      }
      return reply;
    });
    await _open(tester, notificationsPath, adapter);
    expect(find.byKey(const Key('notifications.more')), findsOneWidget);
    await _tapKey(tester, 'notifications.markAll');
    expect(find.text('Nothing unread.'), findsOneWidget);
    expect(find.byKey(const Key('notifications.more')), findsNothing);
    await _drainStream(tester);
  });

  testWidgets('with a filter, Mark Shown Read marks only the shown notifications', (tester) async {
    final v = PreviewNotifications();
    final adapter = await _open(tester, notificationsPath, notificationsBackend(v));
    await _tapKey(tester, 'notifications.minSeverity');
    await tester.tap(find.text('Critical').last);
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('notifications.markAll')), findsNothing);
    await _tapKey(tester, 'notifications.markShown');
    final body = _bodyOf(_last(adapter, 'POST', '/v1/notifications/read'));
    expect(body.containsKey('upToId'), isFalse);
    expect(body['ids'], isNotEmpty);
    await _drainStream(tester);
  });

  testWidgets('opening a notification marks it read and runs an action after confirming', (tester) async {
    final v = PreviewNotifications();
    final adapter = await _open(tester, notificationPath(_firingId), notificationsBackend(v));
    expect(find.byKey(const Key('notification.summary')), findsOneWidget);
    expect(_bodyOf(_last(adapter, 'POST', '/v1/notifications/read')), <String, Object?>{
      'ids': <int>[_firingId],
    });
    await _tapKey(tester, 'notification.action.ack');
    expect(adapter.requests.where((r) => r.uri.path.startsWith('/v1/actions/')), isEmpty);
    await _tapKey(tester, 'notification.action.confirm');
    final actions = adapter.requests.where((r) => r.uri.path.startsWith('/v1/actions/')).toList();
    expect(actions.map((r) => r.method), <String>['GET', 'POST']);
    expect(actions.first.uri.path, actions.last.uri.path);
    expect(find.byKey(const Key('notification.action.result')), findsOneWidget);
    expect(v.notifications[_firingId]!['alertState'], 'acknowledged');
  });

  testWidgets('a used action reads as expired and is not run', (tester) async {
    final v = PreviewNotifications();
    final adapter = await _open(tester, notificationPath(_firingId), notificationsBackend(v));
    v.tokens.clear();
    await _tapKey(tester, 'notification.action.snooze');
    await _tapKey(tester, 'notification.action.confirm');
    expect(find.byKey(const Key('notification.action.expired')), findsOneWidget);
    expect(adapter.requests.where((r) => r.method == 'POST' && r.uri.path.startsWith('/v1/actions/')), isEmpty);
  });

  testWidgets('presence is reported with the device id while connected', (tester) async {
    final adapter = await _open(
      tester,
      notificationsPath,
      notificationsBackend(PreviewNotifications()),
      reportPresence: true,
    );
    final post = _last(adapter, 'POST', '/v1/clients/presence');
    expect(_bodyOf(post), <String, Object?>{'kind': 'desktop', 'state': 'active', 'ttlSeconds': 180});
    expect(post.options.headers[deviceIdHeader], testDeviceId);
    expect(find.byKey(const Key('notifications.presence')), findsOneWidget);
    await _drainStream(tester);
  });

  testWidgets('native push lists providers and devices, and tests a device', (tester) async {
    final adapter = await _open(tester, pushPath, notificationsBackend(PreviewNotifications()));
    expect(find.byKey(const Key('push.providers.table')), findsOneWidget);
    expect(find.text('apns-main'), findsOneWidget);
    expect(find.text('Duty iPhone'), findsOneWidget);
    await _tapKey(tester, 'push.devices.test.$_apnsDevice');
    expect(adapter.requests.any((r) => r.method == 'POST' && r.uri.path == '/v1/push/devices/$_apnsDevice/test'), isTrue);
    final result = tester.widget<Tooltip>(find.byKey(const Key('push.devices.result.$_apnsDevice')));
    expect(result.message, 'Succeeded: credential obtained, sent, HTTP 200');
  });

  testWidgets('a new FCM provider takes its project from the service account', (tester) async {
    final v = PreviewNotifications();
    final adapter = await _open(tester, pushNewProviderPath, notificationsBackend(v));
    await _enter(tester, 'provider.id', 'fcm-main');
    await _tapKey(tester, 'provider.type');
    await _tapText(tester, 'FCM (Google)');
    await _enter(tester, 'provider.appIds', 'com.foresignal.foresignal_admin');
    await _enter(
      tester,
      'provider.serviceAccountJson',
      '{"project_id": "p1", "client_email": "push@p1.example", "private_key": "-----BEGIN PRIVATE KEY-----"}',
    );
    await _tapKey(tester, 'form.save');
    final put = _last(adapter, 'PUT', '/v1/push/providers/fcm-main');
    final body = _bodyOf(put);
    expect(body['type'], 'fcm');
    expect((body['config']! as Map)['projectId'], 'p1');
    expect((body['secrets']! as Map).keys, <String>['serviceAccountJson']);
    expect(v.providers['fcm-main']!['secretFields'], <String>['serviceAccountJson']);
    expect(find.byKey(const Key('provider.test.run')), findsOneWidget);
  });

  testWidgets('an existing provider saves without resending its key, and tests against a device', (tester) async {
    final adapter = await _open(tester, pushProviderPath('apns-main'), notificationsBackend(PreviewNotifications()));
    await _tapKey(tester, 'provider.timeSensitive');
    await _tapKey(tester, 'form.save');
    final body = _bodyOf(_last(adapter, 'PUT', '/v1/push/providers/apns-main'));
    expect(body.containsKey('secrets'), isFalse);
    expect((body['config']! as Map)['timeSensitive'], isTrue);
    expect(find.textContaining('Saved and confirmed'), findsOneWidget);
    await _tapKey(tester, 'provider.test.device');
    await _tapText(tester, 'Duty iPhone (…c0ffee)');
    await _tapKey(tester, 'provider.test.run');
    expect(_bodyOf(_last(adapter, 'POST', '/v1/push/providers/apns-main/test')), <String, Object?>{
      'deviceId': _apnsDevice,
    });
    expect(find.byKey(const Key('provider.test.result')), findsOneWidget);
  });

  testWidgets('a device page saves what the device receives', (tester) async {
    final adapter = await _open(tester, pushDevicePath(_apnsDevice), notificationsBackend(PreviewNotifications()));
    await _enter(tester, 'device.name', 'Night iPhone');
    await _tapKey(tester, 'device.filters.event.briefing');
    await _tapKey(tester, 'form.save');
    final body = _bodyOf(_last(adapter, 'PUT', '/v1/push/devices/$_apnsDevice'));
    expect(body['name'], 'Night iPhone');
    expect((body['filters']! as Map)['events'], <String>['alert', 'briefing', 'system']);
  });

  testWidgets('a Web Push subscription is added, verified with its code, and deleted', (tester) async {
    final v = PreviewNotifications();
    final adapter = await _open(tester, webPushPath, notificationsBackend(v));
    expect(find.byKey(const Key('webpush.vapid.key')), findsOneWidget);
    await _enter(tester, 'webpush.add.name', 'Night desk');
    await _enter(tester, 'webpush.add.subscription', _subscription);
    await _tapText(tester, 'Add Subscription');
    final created = _bodyOf(_last(adapter, 'POST', '/v1/push/subscriptions'));
    expect((created['subscription']! as Map)['endpoint'], 'https://updates.push.services.mozilla.com/wpush/v2/abc');
    final id = v.subscriptions.keys.last;
    expect(v.subscriptions[id]!['status'], 'pending');

    await _tapKey(tester, 'webpush.verify.$id');
    await _enter(tester, 'webpush.verify.code', 'wrong');
    await _tapKey(tester, 'webpush.verify.run');
    expect(find.textContaining('VERIFY_FAILED'), findsOneWidget);
    await _enter(tester, 'webpush.verify.code', v.verifyCodes[id]!);
    await _tapKey(tester, 'webpush.verify.run');
    expect(v.subscriptions[id]!['status'], 'active');

    await _tapKey(tester, 'webpush.delete.$id');
    expect(find.text('Delete Night desk? It stops receiving push.'), findsOneWidget);
    await _tapKey(tester, 'webpush.delete.confirm');
    expect(adapter.requests.any((r) => r.method == 'DELETE' && r.uri.path == '/v1/push/subscriptions/$id'), isTrue);
    expect(v.subscriptions.containsKey(id), isFalse);
  });

  testWidgets('the phone registers its own APNs token', (tester) async {
    final v = PreviewNotifications();
    final token = 'ab' * 32;
    final adapter = await _open(
      tester,
      devicePath,
      notificationsBackend(v),
      formFactor: FormFactor.mobile,
      pushTokens: _Tokens((transport: 'apns', platform: 'ios', token: token, environment: 'sandbox')),
    );
    expect(find.byKey(const Key('thisDevice.register')), findsOneWidget);
    await _enter(tester, 'thisDevice.name', 'Pocket iPhone');
    await _tapKey(tester, 'form.save');
    final body = _bodyOf(_last(adapter, 'POST', '/v1/push/devices'));
    expect(body['token'], token);
    expect(body['appId'], appIdFor('ios'));
    expect(body['environment'], 'sandbox');
    expect(body['name'], 'Pocket iPhone');
    expect(find.byKey(const Key('device.summary')), findsOneWidget);
  });

  testWidgets('without a platform token the phone registers one typed by hand', (tester) async {
    final v = PreviewNotifications();
    final adapter = await _open(
      tester,
      devicePath,
      notificationsBackend(v),
      formFactor: FormFactor.mobile,
      pushTokens: _Tokens(),
    );
    expect(find.byKey(const Key('thisDevice.token.unavailable')), findsOneWidget);
    await _tapKey(tester, 'thisDevice.manual');
    await _tapKey(tester, 'thisDevice.manual.transport');
    await _tapText(tester, 'APNs');
    await _enter(tester, 'thisDevice.manual.token', 'cd' * 32);
    await _tapKey(tester, 'form.save');
    final body = _bodyOf(_last(adapter, 'POST', '/v1/push/devices'));
    expect(body['transport'], 'apns');
    expect(body['platform'], 'ios');
    expect(body['token'], 'cd' * 32);
    expect(find.byKey(const Key('device.summary')), findsOneWidget);
  });

  testWidgets('a refused registration shows the problem', (tester) async {
    final adapter = await _open(
      tester,
      devicePath,
      notificationsBackend(PreviewNotifications()),
      formFactor: FormFactor.mobile,
      pushTokens: _Tokens((transport: 'fcm', platform: 'android', token: 'fcm-token-123456', environment: null)),
    );
    await _tapKey(tester, 'form.save');
    expect(adapter.requests.any((r) => r.method == 'POST' && r.uri.path == '/v1/push/devices'), isTrue);
    expect(find.textContaining('PUSH_PROVIDER_NOT_CONFIGURED'), findsOneWidget);
    expect(find.byKey(const Key('device.summary')), findsNothing);
  });
}
