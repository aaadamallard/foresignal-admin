import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/core/access.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/ownership.dart';
import 'package:foresignal_admin/core/permissions.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:foresignal_admin/features/shell/app_shell.dart';

import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';
import '../sources/sources_screens_test.dart' show sourcesBackend;

const String mePrincipal = '01JB8Z7Q4M5N6P7R8S9T0V1W2X';
const String otherPrincipal = '01JB8Z7Q4M5N6P7R8S9T0V1W3Y';

/// The `getMe` body for a user holding [permissions].
Map<String, Object?> meBody(Set<String> permissions) => <String, Object?>{
  'principal': <String, Object?>{
    'id': mePrincipal,
    'handle': 'ana',
    'displayName': 'Ana',
    'kind': 'person',
    'disabled': false,
    'createdAt': '2026-10-26T12:00:00Z',
  },
  'token': <String, Object?>{
    'id': '7d1c0a52-5c38-4d1e-9a3f-0b7f3c2a1e10',
    'name': 'session',
    'scope': 'admin',
  },
  'scopes': <String>['read', 'agent', 'admin'],
  'groups': <Object?>[],
  'notificationPreferences': <Object?>[],
  'permissions': permissions.toList(),
};

/// The sources fake, plus `getMe`, the user's source view and the
/// collection set, and the trigger and channel lists given.
FakeAdapter scopedBackend(
  Set<String> permissions, {
  List<Map<String, Object?>> triggers = const <Map<String, Object?>>[],
  List<Map<String, Object?>> channels = const <Map<String, Object?>>[],
}) {
  final sources = sourcesBackend();
  var view = <Object?>[
    <String, Object?>{'sourceId': 'gdacs', 'enabled': false},
  ];
  var collection = <String, bool>{'gdacs': true, 'nasa-firms': false};
  return FakeAdapter((request) {
    final path = request.uri.path;
    final body = request.body;
    switch ((request.method, path)) {
      case ('GET', '/v1/me'):
        return FakeResponse.json(meBody(permissions));
      case ('GET', '/v1/me/sources'):
        return FakeResponse.json(<String, Object?>{'sources': view});
      case ('PUT', '/v1/me/sources'):
        view = ((body! as Map<String, Object?>)['sources']! as List<Object?>).toList();
        return FakeResponse.json(<String, Object?>{'sources': view});
      case ('GET', '/v1/sources/collection'):
        return FakeResponse.json(<String, Object?>{
          'sources': <Object?>[
            for (final e in collection.entries)
              <String, Object?>{'sourceId': e.key, 'inCollection': e.value, 'enabledByUsers': 1},
          ],
        });
      case ('PUT', '/v1/sources/collection'):
        for (final s in (body! as Map<String, Object?>)['sources']! as List<Object?>) {
          final entry = s! as Map<String, Object?>;
          collection = <String, bool>{
            ...collection,
            '${entry['sourceId']}': entry['inCollection']! as bool,
          };
        }
        return FakeResponse.json(<String, Object?>{'sources': <Object?>[]});
      case ('GET', '/v1/triggers'):
        return FakeResponse.json(triggers);
      case ('GET', '/v1/channels'):
        return FakeResponse.json(channels);
      case ('GET', '/v1/channels/types'):
        return FakeResponse.json(<Object?>[]);
    }
    return sources.handler(request);
  });
}

/// Opens [location] signed in as a user holding [permissions].
Future<void> openSignedIn(
  WidgetTester tester,
  FakeAdapter adapter,
  Set<String> permissions,
  String location,
) async {
  tester.view.physicalSize = const Size(1600, 1200);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  final container = testContainer(
    adapter: adapter,
    connectedTo: Uri.parse('http://h:8080'),
    store: InMemoryConnectionStore(url: Uri.parse('http://h:8080')),
    sessionStore: InMemorySessionStore(
      StoredSession(
        token: 'fss_user',
        userId: 'u-1',
        expiresAt: DateTime.utc(2099, 1, 1),
        permissions: permissions.toList(),
      ),
    ),
  );
  addTearDown(container.dispose);
  await container.read(sessionControllerProvider.notifier).restore();
  await tester.pumpWidget(testApp(container));
  await tester.pumpAndSettle();
  container.read(routerProvider).go(location);
  await tester.pumpAndSettle();
}

Map<String, Object?> rule(String id, String name, String? owner) => <String, Object?>{
  'id': id,
  'name': name,
  'enabled': true,
  'severity': 'warning',
  'ownerPrincipalId': owner,
};

