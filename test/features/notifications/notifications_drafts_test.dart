import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/sse.dart';
import 'package:foresignal_admin/features/notifications/notifications_drafts.dart';
import 'package:foresignal_admin/features/notifications/this_device.dart';

const NotificationFilter _unread = (unreadOnly: true, event: null, minSeverity: null);
const NotificationFilter _all = (unreadOnly: false, event: null, minSeverity: null);

Map<String, Object?> _n(int id, {bool read = false, String event = 'alert', String severity = 'warning'}) =>
    <String, Object?>{'id': id, 'read': read, 'event': event, 'severity': severity};

const String _validSubscription =
    '{"endpoint": "https://updates.push.services.mozilla.com/wpush/v2/x", "keys": {"p256dh": "BNc", "auth": "tBH"}}';

void main() {
  group('the inbox filter', () {
    test('unread only drops read notifications', () {
      expect(notificationMatches(_n(1), _unread), isTrue);
      expect(notificationMatches(_n(1, read: true), _unread), isFalse);
      expect(notificationMatches(_n(1, read: true), _all), isTrue);
    });

    test('an event and a lowest severity narrow it', () {
      const filter = (unreadOnly: false, event: 'alert', minSeverity: 'warning');
      expect(notificationMatches(_n(1, severity: 'critical'), filter), isTrue);
      expect(notificationMatches(_n(1, severity: 'info'), filter), isFalse);
      expect(notificationMatches(_n(1, event: 'system'), filter), isFalse);
    });
  });

  group('upsertNotification', () {
    test('a new notification joins newest first', () {
      final items = upsertNotification(<Map<String, Object?>>[_n(3), _n(1)], _n(4), _all);
      expect(items.map((n) => n['id']), <int>[4, 3, 1]);
    });

    test('a known one is replaced, and leaves when it no longer passes', () {
      final replaced = upsertNotification(<Map<String, Object?>>[_n(3), _n(1)], _n(3, severity: 'critical'), _all);
      expect(replaced.first['severity'], 'critical');
      final gone = upsertNotification(<Map<String, Object?>>[_n(3), _n(1)], _n(3, read: true), _unread);
      expect(gone.map((n) => n['id']), <int>[1]);
    });
  });

  group('markedRead', () {
    test('up to an id marks the cursor and drops them from unread', () {
      final items = markedRead(<Map<String, Object?>>[_n(5), _n(4), _n(2)], _unread, upToId: 4);
      expect(items.map((n) => n['id']), <int>[5]);
    });

    test('sparse ids are marked read and kept under All', () {
      final items = markedRead(<Map<String, Object?>>[_n(5), _n(4)], _all, ids: <int>{4});
      expect(items.map((n) => n['read']), <bool>[false, true]);
    });
  });

  group('stream events', () {
    test('a notification event yields its notification', () {
      const e = SseEvent(event: 'notification', data: '{"id": 9, "title": "x"}');
      expect(notificationOfEvent(e)?['id'], 9);
      expect(badgeOfEvent(e), isNull);
    });

    test('a badge event yields its badge; anything else is ignored', () {
      expect(badgeOfEvent(const SseEvent(event: 'badge', data: '{"unread": 3}'))?['unread'], 3);
      expect(badgeOfEvent(const SseEvent(event: 'badge', data: 'not json')), isNull);
      expect(notificationOfEvent(const SseEvent(event: 'heartbeat', data: '{}')), isNull);
    });
  });

  group('actions', () {
    test('the token is the segment after actions', () {
      expect(actionToken('https://fs.example/v1/actions/eac_abc'), 'eac_abc');
      expect(actionToken('https://fs.example/base/v1/actions/eac_abc?x=1'), 'eac_abc');
      expect(actionToken('https://fs.example/v1/alerts/4'), isNull);
      expect(actionToken(null), isNull);
    });

    test('an action reads as what it does', () {
      expect(actionText(<String, Object?>{'action': 'ack'}), 'Acknowledge the alert');
      expect(
        actionText(<String, Object?>{
          'action': 'snooze',
          'params': <String, Object?>{'duration': '1h'},
        }),
        'Snooze the alert for 1h',
      );
      expect(actionText(<String, Object?>{'action': 'feedback:noise'}), 'Mark the alert as noise');
    });
  });

  group('PushFiltersDraft', () {
    test('reads stored filters and writes them back with empty rules as null', () {
      final d = PushFiltersDraft.of(<String, Object?>{
        'events': <String>['system', 'alert'],
        'minSeverity': 'warning',
        'tags': <String>['ops'],
        'ruleIds': null,
      });
      expect(d.toJson(), <String, Object?>{
        'events': <String>['alert', 'system'],
        'minSeverity': 'warning',
        'tags': <String>['ops'],
        'ruleIds': null,
      });
    });

    test('needs an event, and rule ids must be UUIDs', () {
      final d = PushFiltersDraft()
        ..events.clear()
        ..ruleIds = 'not-a-uuid';
      expect(d.validate().keys, containsAll(<String>['events', 'ruleIds']));
    });
  });

  group('PushProviderDraft', () {
    test('a new APNs provider needs ids of 10 and its key', () {
      final d = PushProviderDraft()
        ..id = 'apns-main'
        ..appIds = 'com.example.app'
        ..teamId = 'SHORT';
      expect(d.validate(creating: true).keys, containsAll(<String>['teamId', 'keyId', 'p8']));
    });

    test('an existing provider keeps its key unless one is typed', () {
      final d = PushProviderDraft.of(<String, Object?>{
        'id': 'apns-main',
        'type': 'apns',
        'appIds': <String>['com.example.app'],
        'config': <String, Object?>{'teamId': 'A1B2C3D4E5', 'keyId': 'K9L8M7N6P5', 'keyEnvironment': 'both'},
        'secretFields': <String>['p8'],
        'enabled': true,
      });
      expect(d.validate(creating: false), isEmpty);
      expect(d.toJson().containsKey('secrets'), isFalse);
      d.p8 = '-----BEGIN PRIVATE KEY-----\nabc\n-----END PRIVATE KEY-----';
      expect((d.toJson()['secrets']! as Map)['p8'], startsWith('-----BEGIN PRIVATE KEY-----'));
    });

    test('FCM takes the project and client email from the service account', () {
      final d = PushProviderDraft()
        ..id = 'fcm-main'
        ..type = 'fcm'
        ..appIds = 'com.example.app'
        ..serviceAccountJson =
            '{"project_id": "p1", "client_email": "push@p1.example", "private_key": "-----BEGIN PRIVATE KEY-----"}';
      expect(d.validate(creating: true), isEmpty);
      final body = d.toJson();
      expect(body['config'], <String, Object?>{
        'projectId': 'p1',
        'clientEmail': 'push@p1.example',
        'tokenUri': defaultFcmTokenUri,
      });
      expect((body['secrets']! as Map).keys, <String>['serviceAccountJson']);
    });

    test('a service account without a private key is refused', () {
      final d = PushProviderDraft()
        ..id = 'fcm-main'
        ..type = 'fcm'
        ..appIds = 'com.example.app'
        ..serviceAccountJson = '{"project_id": "p1", "client_email": "a@b"}';
      expect(d.validate(creating: true)['serviceAccountJson'], contains('private_key'));
    });
  });

  group('PushDeviceDraft', () {
    test('an APNs token is hex and needs an environment', () {
      final d = PushDeviceDraft(transport: 'apns', platform: 'ios', appId: 'com.example.app', token: 'xyz');
      expect(d.validate().keys, containsAll(<String>['token', 'environment']));
      d
        ..token = 'a' * 64
        ..environment = 'sandbox';
      expect(d.validate(), isEmpty);
      expect(d.tokenSuffix, 'aaaaaa');
    });

    test('the body sends no environment for FCM and no empty name', () {
      final d = PushDeviceDraft(appId: 'com.example.app', environment: 'sandbox', token: 'fcm-token-123456');
      final body = d.toJson();
      expect(body['environment'], isNull);
      expect(body['name'], isNull);
      expect(body['token'], 'fcm-token-123456');
    });

    test('a registered device is found by transport, app and token suffix', () {
      final d = PushDeviceDraft(appId: 'com.example.app', token: 'fcm-token-123456');
      final devices = <Map<String, Object?>>[
        <String, Object?>{'id': 'a', 'transport': 'fcm', 'appId': 'com.example.app', 'tokenSuffix': '999999'},
        <String, Object?>{'id': 'b', 'transport': 'fcm', 'appId': 'com.example.app', 'tokenSuffix': '123456'},
      ];
      expect(deviceOfToken(devices, d)?['id'], 'b');
      expect(deviceOfToken(devices.sublist(0, 1), d), isNull);
    });
  });

  test('a device update writes its editable fields', () {
    final d = PushDeviceUpdateDraft.of(<String, Object?>{
      'name': 'Duty iPhone',
      'contentLevel': 'short',
      'lang': null,
      'filters': <String, Object?>{
        'events': <String>['alert'],
      },
    })..lang = 'de';
    expect(d.toJson(), <String, Object?>{
      'name': 'Duty iPhone',
      'contentLevel': 'short',
      'lang': 'de',
      'filters': <String, Object?>{
        'events': <String>['alert'],
        'tags': <String>[],
        'ruleIds': null,
      },
    });
  });

  group('PushSubscriptionDraft', () {
    test('needs the browser subscription with its keys', () {
      final d = PushSubscriptionDraft()..subscriptionText = '{"endpoint": "https://x.example/1"}';
      expect(d.validate()['subscription'], contains('keys'));
      d.subscriptionText = '{"keys": {}}';
      expect(d.validate()['subscription'], contains('endpoint'));
    });

    test('sends the endpoint and keys alone', () {
      final d = PushSubscriptionDraft()
        ..name = 'Night desk'
        ..subscriptionText = _validSubscription.replaceFirst('}}', '}, "expirationTime": null}');
      expect(d.validate(), isEmpty);
      final body = d.toJson();
      expect(body['subscription'], <String, Object?>{
        'endpoint': 'https://updates.push.services.mozilla.com/wpush/v2/x',
        'keys': <String, Object?>{'p256dh': 'BNc', 'auth': 'tBH'},
      });
      expect(body['name'], 'Night desk');
      expect(body['payloadFormat'], 'foresignal');
    });
  });

  test('a test result reads as its outcome', () {
    expect(
      pushTestText(<String, Object?>{'success': true, 'credentialMinted': true, 'sent': true, 'status': 200}),
      'Succeeded: credential obtained, sent, HTTP 200',
    );
    expect(
      pushTestText(<String, Object?>{'success': false, 'credentialMinted': false, 'error': 'bad key'}),
      'Failed: no credential, bad key',
    );
  });

  test('platforms read as their makers write them', () {
    expect(platformText('ios'), 'iOS');
    expect(platformText('ipados'), 'iPadOS');
    expect(platformText('macos'), 'macOS');
    expect(platformText('android'), 'Android');
  });
}
