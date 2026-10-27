import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/permissions.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';
import '../scoping/per_user_scoping_test.dart' show meBody, openSignedIn;

const String adminId = '6f1d3a2e-0b4c-4d5e-8f9a-1b2c3d4e5f61';

/// A fresh-instance backend: first-run until `runSetup` creates the admin,
/// then the SMTP settings (password stored), the test send, the starter
/// sources and the thresholds. Writes are stored and read back.
FakeAdapter firstRunBackend({
  bool firstRun = true,
  bool smtpConfigured = false,
  int sourcesEnabled = 0,
  bool issueSession = true,
  List<Object?> egress = const <Object?>[],
  Set<String> mePermissions = Permissions.all,
}) {
  final connect = connectBackend(adminToken: 'fsr_boot');
  var fresh = firstRun;
  var enabledCount = sourcesEnabled;
  var smtp = <String, Object?>{
    'enabled': smtpConfigured,
    'host': smtpConfigured ? 'smtp.example.com' : null,
    'port': smtpConfigured ? 587 : null,
    'security': 'starttls',
    'username': smtpConfigured ? 'mailer' : null,
    'fromAddress': null,
    'fromName': null,
    'secretsSet': smtpConfigured ? <String>['password'] : <String>[],
  };
  var thresholds = <String, Object?>{
    'disk': <String, Object?>{'warnFreePercent': 15, 'criticalFreePercent': 5},
    'memory': <String, Object?>{'warnFreePercent': null, 'criticalFreePercent': null},
    'alertChannels': <String>[],
  };
  return FakeAdapter((request) {
    final body = request.body;
    switch ((request.method, request.uri.path)) {
      case ('GET', '/v1/system/first-run'):
        return FakeResponse.json(<String, Object?>{
          'firstRun': fresh,
          'hasUsers': !fresh,
          'smtpConfigured': smtp['enabled'] == true,
          'sourcesEnabled': enabledCount,
          'apiVersion': '2.0.0',
        });
      case ('POST', '/v1/setup'):
        if (request.options.headers['Authorization'] != 'Bearer fsr_boot') {
          return FakeResponse.problem(<String, Object?>{
            'title': 'Unauthorized',
            'status': 401,
          }, status: 401);
        }
        fresh = false;
        final admin = (body! as Map<String, Object?>)['admin']! as Map<String, Object?>;
        return FakeResponse.json(<String, Object?>{
          'user': <String, Object?>{
            'id': adminId,
            'email': admin['email'],
            'fullName': admin['fullName'],
            'status': 'active',
            'roles': <String>[],
          },
          'session': issueSession
              ? <String, Object?>{
                  'token': 'fss_first_admin',
                  'tokenPrefix': 'fss_fi',
                  'userId': adminId,
                  'expiresAt': '2099-01-01T00:00:00Z',
                  'mfaRequired': false,
                  'permissions': Permissions.all.toList(),
                }
              : null,
        });
      case ('GET', '/v1/me'):
        return FakeResponse.json(meBody(mePermissions));
      case ('GET', '/v1/settings/smtp'):
        return FakeResponse.json(smtp);
      case ('PUT', '/v1/settings/smtp'):
        final sent = body! as Map<String, Object?>;
        smtp = <String, Object?>{
          for (final e in sent.entries)
            if (e.key != 'password') e.key: e.value,
          'secretsSet': <String>[
            if (sent.containsKey('password') || (smtp['secretsSet']! as List).contains('password'))
              'password',
          ],
        };
        return FakeResponse.json(smtp);
      case ('POST', '/v1/settings/smtp/test'):
        return FakeResponse.json(<String, Object?>{
          'ok': true,
          'message': '250 2.0.0 OK',
          'sentAt': '2026-10-26T12:00:00Z',
        });
      case ('POST', '/v1/sources/enable-core'):
        enabledCount += 12;
        return FakeResponse.json(<String, Object?>{
          'enabled': <String>['adsblol-world', 'usgs-earthquakes'],
          'count': 12,
          'skipped': 1,
        });
      case ('POST', '/v1/sources/enable-free'):
        enabledCount += 30;
        return FakeResponse.json(<String, Object?>{
          'enabled': <String>['gdacs'],
          'count': 30,
          'skipped': 4,
        });
      case ('GET', '/v1/settings/thresholds'):
        return FakeResponse.json(thresholds);
      case ('PUT', '/v1/settings/thresholds'):
        thresholds = body! as Map<String, Object?>;
        return FakeResponse.json(thresholds);
      case ('GET', '/v1/settings/retention'):
        return FakeResponse.json(<String, Object?>{'default': '30d', 'capHistory': false});
      case ('GET', '/v1/channels'):
        return FakeResponse.json(<Object?>[]);
      case ('GET', '/v1/egress'):
        return FakeResponse.json(<String, Object?>{'items': egress, 'nextCursor': null});
      case ('GET', '/v1/settings/egress'):
        return FakeResponse.json(<String, Object?>{'rotation': 'direct', 'defaultRoute': null});
      case ('GET', '/v1/aggregators'):
        return FakeResponse.json(<String, Object?>{'items': <Object?>[]});
    }
    return connect.handler(request);
  });
}

