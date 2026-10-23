// The preview's fake answers for the notification inbox (with a live
// `text/event-stream`), notification actions, presence, native push
// providers and devices, and Web Push. Bodies follow their schemas in
// openapi/OpenAPI.json (NotificationPage, NotificationDetail,
// NotificationBadge, ActionResult, ClientPresence, PushProvider, PushDevice,
// PushTestResult, PushSubscription). Read state is kept for one device, as
// the preview runs on one.
import 'dart:async';
import 'dart:convert';

import 'preview_alerts.dart' show AlertsReply, PreviewText;

Map<String, Object?> _problem(int status, String title, String code, [String? detail]) =>
    <String, Object?>{'title': title, 'status': status, 'code': code, 'detail': ?detail};

String _iso(DateTime t) => t.toUtc().toIso8601String().replaceFirst(RegExp(r'\.\d+Z$'), 'Z');

String _ago(int minutes) => _iso(DateTime.now().subtract(Duration(minutes: minutes)));

/// The preview's notification and push state.
class PreviewNotifications {
  /// Creates the state, seeded relative to now.
  PreviewNotifications() {
    var id = 9001;
    for (final n in <(String, String?, String, String, String?, int, int?, String?)>[
      ('system', 'system.source_failing', 'warning', 'Source opensky is failing', 'The last 4 pulls timed out.', 300, null, null),
      ('alert', 'alert.fired', 'critical', 'M 5.4 – Kermadec Islands region', 'Depth 10 km. **M5+ earthquakes**.', 75, 4101, 'acknowledged'),
      ('briefing', 'briefing.run', 'info', 'Morning briefing is ready', 'Three situations changed overnight.', 60, null, null),
      ('alert', 'alert.fired', 'warning', '14 aircraft reported degraded GNSS near Kaliningrad', 'Count rule **GNSS jamming burst** crossed 10 in 1 h.', 41, 4102, 'acknowledged'),
      ('alert', 'alert.fired', 'info', 'Flights over the Black Sea 3.4× the usual', 'Anomaly against the Thursday 16:00 baseline.', 33, 4104, 'firing'),
      ('alert', 'alert.fired', 'warning', 'MV Kerch Strait entered the Odesa approach (12 km)', 'MMSI 273456780 is on **Vessels of interest**.', 26, 4105, 'firing'),
      ('alert', 'alert.fired', 'critical', 'M 6.1 – 42 km SW of Ovalle, Chile', 'Depth 48 km. **M5+ earthquakes**.', 11, 4107, 'firing'),
    ]) {
      notifications[id] = <String, Object?>{
        'id': id,
        'event': n.$1,
        'subtype': n.$2,
        'severity': n.$3,
        'title': n.$4,
        'body': n.$5,
        'alertId': n.$7,
        'ruleId': n.$7 == null ? null : '7b0e7f0c-3c55-4a43-9f53-0d9b1f0b6a01',
        'createdAt': _ago(n.$6),
        'alertState': n.$8,
      };
      id++;
    }
    readUpTo = 9002;
  }

  /// Notifications by id.
  final Map<int, Map<String, Object?>> notifications = <int, Map<String, Object?>>{};

  /// This device's read cursor.
  int readUpTo = 0;

  /// Sparse reads above the cursor.
  final Set<int> readIds = <int>{};

  /// Action tokens minted and not yet used, with what they do.
  final Map<String, ({String action, int alertId, String? duration})> tokens =
      <String, ({String action, int alertId, String? duration})>{};

  int _token = 0;
  int _nextId = 9100;
  int _streams = 0;
  final List<StreamController<List<int>>> _open = <StreamController<List<int>>>[];

  /// The VAPID public key.
  String vapidKey = 'BEl62iUYgUivxIkv69yViEuiBIa-Ib9-SkvMeAtA3LFgDzkrxZJjSgSnfckjBJuBkr3qBUYIHBQFLXYp5Nksh8U';

  /// Native push providers by id.
  final Map<String, Map<String, Object?>> providers = <String, Map<String, Object?>>{
    'apns-main': <String, Object?>{
      'id': 'apns-main',
      'type': 'apns',
      'appIds': <String>['com.foresignal.foresignalAdmin'],
      'config': <String, Object?>{'teamId': 'A1B2C3D4E5', 'keyId': 'K9L8M7N6P5', 'keyEnvironment': 'both', 'timeSensitive': false},
      'secretFields': <String>['p8'],
      'enabled': true,
      'lastTestAt': _ago(1440),
      'lastError': null,
      'updatedAt': '2026-10-01T09:00:00Z',
    },
  };

