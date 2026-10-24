// The preview's fake answers for trigger rules, alerts (with a live
// `text/event-stream`), escalation policies, notification channels and
// watchlists. Bodies follow their schemas in openapi/OpenAPI.json
// (TriggerRule, TriggerTestResult, AlertPage, Alert, AlertEvent, Escalation,
// EscalationPolicy, ChannelType, Channel, ChannelTestResult,
// NotificationDeliveryPage, WatchlistPage, Watchlist, WatchlistItemPage,
// WatchlistImportResult, SourceRelevanceAnalysis). The `mqtt` channel type
// is the contract's own example; the other types' fields are illustrative.
import 'dart:async';
import 'dart:convert';

import 'preview_sources.dart';

/// A fake reply: a JSON body (or [PreviewText]) and its status.
typedef AlertsReply = ({int status, Object? body});

/// A plain-text reply body, sent with [contentType].
class PreviewText {
  /// Creates the body.
  const PreviewText(this.text, {this.contentType = 'text/plain'});

  /// The text.
  final String text;

  /// Its media type.
  final String contentType;
}

Map<String, Object?> _problem(int status, String title, String code, [String? detail]) =>
    <String, Object?>{'title': title, 'status': status, 'code': code, 'detail': ?detail};

/// The earthquake rule's id (also used by the setup wizard's preview).
const String previewRuleQuakes = '7b0e7f0c-3c55-4a43-9f53-0d9b1f0b6a01';

/// The vessels-of-interest rule.
const String previewRuleVessels = '7b0e7f0c-3c55-4a43-9f53-0d9b1f0b6a02';

/// The GNSS jamming count rule.
const String previewRuleJamming = '7b0e7f0c-3c55-4a43-9f53-0d9b1f0b6a03';

/// The port-silence absence rule.
const String previewRuleSilence = '7b0e7f0c-3c55-4a43-9f53-0d9b1f0b6a04';

/// The flights anomaly rule.
const String previewRuleFlights = '7b0e7f0c-3c55-4a43-9f53-0d9b1f0b6a05';

/// The duty escalation policy.
const String previewPolicyDuty = '2c41a8e2-0d7f-4b8e-9a51-6f3c1d0e7a01';

/// The vessels watchlist.
const String previewWatchlistVessels = '5e9d4b17-8a2c-4f60-b3d1-0c7e2a9f4b01';

/// The ops webhook channel.
const String previewChannelWebhook = '9a7c3e51-6b2d-4f8a-8c19-3e5d7a0b2c01';

String _ago(int minutes) => _iso(DateTime.now().subtract(Duration(minutes: minutes)));

String _iso(DateTime t) => t.toUtc().toIso8601String().replaceFirst(RegExp(r'\.\d+Z$'), 'Z');

Map<String, Object?> _rule(
  String id,
  String name, {
  String type = 'record',
  String mode = 'match',
  String severity = 'warning',
  List<String> sources = const <String>[],
  List<String> kinds = const <String>[],
  List<String> tags = const <String>[],
  List<Map<String, Object?>> conditions = const <Map<String, Object?>>[],
  Map<String, Object?>? window,
  Map<String, Object?> extra = const <String, Object?>{},
  bool enabled = true,
  int alerts = 0,
  int open = 0,
  String? lastFired,
  String? policy,
}) => <String, Object?>{
  'id': id,
  'name': name,
  'enabled': enabled,
  'type': type,
  if (type == 'record') 'mode': mode,
  'severity': severity,
  'sources': sources,
  'kinds': kinds,
  'tags': tags,
  'conditions': conditions,
  'window': ?window,
  'escalationPolicyId': policy,
  'cooldownScope': 'record',
  'weatherContext': 'auto',
  ...extra,
  'createdAt': '2026-09-14T09:00:00Z',
  'updatedAt': '2026-10-20T10:00:00Z',
  'lastFiredAt': lastFired,
  'alertCount': alerts,
  'openAlertCount': open,
  'suppressedCount': alerts ~/ 9,
  'feedbackCounts': <String, Object?>{'useful': alerts ~/ 3, 'noise': alerts ~/ 8, 'late': 1, 'false_positive': 0},
  if (type != 'record')
    'windowStatus': <String, Object?>{
      'states': <String, Object?>{'active': 1, 'clear': 6, 'unknown': 0, 'learning': type == 'anomaly' ? 2 : 0},
      'groups': 7,
      'lastEvaluatedAt': _ago(5),
      if (type == 'anomaly') 'learningUntil': '2026-11-09T00:00:00Z',
    },
};

/// The fake alerts backend's state.
class PreviewAlerts {
  /// Creates the state.
  PreviewAlerts() {
    var id = 4100;
    for (final a in <(String, String, String, String, String, String, int, Map<String, Object?>)>[
      (previewRuleQuakes, 'M5+ earthquakes', 'critical', 'firing', 'usgs-earthquakes', 'M 6.1 – 42 km SW of Ovalle, Chile', 11, <String, Object?>{'mag': 6.1, 'place': '42 km SW of Ovalle, Chile', 'depth': 48.2}),
      (previewRuleVessels, 'Vessels of interest near Odesa', 'warning', 'firing', 'ais-stream', 'MV Kerch Strait entered the Odesa approach (12 km)', 26, <String, Object?>{'mmsi': '273456780', 'name': 'KERCH STRAIT', 'sog': 9.4, 'destination': 'ODESSA'}),
      (previewRuleJamming, 'GNSS jamming burst', 'warning', 'acknowledged', 'gpsjam', '14 aircraft reported degraded GNSS near Kaliningrad in 1 h', 41, <String, Object?>{'count': 14, 'h3': '851f1a8bfffffff'}),
      (previewRuleQuakes, 'M5+ earthquakes', 'critical', 'acknowledged', 'usgs-earthquakes', 'M 5.4 – Kermadec Islands region', 75, <String, Object?>{'mag': 5.4, 'place': 'Kermadec Islands region', 'depth': 10.0}),
      (previewRuleSilence, 'Port of Odesa silent', 'info', 'resolved', 'ais-stream', 'No arrivals recorded at Odesa for 6 h', 190, <String, Object?>{'window': '6h', 'coverage': 0.93}),
      (previewRuleVessels, 'Vessels of interest near Odesa', 'warning', 'resolved', 'ais-stream', 'MV Azov Star left the Odesa approach', 260, <String, Object?>{'mmsi': '273451230', 'name': 'AZOV STAR', 'sog': 11.2}),
      (previewRuleFlights, 'Unusual flight volume', 'info', 'firing', 'opensky', 'Flights over the Black Sea 3.4× the usual for Thursday 16:00', 33, <String, Object?>{'observed': 61, 'expected': 18}),
      (previewRuleQuakes, 'M5+ earthquakes', 'critical', 'resolved', 'usgs-earthquakes', 'M 5.0 – South Sandwich Islands region', 600, <String, Object?>{'mag': 5.0, 'place': 'South Sandwich Islands region', 'depth': 35.0}),
    ]..sort((x, y) => y.$7.compareTo(x.$7))) {
      final fired = DateTime.now().toUtc().subtract(Duration(minutes: a.$7));
      final alert = _alert(id++, a.$1, a.$2, a.$3, a.$5, a.$6, fired, a.$8)..['state'] = a.$4;
      if (a.$4 != 'firing') {
        alert
          ..['acknowledgedAt'] = _iso(fired.add(const Duration(minutes: 4)))
          ..['acknowledgedBy'] = 'duty-desk';
      }
      if (a.$4 == 'resolved') {
        alert
          ..['resolvedAt'] = _iso(fired.add(const Duration(minutes: 30)))
          ..['resolvedBy'] = a.$1 == previewRuleVessels ? 'inverse_edge' : 'admin'
          ..['feedback'] = 'useful';
      }
      if (a.$7 == 75) {
        alert['signals'] = <Object?>[
          <String, Object?>{'alertId': alert['id'], 'type': 'ACK_FAST', 'at': alert['acknowledgedAt']},
        ];
      }
      alerts[alert['id']! as int] = alert;
    }
  }

