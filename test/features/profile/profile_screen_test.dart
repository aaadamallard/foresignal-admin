import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/format/display_zone.dart';
import 'package:foresignal_admin/core/permissions.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:foresignal_admin/features/profile/profile_providers.dart';

import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';
import '../scoping/per_user_scoping_test.dart' show meBody;
import '../users/users_screens_test.dart' show anaId, userBody, viewerRoleId;

/// A profile backend: `getMe` with a user, the preferences (with a member and
/// a theme this build has not seen), two notification deliveries and the
/// quota. Writes are stored and read back.
FakeAdapter profileBackend() {
  var preferences = <String, Object?>{
    'timezone': 'America/Chicago',
    'locale': 'en-US',
    'theme': 'high-contrast',
    'notifications': <String, Object?>{
      'emailEnabled': true,
      'pushEnabled': false,
      'quietHours': null,
    },
    'ui': <String, Object?>{'density': 'compact'},
    'startPage': '/alerts',
  };
  var deliveries = <Object?>[
    <String, Object?>{
      'id': '01JB8Z7Q4M5N6P7R8S9T0V1W4Z',
      'principalId': mePrincipalId,
      'eventTypes': <String>['mention', 'digest'],
      'channel': <String, Object?>{
        'channelId': '3f2c1b0a-9e8d-4c7b-8a69-5f4e3d2c1b0a',
        'type': 'email',
        'config': <String, Object?>{'to': 'ana@example.com'},
        'secretFields': <String>[],
      },
      'enabled': true,
      'createdAt': '2026-10-20T10:00:00Z',
      'updatedAt': '2026-10-20T10:00:00Z',
    },
  ];
  return FakeAdapter((request) {
    final body = request.body;
    switch ((request.method, request.uri.path)) {
      case ('GET', '/v1/me'):
        return FakeResponse.json(<String, Object?>{
          ...meBody(<String>{Permissions.dataRead, Permissions.selfPreferences}),
          'user': userBody(anaId, 'ana@example.com', 'Ana Analyst', roles: <String>[viewerRoleId]),
        });
      case ('GET', '/v1/me/preferences'):
        return FakeResponse.json(preferences);
      case ('PUT', '/v1/me/preferences'):
        preferences = <String, Object?>{...preferences, ...(body! as Map<String, Object?>)};
        return FakeResponse.json(preferences);
      case ('GET', '/v1/me/notification-preferences'):
        return FakeResponse.json(deliveries);
      case ('PUT', '/v1/me/notification-preferences'):
        deliveries = ((body! as Map<String, Object?>)['items']! as List<Object?>).toList();
        return FakeResponse.json(deliveries);
      case ('GET', '/v1/me/quota'):
        return FakeResponse.json(<String, Object?>{
          'quota': <String, Object?>{'apiRateLimitPerMinute': 600, 'maxAlerts': 50},
          'usage': <String, Object?>{'alerts': 3, 'storageBytes': 2048},
        });
      case ('POST', '/v1/auth/password/reset-request'):
        return FakeResponse.empty(status: 202);
    }
    return FakeResponse.problem(<String, Object?>{
      'title': 'Not found',
      'status': 404,
    }, status: 404);
  });
}

const String mePrincipalId = '01JB8Z7Q4M5N6P7R8S9T0V1W2X';

