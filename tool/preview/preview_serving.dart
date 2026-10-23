// The preview's fake answers for outbound sinks, export, snapshot and pack
// jobs, holds, the cold archive, peers and federation. Bodies follow their
// schemas in openapi/OpenAPI.json (SinkType, Sink, SinkStatus,
// SinkTestResult, ExportJob, ExportManifest, Hold, ArchiveSettings,
// ArchivePartition, FederationInfo, Peer, PeerTestResult, PeerIngestKey).
// The sink types' config schemas are illustrative; the contract gives only
// their shape. A job moves from QUEUED through RUNNING to DONE over about
// ten seconds of reads.
import 'dart:math';

import 'preview_alerts.dart' show AlertsReply;

Map<String, Object?> _problem(int status, String title, String code, [String? detail]) =>
    <String, Object?>{'title': title, 'status': status, 'code': code, 'detail': ?detail};

String _iso(DateTime t) => t.toUtc().toIso8601String().replaceFirst(RegExp(r'\.\d+Z$'), 'Z');

String _ago(int minutes) => _iso(DateTime.now().subtract(Duration(minutes: minutes)));

final Random _random = Random(14);

const String _crockford = '0123456789ABCDEFGHJKMNPQRSTVWXYZ';

String _ulid() => <String>['01K', for (var i = 0; i < 23; i++) _crockford[_random.nextInt(32)]].join();

String _hex(int length) => <String>[for (var i = 0; i < length; i++) '0123456789abcdef'[_random.nextInt(16)]].join();

// us-english-allow-start: the contract's own wire names (`licenceSummary`,
// `licences`, `licence`, `CANCELLED`) and its egress reasons.
const String _summaryKey = 'licenceSummary';
const String _licensesKey = 'licences';
const String _licenseKey = 'licence';
const String _canceled = 'CANCELLED';
const String _forbiddenReason = 'licence-forbidden';
const String _localOnlyReason = 'licence-local-only';
// us-english-allow-end

Map<String, Object?> _licenseSummary({bool personal = false}) => <String, Object?>{
  _licensesKey: <Object?>[
    <String, Object?>{
      'terms': <String, Object?>{
        'id': 'CC-BY-4.0',
        'name': 'CC BY 4.0',
        'commercialUse': 'ALLOWED',
        'shareAlike': false,
        'attributionRequired': true,
        'redistribution': 'ALLOWED',
      },
      'sources': <String>['usgs-quakes', 'emsc-quakes'],
      'rows': 18342,
    },
    <String, Object?>{
      'terms': <String, Object?>{
        'id': 'ODbL-1.0',
        'name': 'ODbL 1.0',
        'commercialUse': 'ALLOWED',
        'shareAlike': true,
        'attributionRequired': true,
        'redistribution': 'ALLOWED',
      },
      'sources': <String>['osm-places'],
      'rows': 2210,
    },
  ],
  'attributions': <Object?>[
    <String, Object?>{'text': 'Earthquake data: USGS', _licenseKey: 'CC-BY-4.0', 'requiredDisplay': false, 'sourceId': 'usgs-quakes'},
    <String, Object?>{'text': '© OpenStreetMap contributors', _licenseKey: 'ODbL-1.0', 'requiredDisplay': true, 'sourceId': 'osm-places'},
  ],
  'personalUseOnly': personal,
  'personalUseSources': personal ? <String>['acled'] : <String>[],
  'excluded': personal
      ? <Object?>[]
      : <Object?>[
          <String, Object?>{'sourceId': 'acled', 'reason': _forbiddenReason},
          <String, Object?>{'sourceId': 'aisstream', 'reason': _forbiddenReason},
        ],
};

Map<String, Object?> _schema(Map<String, Map<String, Object?>> properties, List<String> required) => <String, Object?>{
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': properties,
  'required': required,
};

