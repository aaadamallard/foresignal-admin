import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import 'users_screens_test.dart' show adminRoleId, openUsers;

const String analystRoleId = '8b3f5c4a-2d6e-4f70-8b1c-3d4e5f6a7b82';
const String newRoleId = '9c4a6d5b-3e7f-4a81-9c2d-4e5f6a7b8c93';

/// A Role body.
Map<String, Object?> roleBody(
  String id,
  String name, {
  required bool builtIn,
  required List<String> permissions,
  int? userCount,
}) => <String, Object?>{
  'id': id,
  'name': name,
  'builtIn': builtIn,
  'permissions': permissions,
  'userCount': ?userCount,
};

/// A roles backend: one built-in (Admin) and one custom (Analyst) role, the
/// permission catalog across the four groups, and answers for create,
/// update and delete. [refuseDelete] answers a delete with a 409.
FakeAdapter rolesBackend({bool refuseDelete = false}) {
  final roles = <String, Map<String, Object?>>{
    adminRoleId: roleBody(
      adminRoleId,
      'Admin',
      builtIn: true,
      permissions: <String>['users.manage', 'roles.manage', 'data.read'],
      userCount: 1,
    ),
    analystRoleId: roleBody(
      analystRoleId,
      'Analyst',
      builtIn: false,
      // `legacy.export` is not in the catalog; the editor keeps it.
      permissions: <String>['data.read', 'legacy.export'],
      userCount: 2,
    ),
  };
  return FakeAdapter((request) {
    final path = request.uri.path;
    if (path == '/v1/permissions') {
      return FakeResponse.json(<String, Object?>{
        'items': <Object?>[
          <String, Object?>{
            'key': 'users.manage',
            'group': 'identity',
            'description': 'Manage users.',
          },
          <String, Object?>{
            'key': 'roles.manage',
            'group': 'identity',
            'description': 'Manage roles.',
          },
          <String, Object?>{
            'key': 'storage.manage',
            'group': 'platform',
            'description': 'Storage.',
          },
          <String, Object?>{'key': 'self.views', 'group': 'self', 'description': 'Own views.'},
          <String, Object?>{'key': 'data.read', 'group': 'data', 'description': 'Read data.'},
        ],
      });
    }
    if (path == '/v1/roles' && request.method == 'GET') {
      return FakeResponse.json(<String, Object?>{'items': roles.values.toList()});
    }
    if (path == '/v1/roles' && request.method == 'POST') {
      final body = request.body! as Map<String, Object?>;
      roles[newRoleId] = roleBody(
        newRoleId,
        '${body['name']}',
        builtIn: false,
        permissions: (body['permissions']! as List).cast<String>(),
        userCount: 0,
      );
      return FakeResponse.json(roles[newRoleId], status: 201);
    }
    final match = RegExp(r'^/v1/roles/([^/]+)$').firstMatch(path);
    if (match != null) {
      final id = match.group(1)!;
      final role = roles[id];
      if (role == null) {
        return FakeResponse.problem(<String, Object?>{
          'title': 'Not found',
          'status': 404,
        }, status: 404);
      }
      switch (request.method) {
        case 'GET':
          return FakeResponse.json(role);
        case 'PUT':
          final body = request.body! as Map<String, Object?>;
          roles[id] = roleBody(
            id,
            '${body['name']}',
            builtIn: false,
            permissions: (body['permissions']! as List).cast<String>(),
            userCount: role['userCount'] as int?,
          );
          return FakeResponse.json(roles[id]);
        case 'DELETE':
          if (refuseDelete) {
            return FakeResponse.problem(<String, Object?>{
              'title': 'Conflict',
              'status': 409,
              'code': 'ROLE_IN_USE',
              'detail': 'The role is still assigned to 2 users.',
            }, status: 409);
          }
          roles.remove(id);
          return FakeResponse.empty(status: 204);
      }
    }
    return FakeResponse.problem(<String, Object?>{
      'title': 'Not found',
      'status': 404,
    }, status: 404);
  });
}