  int _rev = 900;
  int _nextAlert = 4200;
  int _seqId = 1;
  Timer? _firing;
  int _fired = 0;
  final StreamController<String> _bus = StreamController<String>.broadcast();

  /// A fresh UUID-shaped id.
  String nextUuid(String prefix) => '$prefix-0000-4000-8000-${(_seqId++).toString().padLeft(12, '0')}';

  /// Trigger rules by id.
  final Map<String, Map<String, Object?>> rules = <String, Map<String, Object?>>{
    for (final r in <Map<String, Object?>>[
      _rule(
        previewRuleQuakes,
        'M5+ earthquakes',
        severity: 'critical',
        sources: const <String>['usgs-earthquakes'],
        tags: const <String>['hazards'],
        conditions: const <Map<String, Object?>>[
          <String, Object?>{'path': 'mag', 'op': '>=', 'value': 5},
        ],
        extra: const <String, Object?>{'cooldown': '15m', 'messageTemplate': 'M {{payload.mag}} – {{title}}'},
        alerts: 37,
        open: 2,
        lastFired: _ago(11),
        policy: previewPolicyDuty,
      ),
      _rule(
        previewRuleVessels,
        'Vessels of interest near Odesa',
        mode: 'enter',
        sources: const <String>['ais-stream'],
        tags: const <String>['maritime', 'ports'],
        conditions: const <Map<String, Object?>>[
          <String, Object?>{'path': 'mmsi', 'op': 'inWatchlist', 'value': previewWatchlistVessels},
        ],
        extra: const <String, Object?>{
          'near': <String, Object?>{'point': <num>[30.74, 46.48], 'radiusKm': 25},
          'hysteresisMeters': 500,
        },
        alerts: 18,
        open: 1,
        lastFired: _ago(26),
        policy: previewPolicyDuty,
      ),
      _rule(
        previewRuleJamming,
        'GNSS jamming burst',
        type: 'count',
        sources: const <String>['gpsjam'],
        tags: const <String>['gnss'],
        window: const <String, Object?>{'window': '1h', 'op': '>=', 'threshold': 10, 'groupBy': 'h3:5'},
        alerts: 9,
        open: 1,
        lastFired: _ago(41),
      )..['mutedUntil'] = _iso(DateTime.now().toUtc().add(const Duration(hours: 3))),
      _rule(
        previewRuleSilence,
        'Port of Odesa silent',
        type: 'absence',
        severity: 'info',
        sources: const <String>['ais-stream'],
        tags: const <String>['ports'],
        window: const <String, Object?>{'window': '6h', 'coverageMin': 0.8},
        alerts: 4,
        lastFired: _ago(190),
      ),
      _rule(
        previewRuleFlights,
        'Unusual flight volume',
        type: 'anomaly',
        severity: 'info',
        sources: const <String>['opensky'],
        window: const <String, Object?>{
          'window': '1h',
          'bucket': '1h',
          'slotMode': 'hour-of-week',
          'direction': 'both',
          'sensitivity': 'medium',
        },
        alerts: 6,
        open: 1,
        lastFired: _ago(33),
      ),
      _rule(
        '7b0e7f0c-3c55-4a43-9f53-0d9b1f0b6a06',
        'Wildfire hotspots near pipelines',
        enabled: false,
        sources: const <String>['nasa-firms'],
        conditions: const <Map<String, Object?>>[
          <String, Object?>{'path': 'confidence', 'op': '==', 'value': 'high'},
        ],
      ),
    ])
      r['id']! as String: r,
  };

  /// Alerts by id.
  final Map<int, Map<String, Object?>> alerts = <int, Map<String, Object?>>{};

  /// Escalation policies by id.
  final Map<String, Map<String, Object?>> policies = <String, Map<String, Object?>>{
    previewPolicyDuty: <String, Object?>{
      'id': previewPolicyDuty,
      'name': 'Duty officer',
      'steps': <Object?>[
        <String, Object?>{'afterMinutes': 5, 'channelIds': <String>[previewChannelWebhook], 'includePush': true},
        <String, Object?>{'afterMinutes': 20, 'channelIds': <String>['9a7c3e51-6b2d-4f8a-8c19-3e5d7a0b2c02'], 'includePush': true},
      ],
      'repeat': <String, Object?>{'everyMinutes': 30, 'maxTimes': 3},
      'stopOn': <String, Object?>{'resolve': true, 'snooze': true},
      'createdAt': '2026-09-20T08:00:00Z',
      'updatedAt': '2026-10-01T08:00:00Z',
      'ruleCount': 2,
    },
    '2c41a8e2-0d7f-4b8e-9a51-6f3c1d0e7a02': <String, Object?>{
      'id': '2c41a8e2-0d7f-4b8e-9a51-6f3c1d0e7a02',
      'name': 'Overnight hazards',
      'steps': <Object?>[
        <String, Object?>{'afterMinutes': 15, 'channelIds': <String>['9a7c3e51-6b2d-4f8a-8c19-3e5d7a0b2c03'], 'includePush': false},
      ],
      'repeat': null,
      'stopOn': <String, Object?>{'resolve': true, 'snooze': false},
      'createdAt': '2026-10-02T08:00:00Z',
      'updatedAt': '2026-10-02T08:00:00Z',
      'ruleCount': 0,
    },
  };

