import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:foresignal_admin/features/auth/auth_controller.dart';
import 'package:foresignal_admin/features/auth/forgot_password_screen.dart';

import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';

const String _userId = '6f1d3a2e-0b4c-4d5e-8f9a-1b2c3d4e5f60';

/// A `SessionToken` body as `login` answers it.
Map<String, Object?> sessionTokenBody({bool mfaRequired = false}) => <String, Object?>{
  'token': 'fss_new',
  'tokenPrefix': 'fss_ne',
  'userId': _userId,
  'issuedAt': '2026-10-26T12:00:00Z',
  'expiresAt': '2099-01-01T00:00:00Z',
  'idleExpiresAt': '2099-01-01T02:00:00Z',
  'mfaRequired': mfaRequired,
  'scopes': <String>['read'],
  'permissions': <String>['self.preferences', 'data.read'],
};

/// A backend for the sign-in pages: `login` answers [login] (the request is
/// passed in), the other auth operations [other], everything else 404.
FakeAdapter authBackend({
  FakeResponse Function(RecordedRequest request)? login,
  FakeResponse Function(RecordedRequest request)? other,
}) => FakeAdapter((request) {
  if (request.uri.path == '/v1/auth/login' && login != null) {
    return login(request);
  }
  if (request.uri.path.startsWith('/v1/auth/') && other != null) {
    return other(request);
  }
  return FakeResponse.problem(<String, Object?>{'title': 'Not found', 'status': 404}, status: 404);
});

/// Opens the app in [container] at [location].
Future<void> _open(WidgetTester tester, ProviderContainer container, String location) async {
  tester.view.physicalSize = const Size(1400, 1000);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(testApp(container));
  await tester.pumpAndSettle();
  container.read(routerProvider).go(location);
  await tester.pumpAndSettle();
}

