import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/permissions.dart';

import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../scoping/per_user_scoping_test.dart' show meBody;
import '../users/users_screens_test.dart' show anaId, userBody, viewerRoleId;
import 'profile_screen_test.dart' show openProfile, profileBackend;

const String currentSession = '11111111-1111-4111-8111-111111111111';

const String laptopSession = '22222222-2222-4222-8222-222222222222';

const String scriptToken = '33333333-3333-4333-8333-333333333333';

const List<String> recovery = <String>['abcde-12345', 'fghij-67890'];

/// The profile backend plus account security: MFA starts [mfaEnabled];
/// disable answers [disableRefusal] when given. Writes are stored.
FakeAdapter securityBackend({
  bool mfaEnabled = false,
  Set<String> permissions = const <String>{
    Permissions.dataRead,
    Permissions.selfPreferences,
    Permissions.selfWorkspaces,
  },
  Map<String, Object?>? disableRefusal,
}) {
  final profile = profileBackend();
  var mfa = mfaEnabled;
  var sessions = <Map<String, Object?>>[
    <String, Object?>{
      'id': currentSession,
      'tokenPrefix': 'fss_cu',
      'createdAt': '2026-10-26T09:00:00Z',
      'lastSeenAt': '2026-10-26T12:00:00Z',
      'expiresAt': '2026-11-02T09:00:00Z',
      'idleExpiresAt': '2026-10-26T14:00:00Z',
      'userAgent': 'ForeSignal Admin (Linux)',
      'ipAddress': '192.168.1.10',
      'current': true,
    },
    <String, Object?>{
      'id': laptopSession,
      'tokenPrefix': 'fss_la',
      'createdAt': '2026-10-20T09:00:00Z',
      'lastSeenAt': '2026-10-25T18:00:00Z',
      'expiresAt': '2026-10-27T09:00:00Z',
      'userAgent': 'ForeSignal Admin (macOS)',
      'ipAddress': '192.168.1.22',
      'current': false,
    },
  ];
  final tokens = <Map<String, Object?>>[
    <String, Object?>{
      'id': scriptToken,
      'name': 'Nightly export',
      'scope': 'read',
      'tokenPrefix': 'fsr_Nx1',
      'createdAt': '2026-10-01T00:00:00Z',
      'lastUsedAt': '2026-10-26T02:00:00Z',
      'restrictions': <String, Object?>{
        'sources': <String>['usgs-earthquakes'],
      },
    },
  ];
  return FakeAdapter((request) {
    final body = request.body;
    final path = request.uri.path;
    switch ((request.method, path)) {
      case ('GET', '/v1/me'):
        return FakeResponse.json(<String, Object?>{
          ...meBody(permissions),
          'user': <String, Object?>{
            ...userBody(anaId, 'ana@example.com', 'Ana Analyst', roles: <String>[viewerRoleId]),
            'mfaEnabled': mfa,
          },
        });
      case ('POST', '/v1/me/mfa/enroll'):
        return FakeResponse.json(<String, Object?>{
          'secret': 'JBSWY3DPEHPK3PXP',
          'otpauthUri':
              'otpauth://totp/ForeSignal:ana@example.com?secret=JBSWY3DPEHPK3PXP&issuer=ForeSignal',
          'qrSvg':
              '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10">'
              '<rect width="10" height="10" fill="#000"/></svg>',
        });
      case ('POST', '/v1/me/mfa/verify'):
        mfa = true;
        return FakeResponse.json(<String, Object?>{
          'enabled': true,
          'enrolledAt': '2026-10-26T12:10:00Z',
          'required': false,
          'recoveryCodes': <String, Object?>{
            'codes': recovery,
            'generatedAt': '2026-10-26T12:10:00Z',
          },
        });
      case ('GET', '/v1/me/mfa/recovery-codes'):
        return FakeResponse.json(<String, Object?>{
          'codes': <String>['zzzzz-99999'],
          'generatedAt': '2026-10-26T12:20:00Z',
        });
      case ('POST', '/v1/me/mfa/disable'):
        if (disableRefusal != null) {
          return FakeResponse.problem(disableRefusal, status: disableRefusal['status']! as int);
        }
        mfa = false;
        return FakeResponse.json(<String, Object?>{'enabled': false, 'required': false});
      case ('GET', '/v1/auth/sessions'):
        return FakeResponse.json(<String, Object?>{'items': sessions, 'nextCursor': null});
      case ('DELETE', '/v1/auth/sessions'):
        sessions = sessions.where((s) => s['current'] == true).toList();
        return FakeResponse.empty();
      case ('DELETE', '/v1/auth/sessions/$currentSession'):
        sessions = sessions.where((s) => s['id'] != currentSession).toList();
        return FakeResponse.empty();
      case ('GET', '/v1/me/tokens'):
        return FakeResponse.json(tokens);
      case ('POST', '/v1/me/tokens'):
        final sent = body! as Map<String, Object?>;
        final created = <String, Object?>{
          ...sent,
          'id': '44444444-4444-4444-8444-444444444444',
          'tokenPrefix': 'fsr_Ne1',
          'createdAt': '2026-10-26T12:30:00Z',
        };
        tokens.add(created);
        return FakeResponse.json(<String, Object?>{
          ...created,
          'token': 'fsr_Ne1_the-whole-secret',
        }, status: 201);
      case ('DELETE', '/v1/me/tokens/$scriptToken'):
        // Revoked tokens stay listed, with revokedAt (R2-025).
        final i = tokens.indexWhere((t) => t['id'] == scriptToken);
        tokens[i] = <String, Object?>{...tokens[i], 'revokedAt': '2026-10-26T12:40:00Z'};
        return FakeResponse.empty();
    }
    return profile.handler(request);
  });
}