  /// Registered devices by id.
  final Map<String, Map<String, Object?>> devices = <String, Map<String, Object?>>{
    '3e1f9a72-5c4b-4d8e-9f01-2a3b4c5d6e01': <String, Object?>{
      'id': '3e1f9a72-5c4b-4d8e-9f01-2a3b4c5d6e01',
      'transport': 'apns',
      'platform': 'ios',
      'appId': 'com.foresignal.foresignalAdmin',
      'environment': 'production',
      'tokenSuffix': 'c0ffee',
      'tokenId': '6b8f2e10-4d3c-4a1b-9e7f-0a1b2c3d4e5f',
      'name': 'Duty iPhone',
      'deviceName': 'iPhone 16',
      'appVersion': '1.0.0',
      'filters': <String, Object?>{'events': <String>['alert', 'system'], 'ruleIds': null, 'minSeverity': 'warning', 'tags': <String>[]},
      'contentLevel': 'short',
      'lang': null,
      'status': 'active',
      'createdAt': '2026-10-02T08:00:00Z',
      'lastSuccessAt': _ago(11),
      'lastFailureAt': null,
      'failureCount': 0,
      'lastStatus': 200,
    },
  };

  /// Web Push subscriptions by id.
  final Map<String, Map<String, Object?>> subscriptions = <String, Map<String, Object?>>{
    '8c2d4e6f-1a3b-4c5d-8e9f-0a1b2c3d4e01': <String, Object?>{
      'id': '8c2d4e6f-1a3b-4c5d-8e9f-0a1b2c3d4e01',
      'name': 'Ops wallboard',
      'endpointHost': 'fcm.googleapis.com',
      'filters': <String, Object?>{'events': <String>['alert'], 'ruleIds': null, 'minSeverity': 'critical', 'tags': <String>[]},
      'createdAt': '2026-09-20T10:00:00Z',
      'lastSuccessAt': _ago(75),
      'status': 'active',
      'transportLabel': 'browser',
      'payloadFormat': 'foresignal',
      'lang': null,
      'failureCount': 0,
      'lastFailureAt': null,
      'lastStatus': 201,
    },
  };

  /// The verify codes of pending subscriptions.
  final Map<String, String> verifyCodes = <String, String>{};

  bool _read(int id) => id <= readUpTo || readIds.contains(id);

  /// [n] with this device's read state.
  Map<String, Object?> view(Map<String, Object?> n) => <String, Object?>{...n, 'read': _read(n['id']! as int)};

  /// This device's badge: unread system notifications and fired alerts that
  /// are still firing, as `getNotificationBadge` counts them.
  Map<String, Object?> badge() {
    final unread = notifications.values.where(
      (n) =>
          !_read(n['id']! as int) &&
          (n['event'] == 'system' || (n['subtype'] == 'alert.fired' && n['alertState'] == 'firing')),
    );
    return <String, Object?>{
      'unread': unread.length,
      'unreadCritical': unread.where((n) => n['severity'] == 'critical').length,
      'latestId': notifications.keys.isEmpty ? null : notifications.keys.reduce((a, b) => a > b ? a : b),
    };
  }

  void _publish(String event, Map<String, Object?> data, {Object? id}) {
    final text = '${id == null ? '' : 'id: $id\n'}event: $event\ndata: ${jsonEncode(data)}\n\n';
    for (final c in _open) {
      c.add(utf8.encode(text));
    }
  }

  /// Adds a new notification and publishes it.
  Map<String, Object?> push(String severity, String title, String body, {int? alertId}) {
    final id = _nextId++;
    final n = <String, Object?>{
      'id': id,
      'event': alertId == null ? 'system' : 'alert',
      'subtype': alertId == null ? 'system.delivery_failed' : 'alert.fired',
      'severity': severity,
      'title': title,
      'body': body,
      'alertId': alertId,
      'ruleId': null,
      'createdAt': _iso(DateTime.now()),
      'alertState': alertId == null ? null : 'firing',
    };
    notifications[id] = n;
    _publish('notification', view(n), id: id);
    _publish('badge', badge());
    return n;
  }