  /// Channel types (`ChannelType`).
  final List<Map<String, Object?>> channelTypes = <Map<String, Object?>>[
    <String, Object?>{
      'id': 'webhook',
      'name': 'Webhook',
      'description': 'POSTs each event as JSON to a URL.',
      'configFields': <Object?>[
        <String, Object?>{'name': 'url', 'type': 'url', 'required': true, 'description': 'Where events are sent'},
        <String, Object?>{'name': 'method', 'type': 'enum', 'required': false, 'default': 'POST', 'allowed': <String>['POST', 'PUT']},
      ],
      'secretFields': <Object?>[
        <String, Object?>{'name': 'header.<Name>', 'type': 'string', 'required': false, 'description': 'Headers sent with each request'},
      ],
      'events': <String>['alert', 'briefing', 'system'],
      'capabilities': <String, Object?>{'editInPlace': false, 'attachments': false, 'fanOut': false},
    },
    <String, Object?>{
      'id': 'ntfy',
      'name': 'ntfy',
      'description': 'Publishes to an ntfy topic, with action buttons.',
      'configFields': <Object?>[
        <String, Object?>{'name': 'server', 'type': 'url', 'required': false, 'default': 'https://ntfy.sh'},
        <String, Object?>{'name': 'topic', 'type': 'string', 'required': true, 'description': 'Topic name'},
        <String, Object?>{'name': 'priority', 'type': 'integer', 'required': false, 'default': 3, 'description': '1 (min) to 5 (max)'},
      ],
      'secretFields': <Object?>[
        <String, Object?>{'name': 'token', 'type': 'string', 'required': false, 'description': 'Access token'},
      ],
      'events': <String>['alert', 'briefing', 'system'],
      'capabilities': <String, Object?>{'editInPlace': false, 'attachments': true, 'fanOut': false},
    },
    <String, Object?>{
      'id': 'telegram',
      'name': 'Telegram',
      'description': 'Sends to a chat through a bot, editing the message as the alert changes.',
      'configFields': <Object?>[
        <String, Object?>{'name': 'chatId', 'type': 'string', 'required': true, 'description': 'Chat or channel id'},
      ],
      'secretFields': <Object?>[
        <String, Object?>{'name': 'botToken', 'type': 'string', 'required': true, 'description': 'Bot token from BotFather'},
      ],
      'events': <String>['alert', 'briefing', 'system'],
      'capabilities': <String, Object?>{'editInPlace': true, 'attachments': true, 'fanOut': false},
    },
    <String, Object?>{
      'id': 'email',
      'name': 'Email',
      'description': 'Sends mail through an SMTP server.',
      'configFields': <Object?>[
        <String, Object?>{'name': 'to', 'type': 'string-list', 'required': true, 'description': 'Recipients'},
        <String, Object?>{'name': 'smtpHost', 'type': 'string', 'required': true},
        <String, Object?>{'name': 'smtpPort', 'type': 'integer', 'required': false, 'default': 587},
        <String, Object?>{'name': 'startTls', 'type': 'boolean', 'required': false, 'default': true},
      ],
      'secretFields': <Object?>[
        <String, Object?>{'name': 'username', 'type': 'string', 'required': false},
        <String, Object?>{'name': 'password', 'type': 'string', 'required': false},
      ],
      'events': <String>['alert', 'briefing', 'system'],
      'capabilities': <String, Object?>{'editInPlace': false, 'attachments': true, 'fanOut': false},
    },
    <String, Object?>{
      'id': 'mqtt',
      'name': 'MQTT',
      'description':
          'Publishes alerts, briefings, system events, source health and a live summary to an MQTT broker, '
          'with a Last Will and optional Home Assistant discovery',
      'configFields': <Object?>[
        <String, Object?>{
          'name': 'brokerUrl',
          'type': 'string',
          'required': true,
          'description': 'Broker URL: mqtt://, mqtts://, ws:// or wss://, e.g. mqtts://broker.lan:8883',
        },
        <String, Object?>{
          'name': 'topicPrefix',
          'type': 'string',
          'required': false,
          'description': 'Topic prefix, 1-64 of A-Z a-z 0-9 _ - /, no wildcards',
          'default': 'foresignal',
        },
        <String, Object?>{'name': 'qos', 'type': 'integer', 'required': false, 'description': 'QoS of event messages: 0 or 1', 'default': 1},
        <String, Object?>{
          'name': 'protocolVersion',
          'type': 'enum',
          'required': false,
          'description': 'MQTT protocol version',
          'default': '5',
          'allowed': <String>['5', '3.1.1'],
        },
        <String, Object?>{
          'name': 'messageExpiry',
          'type': 'string',
          'required': false,
          'description': 'Message expiry of non-retained event messages (MQTT 5)',
          'default': '24h',
        },
        <String, Object?>{
          'name': 'haDiscovery',
          'type': 'boolean',
          'required': false,
          'description': 'Publish Home Assistant MQTT discovery',
          'default': false,
        },
      ],
      'secretFields': <Object?>[
        <String, Object?>{'name': 'username', 'type': 'string', 'required': false, 'description': 'Broker user name'},
        <String, Object?>{'name': 'password', 'type': 'string', 'required': false, 'description': 'Broker password'},
        <String, Object?>{
          'name': 'caCertPem',
          'type': 'string',
          'required': false,
          'description': 'Extra trusted CA certificate(s) in PEM for mqtts:// and wss://',
        },
      ],
      'events': <String>['alert', 'briefing', 'system'],
      'capabilities': <String, Object?>{'editInPlace': false, 'attachments': false, 'fanOut': false},
    },
  ];

