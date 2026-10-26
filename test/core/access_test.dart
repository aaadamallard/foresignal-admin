import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/core/access.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/nav.dart';
import 'package:foresignal_admin/core/permissions.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/theme.dart';
import 'package:foresignal_admin/core/ui/ui.dart';
import 'package:foresignal_admin/features/shell/app_shell.dart';

import '../support/fake_adapter.dart';
import '../support/test_app.dart';

AccessState _session(Set<String> permissions) =>
    AccessState(kind: AccessKind.session, permissions: permissions);

Widget _host(AccessState access, Widget child) => ProviderScope(
  overrides: [accessProvider.overrideWithValue(access)],
  child: MaterialApp(
    theme: buildAdminTheme(),
    home: Scaffold(body: child),
  ),
);

void main() {
  group('AccessState', () {
    test('can() is the union of two roles\' permissions', () {
      final access = _session(<String>{
        ...RoleTier.viewer.permissions,
        ...RoleTier.auditor.permissions,
      });
      expect(access.can(Permissions.auditRead), isTrue);
      expect(access.can(Permissions.selfViews), isTrue);
      expect(access.can(Permissions.dataRead), isTrue);
      expect(access.can(Permissions.usersManage), isFalse);
      expect(access.isViewer, isTrue);
      expect(access.isAuditor, isTrue);
      expect(access.isEditor, isFalse);
      expect(access.isAdmin, isFalse);
    });

    test('a key this build has not seen is honored as sent', () {
      expect(_session(<String>{'reports.publish'}).can('reports.publish'), isTrue);
    });

    test('the admin token is full access; no credential allows no change', () {
      const admin = AccessState.adminToken();
      expect(admin.can(Permissions.usersManage), isTrue);
      expect(admin.isAdmin, isTrue);
      const anonymous = AccessState.anonymous();
      expect(anonymous.can(Permissions.dataRead), isFalse);
      expect(allNavSections.every(anonymous.canSee), isTrue);
    });

    test('the role tiers match the catalog matrix', () {
      expect(RoleTier.admin.permissions, Permissions.all);
      expect(RoleTier.operator.permissions.containsAll(Permissions.platform), isTrue);
      expect(RoleTier.operator.permissions.intersection(Permissions.identity), isEmpty);
      expect(RoleTier.editor.permissions, <String>{...Permissions.self, ...Permissions.data});
      expect(RoleTier.viewer.permissions, hasLength(3));
      expect(RoleTier.auditor.permissions, <String>{Permissions.auditRead, Permissions.dataRead});
    });
  });

  test('the nav for a Viewer and an Admin differ as expected', () {
    final viewer = AppShell.destinationsFor(
      FormFactor.desktop,
      _session(RoleTier.viewer.permissions),
    );
    expect(viewer.map((s) => s.path), <String>[
      '/connect',
      '/sources',
      '/vetting',
      '/alerts',
      '/notifications',
    ]);
    final admin = AppShell.destinationsFor(
      FormFactor.desktop,
      _session(RoleTier.admin.permissions),
    );
    expect(admin.map((s) => s.path), <String>[
      '/connect',
      ...navSectionsFor(FormFactor.desktop).map((s) => s.path),
    ]);
    final adminToken = AppShell.destinationsFor(FormFactor.desktop, const AccessState.adminToken());
    expect(adminToken, hasLength(admin.length));
  });

  testWidgets('PermissionGate hides a control without the permission and shows it with it', (
    tester,
  ) async {
    Widget gate(GateMode mode) => PermissionGate(
      permission: Permissions.usersManage,
      mode: mode,
      child: FilledButton(onPressed: () {}, child: const Text('Invite user')),
    );

    await tester.pumpWidget(_host(_session(RoleTier.viewer.permissions), gate(GateMode.hide)));
    expect(find.text('Invite user'), findsNothing);

    await tester.pumpWidget(_host(_session(RoleTier.viewer.permissions), gate(GateMode.disable)));
    expect(find.text('Invite user'), findsOneWidget);
    expect(find.byTooltip('Needs users.manage'), findsOneWidget);
    expect(find.byIcon(Icons.lock_outline), findsOneWidget);

    await tester.pumpWidget(
      _host(_session(<String>{Permissions.usersManage}), gate(GateMode.disable)),
    );
    expect(find.text('Invite user'), findsOneWidget);
    expect(find.byIcon(Icons.lock_outline), findsNothing);
  });

  testWidgets('a 403 renders the denied panel naming the permission', (tester) async {
    final error = ProblemException(
      status: 403,
      title: 'Forbidden',
      code: 'PERMISSION_DENIED',
      body: const <String, Object?>{'requiredPermission': 'users.manage'},
    );
    await tester.pumpWidget(_host(const AccessState.anonymous(), ErrorBanner(error: error)));
    expect(find.byKey(const Key('permissionDenied')), findsOneWidget);
    expect(find.text('This needs the users.manage permission.'), findsOneWidget);
  });

  testWidgets('a deep link to a section the user cannot see shows the denied panel', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1400, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final sessions = InMemorySessionStore(
      StoredSession(
        token: 'fss_viewer',
        userId: 'u-1',
        expiresAt: DateTime.utc(2099, 1, 1),
        permissions: RoleTier.viewer.permissions.toList(),
      ),
    );
    final adapter = FakeAdapter(
      (_) =>
          FakeResponse.problem(<String, Object?>{'title': 'Not found', 'status': 404}, status: 404),
    );
    final container = testContainer(
      adapter: adapter,
      connectedTo: Uri.parse('http://foresignal.local:8080'),
      sessionStore: sessions,
    );
    addTearDown(container.dispose);
    await container.read(sessionControllerProvider.notifier).restore();
    await tester.pumpWidget(testApp(container));
    await tester.pumpAndSettle();

    container.read(routerProvider).go('/system');
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('section.denied')), findsOneWidget);
    expect(find.byKey(const Key('nav./system')), findsNothing);
    expect(find.byKey(const Key('nav./sources')), findsOneWidget);
  });

  testWidgets('getMe refreshes the permissions the login returned', (tester) async {
    final sessions = InMemorySessionStore(
      StoredSession(
        token: 'fss_user',
        userId: 'u-1',
        expiresAt: DateTime.utc(2099, 1, 1),
        permissions: const <String>[Permissions.dataRead],
      ),
    );
    final adapter = FakeAdapter((request) {
      if (request.uri.path == '/v1/me') {
        return FakeResponse.json(<String, Object?>{
          'principal': <String, Object?>{
            'id': '01JB8Z7Q4M5N6P7R8S9T0V1W2X',
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
          'permissions': <String>[Permissions.dataRead, Permissions.usersManage],
        });
      }
      return FakeResponse.problem(<String, Object?>{
        'title': 'Not found',
        'status': 404,
      }, status: 404);
    });
    final container = testContainer(
      adapter: adapter,
      connectedTo: Uri.parse('http://foresignal.local:8080'),
      sessionStore: sessions,
    );
    addTearDown(container.dispose);
    await container.read(sessionControllerProvider.notifier).restore();
    expect(container.read(accessProvider).can(Permissions.usersManage), isFalse);
    await container.read(meProvider.future);
    expect(container.read(accessProvider).can(Permissions.usersManage), isTrue);
    expect((await sessions.read())!.permissions, contains(Permissions.usersManage));
  });
}