/// The preview's serving state.
class PreviewServing {
  /// Creates the state, seeded relative to now.
  PreviewServing() {
    for (final s in <Map<String, Object?>>[
      _sink('home-assistant', 'mqtt-state', 'Home Assistant', 'PUSH', true, 'RUNNING',
          config: <String, Object?>{'broker': 'tcp://10.0.0.5:1883', 'topicPrefix': 'foresignal', 'qos': 1, 'retain': true},
          secrets: <String>['password'],
          filter: <String, Object?>{'sources': <String>['usgs-quakes', 'meteoalarm'], 'kinds': <String>[], 'includePrivate': false}),
      _sink('atak-lan', 'cot', 'ATAK on the LAN', 'SERVE', true, 'RUNNING',
          config: <String, Object?>{'mode': 'SERVE', 'bind': '192.168.1.20', 'port': 8087, 'maxClients': 8},
          filter: <String, Object?>{'sources': <String>[], 'kinds': <String>['track.aircraft', 'track.vessel'], 'bbox': <num>[18.0, 53.5, 24.0, 56.5]}),
      _sink('events-webhook', 'cloudevents', 'Events webhook', 'PUSH', true, 'FAILING',
          config: <String, Object?>{'url': 'https://events.example.org/ingest', 'batchSize': 50},
          secrets: <String>['token']),
      _sink('readsb-feed', 'readsb-json', 'readsb feed', 'SERVE', false, null,
          config: <String, Object?>{'bind': '127.0.0.1', 'port': 30154}),
    ]) {
      sinks['${s['id']}'] = s;
      statuses['${s['id']}'] = _status(s);
    }
    final atak = statuses['atak-lan']!;
    atak['clients'] = <String, Object?>{
      'connected': 2,
      'max': 8,
      'rejected': 0,
      'peers': <Object?>[
        <String, Object?>{'address': '192.168.1.41:51200', 'connectedAt': _ago(95)},
        <String, Object?>{'address': '192.168.1.57:49812', 'connectedAt': _ago(12)},
      ],
    };
    final hook = statuses['events-webhook']!;
    hook
      ..['lastError'] = 'HTTP 503 from events.example.org'
      ..['failingSince'] = _ago(38)
      ..['lagSeq'] = 1840;
    final ha = statuses['home-assistant']!;
    ha['denied'] = <String, Object?>{
      'total': 214,
      'byReason': <String, Object?>{_forbiddenReason: 180, _localOnlyReason: 34},
      'bySource': <String, Object?>{'acled': 180, 'local-sensors': 34},
    };

    final now = DateTime.now();
    for (final j in <Map<String, Object?>>[
      _job('EXPORT', 'geoparquet', 'DONE', now.subtract(const Duration(hours: 26)), name: 'Quakes, October', rows: 18342, bytes: 4182231),
      _job('PACK', 'pmtiles', 'DONE', now.subtract(const Duration(hours: 5)), name: 'Baltic offline', rows: 52811, bytes: 61822012, pack: true),
      _job('EXPORT', 'geopackage', 'FAILED', now.subtract(const Duration(hours: 3)), name: 'All tracks', error: 'Disk quota exceeded (exports.diskQuotaGb 20).'),
      _job('EXPORT', 'flatgeobuf', 'EXPIRED', now.subtract(const Duration(days: 9)), name: 'Warnings, September'),
      _job('EXPORT', 'gpx', _canceled, now.subtract(const Duration(days: 2)), name: 'Vessel track MMSI 230123456'),
      _job('SNAPSHOT', 'geoparquet', 'DONE', now.subtract(const Duration(days: 4)), name: 'Before the migration', rows: 120443, bytes: 28311092),
    ]) {
      jobs['${j['id']}'] = j;
    }

    final hold = <String, Object?>{
      'id': _ulid(),
      'name': 'Baltic incident, September',
      'reason': 'Keep the vessel and aircraft records around the cable damage for the inquiry.',
      'sources': <String>['aisstream', 'opensky'],
      'kinds': <String>['track.vessel', 'track.aircraft'],
      'from': '2026-09-14T00:00:00Z',
      'to': '2026-09-21T00:00:00Z',
      'fromSeq': null,
      'toSeq': null,
      'expiresAt': '2027-09-21T00:00:00Z',
      'createdAt': _ago(60 * 24 * 30),
      'createdBy': 'admin',
      'heldRows': 182344,
      'heldBytes': 94418201,
    };
    holds['${hold['id']}'] = hold;

    for (var day = 0; day < 12; day++) {
      final date = now.toUtc().subtract(Duration(days: day + 30));
      final d = '${date.year}-${'${date.month}'.padLeft(2, '0')}-${'${date.day}'.padLeft(2, '0')}';
      for (final (tier, source) in <(String, String)>[('std', 'usgs-quakes'), ('trk', 'opensky'), ('std', 'meteoalarm')]) {
        final base = 900000 + day * 10000 + source.length * 100;
        partitions.add(<String, Object?>{
          'tier': tier,
          'sourceId': source,
          'date': d,
          'path': 'record_version/tier=$tier/source_id=$source/date=$d',
          'files': <Object?>[
            for (var p = 0; p < (tier == 'trk' ? 3 : 1); p++)
              <String, Object?>{
                'name': 'part-${base + p * 3000}-${base + p * 3000 + 2999}.parquet',
                'fromSeq': base + p * 3000,
                'toSeq': base + p * 3000 + 2999,
                'rows': tier == 'trk' ? 2981 : 412,
                'bytes': tier == 'trk' ? 1882201 : 120334,
                'sha256': _hex(64),
                'local': day < 6,
                'uploadedAt': _iso(date.add(const Duration(hours: 3))),
                's3Key': 'prod/record_version/tier=$tier/source_id=$source/date=$d/part-${base + p * 3000}.parquet',
              },
          ],
          _licenseKey: null,
        });
      }
    }

    for (final p in <Map<String, Object?>>[
      _peer('hub-north', 'North hub', 'https://hub-north.example.net', 'PULL', 'streaming',
          lastSeq: 482113, lagSeq: 12, pinnedKid: 'hub-north-2026-09', reliability: 'B', sameOperator: true, exchangeKey: true),
      _peer('partner-coast', 'Coastguard partner', 'https://fs.coast-partner.example', 'PULL', 'failing',
          lastSeq: 120998, lagSeq: 3410, pinnedKid: 'partner-2026-04', reliability: 'C',
          healthReason: 'PEER_KEY_MISMATCH', lastError: 'Signed with partner-2026-10; pinned partner-2026-04.'),
      _peer('edge-van-3', 'Edge van 3', 'https://edge-van-3.tail9f2.ts.net', 'RECEIVE', 'receiving',
          lastSeq: 22014, reliability: 'B', ingestKeyPrefix: 'fsp_k3Zq'),
    ]) {
      peers['${p['id']}'] = p;
    }
  }

  /// Sinks by id.
  final Map<String, Map<String, Object?>> sinks = <String, Map<String, Object?>>{};

  /// Sink status by sink id.
  final Map<String, Map<String, Object?>> statuses = <String, Map<String, Object?>>{};

  /// Jobs by id.
  final Map<String, Map<String, Object?>> jobs = <String, Map<String, Object?>>{};

  /// Holds by id.
  final Map<String, Map<String, Object?>> holds = <String, Map<String, Object?>>{};

  /// Archive partitions, newest first.
  final List<Map<String, Object?>> partitions = <Map<String, Object?>>[];

  /// Peers by id.
  final Map<String, Map<String, Object?>> peers = <String, Map<String, Object?>>{};

  /// The remote signing key each peer presents now.
  final Map<String, String> remoteKids = <String, String>{
    'hub-north': 'hub-north-2026-09',
    'partner-coast': 'partner-2026-10',
  };

  /// The archive settings.
  Map<String, Object?> archive = <String, Object?>{
    'enabled': true,
    'target': 's3',
    'root': '',
    'sources': <String>[],
    'keepLocal': true,
    's3': <String, Object?>{
      'endpoint': 'https://s3.eu-central-1.example.com',
      'bucket': 'foresignal-archive',
      'prefix': 'prod/',
      'region': 'eu-central-1',
      'pathStyle': false,
    },
    'secretsSet': <String>['accessKey', 'secretKey'],
  };