  /// The live `streamNotifications` body: a heartbeat every 15 s, and on the
  /// first connection a new notification after 10 s, then every 50 s, five
  /// in all.
  Stream<List<int>> openStream(Future<void>? cancel) {
    final controller = StreamController<List<int>>();
    _open.add(controller);
    final first = _streams++ == 0;
    final timers = <Timer>[
      Timer.periodic(const Duration(seconds: 15), (_) => controller.add(utf8.encode('event: heartbeat\ndata: {}\n\n'))),
    ];
    controller.add(utf8.encode(': connected\n\n'));
    if (first) {
      var sent = 0;
      const samples = <(String, String, String, int?)>[
        ('critical', 'M 6.4 – Banda Sea', 'Depth 120 km. **M5+ earthquakes**.', 4108),
        ('warning', 'Channel Duty phone (ntfy) failed twice', 'HTTP 502 from ntfy.sh.', null),
        ('warning', 'MV Sea Falcon entered the Odesa approach (9 km)', 'MMSI 312987654 is on **Vessels of interest**.', 4109),
        ('info', 'Flights over the Baltic 2.1× the usual', 'Anomaly against the Thursday baseline.', 4110),
        ('critical', 'M 5.9 – near the coast of Peru', 'Depth 35 km.', 4111),
      ];
      void next() {
        if (sent < samples.length && !controller.isClosed) {
          final s = samples[sent++];
          push(s.$1, s.$2, s.$3, alertId: s.$4);
        }
      }

      timers
        ..add(Timer(const Duration(seconds: 10), next))
        ..add(Timer.periodic(const Duration(seconds: 50), (_) => next()));
    }
    unawaited(
      cancel?.then((_) {
        for (final t in timers) {
          t.cancel();
        }
        _open.remove(controller);
        unawaited(controller.close());
      }),
    );
    return controller.stream;
  }

  String _mint(String action, int alertId, [String? duration]) {
    final token = 'eac_preview${++_token}';
    tokens[token] = (action: action, alertId: alertId, duration: duration);
    return token;
  }
}