  /// Channels by id.
  final Map<String, Map<String, Object?>> channels = <String, Map<String, Object?>>{
    previewChannelWebhook: <String, Object?>{
      'id': previewChannelWebhook,
      'name': 'Ops webhook',
      'type': 'webhook',
      'config': <String, Object?>{'url': 'https://ops.example.org/hooks/foresignal', 'method': 'POST'},
      'secretFields': <String>['header.Authorization'],
      'events': <String>['alert', 'system'],
      'ruleIds': null,
      'minSeverity': 'warning',
      'enabled': true,
      'createdAt': '2026-09-15T09:00:00Z',
      'updatedAt': '2026-10-01T09:00:00Z',
      'lastDeliveryAt': _ago(11),
      'failedLast24h': 0,
    },
    '9a7c3e51-6b2d-4f8a-8c19-3e5d7a0b2c02': <String, Object?>{
      'id': '9a7c3e51-6b2d-4f8a-8c19-3e5d7a0b2c02',
      'name': 'Duty phone (ntfy)',
      'type': 'ntfy',
      'config': <String, Object?>{
        'server': 'https://ntfy.sh',
        'topic': 'foresignal-duty',
        'priority': 4,
        'actions': <String, Object?>{'enabled': true, 'list': <String>['ack', 'snooze']},
      },
      'secretFields': <String>['token'],
      'events': <String>['alert'],
      'ruleIds': <String>[previewRuleQuakes, previewRuleVessels],
      'minSeverity': 'warning',
      'enabled': true,
      'quietHours': <String, Object?>{'start': '23:00', 'end': '06:30', 'bypassSeverity': 'critical'},
      'timezone': 'Europe/Kyiv',
      'createdAt': '2026-09-15T09:00:00Z',
      'updatedAt': '2026-10-05T09:00:00Z',
      'lastDeliveryAt': _ago(6),
      'failedLast24h': 2,
    },
    '9a7c3e51-6b2d-4f8a-8c19-3e5d7a0b2c03': <String, Object?>{
      'id': '9a7c3e51-6b2d-4f8a-8c19-3e5d7a0b2c03',
      'name': 'Home broker',
      'type': 'mqtt',
      'config': <String, Object?>{'brokerUrl': 'mqtt://broker.lan:1883', 'topicPrefix': 'foresignal', 'haDiscovery': true},
      'secretFields': <String>[],
      'events': <String>['alert', 'system'],
      'ruleIds': null,
      'enabled': false,
      'createdAt': '2026-10-02T09:00:00Z',
      'updatedAt': '2026-10-02T09:00:00Z',
      'lastDeliveryAt': null,
      'failedLast24h': 0,
      'warnings': <Object?>[
        <String, Object?>{'code': 'MQTT_INSECURE_PUBLIC_BROKER', 'message': 'mqtt:// sends in the clear; use mqtts:// off the local network.'},
      ],
    },
  };

  /// Watchlists by id.
  final Map<String, Map<String, Object?>> watchlists = <String, Map<String, Object?>>{
    previewWatchlistVessels: <String, Object?>{
      'id': previewWatchlistVessels,
      'name': 'Vessels of interest',
      'identity': 'mmsi',
      'normalize': 'digits',
      'description': 'Shadow-fleet tankers and grain carriers under watch.',
      'itemCount': 0,
      'createdAt': '2026-09-10T08:00:00Z',
      'updatedAt': '2026-10-18T08:00:00Z',
    },
    '5e9d4b17-8a2c-4f60-b3d1-0c7e2a9f4b02': <String, Object?>{
      'id': '5e9d4b17-8a2c-4f60-b3d1-0c7e2a9f4b02',
      'name': 'State aircraft',
      'identity': 'icao24',
      'normalize': null,
      'description': null,
      'itemCount': 0,
      'createdAt': '2026-10-01T08:00:00Z',
      'updatedAt': '2026-10-01T08:00:00Z',
    },
  };

  /// Watchlist items by watchlist id, then value.
  final Map<String, Map<String, Map<String, Object?>>> items = <String, Map<String, Map<String, Object?>>>{
    previewWatchlistVessels: <String, Map<String, Object?>>{
      for (final (v, l) in <(String, String)>[
        ('273456780', 'KERCH STRAIT'),
        ('273451230', 'AZOV STAR'),
        ('636019825', 'OCEAN VOYAGER'),
        ('538009876', 'LIBERTY GRAIN'),
        ('312987654', 'SEA FALCON'),
      ])
        v: <String, Object?>{
          'value': v,
          'label': l,
          'notes': null,
          'tags': <String>['tanker'],
          'addedAt': '2026-09-10T08:00:00Z',
          'origin': 'csv',
        },
    },
    '5e9d4b17-8a2c-4f60-b3d1-0c7e2a9f4b02': <String, Map<String, Object?>>{
      '43c6f1': <String, Object?>{'value': '43C6F1', 'label': 'RRR7001', 'tags': <String>[], 'addedAt': '2026-10-01T08:00:00Z', 'origin': 'manual'},
    },
  };

  Map<String, Object?> _alert(
    int id,
    String ruleId,
    String ruleName,
    String severity,
    String source,
    String message,
    DateTime fired,
    Map<String, Object?> payload,
  ) => <String, Object?>{
    'id': id,
    'ruleId': ruleId,
    'ruleName': ruleName,
    'seq': 880000 + id,
    'source': source,
    'externalId': '${payload['mmsi'] ?? 'ev${id * 37}'}',
    'kind': source == 'ais-stream' ? 'vessel' : 'event',
    'firedAt': _iso(fired),
    'observedAt': _iso(fired.subtract(const Duration(seconds: 40))),
    'message': message,
    'severity': severity,
    'rev': ++_rev,
    'state': 'firing',
    'suppressed': false,
    'tags': rules[ruleId]?['tags'] ?? const <String>[],
    'recordSnapshot': <String, Object?>{
      'kind': source == 'ais-stream' ? 'vessel' : 'event',
      'version': 3,
      'observedAt': _iso(fired.subtract(const Duration(seconds: 40))),
      'payload': payload,
      'truncated': false,
    },
    'signals': <Object?>[],
  };

  void _publish(String event, Map<String, Object?> data, {int? id}) {
    _bus.add('${id == null ? '' : 'id: $id\n'}event: $event\ndata: ${jsonEncode(data)}\n\n');
  }

  void _changed(Map<String, Object?> alert, String type) {
    alert['rev'] = ++_rev;
    _publish(
      type == 'resolved' ? 'alert.resolved' : 'alert.updated',
      <String, Object?>{'type': type, 'alert': alert, 'suppressed': false},
      id: _rev,
    );
  }

  void _fireOne() {
    if (_fired >= 6) {
      _firing?.cancel();
      return;
    }
    final samples = <(String, String, String, String, String, Map<String, Object?>)>[
      (previewRuleQuakes, 'M5+ earthquakes', 'critical', 'usgs-earthquakes', 'M 5.7 – off the coast of Hokkaido, Japan', <String, Object?>{'mag': 5.7, 'place': 'off the coast of Hokkaido, Japan', 'depth': 31.0}),
      (previewRuleVessels, 'Vessels of interest near Odesa', 'warning', 'ais-stream', 'MV Ocean Voyager entered the Odesa approach (18 km)', <String, Object?>{'mmsi': '636019825', 'name': 'OCEAN VOYAGER', 'sog': 8.1}),
      (previewRuleFlights, 'Unusual flight volume', 'info', 'opensky', 'Flights over the Black Sea 0.2× the usual for Thursday 17:00', <String, Object?>{'observed': 4, 'expected': 19}),
    ];
    final s = samples[_fired % samples.length];
    _fired++;
    final alert = _alert(_nextAlert++, s.$1, s.$2, s.$3, s.$4, s.$5, DateTime.now(), s.$6);
    alerts[alert['id']! as int] = alert;
    final rule = rules[s.$1];
    if (rule != null) {
      rule
        ..['lastFiredAt'] = alert['firedAt']
        ..['alertCount'] = ((rule['alertCount'] as int?) ?? 0) + 1
        ..['openAlertCount'] = ((rule['openAlertCount'] as int?) ?? 0) + 1;
    }
    _publish('alert', <String, Object?>{'type': 'fired', 'alert': alert, 'suppressed': false}, id: alert['rev']! as int);
  }