  /// The sink types.
  final List<Map<String, Object?>> types = <Map<String, Object?>>[
    <String, Object?>{
      'id': 'mqtt-state',
      'name': 'MQTT state',
      'description': 'Current state of each record as retained MQTT topics, for Home Assistant or Node-RED.',
      'kind': 'STATE_MIRROR',
      'modes': <String>['PUSH'],
      'configSchema': _schema(<String, Map<String, Object?>>{
        'broker': <String, Object?>{'type': 'string', 'description': 'tcp:// or ssl:// broker URL'},
        'topicPrefix': <String, Object?>{'type': 'string', 'default': 'foresignal'},
        'qos': <String, Object?>{'type': 'integer', 'enum': <int>[0, 1, 2], 'default': 1},
        'retain': <String, Object?>{'type': 'boolean', 'default': true},
        'username': <String, Object?>{'type': 'string'},
      }, <String>['broker']),
      'secretFields': <String>['password'],
      'defaultMaxPerSecond': 50,
    },
    <String, Object?>{
      'id': 'cot',
      'name': 'Cursor on Target',
      'description': 'CoT events for ATAK and WinTAK, pushed to a TAK server or served on the LAN.',
      'kind': 'CHANGE_FEED',
      'modes': <String>['PUSH', 'SERVE'],
      'configSchema': _schema(<String, Map<String, Object?>>{
        'mode': <String, Object?>{'type': 'string', 'enum': <String>['PUSH', 'SERVE']},
        'target': <String, Object?>{'type': 'string', 'description': 'tcp://host:port of a TAK server (PUSH)'},
        'bind': <String, Object?>{'type': 'string', 'default': '127.0.0.1'},
        'port': <String, Object?>{'type': 'integer', 'description': 'Required for SERVE'},
        'maxClients': <String, Object?>{'type': 'integer', 'default': 8},
        'staleSeconds': <String, Object?>{'type': 'integer', 'default': 120},
      }, <String>['mode']),
      'secretFields': <String>[],
      'defaultMaxPerSecond': 50,
    },
    <String, Object?>{
      'id': 'readsb-json',
      'name': 'readsb JSON',
      'description': 'aircraft.json in the readsb format, for tar1090 and similar map views.',
      'kind': 'STATE_MIRROR',
      'modes': <String>['SERVE'],
      'configSchema': _schema(<String, Map<String, Object?>>{
        'bind': <String, Object?>{'type': 'string', 'default': '127.0.0.1'},
        'port': <String, Object?>{'type': 'integer'},
      }, <String>['port']),
      'secretFields': <String>[],
      'defaultMaxPerSecond': null,
    },
    <String, Object?>{
      'id': 'sbs',
      'name': 'SBS BaseStation',
      'description': 'Aircraft as SBS-1 lines on port 30003.',
      'kind': 'CHANGE_FEED',
      'modes': <String>['SERVE'],
      'configSchema': _schema(<String, Map<String, Object?>>{
        'bind': <String, Object?>{'type': 'string', 'default': '127.0.0.1'},
        'port': <String, Object?>{'type': 'integer', 'default': 30003},
      }, <String>['port']),
      'secretFields': <String>[],
      'defaultMaxPerSecond': null,
    },
    <String, Object?>{
      'id': 'nmea-aivdm',
      'name': 'NMEA AIVDM',
      'description': 'Vessels as AIS sentences, for OpenCPN.',
      'kind': 'CHANGE_FEED',
      'modes': <String>['SERVE'],
      'configSchema': _schema(<String, Map<String, Object?>>{
        'bind': <String, Object?>{'type': 'string', 'default': '127.0.0.1'},
        'port': <String, Object?>{'type': 'integer', 'default': 10110},
      }, <String>['port']),
      'secretFields': <String>[],
      'defaultMaxPerSecond': null,
    },
    <String, Object?>{
      'id': 'aprs-is-serve',
      'name': 'APRS-IS',
      'description': 'Positions as an APRS-IS server for Xastir and YAAC.',
      'kind': 'CHANGE_FEED',
      'modes': <String>['SERVE'],
      'configSchema': _schema(<String, Map<String, Object?>>{
        'bind': <String, Object?>{'type': 'string', 'default': '127.0.0.1'},
        'port': <String, Object?>{'type': 'integer', 'default': 14580},
      }, <String>['port']),
      'secretFields': <String>[],
      'defaultMaxPerSecond': null,
    },
    <String, Object?>{
      'id': 'cloudevents',
      'name': 'CloudEvents webhook',
      'description': 'Each change as a CloudEvent, posted in batches.',
      'kind': 'CHANGE_FEED',
      'modes': <String>['PUSH'],
      'configSchema': _schema(<String, Map<String, Object?>>{
        'url': <String, Object?>{'type': 'string', 'description': 'HTTPS endpoint'},
        'batchSize': <String, Object?>{'type': 'integer', 'default': 50},
      }, <String>['url']),
      'secretFields': <String>['token'],
      'defaultMaxPerSecond': 50,
    },
    <String, Object?>{
      'id': 'federation-push',
      'name': 'Federation push',
      'description': 'Pushes to a hub as an edge relay.',
      'kind': 'CHANGE_FEED',
      'modes': <String>['PUSH'],
      'configSchema': _schema(<String, Map<String, Object?>>{
        'hubUrl': <String, Object?>{'type': 'string'},
        'peerId': <String, Object?>{'type': 'string', 'description': 'This instance\'s peer id on the hub'},
      }, <String>['hubUrl', 'peerId']),
      'secretFields': <String>['ingestKey'],
      'defaultMaxPerSecond': 50,
    },
  ];