Future<void> openProfile(WidgetTester tester, FakeAdapter adapter) async {
  tester.view.physicalSize = const Size(1500, 1800);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  addTearDown(() => DisplayZone.use(null));
  final container = testContainer(
    adapter: adapter,
    connectedTo: Uri.parse('http://h:8080'),
    store: InMemoryConnectionStore(url: Uri.parse('http://h:8080')),
    sessionStore: InMemorySessionStore(
      StoredSession(
        token: 'fss_ana',
        userId: anaId,
        email: 'ana@example.com',
        expiresAt: DateTime.utc(2099, 1, 1),
        permissions: const <String>[Permissions.dataRead, Permissions.selfPreferences],
      ),
    ),
  );
  addTearDown(container.dispose);
  await container.read(sessionControllerProvider.notifier).restore();
  await tester.pumpWidget(testApp(container));
  await tester.pumpAndSettle();
  container.read(routerProvider).go(profilePath);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('the profile shows identity and roles from getMe and the quota glance', (
    tester,
  ) async {
    await openProfile(tester, profileBackend());

    expect(find.text('Ana Analyst'), findsWidgets);
    expect(find.text('ana@example.com'), findsWidgets);
    expect(
      find.descendant(of: find.byKey(const Key('profile.roles')), matching: find.text('Viewer')),
      findsOneWidget,
    );
    expect(find.byKey(const Key('profile.quota')), findsOneWidget);
    expect(find.text('600'), findsOneWidget);
    expect(find.text('Instance default'), findsWidgets);
  });

  testWidgets('preferences load, save via updateMyPreferences and re-read', (tester) async {
    final adapter = profileBackend();
    await openProfile(tester, adapter);

    expect(
      adapter.requests.any((r) => r.method == 'GET' && r.uri.path == '/v1/me/preferences'),
      isTrue,
    );
    await tester.enterText(find.byKey(const Key('prefs.locale')), 'fr-CA');
    await tapVisible(tester, find.byKey(const Key('prefs.save')));

    final put = adapter.requests.singleWhere(
      (r) => r.method == 'PUT' && r.uri.path == '/v1/me/preferences',
    );
    final body = put.body! as Map<String, Object?>;
    expect(body['locale'], 'fr-CA');
    expect(body['timezone'], 'America/Chicago');
    // Nothing about notifications changed, so nothing is written through.
    expect(body.containsKey('notifications'), isFalse);
    final after = adapter.requests.sublist(adapter.requests.indexOf(put) + 1);
    expect(after.any((r) => r.method == 'GET' && r.uri.path == '/v1/me/preferences'), isTrue);
    expect(find.textContaining('Saved and confirmed'), findsOneWidget);
  });

  testWidgets('an unseen preference value is preserved on save', (tester) async {
    final adapter = profileBackend();
    await openProfile(tester, adapter);

    await tapVisible(tester, find.byKey(const Key('prefs.save')));

    final body =
        adapter.requests
                .singleWhere((r) => r.method == 'PUT' && r.uri.path == '/v1/me/preferences')
                .body!
            as Map<String, Object?>;
    expect(body['theme'], 'high-contrast');
    expect(body['startPage'], '/alerts');
    expect(body['ui'], <String, Object?>{'density': 'compact'});
  });

  testWidgets('notification toggles call replaceMyNotificationPreferences', (tester) async {
    final adapter = profileBackend();
    await openProfile(tester, adapter);

    await tapVisible(tester, find.byKey(const Key('notif.event.0.share')));
    await tapVisible(tester, find.byKey(const Key('notif.enabled.0')));
    await tapVisible(tester, find.byKey(const Key('notif.save')));

    final put = adapter.requests.singleWhere(
      (r) => r.method == 'PUT' && r.uri.path == '/v1/me/notification-preferences',
    );
    final items = (put.body! as Map<String, Object?>)['items']! as List<Object?>;
    final item = items.single! as Map<String, Object?>;
    // `digest` is an event type this build has not seen: kept.
    expect(item['eventTypes'], <String>['mention', 'digest', 'share']);
    expect(item['enabled'], isFalse);
    expect(item['id'], '01JB8Z7Q4M5N6P7R8S9T0V1W4Z');
    expect(item.containsKey('principalId'), isFalse);
    final channel = item['channel']! as Map<String, Object?>;
    expect(channel.containsKey('channelId'), isFalse);
    expect(channel.containsKey('secretFields'), isFalse);
    expect(channel['config'], <String, Object?>{'to': 'ana@example.com'});
    final after = adapter.requests.sublist(adapter.requests.indexOf(put) + 1);
    expect(
      after.any((r) => r.method == 'GET' && r.uri.path == '/v1/me/notification-preferences'),
      isTrue,
    );
  });

  testWidgets('Change password sends requestPasswordReset for the current email', (tester) async {
    final adapter = profileBackend();
    await openProfile(tester, adapter);

    await tapVisible(tester, find.byKey(const Key('profile.changePassword')));

    final reset = adapter.requests.singleWhere(
      (r) => r.uri.path == '/v1/auth/password/reset-request',
    );
    expect(reset.method, 'POST');
    expect((reset.body! as Map<String, Object?>)['email'], 'ana@example.com');
    expect(reset.options.headers['Authorization'], isNull);
    expect(find.byKey(const Key('profile.resetSent')), findsOneWidget);
  });

  test('the update body sends only changed notification members', () {
    final read = <String, Object?>{
      'timezone': 'UTC',
      'notifications': <String, Object?>{'emailEnabled': true},
      'extra': 1,
    };
    final unchanged = preferencesUpdateBody(
      read,
      timezone: 'UTC',
      locale: null,
      theme: 'dark',
      ui: const <String, Object?>{},
    );
    expect(unchanged.containsKey('notifications'), isFalse);
    expect(unchanged['extra'], 1);
    final changed = preferencesUpdateBody(
      read,
      timezone: 'UTC',
      locale: null,
      theme: 'dark',
      ui: const <String, Object?>{},
      notifications: const <String, Object?>{'pushEnabled': false},
    );
    expect(changed['notifications'], <String, Object?>{'pushEnabled': false});
  });

  test('instants show in the user\'s zone once it is applied', () {
    addTearDown(() => DisplayZone.use(null));
    final t = DateTime.utc(2026, 7, 1, 12);
    expect(DisplayZone.format(t), '2026-07-01 12:00:00');
    expect(DisplayZone.use('America/Chicago'), isTrue);
    expect(DisplayZone.format(t), '2026-07-01 07:00:00 CDT');
    expect(DisplayZone.use('Not/AZone'), isFalse);
    expect(DisplayZone.format(t), '2026-07-01 12:00:00');
  });
}