  /// Opens one `streamAlerts` connection: a heartbeat at once and every
  /// 15 s, every alert change, and (from the first connection) a new alert
  /// 12 s in and every 40 s after, six in all. Closes when [cancel]
  /// completes.
  Stream<List<int>> openStream(Future<void>? cancel) {
    late final StreamController<List<int>> out;
    StreamSubscription<String>? sub;
    Timer? heartbeat;
    void send(String text) {
      if (!out.isClosed) {
        out.add(utf8.encode(text));
      }
    }

    out = StreamController<List<int>>(
      onListen: () {
        send('retry: 3000\n\nevent: heartbeat\ndata: {}\n\n');
        sub = _bus.stream.listen(send);
        heartbeat = Timer.periodic(const Duration(seconds: 15), (_) => send('event: heartbeat\ndata: {}\n\n'));
        _firing ??= Timer(const Duration(seconds: 12), () {
          _fireOne();
          _firing = Timer.periodic(const Duration(seconds: 40), (_) => _fireOne());
        });
      },
      onCancel: () async {
        heartbeat?.cancel();
        await sub?.cancel();
      },
    );
    unawaited(
      cancel?.then((_) async {
        heartbeat?.cancel();
        await sub?.cancel();
        await out.close();
      }),
    );
    return out.stream;
  }
}

Map<String, Object?> _payloadOf(Map<String, Object?> alert) =>
    ((alert['recordSnapshot'] as Map?)?['payload'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};

String? _durationProblem(Object? text) =>
    text is String && RegExp(r'^(\d+[smhd]|P.+)$').hasMatch(text) ? null : 'Not a duration.';

DateTime? _expiry(Map<String, Object?> input) {
  if (input['until'] case final String u) {
    return DateTime.tryParse(u);
  }
  final f = input['for'];
  final m = f is String ? RegExp(r'^(\d+)([mhd])$').firstMatch(f) : null;
  if (m == null) {
    return null;
  }
  final n = int.parse(m[1]!);
  return DateTime.now().toUtc().add(switch (m[2]) {
    'm' => Duration(minutes: n),
    'h' => Duration(hours: n),
    _ => Duration(days: n),
  });
}

const Set<String> _readOnlyRuleMembers = <String>{
  'id',
  'createdAt',
  'updatedAt',
  'lastFiredAt',
  'alertCount',
  'lastError',
  'lastErrorAt',
  'openAlertCount',
  'suppressedCount',
  'lastStormAt',
  'feedbackCounts',
  'snoozedUntil',
  'geofenceRoute',
  'mutedUntil',
  'geofenceOrigin',
  'anchorStatus',
  'windowStatus',
};

Map<String, Object?>? _ruleProblem(Map<String, Object?> input) {
  for (final c in (input['conditions'] as List<Object?>?) ?? const <Object?>[]) {
    if (c is Map && const <String>{'observedAt', 'lat', 'lon', 'lastSeen'}.contains(c['path'])) {
      return _problem(
        400,
        'Validation failed',
        'TRIGGER_PATH_VOLATILE',
        'The path ${c['path']} changes on every observation.',
      );
    }
  }
  if (input['type'] != null && input['type'] != 'record' && input['mode'] != null) {
    return _problem(400, 'Validation failed', 'WINDOW_RULE_INVALID', 'mode is not allowed on windowed rules.');
  }
  if (input['cooldown'] != null && _durationProblem(input['cooldown']) != null) {
    return _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'cooldown: not a duration.');
  }
  return null;
}