void main() {
  final backend = Uri.parse('http://foresignal.local:8080');

  testWidgets('a login stores the session and opens the app', (tester) async {
    final sessions = InMemorySessionStore();
    final adapter = authBackend(login: (_) => FakeResponse.json(sessionTokenBody()));
    final container = testContainer(adapter: adapter, connectedTo: backend, sessionStore: sessions);
    addTearDown(container.dispose);
    await _open(tester, container, loginPath);

    await tester.enterText(find.byKey(const Key('login.email')), ' ana@example.com ');
    await tester.enterText(
      find.descendant(
        of: find.byKey(const Key('login.password')),
        matching: find.byType(TextField),
      ),
      'pw-1',
    );
    await tester.tap(find.byKey(const Key('login.submit')));
    await tester.pumpAndSettle();

    final login = adapter.requests.firstWhere((r) => r.uri.path == '/v1/auth/login');
    expect(login.method, 'POST');
    expect(login.body, <String, Object?>{'email': 'ana@example.com', 'password': 'pw-1'});
    expect(login.options.headers.containsKey('Authorization'), isFalse);
    final stored = (await sessions.read())!;
    expect(stored.token, 'fss_new');
    expect(stored.permissions, <String>['self.preferences', 'data.read']);
    expect(container.read(sessionControllerProvider).signedIn, isTrue);
    expect(container.read(routerProvider).state.matchedLocation, sourcesPath);
    // Later calls carry the session.
    expect(adapter.requests.last.options.headers['Authorization'], 'Bearer fss_new');
  });

  testWidgets('a rejected credential is a refusal on the screen, and nothing is stored', (
    tester,
  ) async {
    final sessions = InMemorySessionStore();
    final adapter = authBackend(
      login: (_) => FakeResponse.problem(<String, Object?>{
        'title': 'Unauthorized',
        'status': 401,
        'code': 'INVALID_CREDENTIALS',
      }, status: 401),
    );
    final container = testContainer(adapter: adapter, connectedTo: backend, sessionStore: sessions);
    addTearDown(container.dispose);
    await _open(tester, container, loginPath);

    await tester.enterText(find.byKey(const Key('login.email')), 'ana@example.com');
    await tester.enterText(
      find.descendant(
        of: find.byKey(const Key('login.password')),
        matching: find.byType(TextField),
      ),
      'wrong',
    );
    await tester.tap(find.byKey(const Key('login.submit')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('login.refused')), findsOneWidget);
    expect(find.text('The email or password was not accepted.'), findsOneWidget);
    expect(await sessions.read(), isNull);
    expect(container.read(routerProvider).state.matchedLocation, loginPath);
  });

  testWidgets('a suspended account shows the server reason', (tester) async {
    final adapter = authBackend(
      login: (_) => FakeResponse.problem(<String, Object?>{
        'title': 'Forbidden',
        'status': 403,
        'code': 'ACCOUNT_DISABLED',
        'detail': 'The account is suspended.',
      }, status: 403),
    );
    final container = testContainer(adapter: adapter, connectedTo: backend);
    addTearDown(container.dispose);
    await _open(tester, container, loginPath);

    await tester.enterText(find.byKey(const Key('login.email')), 'ana@example.com');
    await tester.enterText(
      find.descendant(
        of: find.byKey(const Key('login.password')),
        matching: find.byType(TextField),
      ),
      'pw',
    );
    await tester.tap(find.byKey(const Key('login.submit')));
    await tester.pumpAndSettle();

    expect(find.text('This account cannot sign in: The account is suspended.'), findsOneWidget);
  });

  testWidgets('mfaRequired shows a code field and resubmits with mfaCode', (tester) async {
    final sessions = InMemorySessionStore();
    final adapter = authBackend(
      login: (request) {
        final body = request.body! as Map<String, Object?>;
        return FakeResponse.json(sessionTokenBody(mfaRequired: body['mfaCode'] == null));
      },
    );
    final container = testContainer(adapter: adapter, connectedTo: backend, sessionStore: sessions);
    addTearDown(container.dispose);
    await _open(tester, container, loginPath);

    await tester.enterText(find.byKey(const Key('login.email')), 'ana@example.com');
    await tester.enterText(
      find.descendant(
        of: find.byKey(const Key('login.password')),
        matching: find.byType(TextField),
      ),
      'pw',
    );
    await tester.tap(find.byKey(const Key('login.submit')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('login.mfa')), findsOneWidget);
    expect(find.byKey(const Key('login.mfaRequired')), findsOneWidget);
    expect(await sessions.read(), isNull);

    await tester.enterText(find.byKey(const Key('login.mfa')), '123456');
    await tester.tap(find.byKey(const Key('login.submit')));
    await tester.pumpAndSettle();

    final logins = adapter.requests.where((r) => r.uri.path == '/v1/auth/login').toList();
    expect(logins, hasLength(2));
    expect((logins.last.body! as Map<String, Object?>)['mfaCode'], '123456');
    expect((await sessions.read())!.token, 'fss_new');
  });

  testWidgets('forgot password always shows the neutral result', (tester) async {
    final adapter = authBackend(other: (_) => FakeResponse.empty(status: 202));
    final container = testContainer(adapter: adapter, connectedTo: backend);
    addTearDown(container.dispose);
    await _open(tester, container, forgotPasswordPath);

    await tester.enterText(find.byKey(const Key('forgot.email')), 'nobody@example.com');
    await tester.tap(find.byKey(const Key('forgot.submit')));
    await tester.pumpAndSettle();

    final request = adapter.requests.single;
    expect(request.uri.path, '/v1/auth/password/reset-request');
    expect(request.body, <String, Object?>{'email': 'nobody@example.com'});
    expect(find.text(resetRequestedMessage), findsOneWidget);
  });

  testWidgets('a reset link posts resetPassword with the link token', (tester) async {
    final adapter = authBackend(other: (_) => FakeResponse.empty());
    final container = testContainer(adapter: adapter, connectedTo: backend);
    addTearDown(container.dispose);
    await _open(tester, container, withLinkQuery(resetPasswordPath, token: 'tok-reset'));

    await tester.enterText(
      find.descendant(of: find.byKey(const Key('link.password')), matching: find.byType(TextField)),
      'new-pw',
    );
    await tester.enterText(
      find.descendant(of: find.byKey(const Key('link.confirm')), matching: find.byType(TextField)),
      'new-pw',
    );
    await tester.tap(find.byKey(const Key('link.submit')));
    await tester.pumpAndSettle();

    final request = adapter.requests.single;
    expect(request.uri.path, '/v1/auth/password/reset');
    expect(request.body, <String, Object?>{'token': 'tok-reset', 'newPassword': 'new-pw'});
    expect(find.byKey(const Key('link.done')), findsOneWidget);
  });

  testWidgets('an activation link posts activateAccount with the link token', (tester) async {
    final adapter = authBackend(other: (_) => FakeResponse.empty());
    final container = testContainer(adapter: adapter, connectedTo: backend);
    addTearDown(container.dispose);
    await _open(tester, container, withLinkQuery(activatePath, token: 'tok-act'));

    await tester.enterText(
      find.descendant(of: find.byKey(const Key('link.password')), matching: find.byType(TextField)),
      'first-pw',
    );
    await tester.enterText(
      find.descendant(of: find.byKey(const Key('link.confirm')), matching: find.byType(TextField)),
      'first-pw',
    );
    await tester.tap(find.byKey(const Key('link.submit')));
    await tester.pumpAndSettle();

    final request = adapter.requests.single;
    expect(request.uri.path, '/v1/auth/activate');
    expect(request.body, <String, Object?>{'token': 'tok-act', 'password': 'first-pw'});
    expect(find.text('Account activated'), findsOneWidget);
  });

  testWidgets('mismatched passwords are refused before anything is sent', (tester) async {
    final adapter = authBackend(other: (_) => FakeResponse.empty());
    final container = testContainer(adapter: adapter, connectedTo: backend);
    addTearDown(container.dispose);
    await _open(tester, container, withLinkQuery(activatePath, token: 'tok-act'));

    await tester.enterText(
      find.descendant(of: find.byKey(const Key('link.password')), matching: find.byType(TextField)),
      'a',
    );
    await tester.enterText(
      find.descendant(of: find.byKey(const Key('link.confirm')), matching: find.byType(TextField)),
      'b',
    );
    await tester.tap(find.byKey(const Key('link.submit')));
    await tester.pumpAndSettle();

    expect(find.text('The two passwords do not match.'), findsOneWidget);
    expect(adapter.requests, isEmpty);
  });

  testWidgets('a used reset token shows the reason and offers a new link', (tester) async {
    final adapter = authBackend(
      other: (_) => FakeResponse.problem(<String, Object?>{
        'title': 'Gone',
        'status': 410,
        'code': 'RESET_TOKEN_GONE',
        'detail': 'The reset link was already used.',
      }, status: 410),
    );
    final container = testContainer(adapter: adapter, connectedTo: backend);
    addTearDown(container.dispose);
    await _open(tester, container, withLinkQuery(resetPasswordPath, token: 'tok-old'));

    await tester.enterText(
      find.descendant(of: find.byKey(const Key('link.password')), matching: find.byType(TextField)),
      'pw',
    );
    await tester.enterText(
      find.descendant(of: find.byKey(const Key('link.confirm')), matching: find.byType(TextField)),
      'pw',
    );
    await tester.tap(find.byKey(const Key('link.submit')));
    await tester.pumpAndSettle();

    expect(find.text('The reset link was already used.'), findsOneWidget);
    await tester.tap(find.byKey(const Key('link.requestNew')));
    await tester.pumpAndSettle();
    expect(container.read(routerProvider).state.matchedLocation, forgotPasswordPath);
  });

  testWidgets('a 401 to a signed-in call ends the session and opens Login once', (tester) async {
    final sessions = InMemorySessionStore(
      StoredSession(token: 'fss_old', userId: _userId, expiresAt: DateTime.utc(2099, 1, 1)),
    );
    final adapter = FakeAdapter(
      (_) => FakeResponse.problem(<String, Object?>{
        'title': 'Unauthorized',
        'status': 401,
      }, status: 401),
    );
    final container = testContainer(adapter: adapter, connectedTo: backend, sessionStore: sessions);
    addTearDown(container.dispose);
    await container.read(sessionControllerProvider.notifier).restore();
    await _open(tester, container, sourcesPath);

    expect(container.read(routerProvider).state.matchedLocation, loginPath);
    expect(find.byKey(const Key('login.sessionEnded')), findsOneWidget);
    expect(await sessions.read(), isNull);
  });

  test('EmailedLink reads a whole link or a bare token', () {
    final link = EmailedLink.parse('foresignal://activate?u=http%3A%2F%2Ffs.local%3A8080&t=abc')!;
    expect(link.token, 'abc');
    expect(link.backend, Uri.parse('http://fs.local:8080'));
    expect(link.kind, EmailedLinkKind.activate);
    expect(EmailedLink.parse('foresignal://reset-password?t=xyz')!.kind, EmailedLinkKind.reset);
    expect(EmailedLink.parse(' tok-1 ')!.token, 'tok-1');
    expect(EmailedLink.parse('  '), isNull);
  });

  testWidgets('an MFA challenge without a token or expiry asks for the code (R2-024 shape)', (
    tester,
  ) async {
    final sessions = InMemorySessionStore();
    final adapter = authBackend(
      login: (_) => FakeResponse.json(<String, Object?>{
        ...sessionTokenBody(mfaRequired: true),
        'token': '',
        'expiresAt': null,
        'idleExpiresAt': null,
      }),
    );
    final container = testContainer(adapter: adapter, connectedTo: backend, sessionStore: sessions);
    addTearDown(container.dispose);
    await _open(tester, container, loginPath);

    await tester.enterText(find.byKey(const Key('login.email')), 'ana@example.com');
    await tester.enterText(
      find.descendant(
        of: find.byKey(const Key('login.password')),
        matching: find.byType(TextField),
      ),
      'pw',
    );
    await tester.tap(find.byKey(const Key('login.submit')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('login.mfa')), findsOneWidget);
    expect(await sessions.read(), isNull);
  });

  testWidgets('a sign-in answer that claims a session without an expiry is refused', (
    tester,
  ) async {
    final sessions = InMemorySessionStore();
    final adapter = authBackend(
      login: (_) => FakeResponse.json(<String, Object?>{...sessionTokenBody(), 'expiresAt': null}),
    );
    final container = testContainer(adapter: adapter, connectedTo: backend, sessionStore: sessions);
    addTearDown(container.dispose);
    await _open(tester, container, loginPath);

    await tester.enterText(find.byKey(const Key('login.email')), 'ana@example.com');
    await tester.enterText(
      find.descendant(
        of: find.byKey(const Key('login.password')),
        matching: find.byType(TextField),
      ),
      'pw',
    );
    await tester.tap(find.byKey(const Key('login.submit')));
    await tester.pumpAndSettle();

    expect(find.text('Could not sign in'), findsOneWidget);
    expect(await sessions.read(), isNull);
    expect(container.read(sessionControllerProvider).signedIn, isFalse);
  });
}