/// Opens the app on a backend with the bootstrap admin token held, and no
/// session; [sessions] receives the one onboarding stores.
Future<ProviderContainer> openWithAdminToken(
  WidgetTester tester,
  FakeAdapter adapter, {
  InMemorySessionStore? sessions,
  String? location,
}) async {
  tester.view.physicalSize = const Size(1500, 1600);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  final container = testContainer(
    adapter: adapter,
    connectedTo: Uri.parse('http://h:8080'),
    store: InMemoryConnectionStore(url: Uri.parse('http://h:8080'), token: 'fsr_boot'),
    sessionStore: sessions ?? InMemorySessionStore(),
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(testApp(container));
  await tester.pumpAndSettle();
  if (location != null) {
    container.read(routerProvider).go(location);
    await tester.pumpAndSettle();
  }
  return container;
}

Iterable<RecordedRequest> calls(FakeAdapter adapter, String method, String path) =>
    adapter.requests.where((r) => r.method == method && r.uri.path == path);

void main() {
  testWidgets('a backend with no users lands in the onboarding wizard', (tester) async {
    final container = await openWithAdminToken(tester, firstRunBackend());

    expect(container.read(routerProvider).state.matchedLocation, onboardingPath);
    expect(find.byKey(const Key('onboarding.stepper')), findsOneWidget);
    expect(find.text('Create the first admin'), findsOneWidget);
  });

  testWidgets('a backend that already has users keeps the usual landing', (tester) async {
    final container = await openWithAdminToken(tester, firstRunBackend(firstRun: false));

    expect(container.read(routerProvider).state.matchedLocation, isNot(onboardingPath));
  });

  testWidgets('runSetup creates the admin, then the wizard signs in as them', (tester) async {
    final sessions = InMemorySessionStore();
    final adapter = firstRunBackend();
    await openWithAdminToken(tester, adapter, sessions: sessions);

    await tester.enterText(find.byKey(const Key('onboarding.email')), 'admin@example.com');
    await tester.enterText(find.byKey(const Key('onboarding.name')), 'Ada Admin');
    await tester.enterText(find.byKey(const Key('onboarding.password')), 'correct horse');
    await tester.enterText(find.byKey(const Key('onboarding.again')), 'correct horse');
    await tapVisible(tester, find.byKey(const Key('onboarding.createAdmin')));

    final setup = calls(adapter, 'POST', '/v1/setup').single;
    expect(setup.options.headers['Authorization'], 'Bearer fsr_boot');
    expect(setup.body, <String, Object?>{
      'admin': <String, Object?>{
        'email': 'admin@example.com',
        'fullName': 'Ada Admin',
        'password': 'correct horse',
      },
    });
    expect((await sessions.read())!.token, 'fss_first_admin');
    expect(find.text('Set up email'), findsOneWidget);
    expect(find.text('correct horse'), findsNothing);
  });

  testWidgets('without a session in the answer, the wizard signs in with login', (tester) async {
    final sessions = InMemorySessionStore();
    final base = firstRunBackend(issueSession: false);
    final adapter = FakeAdapter((request) {
      if (request.uri.path == '/v1/auth/login') {
        return FakeResponse.json(<String, Object?>{
          'token': 'fss_logged_in',
          'userId': adminId,
          'expiresAt': '2099-01-01T00:00:00Z',
          'mfaRequired': false,
          'permissions': Permissions.all.toList(),
        });
      }
      return base.handler(request);
    });
    await openWithAdminToken(tester, adapter, sessions: sessions);

    await tester.enterText(find.byKey(const Key('onboarding.email')), 'admin@example.com');
    await tester.enterText(find.byKey(const Key('onboarding.name')), 'Ada Admin');
    await tester.enterText(find.byKey(const Key('onboarding.password')), 'pw');
    await tester.enterText(find.byKey(const Key('onboarding.again')), 'pw');
    await tapVisible(tester, find.byKey(const Key('onboarding.createAdmin')));

    expect(calls(adapter, 'POST', '/v1/auth/login'), hasLength(1));
    expect((await sessions.read())!.token, 'fss_logged_in');
  });

  testWidgets('the SMTP step needs a test send, or a skip past a clear warning', (tester) async {
    final adapter = firstRunBackend(firstRun: false);
    await openWithAdminToken(tester, adapter, location: onboardingPath);

    expect(find.text('Set up email'), findsOneWidget);
    final next = find.byKey(const Key('onboarding.smtpNext'));
    expect(tester.widget<FilledButton>(next).onPressed, isNull);

    await tester.enterText(find.byKey(const Key('smtp.testTo')), 'ops@example.com');
    await tapVisible(tester, find.byKey(const Key('smtp.test')));
    expect(calls(adapter, 'POST', '/v1/settings/smtp/test').single.body, <String, Object?>{
      'to': 'ops@example.com',
    });
    expect(tester.widget<FilledButton>(next).onPressed, isNotNull);

    await tapVisible(tester, find.byKey(const Key('onboarding.smtpSkip')));
    expect(find.textContaining('handed to its user by hand'), findsOneWidget);
    await tapVisible(tester, find.byKey(const Key('onboarding.confirmSmtpSkip')));
    expect(find.text('Turn on starter sources'), findsOneWidget);
  });

  testWidgets('enableCoreSources and updateResourceThresholds fire from the wizard', (
    tester,
  ) async {
    final adapter = firstRunBackend(firstRun: false, smtpConfigured: true);
    await openWithAdminToken(tester, adapter, location: onboardingPath);

    // Resumes at the first step not done: email is set up, no sources yet.
    expect(find.text('Turn on starter sources'), findsOneWidget);
    await tapVisible(tester, find.byKey(const Key('onboarding.free')));
    await tapVisible(tester, find.byKey(const Key('onboarding.enableSources')));
    expect(calls(adapter, 'POST', '/v1/sources/enable-core'), hasLength(1));
    expect(calls(adapter, 'POST', '/v1/sources/enable-free'), hasLength(1));
    expect(find.text('Core sources: 12 turned on'), findsOneWidget);

    await tapVisible(tester, find.byKey(const Key('onboarding.sourcesNext')));
    expect(find.text('Set disk safety'), findsOneWidget);
    await tester.enterText(find.byKey(const Key('thresholds.disk.warn.gb')), '25');
    await tapVisible(tester, find.byKey(const Key('thresholds.save')));
    final put = calls(adapter, 'PUT', '/v1/settings/thresholds').single.body! as Map;
    expect((put['disk']! as Map)['warnFreeBytes'], 25 * 1024 * 1024 * 1024);

    await tapVisible(tester, find.byKey(const Key('onboarding.thresholdsNext')));
    expect(find.byKey(const Key('onboarding.summary')), findsOneWidget);
    await tapVisible(tester, find.byKey(const Key('onboarding.finish')));
    expect(find.byKey(const Key('onboarding.summary')), findsNothing);
  });

  testWidgets('the SMTP screen reads, writes and tests, and keeps the password server-side', (
    tester,
  ) async {
    final adapter = firstRunBackend(firstRun: false, smtpConfigured: true);
    await openWithAdminToken(tester, adapter, location: systemSmtpPath);

    expect(find.byKey(const Key('system.tab.smtp')), findsOneWidget);
    expect(find.text('Password: set'), findsOneWidget);
    final password = tester.widget<TextField>(find.byKey(const Key('smtp.password')));
    expect(password.controller!.text, isEmpty);
    expect(password.obscureText, isTrue);
    // The contract's default from-address fills an unset one.
    expect(find.text('info@remoteidsystems.com'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('smtp.host')), 'mail.example.com');
    await tapVisible(tester, find.byKey(const Key('smtp.save')));
    final first = calls(adapter, 'PUT', '/v1/settings/smtp').single.body! as Map;
    expect(first['host'], 'mail.example.com');
    expect(first['fromAddress'], 'info@remoteidsystems.com');
    expect(first.containsKey('password'), isFalse);

    await tester.enterText(find.byKey(const Key('smtp.password')), 'app-password');
    await tapVisible(tester, find.byKey(const Key('smtp.save')));
    final second = calls(adapter, 'PUT', '/v1/settings/smtp').last.body! as Map;
    expect(second['password'], 'app-password');
    expect(find.text('app-password'), findsNothing);

    await tester.enterText(find.byKey(const Key('smtp.testTo')), 'ops@example.com');
    await tapVisible(tester, find.byKey(const Key('smtp.test')));
    expect(find.byKey(const Key('smtp.testResult')), findsOneWidget);
    expect(find.text('Test email sent'), findsOneWidget);
  });

  testWidgets('a section the user may not see renders the named permission panel', (
    tester,
  ) async {
    await openSignedIn(
      tester,
      firstRunBackend(firstRun: false, mePermissions: const <String>{Permissions.dataRead}),
      <String>{Permissions.dataRead},
      storagePath,
    );

    expect(find.byKey(const Key('section.denied')), findsOneWidget);
    expect(find.text('Storage is not available to your account'), findsOneWidget);
    expect(find.text('This needs the storage.manage permission.'), findsOneWidget);
  });

  testWidgets('an empty list renders its empty state with the action that fills it', (
    tester,
  ) async {
    await openSignedIn(
      tester,
      firstRunBackend(firstRun: false, mePermissions: const <String>{Permissions.networkManage}),
      <String>{Permissions.networkManage},
      systemNetworkPath,
    );

    expect(
      find.text('No routes yet. Add Route creates one; until then every pull goes direct.'),
      findsOneWidget,
    );
    expect(find.byKey(const Key('egress.add')), findsOneWidget);
  });
}