void main() {
  testWidgets('the list distinguishes built-in from custom roles', (tester) async {
    await openUsers(tester, rolesBackend(), usersRolesPath);

    expect(find.byKey(const Key('roles.table')), findsOneWidget);
    expect(
      find.descendant(
        of: find.byKey(const Key('roles.kind.Admin')),
        matching: find.text('Built-in'),
      ),
      findsOneWidget,
    );
    expect(
      find.descendant(
        of: find.byKey(const Key('roles.kind.Analyst')),
        matching: find.text('Custom'),
      ),
      findsOneWidget,
    );
  });

  testWidgets('the editor groups by catalog group and a built-in is read-only', (tester) async {
    await openUsers(tester, rolesBackend(), usersRolePath(adminRoleId));

    for (final group in <String>['Identity', 'Platform (global)', 'Self-service', 'Data']) {
      expect(find.byKey(Key('role.group.$group')), findsOneWidget);
    }
    expect(find.byKey(const Key('role.builtInNote')), findsOneWidget);
    final box = tester.widget<CheckboxListTile>(find.byKey(const Key('perm.users.manage')));
    expect(box.value, isTrue);
    expect(box.onChanged, isNull);
    expect(find.byKey(const Key('role.save')), findsNothing);
    expect(find.byKey(const Key('role.deleteButton')), findsNothing);
  });

  testWidgets('a key outside the catalog is shown and kept on save', (tester) async {
    final adapter = rolesBackend();
    await openUsers(tester, adapter, usersRolePath(analystRoleId));

    expect(find.byKey(const Key('role.group.Not in the catalog')), findsOneWidget);
    expect(find.byKey(const Key('perm.legacy.export')), findsOneWidget);

    await tapVisible(tester, find.byKey(const Key('perm.storage.manage')));
    await tapVisible(tester, find.byKey(const Key('role.save')));

    final put = adapter.requests.singleWhere((r) => r.method == 'PUT');
    expect(put.uri.path, '/v1/roles/$analystRoleId');
    expect(
      (put.body! as Map<String, Object?>)['permissions'],
      unorderedEquals(<String>['data.read', 'legacy.export', 'storage.manage']),
    );
    final after = adapter.requests.sublist(adapter.requests.indexOf(put) + 1);
    expect(after.any((r) => r.method == 'GET' && r.uri.path == '/v1/roles/$analystRoleId'), isTrue);
    expect(find.textContaining('Saved and confirmed'), findsOneWidget);
  });

  testWidgets('create posts the checked key set and re-reads the role', (tester) async {
    final adapter = rolesBackend();
    final container = await openUsers(tester, adapter, usersRolesPath);

    await tapVisible(tester, find.byKey(const Key('roles.add')));
    await tester.enterText(find.byKey(const Key('role.name')), 'Reviewer');
    await tapVisible(tester, find.byKey(const Key('perm.data.read')));
    await tapVisible(tester, find.byKey(const Key('perm.self.views')));
    await tapVisible(tester, find.byKey(const Key('role.save')));

    final create = adapter.requests.singleWhere(
      (r) => r.method == 'POST' && r.uri.path == '/v1/roles',
    );
    final body = create.body! as Map<String, Object?>;
    expect(body['name'], 'Reviewer');
    expect(body['permissions'], unorderedEquals(<String>['data.read', 'self.views']));
    final after = adapter.requests.sublist(adapter.requests.indexOf(create) + 1);
    expect(after.any((r) => r.method == 'GET' && r.uri.path == '/v1/roles/$newRoleId'), isTrue);
    expect(container.read(routerProvider).state.matchedLocation, usersRolePath(newRoleId));
  });

  testWidgets('a custom role is deleted after a confirm', (tester) async {
    final adapter = rolesBackend();
    final container = await openUsers(tester, adapter, usersRolePath(analystRoleId));

    await tapVisible(tester, find.byKey(const Key('role.deleteButton')));
    expect(adapter.requests.where((r) => r.method == 'DELETE'), isEmpty);
    await tapVisible(tester, find.byKey(const Key('role.confirmDelete')));

    expect(
      adapter.requests.singleWhere((r) => r.method == 'DELETE').uri.path,
      '/v1/roles/$analystRoleId',
    );
    expect(container.read(routerProvider).state.matchedLocation, usersRolesPath);
  });

  testWidgets('the server refusing a delete is shown', (tester) async {
    await openUsers(tester, rolesBackend(refuseDelete: true), usersRolePath(analystRoleId));

    await tapVisible(tester, find.byKey(const Key('role.deleteButton')));
    await tapVisible(tester, find.byKey(const Key('role.confirmDelete')));

    expect(find.textContaining('ROLE_IN_USE'), findsOneWidget);
  });

  testWidgets('Who has this opens the Users list filtered to the role', (tester) async {
    final container = await openUsers(tester, rolesBackend(), usersRolePath(analystRoleId));

    await tapVisible(tester, find.byKey(const Key('role.whoHas')));

    final uri = container.read(routerProvider).state.uri;
    expect(uri.path, usersPath);
    expect(uri.queryParameters['role'], analystRoleId);
  });
}