  Map<String, Object?> _sink(
    String id,
    String type,
    String name,
    String mode,
    bool enabled,
    String? state, {
    Map<String, Object?> config = const <String, Object?>{},
    List<String> secrets = const <String>[],
    Map<String, Object?> filter = const <String, Object?>{},
  }) => <String, Object?>{
    'id': id,
    'type': type,
    'kind': types.firstWhere((t) => t['id'] == type)['kind'],
    'mode': mode,
    'name': name,
    'enabled': enabled,
    'config': config,
    'secretsSet': secrets,
    'filter': filter,
    'state': state,
    'createdAt': _ago(60 * 24 * 20),
    'updatedAt': _ago(60 * 24 * 2),
  };

  Map<String, Object?> _status(Map<String, Object?> s) => <String, Object?>{
    'sinkId': s['id'],
    'state': s['state'] ?? 'STOPPED',
    'lastSeq': s['enabled'] == true ? 1204411 : null,
    'watermarkSeq': 1204420,
    'lastPublishedSeq': 1204420,
    'lagSeq': s['enabled'] == true ? 9 : null,
    'lastDeliveredAt': s['enabled'] == true ? _ago(1) : null,
    'lastError': null,
    'failingSince': null,
    'resyncCount': 1,
    'delivered': s['enabled'] == true ? 380221 : 0,
    'dropped': s['enabled'] == true ? 1204 : 0,
    'denied': <String, Object?>{'total': 0, 'byReason': <String, Object?>{}, 'bySource': <String, Object?>{}},
    'clients': s['mode'] == 'SERVE' ? <String, Object?>{'connected': 0, 'max': 8, 'rejected': 0, 'peers': <Object?>[]} : null,
  };

  Map<String, Object?> _job(
    String kind,
    String format,
    String status,
    DateTime created, {
    String? name,
    int? rows,
    int? bytes,
    String? error,
    bool pack = false,
    Map<String, Object?> spec = const <String, Object?>{},
    bool personal = false,
  }) {
    final id = _ulid();
    final done = status == 'DONE';
    final finished = status == 'QUEUED' || status == 'RUNNING' ? null : created.add(const Duration(minutes: 2));
    final expires = kind == 'SNAPSHOT' ? null : created.add(const Duration(days: 7));
    return <String, Object?>{
      'id': id,
      'kind': kind,
      'format': format,
      'spec': <String, Object?>{'name': ?name, 'format': format, ...spec},
      'name': ?name,
      'status': status,
      'progress': done ? 100 : 0,
      'principal': 'tok_admin',
      'rowCount': rows,
      'bytes': bytes,
      'manifestSha256': done ? _hex(64) : null,
      _summaryKey: done ? _licenseSummary(personal: personal) : null,
      'watermarkSeq': done ? 1204420 : null,
      'personalUse': personal,
      'createdAt': _iso(created),
      'startedAt': status == 'QUEUED' ? null : _iso(created.add(const Duration(seconds: 2))),
      'finishedAt': finished == null ? null : _iso(finished),
      'expiresAt': expires == null ? null : _iso(expires),
      'error': error,
      'downloadUrl': done ? '/v1/exports/$id/download' : null,
      'manifestUrl': done ? '/v1/exports/$id/manifest' : null,
      'files': done
          ? <Object?>[
              if (pack) ...<Object?>[
                _file(id, 'baltic-offline.mvt.pmtiles', 48211044, created),
                _file(id, 'baltic-offline.png.pmtiles', 13610968, created),
              ] else
                _file(id, '${(name ?? 'export').toLowerCase().replaceAll(RegExp('[^a-z0-9]+'), '-')}.${_extension(format)}', bytes ?? 0, created),
            ]
          : <Object?>[],
      if (kind == 'SNAPSHOT') ...<String, Object?>{'atSeq': 1180022, 'asOf': null, 'heldSources': <String>[]},
    };
  }

  static String _extension(String format) => switch (format) {
    'geoparquet' => 'parquet',
    'geopackage' => 'gpkg',
    'flatgeobuf' => 'fgb',
    _ => format,
  };

  Map<String, Object?> _file(String id, String name, int bytes, DateTime created) => <String, Object?>{
    'name': name,
    'url': '/v1/exports/$id/download?file=${Uri.encodeQueryComponent(name)}',
    'bytes': bytes,
    'sha256': _hex(64),
    'mediaType': 'application/octet-stream',
    'expiresAt': _iso(created.add(const Duration(days: 7))),
  };

  Map<String, Object?> _peer(
    String id,
    String name,
    String baseUrl,
    String mode,
    String state, {
    int? lastSeq,
    int? lagSeq,
    String? pinnedKid,
    String reliability = 'C',
    bool sameOperator = false,
    bool exchangeKey = false,
    String? healthReason,
    String? lastError,
    String? ingestKeyPrefix,
  }) => <String, Object?>{
    'id': id,
    'name': name,
    'baseUrl': baseUrl,
    'mode': mode,
    'enabled': true,
    'state': state,
    'healthReason': healthReason,
    'lastSeq': lastSeq,
    'lagSeq': lagSeq,
    'lastError': lastError,
    'pinnedKid': pinnedKid,
    'remoteInstanceId': mode == 'PULL' ? 'fs-${_hex(8)}' : null,
    'selection': <String, Object?>{
      'sources': <String>[],
      'kinds': mode == 'PULL' ? <String>['track.vessel', 'event.quake'] : <String>[],
      'bbox': null,
      'placeId': null,
      'maxAge': '7d',
      'backfill': 'none',
      'live': mode == 'PULL',
      'maxHops': 3,
      'trackTtl': '10m',
    },
    'sameOperator': sameOperator,
    'reliability': reliability,
    'tokenSet': mode == 'PULL',
    'ingestKeyPrefix': ingestKeyPrefix,
    'sourceIds': <String>['peer-$id', 'peer-$id-trk', if (mode == 'RECEIVE') 'peer-$id-events'],
    'createdAt': _ago(60 * 24 * 40),
    'updatedAt': _ago(60 * 24 * 3),
    'exchangeKeySet': exchangeKey,
  };