void main() {
  test('the nav differs between a Viewer, an Editor, an Operator and an Admin', () {
    Set<String> nav(RoleTier tier) => AppShell.destinationsFor(
      FormFactor.desktop,
      AccessState(kind: AccessKind.session, permissions: tier.permissions),
    ).map((s) => s.path).toSet();

    final viewer = nav(RoleTier.viewer);
    final editor = nav(RoleTier.editor);
    final operator = nav(RoleTier.operator);
    final admin = nav(RoleTier.admin);

    for (final global in <String>['/usage', '/ai', '/serving', '/users', '/system']) {
      expect(viewer, isNot(contains(global)), reason: 'Viewer sees $global');
    }
    for (final global in <String>['/usage', '/users', '/system']) {
      expect(editor, isNot(contains(global)), reason: 'Editor sees $global');
    }
    expect(operator, containsAll(<String>['/usage', '/system', '/serving']));
    expect(operator, isNot(contains('/users')));
    expect(admin, containsAll(<String>['/usage', '/system', '/serving', '/users']));
    expect(<Set<String>>{viewer, editor, operator, admin}, hasLength(4));
  });

  test('ownedByCaller keeps only the caller\'s items unless they manage every owner', () {
    final items = <String?>[mePrincipal, otherPrincipal, null];
    final editor = AccessState(
      kind: AccessKind.session,
      permissions: RoleTier.editor.permissions,
      principalId: mePrincipal,
    );
    expect(ownedByCaller(editor, items, (o) => o), <String?>[mePrincipal]);
    expect(ownedByCaller(editor, items, (o) => o, keepUnowned: true), <String?>[mePrincipal, null]);
    expect(ownedByCaller(const AccessState.adminToken(), items, (o) => o), items);
    expect(ownershipOf(editor, null, global: true), Ownership.global);
    expect(ownershipOf(editor, otherPrincipal), Ownership.otherUser);
  });

  testWidgets('a self-service user\'s sources call getMySources and updateMySources', (
    tester,
  ) async {
    final permissions = RoleTier.editor.permissions;
    final adapter = scopedBackend(permissions);
    await openSignedIn(tester, adapter, permissions, sourcesPath);

    expect(find.byKey(const Key('mySources')), findsOneWidget);
    expect(find.byKey(const Key('sources.scope.catalog')), findsNothing);
    expect(find.byKey(const Key('sources.scope.collection')), findsNothing);
    expect(
      adapter.requests.any((r) => r.method == 'GET' && r.uri.path == '/v1/me/sources'),
      isTrue,
    );
    expect(adapter.requests.any((r) => r.uri.path == '/v1/sources/collection'), isFalse);

    await tapVisible(tester, find.byKey(const Key('mySources.enabled.gdacs')));

    final put = adapter.requests.singleWhere(
      (r) => r.method == 'PUT' && r.uri.path == '/v1/me/sources',
    );
    expect((put.body! as Map<String, Object?>)['sources'], <Object?>[
      <String, Object?>{'sourceId': 'gdacs', 'enabled': true},
    ]);
    final after = adapter.requests.sublist(adapter.requests.indexOf(put) + 1);
    expect(after.any((r) => r.method == 'GET' && r.uri.path == '/v1/me/sources'), isTrue);
    expect(find.byKey(const Key('mySources.joined')), findsOneWidget);
    expect(
      adapter.requests.any((r) => r.method == 'PATCH' || r.uri.path == '/v1/sources/gdacs'),
      isFalse,
    );
  });

  testWidgets('an operator\'s Collection tab calls getCollectionSources and updates the set', (
    tester,
  ) async {
    final permissions = RoleTier.operator.permissions;
    final adapter = scopedBackend(permissions);
    await openSignedIn(tester, adapter, permissions, sourcesPath);

    expect(find.byKey(const Key('sources.scope.catalog')), findsOneWidget);
    await tapVisible(tester, find.byKey(const Key('sources.scope.collection')));
    expect(find.byKey(const Key('collection.union')), findsOneWidget);
    expect(
      adapter.requests.any((r) => r.method == 'GET' && r.uri.path == '/v1/sources/collection'),
      isTrue,
    );

    await tapVisible(tester, find.byKey(const Key('collection.in.nasa-firms')));

    final put = adapter.requests.singleWhere(
      (r) => r.method == 'PUT' && r.uri.path == '/v1/sources/collection',
    );
    expect((put.body! as Map<String, Object?>)['sources'], <Object?>[
      <String, Object?>{'sourceId': 'nasa-firms', 'inCollection': true},
    ]);
  });

  testWidgets('a per-user alert list shows only owned rules', (tester) async {
    final permissions = RoleTier.editor.permissions;
    final adapter = scopedBackend(
      permissions,
      triggers: <Map<String, Object?>>[
        rule('r-mine', 'My rule', mePrincipal),
        rule('r-other', 'Their rule', otherPrincipal),
        rule('r-shared', 'Shared rule', null),
      ],
    );
    await openSignedIn(tester, adapter, permissions, alertTriggersPath);

    expect(find.text('My rule'), findsOneWidget);
    expect(find.text('Their rule'), findsNothing);
    expect(find.text('Shared rule'), findsNothing);
    expect(
      find.descendant(
        of: find.byKey(const Key('triggers.owner.r-mine')),
        matching: find.text('Yours'),
      ),
      findsOneWidget,
    );
  });

  testWidgets('a user\'s channel list keeps their own and the global ones', (tester) async {
    final permissions = RoleTier.editor.permissions;
    Map<String, Object?> channel(String id, String name, String? owner) => <String, Object?>{
      'id': id,
      'name': name,
      'type': 'webhook',
      'enabled': true,
      'events': <String>['alert.fired'],
      'ownerPrincipalId': owner,
      'global': owner == null,
    };
    final adapter = scopedBackend(
      permissions,
      channels: <Map<String, Object?>>[
        channel('c-mine', 'My hook', mePrincipal),
        channel('c-other', 'Their hook', otherPrincipal),
        channel('c-global', 'Ops hook', null),
      ],
    );
    await openSignedIn(tester, adapter, permissions, alertChannelsPath);

    expect(find.text('My hook'), findsOneWidget);
    expect(find.text('Ops hook'), findsOneWidget);
    expect(find.text('Their hook'), findsNothing);
    expect(
      find.descendant(
        of: find.byKey(const Key('channels.owner.c-global')),
        matching: find.text('Global'),
      ),
      findsOneWidget,
    );
  });
}