/// Answers [method] [path] for the notification, action, presence and push
/// operations from [v], or `null` when the path is not one of them. The
/// live stream is served by [PreviewNotifications.openStream].
AlertsReply? answerNotifications(
  String method,
  String path,
  Map<String, List<String>> query,
  Object? body,
  PreviewNotifications v,
) {
  final input = body is Map ? body.cast<String, Object?>() : const <String, Object?>{};
  final parts = <String>[for (final p in path.split('/')) Uri.decodeComponent(p)];
  AlertsReply ok(Object? b) => (status: 200, body: b);
  AlertsReply notFound() => (status: 404, body: _problem(404, 'Not found', 'NOT_FOUND'));
  final now = _iso(DateTime.now());

  if (path == '/v1/notifications' && method == 'GET') {
    final unread = query['unread']?.first == 'true';
    final events = query['events'] ?? const <String>[];
    final minSeverity = query['minSeverity']?.first;
    const ranks = <String>['info', 'warning', 'critical'];
    final items = <Map<String, Object?>>[
      for (final n in v.notifications.values)
        if ((!unread || !v._read(n['id']! as int)) &&
            (events.isEmpty || events.contains(n['event'])) &&
            (minSeverity == null || ranks.indexOf('${n['severity']}') >= ranks.indexOf(minSeverity)))
          v.view(n),
    ]..sort((a, b) => (b['id']! as int).compareTo(a['id']! as int));
    return ok(<String, Object?>{'items': items, 'nextCursor': null});
  }
  if (path == '/v1/notifications/badge' && method == 'GET') {
    return ok(v.badge());
  }
  if (path == '/v1/notifications/read' && method == 'POST') {
    if (input['upToId'] case final int upTo) {
      v.readUpTo = upTo > v.readUpTo ? upTo : v.readUpTo;
    } else if (input['ids'] case final List<Object?> ids) {
      v.readIds.addAll(ids.whereType<int>());
    } else {
      return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'upToId or ids required.'));
    }
    v._publish('badge', v.badge());
    return ok(v.badge());
  }
  if (parts.length == 4 && path.startsWith('/v1/notifications/') && method == 'GET') {
    final n = v.notifications[int.tryParse(parts[3])];
    if (n == null) {
      return notFound();
    }
    final alertId = n['alertId'] as int?;
    final expires = _iso(DateTime.now().add(const Duration(hours: 12)));
    Map<String, Object?> action(String a, String label, [String? duration]) {
      final token = v._mint(a, alertId!, duration);
      return <String, Object?>{
        'action': a,
        'label': label,
        'method': 'POST',
        'url': 'https://foresignal.local/v1/actions/$token',
        'confirmUrl': 'https://foresignal.local/v1/actions/$token',
        if (duration != null) 'params': <String, Object?>{'duration': duration},
        'expiresAt': expires,
      };
    }

    return ok(<String, Object?>{
      ...v.view(n),
      'links': <Object?>[
        if (alertId != null) <String, Object?>{'label': 'Open alert', 'url': 'https://foresignal.local/v1/alerts/$alertId'},
        if (alertId != null) <String, Object?>{'label': 'Map', 'url': 'https://foresignal.local/map?alert=$alertId'},
      ],
      'actions': <Object?>[
        if (n['alertState'] == 'firing') ...<Object?>[
          action('ack', 'Acknowledge'),
          action('snooze', 'Snooze 1 h', '1h'),
          action('mute', 'Mute rule 4 h', '4h'),
          action('feedback:useful', 'Useful'),
          action('feedback:noise', 'Noise'),
        ],
      ],
    });
  }
  if (parts.length == 4 && path.startsWith('/v1/actions/')) {
    final t = v.tokens[parts[3]];
    if (t == null) {
      return method == 'GET'
          ? (status: 410, body: const PreviewText('<p>This action has expired or was used.</p>', contentType: 'text/html'))
          : (status: 410, body: _problem(410, 'Gone', 'ACTION_EXPIRED'));
    }
    if (method == 'GET') {
      return ok(
        PreviewText(
          '<h1>Alert ${t.alertId}</h1><form method="post"><button>${t.action}</button></form>',
          contentType: 'text/html',
        ),
      );
    }
    v.tokens.remove(parts[3]);
    final targets = v.notifications.values.where((n) => n['alertId'] == t.alertId).toList();
    final state = targets.isEmpty ? null : targets.first['alertState'];
    var result = switch (t.action) {
      'ack' => 'acknowledged',
      'snooze' => 'snoozed',
      'mute' => 'muted',
      _ => 'recorded',
    };
    if (state != 'firing' && (t.action == 'ack' || t.action == 'snooze')) {
      result = 'already-$state';
    } else if (t.action == 'ack') {
      for (final n in targets) {
        n['alertState'] = 'acknowledged';
      }
    }
    return ok(<String, Object?>{'action': t.action, 'alertId': t.alertId, 'result': result});
  }
  if (path == '/v1/clients/presence' && method == 'POST') {
    return ok(<String, Object?>{
      'deviceKey': 'preview-device',
      'kind': input['kind'] ?? 'desktop',
      'state': input['state'] ?? 'active',
      'expiresAt': _iso(DateTime.now().add(Duration(seconds: (input['ttlSeconds'] as int?) ?? 120))),
      'updatedAt': now,
    });
  }

  // Web Push.
  if (path == '/v1/push/vapid-public-key' && method == 'GET') {
    return ok(<String, Object?>{'publicKey': v.vapidKey});
  }
  if (path == '/v1/push/subscriptions') {
    if (method == 'POST') {
      final s = (input['subscription'] as Map?)?.cast<String, Object?>();
      final endpoint = Uri.tryParse('${s?['endpoint'] ?? ''}');
      if (endpoint == null || endpoint.host.isEmpty) {
        return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'subscription.endpoint: not a URL.'));
      }
      if (endpoint.host == 'localhost' || endpoint.host.startsWith('10.')) {
        return (status: 400, body: _problem(400, 'Address not allowed', 'URL_NOT_ALLOWED', 'The endpoint resolves to a private address.'));
      }
      final id = '8c2d4e6f-1a3b-4c5d-8e9f-0a1b2c3d4e${(v.subscriptions.length + 1).toString().padLeft(2, '0')}';
      v.verifyCodes[id] = 'q3V9-preview-code';
      v.subscriptions[id] = <String, Object?>{
        'id': id,
        'name': input['name'],
        'endpointHost': endpoint.host,
        'filters': input['filters'] ?? <String, Object?>{'events': <String>['alert']},
        'createdAt': now,
        'lastSuccessAt': null,
        'status': 'pending',
        'transportLabel': input['transportLabel'] ?? 'browser',
        'payloadFormat': input['payloadFormat'] ?? 'foresignal',
        'lang': input['lang'],
        'failureCount': 0,
        'lastFailureAt': null,
        'lastStatus': 201,
      };
      return (status: 201, body: v.subscriptions[id]);
    }
    return ok(v.subscriptions.values.toList());
  }
  if (parts.length >= 5 && path.startsWith('/v1/push/subscriptions/')) {
    final s = v.subscriptions[parts[4]];
    if (s == null) {
      return notFound();
    }
    if (parts.length == 5 && method == 'DELETE') {
      v.subscriptions.remove(parts[4]);
      return (status: 204, body: null);
    }
    if (parts.length == 6 && parts[5] == 'verify' && method == 'POST') {
      if (input['code'] != v.verifyCodes[parts[4]]) {
        return (status: 400, body: _problem(400, 'Wrong code', 'VERIFY_FAILED', 'The code does not match the verify push.'));
      }
      s['status'] = 'active';
      return ok(s);
    }
  }

  // Native push providers.
  if (path == '/v1/push/providers' && method == 'GET') {
    return ok(v.providers.values.toList());
  }
  if (parts.length >= 5 && path.startsWith('/v1/push/providers/')) {
    final id = parts[4];
    if (parts.length == 5 && method == 'PUT') {
      final type = input['type'];
      final old = v.providers[id];
      final secrets = (input['secrets'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};
      final set = <String>{...?(old?['secretFields'] as List<Object?>?)?.map((e) => '$e'), ...secrets.keys};
      if (type == 'apns' && !set.contains('p8') || type == 'fcm' && !set.contains('serviceAccountJson')) {
        return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'secrets: the key is required.'));
      }
      v.providers[id] = <String, Object?>{
        'id': id,
        'type': type,
        'appIds': input['appIds'],
        'config': input['config'],
        'secretFields': set.toList(),
        'enabled': input['enabled'] ?? true,
        'lastTestAt': old?['lastTestAt'],
        'lastError': null,
        'updatedAt': now,
      };
      return ok(v.providers[id]);
    }
    final p = v.providers[id];
    if (p == null) {
      return notFound();
    }
    if (parts.length == 5 && method == 'DELETE') {
      v.providers.remove(id);
      return (status: 204, body: null);
    }
    if (parts.length == 6 && parts[5] == 'test' && method == 'POST') {
      final deviceId = input['deviceId'] as String?;
      if (deviceId != null && !v.devices.containsKey(deviceId)) {
        return notFound();
      }
      p['lastTestAt'] = now;
      return ok(<String, Object?>{
        'success': true,
        'credentialMinted': true,
        'sent': deviceId == null ? null : true,
        'status': deviceId == null ? null : 200,
        'reason': null,
        'error': null,
      });
    }
  }

  // Native devices.
  if (path == '/v1/push/devices') {
    if (method == 'POST') {
      final token = '${input['token'] ?? ''}';
      if (token.isEmpty) {
        return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'token: required.'));
      }
      final served = v.providers.values.any(
        (p) => p['type'] == input['transport'] && (p['appIds'] as List<Object?>? ?? const <Object?>[]).contains(input['appId']),
      );
      if (!served) {
        return (
          status: 409,
          body: _problem(409, 'No provider', 'PUSH_PROVIDER_NOT_CONFIGURED', 'No enabled ${input['transport']} provider serves ${input['appId']}.'),
        );
      }
      final suffix = token.length <= 6 ? token : token.substring(token.length - 6);
      final existing = v.devices.values.where((d) => d['tokenSuffix'] == suffix && d['appId'] == input['appId']).firstOrNull;
      final id = existing?['id'] as String? ?? '3e1f9a72-5c4b-4d8e-9f01-2a3b4c5d6e${(v.devices.length + 1).toString().padLeft(2, '0')}';
      v.devices[id] = <String, Object?>{
        'id': id,
        'transport': input['transport'],
        'platform': input['platform'],
        'appId': input['appId'],
        'environment': input['environment'],
        'tokenSuffix': suffix,
        'tokenId': '6b8f2e10-4d3c-4a1b-9e7f-0a1b2c3d4e5f',
        'name': input['name'],
        'deviceName': null,
        'appVersion': null,
        'filters': input['filters'] ?? <String, Object?>{'events': <String>['alert']},
        'contentLevel': input['contentLevel'] ?? 'minimal',
        'lang': input['lang'],
        'status': 'active',
        'createdAt': now,
        'lastSuccessAt': null,
        'lastFailureAt': null,
        'failureCount': 0,
        'lastStatus': null,
      };
      return (status: 201, body: v.devices[id]);
    }
    return ok(v.devices.values.toList());
  }
  if (parts.length >= 5 && path.startsWith('/v1/push/devices/')) {
    final d = v.devices[parts[4]];
    if (d == null) {
      return notFound();
    }
    if (parts.length == 5 && method == 'PUT') {
      d
        ..['name'] = input['name']
        ..['filters'] = input['filters'] ?? d['filters']
        ..['contentLevel'] = input['contentLevel'] ?? d['contentLevel']
        ..['lang'] = input['lang'];
      return ok(d);
    }
    if (parts.length == 5 && method == 'DELETE') {
      v.devices.remove(parts[4]);
      return (status: 204, body: null);
    }
    if (parts.length == 6 && parts[5] == 'test' && method == 'POST') {
      d['lastSuccessAt'] = now;
      return ok(<String, Object?>{
        'success': true,
        'credentialMinted': true,
        'sent': true,
        'status': 200,
        'reason': null,
        'error': null,
      });
    }
  }
  return null;
}