/// Answers [method] [path] for the alert, trigger, escalation, channel and
/// watchlist operations from [v], or `null` when the path is not one of
/// them. The live stream is served by [PreviewAlerts.openStream].
AlertsReply? answerAlerts(
  String method,
  String path,
  Map<String, List<String>> query,
  Object? body,
  PreviewAlerts v,
) {
  final input = body is Map ? body.cast<String, Object?>() : const <String, Object?>{};
  final parts = <String>[for (final p in path.split('/')) Uri.decodeComponent(p)];
  AlertsReply ok(Object? b) => (status: 200, body: b);
  AlertsReply notFound([String code = 'NOT_FOUND']) => (status: 404, body: _problem(404, 'Not found', code));
  final now = _iso(DateTime.now());

  // The Alert Builder's advisory source-relevance check.
  if (path == '/v1/triggers/analyze-sources' && method == 'POST') {
    return analyzeSourcesPreview(input);
  }

  // Trigger rules.
  if (path == '/v1/triggers') {
    if (method == 'POST') {
      if (_ruleProblem(input) case final p?) {
        return (status: 400, body: p);
      }
      final id = v.nextUuid('7b0e7f0c');
      final rule = <String, Object?>{
        ...input,
        'id': id,
        'createdAt': now,
        'updatedAt': now,
        'lastFiredAt': null,
        'alertCount': 0,
        'openAlertCount': 0,
        'suppressedCount': 0,
      };
      v.rules[id] = rule;
      return (status: 201, body: rule);
    }
    final enabled = query['enabled']?.first;
    return ok(<Object?>[
      for (final r in v.rules.values)
        if (enabled == null || '${r['enabled']}' == enabled) r,
    ]);
  }
  if (parts.length >= 4 && path.startsWith('/v1/triggers/')) {
    final rule = v.rules[parts[3]];
    if (rule == null) {
      return notFound();
    }
    if (parts.length == 4) {
      switch (method) {
        case 'PUT':
          if (_ruleProblem(input) case final p?) {
            return (status: 400, body: p);
          }
          final kept = <String, Object?>{
            for (final e in rule.entries)
              if (_readOnlyRuleMembers.contains(e.key)) e.key: e.value,
          };
          rule
            ..clear()
            ..addAll(<String, Object?>{...input, ...kept, 'updatedAt': now});
          for (final p in v.policies.values) {
            p['ruleCount'] = v.rules.values.where((r) => r['escalationPolicyId'] == p['id']).length;
          }
          return ok(rule);
        case 'DELETE':
          v.rules.remove(parts[3]);
          return (status: 204, body: null);
        default:
          return ok(rule);
      }
    }
    switch ((method, parts[4])) {
      case ('POST', 'test'):
        final windowed = rule['type'] != null && rule['type'] != 'record';
        final matches = <Object?>[
          if (!windowed)
            for (final a in v.alerts.values.where((a) => a['ruleId'] == parts[3]).take(5))
              <String, Object?>{
                'id': '${a['source']}:${a['externalId']}',
                'source': a['source'],
                'externalId': a['externalId'],
                'kind': a['kind'],
                'version': 3,
                'seq': a['seq'],
                'observedAt': a['observedAt'],
                'title': _payloadOf(a)['place'] ?? _payloadOf(a)['name'] ?? a['message'],
                'payload': _payloadOf(a),
              },
        ];
        final simulate = query['simulate']?.first == 'true';
        return ok(<String, Object?>{
          'ruleId': parts[3],
          'evaluatedFrom': _iso(DateTime.now().subtract(const Duration(hours: 24))),
          'matches': matches,
          'truncated': false,
          'fromSeq': 870000,
          'toSeq': 886412,
          'matchCount': matches.length,
          'simulated': simulate,
          if (simulate) 'wouldFire': matches.isEmpty ? 0 : matches.length - 1,
          if (simulate) 'wouldSuppress': matches.isEmpty ? 0 : 1,
          'truncatedByRetention': false,
          'enrich': rule['enrich'] == true,
          'warnings': <Object?>[],
          'approximate': windowed,
          if (windowed)
            'approximateReason':
                'versions only; entities observed without a new version inside the window are missed when window < source keyframe',
          if (windowed)
            'windowEvaluations': <Object?>[
              for (var h = 6; h >= 1; h--)
                <String, Object?>{
                  'at': _iso(DateTime.now().subtract(Duration(hours: h))),
                  'groupKey': rule['type'] == 'count' ? 'h3:851f1a8bfffffff' : 'all',
                  'value': h == 2 ? 14 : 3 + h,
                  'state': h == 2 ? 'active' : 'clear',
                },
            ],
        });
      case ('POST', 'mute'):
        final until = _expiry(input);
        if (until == null) {
          return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'for or until required.'));
        }
        rule['mutedUntil'] = _iso(until);
        return ok(rule);
      case ('DELETE', 'mute'):
        rule['mutedUntil'] = null;
        return ok(rule);
      case ('POST', 'snooze'):
        final until = _expiry(input);
        if (until == null) {
          return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'for or until required.'));
        }
        rule['snoozedUntil'] = _iso(until);
        return ok(rule);
      case ('DELETE', 'snooze'):
        rule['snoozedUntil'] = null;
        return ok(rule);
    }
    return null;
  }

  // Alerts.
  if (path == '/v1/alerts' && method == 'GET') {
    final states = <String>{...?query['state']?.expand((s) => s.split(','))};
    final min = query['minSeverity']?.first;
    final ruleId = query['ruleId']?.first;
    const rank = <String>['info', 'warning', 'critical'];
    final list = v.alerts.values.where((a) {
      if (states.isNotEmpty && !states.contains(a['state'])) {
        return false;
      }
      if (min != null && rank.indexOf('${a['severity']}') < rank.indexOf(min)) {
        return false;
      }
      return ruleId == null || a['ruleId'] == ruleId;
    }).toList()
      ..sort((a, b) => (b['id']! as int).compareTo(a['id']! as int));
    final limit = int.tryParse(query['limit']?.first ?? '') ?? 500;
    return ok(<String, Object?>{'items': list.take(limit).toList(), 'nextCursor': null});
  }
  if (parts.length >= 4 && path.startsWith('/v1/alerts/') && parts[3] != 'stream') {
    final alert = v.alerts[int.tryParse(parts[3])];
    if (alert == null) {
      return notFound();
    }
    if (parts.length == 4) {
      return ok(alert);
    }
    switch ((method, parts[4])) {
      case ('POST', 'ack'):
        if (alert['state'] == 'firing') {
          alert
            ..['state'] = 'acknowledged'
            ..['acknowledgedAt'] = now
            ..['acknowledgedBy'] = 'preview-admin';
        }
        alert
          ..['note'] = input['note'] ?? alert['note']
          ..['feedback'] = input['feedback'] ?? alert['feedback'];
        v._changed(alert, 'acknowledged');
        return ok(alert);
      case ('POST', 'resolve'):
        alert
          ..['state'] = 'resolved'
          ..['resolvedAt'] = now
          ..['resolvedBy'] = 'token:preview-admin'
          ..['snoozedUntil'] = null
          ..['note'] = input['note'] ?? alert['note']
          ..['feedback'] = input['feedback'] ?? alert['feedback'];
        v._changed(alert, 'resolved');
        return ok(alert);
      case ('POST', 'snooze'):
        final until = _expiry(input);
        if (until == null) {
          return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'for or until required.'));
        }
        alert['snoozedUntil'] = _iso(until);
        v._changed(alert, 'snoozed');
        return ok(alert);
      case ('DELETE', 'snooze'):
        alert['snoozedUntil'] = null;
        v._changed(alert, 'updated');
        return ok(alert);
      case ('PUT', 'feedback'):
        alert
          ..['feedback'] = input['feedback']
          ..['feedbackAt'] = now
          ..['note'] = input['note'] ?? alert['note'];
        v._changed(alert, 'updated');
        return ok(alert);
      case ('GET', 'escalation'):
        final policy = v.rules[alert['ruleId']]?['escalationPolicyId'];
        if (policy == null) {
          return (status: 404, body: _problem(404, 'Not found', 'NOT_FOUND', 'The rule has no escalation policy.'));
        }
        final firing = alert['state'] == 'firing';
        return ok(<String, Object?>{
          'alertId': alert['id'],
          'policyId': policy,
          'nextStep': firing ? 1 : null,
          'nextAt': firing ? _iso(DateTime.parse('${alert['firedAt']}').add(const Duration(minutes: 20))) : null,
          'repeatsDone': 0,
          'state': firing ? 'active' : 'stopped',
          'stoppedReason': firing ? null : (alert['state'] == 'resolved' ? 'resolved' : 'acknowledged'),
          'updatedAt': alert['acknowledgedAt'] ?? alert['firedAt'],
        });
    }
    return null;
  }

  // Escalation policies.
  if (path == '/v1/escalation-policies') {
    if (method == 'POST') {
      final id = v.nextUuid('2c41a8e2');
      final p = <String, Object?>{...input, 'id': id, 'createdAt': now, 'updatedAt': now, 'ruleCount': 0};
      v.policies[id] = p;
      return (status: 201, body: p);
    }
    return ok(v.policies.values.toList());
  }
  if (parts.length == 4 && path.startsWith('/v1/escalation-policies/')) {
    final p = v.policies[parts[3]];
    if (p == null) {
      return notFound();
    }
    switch (method) {
      case 'PUT':
        p
          ..removeWhere((k, _) => !const <String>{'id', 'createdAt', 'ruleCount'}.contains(k))
          ..addAll(<String, Object?>{...input, 'updatedAt': now});
        return ok(p);
      case 'DELETE':
        if (((p['ruleCount'] as int?) ?? 0) > 0) {
          return (status: 409, body: _problem(409, 'Policy in use', 'POLICY_IN_USE', 'Referenced by ${p['ruleCount']} rules.'));
        }
        v.policies.remove(parts[3]);
        return (status: 204, body: null);
      default:
        return ok(p);
    }
  }

  // Channels.
  if (path == '/v1/channels/types') {
    return ok(v.channelTypes);
  }
  if (path == '/v1/channels') {
    if (method == 'POST') {
      final url = (input['config'] as Map?)?['url'];
      if (url is String && url.contains('169.254.')) {
        return (status: 400, body: _problem(400, 'URL not allowed', 'URL_NOT_ALLOWED', 'config.url is refused by the outbound URL policy.'));
      }
      final id = v.nextUuid('9a7c3e51');
      final secrets = (input['secrets'] as Map?)?.keys.map((k) => '$k').toList() ?? <String>[];
      final c = <String, Object?>{...input, 'id': id, 'secretFields': secrets, 'createdAt': now, 'updatedAt': now, 'failedLast24h': 0}
        ..remove('secrets');
      v.channels[id] = c;
      return (status: 201, body: c);
    }
    return ok(v.channels.values.toList());
  }
  if (parts.length >= 4 && path.startsWith('/v1/channels/')) {
    final c = v.channels[parts[3]];
    if (c == null) {
      return notFound();
    }
    if (parts.length == 4) {
      switch (method) {
        case 'PUT':
          final url = (input['config'] as Map?)?['url'];
          if (url is String && url.contains('169.254.')) {
            return (status: 400, body: _problem(400, 'URL not allowed', 'URL_NOT_ALLOWED', 'config.url is refused by the outbound URL policy.'));
          }
          final secrets = input['secrets'] is Map
              ? (input['secrets']! as Map).keys.map((k) => '$k').toList()
              : c['secretFields'];
          final kept = <String, Object?>{
            for (final k in <String>['id', 'createdAt', 'lastDeliveryAt', 'failedLast24h', 'warnings'])
              if (c.containsKey(k)) k: c[k],
          };
          c
            ..clear()
            ..addAll(<String, Object?>{...input, ...kept, 'secretFields': secrets, 'updatedAt': now})
            ..remove('secrets');
          return ok(c);
        case 'DELETE':
          v.channels.remove(parts[3]);
          return (status: 204, body: null);
        default:
          return ok(c);
      }
    }
    if (parts[4] == 'test' && method == 'POST') {
      final url = '${(c['config'] as Map?)?['url'] ?? ''}';
      if (url.contains('.invalid')) {
        return ok(<String, Object?>{'success': false, 'status': null, 'durationMs': 3012, 'error': 'connect timed out: $url'});
      }
      c['lastDeliveryAt'] = now;
      return ok(<String, Object?>{'success': true, 'status': 200, 'durationMs': 184, 'error': null});
    }
    if (parts[4] == 'deliveries') {
      final status = query['status']?.first;
      final failing = (c['failedLast24h'] as int? ?? 0) > 0;
      final rows = <Map<String, Object?>>[
        for (var i = 0; i < 8; i++)
          <String, Object?>{
            'id': 7700 + i,
            'event': i == 5 ? 'system' : 'alert',
            'alertId': i == 5 ? null : 4107 - i,
            'status': failing && i < 2 ? 'failed' : (i == 3 ? 'suppressed' : 'delivered'),
            'attempts': failing && i < 2 ? 5 : 1,
            'lastError': failing && i < 2 ? 'HTTP 502 from the ntfy server' : null,
            'nextAttemptAt': null,
            'deliveredAt': failing && i < 2 || i == 3 ? null : _iso(DateTime.now().subtract(Duration(minutes: 11 + i * 23))),
            'kind': i == 4 ? 'update' : 'send',
            'deferredReason': i == 3 ? 'quiet_hours' : null,
            'edited': false,
            'escalationStep': i == 1 ? 1 : null,
          },
      ];
      return ok(<String, Object?>{
        'items': <Object?>[
          for (final r in rows)
            if (status == null || r['status'] == status) r,
        ],
        'nextCursor': null,
      });
    }
    return null;
  }

  // Watchlists.
  void recount(String id) {
    v.watchlists[id]!['itemCount'] = v.items[id]?.length ?? 0;
  }

  for (final id in v.watchlists.keys) {
    recount(id);
  }
  if (path == '/v1/watchlists') {
    if (method == 'POST') {
      final id = v.nextUuid('5e9d4b17');
      final w = <String, Object?>{
        'normalize': null,
        'description': null,
        ...input,
        'id': id,
        'itemCount': 0,
        'createdAt': now,
        'updatedAt': now,
      };
      v.watchlists[id] = w;
      v.items[id] = <String, Map<String, Object?>>{};
      return (status: 201, body: w);
    }
    return ok(<String, Object?>{'items': v.watchlists.values.toList(), 'nextCursor': null});
  }
  if (parts.length >= 4 && path.startsWith('/v1/watchlists/')) {
    final id = parts[3];
    final w = v.watchlists[id];
    if (w == null) {
      return notFound('UNKNOWN_WATCHLIST');
    }
    final held = v.items.putIfAbsent(id, () => <String, Map<String, Object?>>{});
    String? invalid(String value) => switch (w['identity']) {
      'mmsi' => RegExp(r'^\d{9}$').hasMatch(value) ? null : 'An MMSI is 9 digits.',
      'icao24' => RegExp(r'^[0-9A-Fa-f]{6}$').hasMatch(value) ? null : 'An ICAO address is 6 hex digits.',
      'imo' => RegExp(r'^\d{7}$').hasMatch(value) ? null : 'An IMO number is 7 digits.',
      _ => value.isEmpty ? 'Empty.' : null,
    };
    String normalized(String value) => switch (w['normalize'] ?? (w['identity'] == 'mmsi' || w['identity'] == 'imo' ? 'digits' : 'upper')) {
      'upper' => value.toUpperCase(),
      'lower' => value.toLowerCase(),
      'digits' => value.replaceAll(RegExp(r'\D'), ''),
      _ => value,
    };
    Map<String, Object?> apply(List<Object?> rows, {required bool replace, required bool dryRun, required String origin}) {
      final next = <String, Map<String, Object?>>{if (!replace) ...held};
      var added = 0;
      var updated = 0;
      final bad = <Object?>[];
      for (var i = 0; i < rows.length; i++) {
        final r = (rows[i]! as Map).cast<String, Object?>();
        final value = normalized('${r['value'] ?? ''}'.trim());
        if (invalid(value) case final reason?) {
          bad.add(<String, Object?>{'row': i + 1, 'value': r['value'], 'reason': reason});
          continue;
        }
        if (held.containsKey(value)) {
          updated++;
        } else {
          added++;
        }
        next[value] = <String, Object?>{
          'value': value,
          'label': r['label'],
          'notes': r['notes'],
          'tags': r['tags'] ?? <String>[],
          'addedAt': held[value]?['addedAt'] ?? now,
          'origin': held[value]?['origin'] ?? origin,
        };
      }
      final removed = replace ? held.keys.where((k) => !next.containsKey(k)).length : 0;
      final unchanged = (held.length - updated - removed).clamp(0, held.length);
      if (!dryRun) {
        held
          ..clear()
          ..addAll(next);
        w['updatedAt'] = now;
        recount(id);
      }
      return <String, Object?>{
        'dryRun': dryRun,
        'mode': replace ? 'replace' : 'merge',
        'added': added,
        'updated': updated,
        'removed': removed,
        'unchanged': unchanged,
        'invalid': bad,
        'itemCount': next.length,
      };
    }

    if (parts.length == 4) {
      switch (method) {
        case 'PUT':
          w
            ..['name'] = input['name']
            ..['normalize'] = held.isEmpty ? input['normalize'] : w['normalize']
            ..['description'] = input['description']
            ..['updatedAt'] = now;
          return ok(w);
        case 'DELETE':
          v.watchlists.remove(id);
          v.items.remove(id);
          return (status: 204, body: null);
        default:
          return ok(w);
      }
    }
    switch ((method, parts[4])) {
      case ('GET', 'items'):
        final prefix = (query['q']?.first ?? '').toLowerCase();
        final all = held.values
            .where((i) => prefix.isEmpty || '${i['value']}'.toLowerCase().startsWith(prefix) || '${i['label'] ?? ''}'.toLowerCase().startsWith(prefix))
            .toList()
          ..sort((a, b) => '${a['value']}'.compareTo('${b['value']}'));
        return ok(<String, Object?>{'items': all, 'nextCursor': null});
      case ('POST', 'items'):
        return ok(apply((input['items'] as List<Object?>?) ?? const <Object?>[], replace: false, dryRun: false, origin: 'manual'));
      case ('DELETE', 'items'):
        final values = query['value'] ?? const <String>[];
        var removed = 0;
        for (final value in values) {
          if (held.remove(normalized(value)) != null) {
            removed++;
          }
        }
        recount(id);
        return ok(<String, Object?>{
          'dryRun': false,
          'added': 0,
          'updated': 0,
          'removed': removed,
          'invalid': <Object?>[],
          'itemCount': held.length,
        });
      case ('POST', 'import'):
        final rows = body is List ? body : const <Object?>[];
        return ok(
          apply(
            rows,
            replace: query['mode']?.first == 'replace',
            dryRun: query['dryRun']?.first == 'true',
            origin: 'json',
          ),
        );
      case ('GET', 'export'):
        String cell(Object? s) {
          final t = s == null ? '' : '$s';
          return t.contains(',') || t.contains('"') ? '"${t.replaceAll('"', '""')}"' : t;
        }

        final lines = <String>[
          'value,label,notes,tags',
          for (final i in held.values)
            '${cell(i['value'])},${cell(i['label'])},${cell(i['notes'])},${cell(((i['tags'] as List<Object?>?) ?? const <Object?>[]).join(';'))}',
        ];
        return ok(PreviewText('${lines.join('\n')}\n', contentType: 'text/csv'));
    }
    return null;
  }
  return null;
}