  /// [j] as read now: a queued or running job advances with time.
  Map<String, Object?> view(Map<String, Object?> j) {
    final status = j['status'];
    if (status != 'QUEUED' && status != 'RUNNING') {
      return j;
    }
    final elapsed = DateTime.now().difference(DateTime.parse('${j['createdAt']}')).inMilliseconds / 1000;
    if (elapsed < 2) {
      return j;
    }
    if (elapsed < 10) {
      j
        ..['status'] = 'RUNNING'
        ..['startedAt'] ??= _iso(DateTime.parse('${j['createdAt']}').add(const Duration(seconds: 2)))
        ..['progress'] = ((elapsed - 2) * 12.5).clamp(1, 99).round();
      return j;
    }
    final id = '${j['id']}';
    final created = DateTime.parse('${j['createdAt']}');
    final pack = j['kind'] == 'PACK';
    final rows = pack ? 41022 : 9318 + _random.nextInt(900);
    final bytes = pack ? 33102881 : 2201833 + _random.nextInt(90000);
    j
      ..['status'] = 'DONE'
      ..['progress'] = 100
      ..['rowCount'] = rows
      ..['bytes'] = bytes
      ..['manifestSha256'] = _hex(64)
      ..[_summaryKey] = _licenseSummary(personal: j['personalUse'] == true)
      ..['watermarkSeq'] = 1204420
      ..['finishedAt'] = _iso(created.add(const Duration(seconds: 10)))
      ..['downloadUrl'] = '/v1/exports/$id/download'
      ..['manifestUrl'] = '/v1/exports/$id/manifest'
      ..['files'] = <Object?>[
        if (pack) ...<Object?>[
          _file(id, '${_slug(j)}.mvt.pmtiles', 25102881, created),
          _file(id, '${_slug(j)}.png.pmtiles', 8000000, created),
        ] else
          _file(id, '${_slug(j)}.${_extension('${j['format']}')}', bytes, created),
      ];
    if (j['kind'] == 'SNAPSHOT') {
      j['atSeq'] ??= 1204420;
    }
    return j;
  }

  static String _slug(Map<String, Object?> j) =>
      '${j['name'] ?? j['kind']}'.toLowerCase().replaceAll(RegExp('[^a-z0-9]+'), '-');

  /// A new job queued now from [spec].
  Map<String, Object?> queue(String kind, String format, Map<String, Object?> spec) {
    final j = _job(kind, format, 'QUEUED', DateTime.now(), name: spec['name'] as String?, spec: spec, personal: spec['personalUse'] == true);
    if (kind == 'SNAPSHOT') {
      j
        ..['atSeq'] = spec['atSeq'] ?? 1204420
        ..['asOf'] = spec['asOf']
        ..['heldSources'] = <String>[];
    }
    jobs['${j['id']}'] = j;
    return j;
  }
}

