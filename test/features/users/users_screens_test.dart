import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/access.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/permissions.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:foresignal_admin/features/shell/app_shell.dart';

import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';

const String adminRoleId = '00000000-0000-4000-8000-000000000001';
const String viewerRoleId = '00000000-0000-4000-8000-000000000004';
const String anaId = '6f1d3a2e-0b4c-4d5e-8f9a-1b2c3d4e5f60';
const String benId = '7a2e4b3f-1c5d-4e6f-9a0b-2c3d4e5f6a71';

/// A User body.
Map<String, Object?> userBody(
  String id,
  String email,
  String name, {
  String status = 'active',
  List<String> roles = const <String>[viewerRoleId],
  bool mfa = false,
}) => <String, Object?>{
  'id': id,
  'email': email,
  'fullName': name,
  'status': status,
  'roles': <Object?>[
    for (final r in roles)
      <String, Object?>{'id': r, 'name': r == adminRoleId ? 'Admin' : 'Viewer'},
  ],
  'mfaEnabled': mfa,
  'createdAt': '2026-10-20T10:00:00Z',
  'lastLoginAt': status == 'active' ? '2026-10-26T09:00:00Z' : null,
};

/// A users backend: [users] by id, the two built-in roles, and answers for
/// each write recorded on the adapter. [refuse] answers a write's path with a
/// 409 problem of that code.
FakeAdapter usersBackend(
  Map<String, Map<String, Object?>> users, {
  Map<String, String> refuse = const {},
}) => FakeAdapter((request) {
  final path = request.uri.path;
  final code = refuse[path];
  if (code != null && request.method != 'GET') {
    return FakeResponse.problem(<String, Object?>{
      'title': 'Conflict',
      'status': 409,
      'code': code,
      'detail': 'The last admin cannot be removed.',
    }, status: 409);
  }
  if (path == '/v1/roles') {
    return FakeResponse.json(<String, Object?>{
      'items': <Object?>[
        <String, Object?>{
          'id': adminRoleId,
          'name': 'Admin',
          'builtIn': true,
          'permissions': <String>['users.manage'],
        },
        <String, Object?>{
          'id': viewerRoleId,
          'name': 'Viewer',
          'builtIn': true,
          'permissions': <String>['data.read'],
        },
      ],
    });
  }
  if (path == '/v1/users' && request.method == 'GET') {
    return FakeResponse.json(<String, Object?>{'items': users.values.toList()});
  }
  if (path == '/v1/users' && request.method == 'POST') {
    final body = request.body! as Map<String, Object?>;
    return FakeResponse.json(<String, Object?>{
      ...userBody(benId, '${body['email']}', '${body['fullName']}', status: 'invited'),
      'activation': <String, Object?>{
        'kind': 'activation',
        'emailed': false,
        'token': 'fsv_handover_token',
        'tokenPrefix': 'fsv_hand',
        'expiresAt': '2026-10-29T10:00:00Z',
      },
    }, status: 201);
  }
  final match = RegExp(r'^/v1/users/([^/]+)(/.*)?$').firstMatch(path);
  if (match != null) {
    final id = match.group(1)!;
    final rest = match.group(2) ?? '';
    final user = users[id];
    if (user == null) {
      return FakeResponse.problem(<String, Object?>{
        'title': 'Not found',
        'status': 404,
      }, status: 404);
    }
    switch ((request.method, rest)) {
      case ('GET', ''):
        return FakeResponse.json(user);
      case ('POST', '/roles'):
        final ids = ((request.body! as Map<String, Object?>)['roles']! as List).cast<String>();
        users[id] = userBody(id, '${user['email']}', '${user['fullName']}', roles: ids);
        return FakeResponse.json(users[id]);
      case ('POST', '/suspend'):
        users[id] = <String, Object?>{...user, 'status': 'suspended'};
        return FakeResponse.json(users[id]);
      case ('DELETE', ''):
        users.remove(id);
        final reassign = request.uri.queryParameters['reassign'] != 'false';
        return FakeResponse.json(<String, Object?>{
          'deletedUserId': id,
          'ownedConfigDisposition': reassign ? 'reassigned' : 'deleted',
        });
      case ('GET', '/quota'):
        return FakeResponse.json(<String, Object?>{'apiRateLimitPerMinute': 600});
    }
  }
  return FakeResponse.problem(<String, Object?>{'title': 'Not found', 'status': 404}, status: 404);
});