/// The subject each preview kind reports, standing in for what a model reads
/// in the catalog: kinds of one subject belong in one dataset.
const Map<String, String> _kindSubject = <String, String>{
  'earthquake': 'natural hazards',
  'weather-alert': 'natural hazards',
  'fire': 'natural hazards',
  'disaster': 'natural hazards',
  'event': 'news events',
  'conflict': 'armed conflict',
  'aircraft': 'moving craft',
  'satellite': 'orbits',
};

/// `analyzeTriggerSources` without a model: a source shares a subject with
/// another in the set (relevant), only overlaps it loosely (marginal: broad
/// news events beside conflict), or with none of them (not meaningful).
AlertsReply analyzeSourcesPreview(Map<String, Object?> input) {
  final ids = <String>[...((input['sourceIds'] as List<Object?>?) ?? const <Object?>[]).map((e) => '$e')];
  final known = <String, PreviewSource>{for (final s in previewSources) s.id: s};
  final unknown = ids.where((id) => !known.containsKey(id)).toList();
  if (ids.length < 2 || ids.length > 50 || unknown.isNotEmpty || ids.toSet().length != ids.length) {
    return (
      status: 400,
      body: _problem(
        400,
        'Validation failed',
        'VALIDATION_FAILED',
        unknown.isNotEmpty ? 'sourceIds: ${unknown.first} is not a registered source id' : 'sourceIds: 2 to 50 distinct ids',
      ),
    );
  }
  final subjects = <String, String>{for (final id in ids) id: _kindSubject[known[id]!.kind] ?? known[id]!.kind};
  final counts = <String, int>{};
  for (final s in subjects.values) {
    counts[s] = (counts[s] ?? 0) + 1;
  }
  final main = counts.entries.reduce((a, b) => b.value > a.value ? b : a).key;
  final kinds = <String, int>{};
  for (final id in ids) {
    kinds[known[id]!.kind] = (kinds[known[id]!.kind] ?? 0) + 1;
  }
  return (
    status: 200,
    body: <String, Object?>{
      'advisory': true,
      'summary': 'A dataset about $main.',
      'sources': <Object?>[
        for (final id in ids)
          () {
            final s = known[id]!;
            final subject = subjects[id]!;
            final others = counts[subject]! - 1;
            final (verdict, reason) = others > 0
                ? ('relevant', 'Reports ${s.kind} records, $subject like $others other source${others == 1 ? '' : 's'} in the set.')
                : subject == 'news events' && counts.containsKey('armed conflict')
                ? ('marginal', 'Broad news events overlap the conflict source but add mostly unrelated stories.')
                : ('not-meaningful', 'Reports $subject; nothing else in the set is about $subject, so it shares no kind or subject with the rest.');
            return <String, Object?>{
              'sourceId': id,
              'name': s.name,
              'kinds': <String>[s.kind],
              'verdict': verdict,
              'reason': reason,
            };
          }(),
      ],
      'shared': <String, Object?>{
        'kinds': <String>[
          for (final e in kinds.entries)
            if (e.value > 1) e.key,
        ],
        'entityTypes': const <String>[],
      },
      'model': 'preview',
      'template': const <String, Object?>{'templateId': 'source-relevance-system', 'version': '1.0.0'},
    },
  );
}