Iterable<RecordedRequest> calls(FakeAdapter adapter, String method, String path) =>
    adapter.requests.where((r) => r.method == method && r.uri.path == path);

void main() {
  testWidgets('enrolling shows the QR and key, and verifyMfa turns MFA on', (tester) async {
    final adapter = securityBackend();
    await openProfile(tester, adapter);

    expect(
      find.descendant(of: find.byKey(const Key('mfa.state')), matching: find.text('Off')),
      findsOneWidget,
    );
    await tapVisible(tester, find.byKey(const Key('mfa.enroll')));
    expect(calls(adapter, 'POST', '/v1/me/mfa/enroll'), hasLength(1));
    expect(find.byKey(const Key('mfa.qr')), findsOneWidget);
    expect(find.text('JBSWY3DPEHPK3PXP'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('mfa.code')), '123 456');
    await tapVisible(tester, find.byKey(const Key('mfa.verify')));

    expect(calls(adapter, 'POST', '/v1/me/mfa/verify').single.body, <String, Object?>{
      'code': '123456',
    });
    expect(
      find.descendant(of: find.byKey(const Key('mfa.state')), matching: find.text('On')),
      findsOneWidget,
    );
  });

  testWidgets('the first recovery codes are shown once through the one-time idiom', (
    tester,
  ) async {
    final adapter = securityBackend();
    await openProfile(tester, adapter);

    await tapVisible(tester, find.byKey(const Key('mfa.enroll')));
    await tester.enterText(find.byKey(const Key('mfa.code')), '123456');
    await tapVisible(tester, find.byKey(const Key('mfa.verify')));

    expect(find.byKey(const Key('mfa.recoveryCodes')), findsOneWidget);
    // Masked until revealed; the verify answer carried them, so no extra read.
    expect(find.textContaining('abcde-12345'), findsNothing);
    expect(calls(adapter, 'GET', '/v1/me/mfa/recovery-codes'), isEmpty);
  });

  testWidgets('new recovery codes are made only after a confirm, and shown once', (tester) async {
    final adapter = securityBackend(mfaEnabled: true);
    await openProfile(tester, adapter);

    await tapVisible(tester, find.byKey(const Key('mfa.regenerate')));
    expect(calls(adapter, 'GET', '/v1/me/mfa/recovery-codes'), isEmpty);
    await tapVisible(tester, find.byKey(const Key('mfa.confirmRegenerate')));
    expect(calls(adapter, 'GET', '/v1/me/mfa/recovery-codes'), hasLength(1));
    expect(find.byKey(const Key('mfa.recoveryCodes')), findsOneWidget);
  });

  testWidgets('a role that requires MFA surfaces the server\'s refusal to disable it', (
    tester,
  ) async {
    final adapter = securityBackend(
      mfaEnabled: true,
      disableRefusal: <String, Object?>{
        'title': 'MFA is required for your role',
        'status': 409,
        'code': 'MFA_REQUIRED',
      },
    );
    await openProfile(tester, adapter);

    await tapVisible(tester, find.byKey(const Key('mfa.disable')));
    await tester.enterText(find.byKey(const Key('mfa.disableCode')), '654321');
    await tapVisible(tester, find.byKey(const Key('mfa.confirmDisable')));

    expect(calls(adapter, 'POST', '/v1/me/mfa/disable').single.body, <String, Object?>{
      'code': '654321',
    });
    expect(find.byKey(const Key('mfa.required')), findsOneWidget);
    expect(
      find.descendant(of: find.byKey(const Key('mfa.state')), matching: find.text('On')),
      findsOneWidget,
    );
  });

  testWidgets('sessions mark the current one, and sign-out-others fires after a confirm', (
    tester,
  ) async {
    final adapter = securityBackend();
    await openProfile(tester, adapter);

    expect(find.byKey(const Key('sessions.current.$currentSession')), findsOneWidget);
    expect(find.byKey(const Key('sessions.current.$laptopSession')), findsNothing);
    expect(find.text('192.168.1.22'), findsOneWidget);

    await tapVisible(tester, find.byKey(const Key('sessions.revokeOthers')));
    expect(calls(adapter, 'DELETE', '/v1/auth/sessions'), isEmpty);
    await tapVisible(tester, find.byKey(const Key('sessions.confirm')));
    expect(calls(adapter, 'DELETE', '/v1/auth/sessions'), hasLength(1));
    expect(find.text('192.168.1.22'), findsNothing);
  });

  testWidgets('revoking the current session signs out here', (tester) async {
    final adapter = securityBackend();
    await openProfile(tester, adapter);

    await tapVisible(tester, find.byKey(const Key('sessions.revoke.$currentSession')));
    await tapVisible(tester, find.byKey(const Key('sessions.confirm')));

    expect(calls(adapter, 'DELETE', '/v1/auth/sessions/$currentSession'), hasLength(1));
    expect(find.byKey(const Key('login.email')), findsOneWidget);
  });

  testWidgets('the token card needs no permission beyond a session (R2-025)', (tester) async {
    await openProfile(
      tester,
      securityBackend(permissions: const <String>{Permissions.dataRead}),
    );
    expect(find.byKey(const Key('myTokens')), findsOneWidget);
    expect(find.text('Nightly export'), findsOneWidget);
  });

  testWidgets('createMyToken shows the new token once', (tester) async {
    final adapter = securityBackend();
    await openProfile(tester, adapter);

    await tapVisible(tester, find.byKey(const Key('myTokens.add')));
    await tester.enterText(find.byKey(const Key('myToken.name')), 'Grafana');
    await tapVisible(tester, find.text('Create Token'));

    final post = calls(adapter, 'POST', '/v1/me/tokens').single.body! as Map;
    expect(post['name'], 'Grafana');
    expect(post['scope'], 'read');
    expect(post.containsKey('principalId'), isFalse);
    expect(find.byKey(const Key('myTokens.secret')), findsOneWidget);
    // Masked until revealed, and gone once dismissed.
    expect(find.text('fsr_Ne1_the-whole-secret'), findsNothing);
    expect(find.text('Grafana'), findsOneWidget);
  });

  testWidgets('revokeMyToken fires after a confirm and the list is re-read', (tester) async {
    final adapter = securityBackend();
    await openProfile(tester, adapter);

    expect(find.text('Nightly export'), findsOneWidget);
    await tapVisible(tester, find.byKey(const Key('myTokens.revoke.$scriptToken')));
    expect(calls(adapter, 'DELETE', '/v1/me/tokens/$scriptToken'), isEmpty);
    await tapVisible(tester, find.byKey(const Key('myTokens.confirmRevoke')));

    expect(calls(adapter, 'DELETE', '/v1/me/tokens/$scriptToken'), hasLength(1));
    expect(find.text('Revoked'), findsOneWidget);
    expect(find.byKey(const Key('myTokens.revoke.$scriptToken')), findsNothing);
  });
}