/// Answers [method] [path] for the sink, export, archive, peer and
/// federation operations from [v], or `null` when the path is not one of
/// them.
AlertsReply? answerServing(
  String method,
  String path,
  Map<String, List<String>> query,
  Object? body,
  PreviewServing v,
) {
  final input = body is Map ? body.cast<String, Object?>() : const <String, Object?>{};
  final parts = <String>[for (final p in path.split('/')) Uri.decodeComponent(p)];
  AlertsReply ok(Object? b, [int status = 200]) => (status: status, body: b);
  AlertsReply notFound([String code = 'NOT_FOUND']) => (status: 404, body: _problem(404, 'Not found', code));
  AlertsReply invalid(String detail, [String code = 'VALIDATION_FAILED']) =>
      (status: 400, body: _problem(400, 'Validation failed', code, detail));
  final now = _iso(DateTime.now());
  final idPattern = RegExp(r'^[a-z0-9]+(-[a-z0-9]+)*$');

  // Sinks.
  if (path == '/v1/sinks/types' && method == 'GET') {
    return ok(v.types);
  }
  if (path == '/v1/sinks' && method == 'GET') {
    return ok(<String, Object?>{'items': v.sinks.values.toList(), 'nextCursor': null});
  }
  if (path == '/v1/sinks' && method == 'POST') {
    final id = '${input['id'] ?? ''}';
    final type = v.types.where((t) => t['id'] == input['type']).firstOrNull;
    if (!idPattern.hasMatch(id)) {
      return invalid('id must be lower-case words joined by -.');
    }
    if (type == null) {
      return invalid('Unknown sink type ${input['type']}.');
    }
    if (v.sinks.containsKey(id)) {
      return (status: 409, body: _problem(409, 'A sink with this id exists', 'SINK_EXISTS'));
    }
    final config = (input['config'] as Map?)?.cast<String, Object?>() ?? <String, Object?>{};
    final schema = (type['configSchema']! as Map).cast<String, Object?>();
    for (final r in (schema['required'] as List?) ?? const <Object?>[]) {
      if (config['$r'] == null || config['$r'] == '') {
        return invalid('config.$r is required by ${type['id']}.');
      }
    }
    final modes = (type['modes']! as List).cast<String>();
    final mode = modes.contains(config['mode']) ? '${config['mode']}' : modes.first;
    if (mode == 'SERVE' && config['port'] == null) {
      return invalid('SERVE sinks need config.port.');
    }
    final bind = '${config['bind'] ?? '127.0.0.1'}';
    if (mode == 'SERVE' && bind == '0.0.0.0' && config['allowAllInterfaces'] != true) {
      return invalid('bind 0.0.0.0 needs allowAllInterfaces.');
    }
    final enabled = input['enabled'] == true;
    final secrets = (input['secrets'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};
    final s = <String, Object?>{
      'id': id,
      'type': type['id'],
      'kind': type['kind'],
      'mode': mode,
      'name': input['name'],
      'enabled': enabled,
      'config': config,
      'secretsSet': <String>[for (final e in secrets.entries) if (e.value != null) e.key],
      'filter': input['filter'] ?? <String, Object?>{},
      'state': enabled ? 'RUNNING' : null,
      'createdAt': now,
      'updatedAt': now,
    };
    v.sinks[id] = s;
    v.statuses[id] = v._status(s)
      ..['delivered'] = 0
      ..['dropped'] = 0
      ..['resyncCount'] = 0;
    return ok(s, 201);
  }
  if (parts.length >= 4 && parts[1] == 'v1' && parts[2] == 'sinks') {
    final id = parts[3];
    final s = v.sinks[id];
    if (s == null) {
      return notFound();
    }
    if (parts.length == 4 && method == 'GET') {
      return ok(s);
    }
    if (parts.length == 4 && method == 'PUT') {
      if ('${input['name'] ?? ''}'.trim().isEmpty) {
        return invalid('name is required.');
      }
      final enabled = input['enabled'] == true;
      final set = <String>{...(s['secretsSet']! as List).cast<String>()};
      if (input.containsKey('secrets') && input['secrets'] == null) {
        set.clear();
      }
      for (final e in ((input['secrets'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{}).entries) {
        if (e.value == null) {
          set.remove(e.key);
        } else {
          set.add(e.key);
        }
      }
      s
        ..['name'] = input['name']
        ..['enabled'] = enabled
        ..['config'] = input['config'] ?? s['config']
        ..['filter'] = input['filter'] ?? s['filter']
        ..['secretsSet'] = set.toList()
        ..['state'] = enabled ? (s['state'] ?? 'RUNNING') : null
        ..['updatedAt'] = now;
      v.statuses[id]!['state'] = s['state'] ?? 'STOPPED';
      return ok(s);
    }
    if (parts.length == 4 && method == 'DELETE') {
      v.sinks.remove(id);
      v.statuses.remove(id);
      return ok(null, 204);
    }
    if (parts.length == 5 && parts[4] == 'status' && method == 'GET') {
      return ok(v.statuses[id]);
    }
    if (parts.length == 5 && parts[4] == 'resync' && method == 'POST') {
      final st = v.statuses[id]!;
      st
        ..['state'] = 'RESYNCING'
        ..['resyncCount'] = ((st['resyncCount'] as int?) ?? 0) + 1;
      s['state'] = 'RESYNCING';
      return ok(st, 202);
    }
    if (parts.length == 5 && parts[4] == 'test' && method == 'POST') {
      final config = (s['config'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};
      final target = '${config['url'] ?? config['broker'] ?? config['target'] ?? ''}';
      if (target.contains('events.example.org')) {
        return ok(<String, Object?>{
          'ok': false,
          'phase': 'send',
          'message': 'HTTP 503 Service Unavailable from events.example.org',
          'latencyMs': 412,
          'details': <String, Object?>{'status': 503},
        });
      }
      if (s['mode'] == 'SERVE') {
        return ok(<String, Object?>{
          'ok': true,
          'phase': 'send',
          'message': 'Bound ${config['bind'] ?? '127.0.0.1'}:${config['port']} and sent one ${input['kind'] ?? 'point'} record.',
          'latencyMs': 3,
          'details': <String, Object?>{'clients': v.statuses[id]?['clients'] is Map ? (v.statuses[id]!['clients']! as Map)['connected'] : 0},
        });
      }
      return ok(<String, Object?>{
        'ok': true,
        'phase': 'send',
        'message': 'Connected to $target and sent one ${input['kind'] ?? 'point'} record.',
        'latencyMs': 18,
        'details': <String, Object?>{if (config['topicPrefix'] != null) 'topic': '${config['topicPrefix']}/preview/test'},
      });
    }
    return null;
  }

  // Exports, snapshots and packs.
  if (path == '/v1/exports' && method == 'GET') {
    final kind = query['kind']?.first;
    final status = query['status']?.first;
    final limit = int.tryParse(query['limit']?.first ?? '') ?? 100;
    final offset = int.tryParse(query['cursor']?.first ?? '') ?? 0;
    final all = <Map<String, Object?>>[
      for (final j in v.jobs.values.map(v.view))
        if ((kind == null || j['kind'] == kind) && (status == null || j['status'] == status)) j,
    ]..sort((a, b) => '${b['createdAt']}'.compareTo('${a['createdAt']}'));
    final page = all.skip(offset).take(limit).toList();
    return ok(<String, Object?>{'items': page, 'nextCursor': offset + limit < all.length ? '${offset + limit}' : null});
  }
  if (path == '/v1/exports' && method == 'POST') {
    final format = '${input['format'] ?? 'geoparquet'}';
    if (format == 'gpx' && input['mode'] != 'history') {
      return invalid('gpx requires mode=history.', 'EXPORT_SPEC_INVALID');
    }
    return ok(v.queue('EXPORT', format, input), 202);
  }
  if (path == '/v1/snapshots' && method == 'POST') {
    final at = input['atSeq'];
    if (at is int && at < 900000) {
      return invalid('Seq $at is below the retention floor of usgs-quakes (900000) and no hold covers it.', 'SNAPSHOT_BEYOND_RETENTION');
    }
    return ok(v.queue('SNAPSHOT', 'geoparquet', input), 202);
  }
  if (path == '/v1/packs' && method == 'POST') {
    final bbox = (input['bbox'] as List?)?.cast<num>();
    final maxZoom = (input['maxZoom'] as int?) ?? 0;
    if (bbox != null) {
      final span = ((bbox[2] - bbox[0]).abs() / 360) * ((bbox[3] - bbox[1]).abs() / 180);
      final tiles = (span * pow(4, maxZoom) * 1.34).round();
      if (tiles > 200000) {
        return (
          status: 413,
          body: <String, Object?>{
            ..._problem(413, 'Too many tiles', 'PACK_TOO_LARGE', '$tiles tiles; the limit is 200,000. Lower the highest zoom or shrink the area.'),
            'tileCount': tiles,
          },
        );
      }
    }
    return ok(v.queue('PACK', 'pmtiles', input), 202);
  }
  if (parts.length >= 4 && parts[1] == 'v1' && parts[2] == 'exports') {
    final id = parts[3];
    final raw = v.jobs[id];
    if (raw == null) {
      return notFound('UNKNOWN_EXPORT');
    }
    final j = v.view(raw);
    if (parts.length == 4 && method == 'GET') {
      return ok(j);
    }
    if (parts.length == 4 && method == 'DELETE') {
      if (j['status'] == 'QUEUED' || j['status'] == 'RUNNING') {
        j
          ..['status'] = _canceled
          ..['finishedAt'] = now;
      } else {
        v.jobs.remove(id);
      }
      return ok(null, 204);
    }
    if (parts.length == 5 && parts[4] == 'manifest' && method == 'GET') {
      if (j['status'] == 'EXPIRED') {
        return (status: 410, body: _problem(410, 'Export expired', 'EXPORT_EXPIRED'));
      }
      if (j['status'] != 'DONE') {
        return (status: 409, body: _problem(409, 'Job not finished', 'EXPORT_NOT_READY'));
      }
      return ok(<String, Object?>{
        'manifestVersion': 1,
        'id': id,
        'kind': j['kind'],
        'format': j['format'],
        'instanceId': 'fs-3f9c2a71',
        'createdAt': j['finishedAt'],
        'watermarkSeq': j['watermarkSeq'],
        'atSeq': j['atSeq'],
        'spec': j['spec'],
        'rowCount': j['rowCount'],
        'files': <Object?>[
          for (final f in (j['files']! as List).cast<Map<String, Object?>>())
            <String, Object?>{'name': f['name'], 'bytes': f['bytes'], 'sha256': f['sha256']},
        ],
        _licenseKey: j[_summaryKey],
        'personalUse': j['personalUse'],
        'signature': <String, Object?>{'alg': 'EdDSA', 'kid': 'fs-3f9c2a71-2026-09', 'file': 'manifest.json.jws'},
      });
    }
    return null;
  }

  // Holds and the archive.
  if (path == '/v1/holds' && method == 'GET') {
    return ok(<String, Object?>{'items': v.holds.values.toList(), 'nextCursor': null});
  }
  if (path == '/v1/holds' && method == 'POST') {
    if (v.holds.length >= 20) {
      return (status: 409, body: _problem(409, 'holds.max reached', 'HOLD_LIMIT'));
    }
    final h = <String, Object?>{
      'id': _ulid(),
      'name': input['name'],
      'reason': input['reason'],
      'sources': input['sources'] ?? <String>[],
      'kinds': input['kinds'] ?? <String>[],
      'from': input['from'],
      'to': input['to'],
      'fromSeq': input['fromSeq'],
      'toSeq': input['toSeq'],
      'expiresAt': input['expiresAt'],
      'createdAt': now,
      'createdBy': 'admin',
      'heldRows': 0,
      'heldBytes': 0,
    };
    v.holds['${h['id']}'] = h;
    return ok(h, 201);
  }
  if (parts.length == 4 && parts[1] == 'v1' && parts[2] == 'holds' && method == 'DELETE') {
    return v.holds.remove(parts[3]) == null ? notFound('UNKNOWN_HOLD') : ok(null, 204);
  }
  if (path == '/v1/settings/archive' && method == 'GET') {
    return ok(v.archive);
  }
  if (path == '/v1/settings/archive' && method == 'PUT') {
    final s3 = (input['s3'] as Map?)?.cast<String, Object?>();
    if (input['target'] == 's3') {
      final host = Uri.tryParse('${s3?['endpoint'] ?? ''}')?.host ?? '';
      if (host.isEmpty || host == 'localhost' || host.startsWith('127.') || host.startsWith('169.254.')) {
        return invalid('The S3 endpoint is not allowed by the outbound URL policy.', 'URL_NOT_ALLOWED');
      }
    }
    final set = <String>{...(v.archive['secretsSet']! as List).cast<String>()};
    for (final e in ((input['secrets'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{}).entries) {
      if (e.value != null && '${e.value}'.isNotEmpty) {
        set.add(e.key);
      }
    }
    v.archive = <String, Object?>{
      'enabled': input['enabled'] == true,
      'target': input['target'] ?? 'local',
      'root': input['root'] ?? '',
      'sources': input['sources'] ?? <String>[],
      'keepLocal': input['keepLocal'] ?? true,
      's3': s3,
      'secretsSet': set.toList(),
    };
    return ok(v.archive);
  }
  if (path == '/v1/archive/catalog' && method == 'GET') {
    final source = query['source']?.first;
    final from = query['from']?.first;
    final to = query['to']?.first;
    final limit = int.tryParse(query['limit']?.first ?? '') ?? 100;
    final offset = int.tryParse(query['cursor']?.first ?? '') ?? 0;
    final all = <Map<String, Object?>>[
      for (final p in v.partitions)
        if ((source == null || p['sourceId'] == source) &&
            (from == null || '${p['date']}'.compareTo(from) >= 0) &&
            (to == null || '${p['date']}'.compareTo(to) <= 0))
          p,
    ];
    final page = all.skip(offset).take(limit).toList();
    return ok(<String, Object?>{'items': page, 'nextCursor': offset + limit < all.length ? '${offset + limit}' : null});
  }

  // Federation and peers.
  if (path == '/v1/federation/info' && method == 'GET') {
    return ok(<String, Object?>{
      'instanceId': 'fs-3f9c2a71',
      'instanceName': 'Operations hub',
      'version': '1.3.0',
      'apiVersion': '1',
      'jwksUri': 'https://foresignal.example/.well-known/jwks.json',
      'capabilities': <String>['changes', 'stream', 'snapshot', 'ingest'],
      'time': now,
    });
  }
  if (path == '/v1/peers' && method == 'GET') {
    return ok(<String, Object?>{'items': v.peers.values.toList(), 'nextCursor': null});
  }
  if (path == '/v1/peers' && method == 'POST') {
    final id = '${input['id'] ?? ''}';
    final mode = '${input['mode'] ?? 'PULL'}';
    if (!idPattern.hasMatch(id)) {
      return invalid('id must be lower-case words joined by -.');
    }
    if (mode == 'PULL' && '${input['token'] ?? ''}'.isEmpty) {
      return invalid('token is required for a PULL peer.');
    }
    final host = Uri.tryParse('${input['baseUrl'] ?? ''}')?.host ?? '';
    if (host.isEmpty || host == 'localhost' || host.startsWith('169.254.')) {
      return invalid('The base URL is not allowed by the outbound URL policy.', 'URL_NOT_ALLOWED');
    }
    if (v.peers.containsKey(id)) {
      return (status: 409, body: _problem(409, 'A peer with this id exists', 'PEER_EXISTS'));
    }
    final enabled = input['enabled'] != false;
    final p = <String, Object?>{
      'id': id,
      'name': input['name'],
      'baseUrl': input['baseUrl'],
      'mode': mode,
      'enabled': enabled,
      'state': !enabled ? 'stopped' : (mode == 'PULL' ? 'connecting' : 'receiving'),
      'healthReason': null,
      'lastSeq': null,
      'lagSeq': null,
      'lastError': null,
      'pinnedKid': null,
      'remoteInstanceId': null,
      'selection': input['selection'] ?? <String, Object?>{},
      'sameOperator': input['sameOperator'] == true,
      'reliability': input['reliability'] ?? 'C',
      'tokenSet': '${input['token'] ?? ''}'.isNotEmpty,
      'ingestKeyPrefix': null,
      'sourceIds': <String>['peer-$id', 'peer-$id-trk', if (mode == 'RECEIVE') 'peer-$id-events'],
      'createdAt': now,
      'updatedAt': now,
      'exchangeKeySet': '${input['exchangeKey'] ?? ''}'.isNotEmpty,
    };
    v.peers[id] = p;
    v.remoteKids[id] = '$id-2026-10';
    return ok(p, 201);
  }
  if (parts.length >= 4 && parts[1] == 'v1' && parts[2] == 'peers') {
    final id = parts[3];
    final p = v.peers[id];
    if (p == null) {
      return notFound();
    }
    if (parts.length == 4 && method == 'GET') {
      return ok(p);
    }
    if (parts.length == 4 && method == 'PUT') {
      final enabled = input['enabled'] != false;
      p
        ..['name'] = input['name']
        ..['baseUrl'] = input['baseUrl']
        ..['enabled'] = enabled
        ..['selection'] = input['selection'] ?? p['selection']
        ..['sameOperator'] = input['sameOperator'] ?? p['sameOperator']
        ..['reliability'] = input['reliability'] ?? p['reliability']
        ..['updatedAt'] = now;
      if ('${input['token'] ?? ''}'.isNotEmpty) {
        p['tokenSet'] = true;
      }
      if (input.containsKey('exchangeKey')) {
        p['exchangeKeySet'] = '${input['exchangeKey'] ?? ''}'.isNotEmpty;
      }
      if (input.containsKey('pinnedKid') && input['pinnedKid'] != p['pinnedKid']) {
        p['pinnedKid'] = input['pinnedKid'];
        if (p['healthReason'] == 'PEER_KEY_MISMATCH') {
          p
            ..['healthReason'] = null
            ..['lastError'] = null
            ..['state'] = 'connecting';
        }
      }
      if (!enabled) {
        p['state'] = 'stopped';
      } else if (p['state'] == 'stopped') {
        p['state'] = p['mode'] == 'PULL' ? 'connecting' : 'receiving';
      }
      return ok(p);
    }
    if (parts.length == 4 && method == 'DELETE') {
      v.peers.remove(id);
      return ok(null, 204);
    }
    if (parts.length == 5 && parts[4] == 'test' && method == 'POST') {
      if ('${p['baseUrl']}'.contains('unreachable')) {
        return ok(<String, Object?>{'ok': false, 'reachable': false, 'error': 'Connect timed out after 10 s.'});
      }
      final kid = v.remoteKids[id] ?? '$id-2026-10';
      if (p['pinnedKid'] == null && p['mode'] == 'PULL') {
        // TOFU: the first verified contact pins the key.
        p
          ..['pinnedKid'] = kid
          ..['remoteInstanceId'] ??= 'fs-${_hex(8)}'
          ..['state'] = p['enabled'] == true ? 'streaming' : 'stopped';
      }
      final matches = p['pinnedKid'] == kid;
      return ok(<String, Object?>{
        'ok': matches,
        'reachable': true,
        'latencyMs': 38 + _random.nextInt(40),
        'info': <String, Object?>{
          'instanceId': p['remoteInstanceId'] ?? 'fs-${_hex(8)}',
          'instanceName': p['name'],
          'version': '1.3.0',
          'apiVersion': '1',
          'jwksUri': '${p['baseUrl']}/.well-known/jwks.json',
          'capabilities': <String>['changes', 'stream', 'snapshot'],
          'time': now,
        },
        'signatureValid': true,
        'kid': kid,
        'pinnedKid': p['pinnedKid'],
        'keyMatches': matches,
        'error': matches ? null : 'The peer signs with $kid; $id is pinned to ${p['pinnedKid']}.',
      });
    }
    if (parts.length == 5 && parts[4] == 'resync' && method == 'POST') {
      p['state'] = 'resyncing';
      return ok(p, 202);
    }
    if (parts.length == 5 && parts[4] == 'ingest-key' && method == 'POST') {
      final key = 'fsp_${<String>[for (var i = 0; i < 32; i++) 'ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz23456789'[_random.nextInt(57)]].join()}';
      p['ingestKeyPrefix'] = key.substring(0, 8);
      return ok(<String, Object?>{'peerId': id, 'key': key, 'keyPrefix': key.substring(0, 8), 'createdAt': now});
    }
    return null;
  }
  return null;
}