Future<ProviderContainer> openUsers(
  WidgetTester tester,
  FakeAdapter adapter,
  String location,
) async {
  tester.view.physicalSize = const Size(1600, 1400);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  final container = testContainer(
    adapter: adapter,
    connectedTo: Uri.parse('http://foresignal.local:8080'),
    store: InMemoryConnectionStore(token: 'fsr_admin'),
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(testApp(container));
  await tester.pumpAndSettle();
  container.read(routerProvider).go(location);
  await tester.pumpAndSettle();
  return container;
}

Map<String, Map<String, Object?>> twoUsers() => <String, Map<String, Object?>>{
  anaId: userBody(anaId, 'ana@example.com', 'Ana Admin', roles: <String>[adminRoleId], mfa: true),
  benId: userBody(benId, 'ben@example.com', 'Ben Viewer', status: 'suspended'),
};

void main() {
  test('Users & Roles is mounted only with users.manage or roles.manage', () {
    List<String> paths(Set<String> held) => AppShell.destinationsFor(
      FormFactor.desktop,
      AccessState(kind: AccessKind.session, permissions: held),
    ).map((s) => s.path).toList();
    expect(paths(<String>{Permissions.usersManage}), contains(usersPath));
    expect(paths(<String>{Permissions.rolesManage}), contains(usersPath));
    expect(paths(RoleTier.operator.permissions), isNot(contains(usersPath)));
    expect(paths(RoleTier.viewer.permissions), isNot(contains(usersPath)));
  });

  testWidgets('the list renders statuses and roles from listUsers', (tester) async {
    await openUsers(tester, usersBackend(twoUsers()), usersPath);

    expect(find.text('Ana Admin'), findsOneWidget);
    expect(find.text('ben@example.com'), findsOneWidget);
    expect(find.text('Active'), findsWidgets);
    expect(find.text('Suspended'), findsOneWidget);
    expect(find.text('Admin'), findsWidgets);
    expect(find.text('On'), findsOneWidget);
  });

  testWidgets('Add posts createUser and shows the hand-over token when no email left', (
    tester,
  ) async {
    final adapter = usersBackend(twoUsers());
    await openUsers(tester, adapter, usersPath);

    await tester.tap(find.byKey(const Key('users.add')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('addUser.email')), 'cy@example.com');
    await tester.enterText(find.byKey(const Key('addUser.name')), 'Cy New');
    await tester.tap(find.byKey(const Key('role.Viewer')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('addUser.submit')));
    await tester.pumpAndSettle();

    final create = adapter.requests.singleWhere(
      (r) => r.method == 'POST' && r.uri.path == '/v1/users',
    );
    expect(create.body, <String, Object?>{
      'email': 'cy@example.com',
      'fullName': 'Cy New',
      'roles': <String>[viewerRoleId],
      'sendInvite': true,
    });
    expect(find.byKey(const Key('addUser.created')), findsOneWidget);
    expect(find.byKey(const Key('linkIssued.handOver')), findsOneWidget);
    expect(find.byKey(const Key('linkIssued.token')), findsOneWidget);
  });

  testWidgets('setUserRoles fires and the editor re-reads the user', (tester) async {
    final adapter = usersBackend(twoUsers());
    await openUsers(tester, adapter, userPath(benId));

    await tapVisible(tester, find.byKey(const Key('role.Admin')));
    await tapVisible(tester, find.byKey(const Key('user.saveRoles')));

    final set = adapter.requests.singleWhere((r) => r.uri.path == '/v1/users/$benId/roles');
    expect(
      (set.body! as Map<String, Object?>)['roles'],
      unorderedEquals(<String>[viewerRoleId, adminRoleId]),
    );
    final after = adapter.requests.sublist(adapter.requests.indexOf(set) + 1);
    expect(after.any((r) => r.method == 'GET' && r.uri.path == '/v1/users/$benId'), isTrue);
    expect(find.textContaining('Saved and confirmed'), findsOneWidget);
  });

  testWidgets('delete sends the chosen reassign value', (tester) async {
    final adapter = usersBackend(twoUsers());
    final container = await openUsers(tester, adapter, userPath(benId));

    await tapVisible(tester, find.byKey(const Key('user.delete.deleteOwned')));
    await tapVisible(tester, find.byKey(const Key('user.deleteButton')));
    await tapVisible(tester, find.byKey(const Key('user.confirmDelete')));

    final delete = adapter.requests.singleWhere((r) => r.method == 'DELETE');
    expect(delete.uri.path, '/v1/users/$benId');
    expect(delete.uri.queryParameters['reassign'], 'false');
    expect(container.read(routerProvider).state.matchedLocation, usersPath);
  });

  testWidgets('the default delete reassigns what the user owns', (tester) async {
    final adapter = usersBackend(twoUsers());
    await openUsers(tester, adapter, userPath(benId));

    await tapVisible(tester, find.byKey(const Key('user.deleteButton')));
    await tapVisible(tester, find.byKey(const Key('user.confirmDelete')));

    expect(
      adapter.requests.singleWhere((r) => r.method == 'DELETE').uri.queryParameters['reassign'],
      'true',
    );
  });

  testWidgets('a self-lockout refusal from the server is shown', (tester) async {
    final adapter = usersBackend(
      twoUsers(),
      refuse: <String, String>{'/v1/users/$anaId/suspend': 'LAST_ADMIN'},
    );
    await openUsers(tester, adapter, userPath(anaId));

    await tapVisible(tester, find.byKey(const Key('user.suspend')));
    await tapVisible(tester, find.byKey(const Key('user.confirmSuspend')));

    expect(find.textContaining('LAST_ADMIN'), findsOneWidget);
    expect(find.textContaining('The last admin cannot be removed.'), findsOneWidget);
  });
}
