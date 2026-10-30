// The preview's fake answers for the System section: the system document,
// the client contract, every settings resource it edits, tokens, pairing
// codes, feed and tile keys, stream tickets, signing keys, attributions,
// plugins, and the settings bundle. Bodies follow their schemas in
// openapi/OpenAPI.json (SystemInfo, Contract, ServerSettings,
// SecuritySettings, CorsSettings, OutboundSettings, McpAuthSettings,
// MetricSettings, NotificationSettings, InfraRules, WeatherSettings,
// WatchdogSettings, ApiToken, PairingCode, FeedKey, TileKey, StreamTicket,
// Jwks, SigningKeyInfo, AttributionSummary, PluginList, Plugin,
// SettingsBundle, ImportReport). Every key and token here is random text
// made at run time.
import 'dart:convert';
import 'dart:math';

import 'preview_alerts.dart' show AlertsReply;

Map<String, Object?> _problem(int status, String title, String code, [String? detail, List<Object?>? errors]) =>
    <String, Object?>{'title': title, 'status': status, 'code': code, 'detail': ?detail, 'errors': ?errors};

String _iso(DateTime t) => t.toUtc().toIso8601String().replaceFirst(RegExp(r'\.\d+Z$'), 'Z');

String _ago(int minutes) => _iso(DateTime.now().subtract(Duration(minutes: minutes)));

String _ahead(Duration d) => _iso(DateTime.now().add(d));

final Random _random = Random(15);

const String _crockford = '0123456789ABCDEFGHJKMNPQRSTVWXYZ';
const String _base64url = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_';

String _pick(String alphabet, int n) => <String>[for (var i = 0; i < n; i++) alphabet[_random.nextInt(alphabet.length)]].join();

String _ulid() => '01K${_pick(_crockford, 23)}';

String _hex(int length) => _pick('0123456789abcdef', length);

String _uuid() => '${_hex(8)}-${_hex(4)}-4${_hex(3)}-a${_hex(3)}-${_hex(12)}';

Object? _copy(Object? v) => jsonDecode(jsonEncode(v));

// us-english-allow-start: the contract's own wire names (`licencePolicy`,
// `Attribution.licence`, `Attribution.licenceUrl`).
const String _policyKey = 'licencePolicy';
const String _licenseKey = 'licence';
const String _licenseUrlKey = 'licenceUrl';
// us-english-allow-end

/// The preview's System state.
class PreviewSystem {
  /// Creates the state, seeded relative to now.
  PreviewSystem() {
    for (final t in <Map<String, Object?>>[
      _token('Admin (bootstrap)', 'admin', created: 60 * 24 * 90, used: 0, bootstrap: true, via: 'bootstrap'),
      _token(
        'Grafana dashboards',
        'read',
        created: 60 * 24 * 40,
        used: 3,
        restrictions: <String, Object?>{
          'sources': <String>['usgs-quakes', 'noaa-tides'],
          'kinds': null,
          'excludePrivate': true,
          'maxRequestsPerMinute': 600,
        },
        policy: <String>['no-nc'],
      ),
      _token(
        'Pixel 8',
        'agent',
        created: 60 * 24 * 12,
        used: 41,
        via: 'pairing',
        device: <String, Object?>{'deviceName': 'Pixel 8', 'platform': 'android', 'appVersion': '1.4.0', 'reportedAt': _ago(41)},
      ),
      _token('Old laptop', 'read', created: 60 * 24 * 200, used: 60 * 24 * 120)..['revokedAt'] = _ago(60 * 24 * 100),
    ]) {
      tokens['${t['id']}'] = t;
    }
    final code = _uuid();
    pairingCodes[code] = <String, Object?>{
      'id': code,
      'name': 'Kitchen tablet',
      'scope': 'read',
      'restrictions': null,
      'privateAccess': false,
      'createdAt': _ago(3),
      'expiresAt': _ahead(const Duration(minutes: 7)),
    };
    final feed = _uuid();
    feedKeys[feed] = <String, Object?>{
      'id': feed,
      'name': 'Google Earth quakes',
      'keyPrefix': 'fsf_Qm7x',
      'prefixes': <String>['/v1/records', '/v1/export/kml'],
      'restrictions': <String, Object?>{
        'sources': <String>['usgs-quakes', 'emsc-quakes'],
        'excludePrivate': true,
      },
      'privateAccess': false,
      'createdAt': _ago(60 * 24 * 20),
      'expiresAt': _ahead(const Duration(days: 160)),
      'lastUsedAt': _ago(14),
    };
    final tile = _uuid();
    tileKeys[tile] = <String, Object?>{
      'id': tile,
      'name': 'Wall map',
      'keyPrefix': 'fsk_b2Pn',
      'prefixes': <String>['/v1/tiles/', '/v1/styles', '/v1/products/'],
      'restrictions': null,
      'createdAt': _ago(60 * 24 * 2),
      'expiresAt': _ahead(const Duration(days: 5)),
      'lastUsedAt': _ago(1),
    };
    keys.add(_signingKey('2026-07', active: false, createdMinutes: 60 * 24 * 110));
    keys.add(_signingKey('2026-10', active: true, createdMinutes: 60 * 24 * 21));
  }

  /// The admin token the fake accepts; rotation replaces it.
  String adminToken = 'fsr_preview';

  /// API tokens by id.
  final Map<String, Map<String, Object?>> tokens = <String, Map<String, Object?>>{};

  /// Open pairing codes by id.
  final Map<String, Map<String, Object?>> pairingCodes = <String, Map<String, Object?>>{};

  /// Feed keys by id.
  final Map<String, Map<String, Object?>> feedKeys = <String, Map<String, Object?>>{};

  /// Tile keys by id.
  final Map<String, Map<String, Object?>> tileKeys = <String, Map<String, Object?>>{};

  /// Signing keys (`SigningKeyInfo`), oldest first.
  final List<Map<String, Object?>> keys = <Map<String, Object?>>[];

  /// Whether the plugin subsystem is on.
  bool pluginsEnabled = true;

  /// Plugins by name; `actual` is the file's hash now.
  final Map<String, Map<String, Object?>> plugins = <String, Map<String, Object?>>{
    'nmea-0183': _plugin('nmea-0183', '1.2.0', enabled: true, sources: <String>['harbor-ais-gateway']),
    'aprs-is': _plugin('aprs-is', '0.9.1', enabled: false),
    'sbs-legacy': _plugin('sbs-legacy', '0.3.0', enabled: true, mismatch: true, sources: <String>['garage-sbs']),
    'kiwi-sdr': _plugin('kiwi-sdr', '0.1.0', enabled: false, error: 'plugin.wasm exports no foresignal_parse'),
  };

  /// Settings resources by path.
  final Map<String, Map<String, Object?>> settings = <String, Map<String, Object?>>{
    '/v1/settings/server': <String, Object?>{
      'publicBaseUrl': 'http://foresignal.local:8080',
      'timezone': 'America/Chicago',
      'contactEmail': 'ops@example.org',
      'clientLinks': <String, Object?>{
        'alert': 'foresignal://alerts/{id}',
        'record': 'foresignal://records/{source}/{externalId}',
        'briefingRun': 'foresignal://briefings/{briefingId}/runs/{id}',
        'pair': 'foresignal://pair?u={publicBaseUrl}&c={code}',
        'share': null,
      },
      'push': <String, Object?>{'contact': 'mailto:ops@example.org', 'allowedPrivateHosts': <String>[], 'defaultLang': 'en'},
    },
    '/v1/settings/security': <String, Object?>{
      'openReads': true,
      'exposeObserver': false,
      'metricsOpen': true,
      'exposeMlat': false,
      'anonymous': <String, Object?>{
        'sources': null,
        'kinds': null,
        'bbox': null,
        'endpoints': null,
        'excludePrivate': true,
        'maxRequestsPerMinute': 120,
      },
    },
    '/v1/settings/cors': <String, Object?>{
      'readOrigins': <String>['*'],
      'writeOrigins': <String>['http://localhost:5173'],
    },
    '/v1/settings/outbound': <String, Object?>{
      'allowHosts': <String>['nas.lan'],
      'allowCidrs': <String>['192.168.1.0/24'],
      'denyHosts': <String>[],
      'denyCidrs': <String>[],
    },
    '/v1/settings/mcp-auth': <String, Object?>{
      'mode': 'token',
      'issuer': null,
      'audience': null,
      'jwksUri': null,
      'scopeMap': <String, Object?>{'foresignal:read': 'read', 'foresignal:agent': 'agent'},
      'scopeClaim': 'scope',
      'allowedAlgs': <String>['RS256', 'ES256', 'EdDSA', 'Ed25519'],
    },
    '/v1/settings/metrics': <String, Object?>{
      'projections': <Object?>[
        <String, Object?>{
          'name': 'river_level_m',
          'source': 'usgs-water',
          'kind': null,
          'path': 'payload.gageHeight',
          'labels': <Object?>[
            <String, Object?>{'name': 'site', 'path': 'payload.siteNo'},
          ],
          'unit': 'm',
          'help': 'Gage height at each USGS site',
          'maxSeries': 500,
          'allowPrivate': false,
        },
      ],
    },
    '/v1/settings/notifications': <String, Object?>{
      'pausedUntil': null,
      'pauseBypassSeverity': 'critical',
      'chatops': <String, Object?>{'enabled': true},
      'imageLinks': false,
      'defaultLanguage': 'en',
    },
    '/v1/settings/infra-rules': <String, Object?>{
      'version': '2026.09.1',
      'rules': <Object?>[
        _rule('cable-landing', 'declared', 'lands_at', 'confirmed', <String, Object?>{'radiusKm': 2}),
        _rule('ixp-facility', 'declared', 'hosts', 'confirmed', <String, Object?>{}),
        _rule('line-substation', 'topological', 'transmits_power', 'likely', <String, Object?>{'snapMeters': 150}),
        _rule('plant-substation', 'proximity', 'supplies_power', 'possible', <String, Object?>{'radiusKm': 5}),
        _rule('substation-critical-load', 'inferred', 'supplies_power', 'speculative', <String, Object?>{'radiusKm': 3}, enabled: false),
        _rule('airport-port-serves', 'proximity', 'serves', 'likely', <String, Object?>{'radiusKm': 40}),
      ],
    },
    '/v1/settings/weather': <String, Object?>{'alertContext': 'auto', 'defaultAoi': '-106.65,25.84,-93.51,36.50', 'aoiBufferKm': 150},
    '/v1/settings/watchdog': <String, Object?>{
      'heartbeatUrl': 'https://hc-ping.com/5f0c9b1e-preview',
      'failUrl': null,
      'interval': '60s',
      'method': 'GET',
      'canary': <String, Object?>{'enabled': true, 'interval': '1h'},
    },
    '/v1/settings/translation': <String, Object?>{
      'enabled': true,
      'targetLanguages': <String>['en', 'es'],
      'fields': <String>['title', 'excerpt'],
      'engine': 'llm',
      'minSourceLanguageConfidence': 0.8,
      'budget': <String, Object?>{'window': 'day', 'capUsd': 5},
      'spend': <String, Object?>{
        'window': 'day',
        'start': '2026-10-30T00:00:00Z',
        'resetsAt': '2026-10-31T00:00:00Z',
        'spentUsd': 0.42,
      },
    },
  };

  /// The retention settings carried in the bundle.
  Map<String, Object?> retention = <String, Object?>{'default': '30d', 'alerts': '180d', 'usage': '400d', 'trackWindow': '3d'};

  static Map<String, Object?> _rule(String id, String method, String relation, String label, Map<String, Object?> params, {bool enabled = true}) =>
      <String, Object?>{'id': id, 'enabled': enabled, 'method': method, 'relation': relation, 'label': label, 'params': params};

  static Map<String, Object?> _plugin(
    String name,
    String version, {
    required bool enabled,
    bool mismatch = false,
    String? error,
    List<String> sources = const <String>[],
  }) {
    final declared = _hex(64);
    final state = error != null
        ? 'error'
        : mismatch
        ? 'hash-mismatch'
        : (enabled ? 'enabled' : 'disabled');
    return <String, Object?>{
      'name': name,
      'version': version,
      'abi': 1,
      'kind': 'parser',
      'sha256': declared,
      'actualSha256': mismatch ? _hex(64) : declared,
      'hashMatches': !mismatch,
      'enabled': enabled,
      'state': state,
      'error': error ?? (mismatch ? 'plugin.wasm no longer hashes to the approved sha256' : null),
      'sourceIds': sources,
      'loadedAt': state == 'enabled' ? _ago(60 * 26) : null,
    };
  }

  Map<String, Object?> _token(
    String name,
    String scope, {
    required int created,
    required int used,
    bool bootstrap = false,
    String via = 'api',
    Map<String, Object?>? restrictions,
    Map<String, Object?>? device,
    List<String> policy = const <String>[],
  }) => <String, Object?>{
    'id': _uuid(),
    'name': name,
    'scope': scope,
    'tokenPrefix': 'fsr_${_pick(_base64url, 4)}',
    'createdAt': _ago(created),
    'lastUsedAt': _ago(used),
    'expiresAt': null,
    'revokedAt': null,
    'bootstrap': bootstrap,
    'restrictions': restrictions,
    'device': device,
    'createdVia': via,
    'principalId': _ulid(),
    'principalHandle': name.toLowerCase().replaceAll(RegExp('[^a-z0-9]+'), '-'),
    'privateAccess': scope == 'admin',
    _policyKey: policy,
  };

  Map<String, Object?> _signingKey(String suffix, {required bool active, required int createdMinutes}) {
    final kid = _pick(_base64url, 43);
    return <String, Object?>{
      'kid': kid,
      'alg': 'Ed25519',
      'status': active ? 'active' : 'retired',
      'createdAt': _ago(createdMinutes),
      'retiredAt': active ? null : _ago(60 * 24 * 21),
      'removeAfter': active ? null : _ahead(const Duration(days: 69)),
      'jwk': <String, Object?>{'kty': 'OKP', 'crv': 'Ed25519', 'x': _pick(_base64url, 43), 'kid': kid, 'use': 'sig', 'alg': 'Ed25519'},
      'note': suffix,
    };
  }

  /// Server warnings for [server]: an http public URL off the local host.
  static List<Object?> serverWarnings(Map<String, Object?> server) {
    final url = Uri.tryParse('${server['publicBaseUrl'] ?? ''}');
    final local = url != null && (url.host == 'localhost' || url.host.endsWith('.local') || url.host == '127.0.0.1');
    return <Object?>[
      if (url != null && url.scheme == 'http' && !local)
        <String, Object?>{
          'code': 'PUBLIC_BASE_URL_INSECURE',
          'message': 'publicBaseUrl is http:// on a host that is not local; links and pairing codes travel unencrypted.',
        },
    ];
  }

  /// The system document.
  Map<String, Object?> system() {
    final security = settings['/v1/settings/security']!;
    final anonymous = security['anonymous'] as Map? ?? const <String, Object?>{};
    final restricted = anonymous.entries.any((e) => e.key != 'excludePrivate' && e.key != 'maxRequestsPerMinute' && e.value != null);
    return <String, Object?>{
      'version': '1.3.0',
      'apiVersion': '1.3.0',
      'startedAt': _ago(60 * 51 + 12),
      'uptimeSeconds': (51 * 60 + 12) * 60,
      'status': 'degraded',
      'mode': 'full',
      'features': <String, bool>{
        'notifications': true,
        'retention': true,
        'llm': true,
        'search': true,
        'push': true,
        'mcp': true,
        'weather': true,
        'rasters': true,
        'exports': true,
        'federation': true,
        'federationServing': true,
        'briefings': true,
        'ogc': false,
      },
      'database': <String, Object?>{'status': 'up', 'sizeBytes': 48231870464, 'postgisVersion': '3.5.2'},
      'records': <String, Object?>{'current': 1284211, 'versions': 61802344, 'lastSeq': 98412077},
      'sources': <String, Object?>{'total': 142, 'enabled': 38, 'healthy': 33, 'degraded': 4, 'failing': 1},
      'scheduler': <String, Object?>{'running': true, 'scheduledSources': 31, 'activeFetches': 3, 'activeStreams': 7, 'ingestQueueDepth': 12},
      'ingestWriter': <String, Object?>{'state': 'RUNNING', 'warnings': <String>[], 'lastSeq': 98412077, 'lastIngestedAt': _ago(0), 'queueDepth': 12},
      'catchUp': <String, Object?>{'triggerLagSeq': 140, 'ingestQueueDepth': 12, 'catchingUp': false},
      'streams': <String, Object?>{'clients': 6, 'maxClients': 200, 'changeSubscribers': 3, 'alertSubscribers': 2, 'eventSubscribers': 1},
      'notifications': <String, Object?>{'channels': 7, 'pendingDeliveries': 2, 'failedLast24h': 1},
      'llm': <String, Object?>{'configured': true, 'chatProvider': 'anthropic', 'embeddingProvider': 'ollama', 'tokensToday': 412880},
      'search': <String, Object?>{
        'semanticEnabled': true,
        'reason': null,
        'documents': 2203117,
        'backlog': 412,
        'activeModel': 'nomic-embed-text',
        'reindexState': 'idle',
      },
      'mcp': <String, Object?>{
        'enabled': true,
        'sessions': 1,
        'transports': <String, Object?>{'streamable': true, 'legacySse': false},
        'tools': 34,
      },
      'sinks': <String, Object?>{'enabled': 3, 'failing': 1},
      'exports': <String, Object?>{'queued': 0, 'running': 1, 'bytes': 2840000000, 'quotaBytes': 50000000000, 'maxConcurrent': 2},
      'archive': <String, Object?>{'enabled': true, 'lastRunAt': _ago(60 * 7), 'bytes': 91200000000, 'failures': 0, 'target': 's3'},
      'holds': <String, Object?>{'count': 1, 'rows': 182044, 'bytes': 940000000},
      'rasters': <String, Object?>{
        'profile': 'small',
        'products': 14,
        'frames': 22816,
        'storeBytes': 18400000000,
        'mediaBytes': 1200000000,
        'diskQuotaGb': 25,
        'diskQuotaPct': 92,
        'mbDownloadedToday': 1840.5,
      },
      'mqtt': <String, Object?>{'connections': 2, 'connected': 2, 'lastError': null},
      'limits': <String, Object?>{
        'pageMax': 1000,
        'historyPageMax': 5000,
        'sseClientBuffer': 1024,
        'liveMaxEntities': 20000,
        'ingestMaxBytes': 10485760,
        'ingestMaxRecords': 5000,
        'tileMaxFeatures': 20000,
      },
      'history': <String, Object?>{
        'tiers': <Object?>[
          <String, Object?>{'tier': 'STANDARD', 'partitions': 64, 'rows': 41200000, 'bytes': 21400000000, 'headroomSeq': 900000000, 'windowDays': 30},
          <String, Object?>{
            'tier': 'TRACK',
            'partitions': 72,
            'rows': 20600000,
            'bytes': 11800000000,
            'headroomSeq': 900000000,
            'windowDays': 3,
            'downsampledLeaves': 48,
            'downsampledRows': 2100000,
          },
        ],
      },
      'warnings': <Object?>[
        <String, Object?>{
          'code': 'RASTER_DISK_QUOTA',
          'severity': 'warning',
          'message': 'The raster store is at 92 % of its 25 GB quota.',
        },
      ],
      'security': <String, Object?>{
        'openReads': security['openReads'],
        'anonymousRestricted': restricted,
        'warnings': <Object?>[
          ...serverWarnings(settings['/v1/settings/server']!),
          if (security['openReads'] == true && !restricted)
            <String, Object?>{
              'code': 'ANONYMOUS_UNRESTRICTED',
              'message': 'Open reads are on and anonymous callers may read every public source.',
            },
        ],
      },
    };
  }

  /// The settings bundle (`exportSettings`).
  Map<String, Object?> bundle({required bool places, required bool watchlists}) => <String, Object?>{
    'exportedAt': _iso(DateTime.now()),
    'foresignalVersion': '1.3.0',
    'sources': <String, Object?>{
      'usgs-quakes': <String, Object?>{'enabled': true, 'interval': '5m', 'retention': '3650d'},
      'noaa-tides': <String, Object?>{'enabled': true, 'interval': '6m'},
      'opensky': <String, Object?>{'enabled': false, 'interval': '30s'},
    },
    'retention': _copy(retention),
    'cors': _copy(settings['/v1/settings/cors']),
    'security': _copy(settings['/v1/settings/security']),
    'server': <String, Object?>{
      ...(_copy(settings['/v1/settings/server'])! as Map).cast<String, Object?>(),
      'warnings': serverWarnings(settings['/v1/settings/server']!),
    },
    'notifications': _copy(settings['/v1/settings/notifications']),
    'watchdog': _copy(settings['/v1/settings/watchdog']),
    'triggers': <Object?>[],
    'channels': <Object?>[],
    'pushProviders': <Object?>[],
    if (places)
      'places': <Object?>[
        <String, Object?>{
          'id': 'home',
          'name': 'Home',
          'geometry': <String, Object?>{
            'type': 'Point',
            'coordinates': <num>[-97.74, 30.27],
          },
        },
      ],
    if (watchlists) 'watchlists': <Object?>[],
    'warnings': <String>[
      if (places) 'Places reveal locations.',
      if (watchlists) 'Watchlists identify what is followed.',
    ],
  };
}

const List<String> _settingsPaths = <String>[
  '/v1/settings/server',
  '/v1/settings/security',
  '/v1/settings/cors',
  '/v1/settings/outbound',
  '/v1/settings/mcp-auth',
  '/v1/settings/metrics',
  '/v1/settings/notifications',
  '/v1/settings/infra-rules',
  '/v1/settings/weather',
  '/v1/settings/watchdog',
  '/v1/settings/translation',
];

/// Problems with a settings [body] for [path], as `errors` entries.
List<Object?> _settingsErrors(String path, Map<String, Object?> body) {
  Map<String, Object?> e(String field, String message) => <String, Object?>{'field': field, 'message': message};
  switch (path) {
    case '/v1/settings/server':
      final url = Uri.tryParse('${body['publicBaseUrl'] ?? ''}');
      return <Object?>[if (url == null || !url.hasScheme || url.host.isEmpty) e('publicBaseUrl', 'must be an absolute URL')];
    case '/v1/settings/mcp-auth':
      final scopes = body['scopeMap'] is Map ? (body['scopeMap']! as Map).values : const <Object?>[];
      return <Object?>[
        if (body['mode'] != 'token' && body['issuer'] == null) e('issuer', 'is required when mode is oauth or both'),
        if (scopes.contains('admin')) e('scopeMap', 'admin can never be mapped'),
      ];
    case '/v1/settings/watchdog':
      return <Object?>[if ('${body['interval'] ?? '60s'}' == '10s') e('interval', 'must be at least 30s')];
    default:
      return const <Object?>[];
  }
}

/// Answers [method] [path] for the System section from [v], or `null` when
/// the path is not one of its operations.
AlertsReply? answerSystem(String method, String path, Map<String, List<String>> query, Object? body, PreviewSystem v) {
  final input = body is Map ? body.cast<String, Object?>() : const <String, Object?>{};
  AlertsReply ok(Object? b, [int status = 200]) => (status: status, body: b);
  AlertsReply notFound(String code) => (status: 404, body: _problem(404, 'Not found', code));
  final parts = path.split('/');
  final now = DateTime.now();

  if (path == '/v1/system' && method == 'GET') {
    return ok(v.system());
  }
  if (path == '/v1/contract' && method == 'GET') {
    return ok(<String, Object?>{
      'contractVersion': '1.5',
      'objectTypes': <String>['record', 'alert', 'entity', 'event', 'place', 'briefing'],
      'relationTypes': <String>['mentions', 'located_in', 'supplies_power', 'serves'],
      'contextSchemaVersion': 1,
      'deepLinkVersion': 1,
    });
  }
  if (_settingsPaths.contains(path)) {
    if (method == 'GET') {
      final stored = (_copy(v.settings[path])! as Map).cast<String, Object?>();
      if (path == '/v1/settings/server') {
        stored['warnings'] = PreviewSystem.serverWarnings(stored);
      }
      return ok(stored);
    }
    if (method == 'PUT') {
      final base = '${v.settings['/v1/settings/server']!['publicBaseUrl'] ?? ''}';
      if (path == '/v1/settings/notifications' && input['imageLinks'] == true && !base.startsWith('https://')) {
        return (
          status: 400,
          body: _problem(400, 'Image links need https', 'IMAGE_LINKS_REQUIRE_HTTPS', 'Image links need an https publicBaseUrl.'),
        );
      }
      final errors = _settingsErrors(path, input);
      if (errors.isNotEmpty) {
        return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', null, errors));
      }
      final stored = (_copy(input)! as Map).cast<String, Object?>()..remove('warnings');
      v.settings[path] = stored;
      return ok(stored);
    }
  }

  // Tokens.
  if (path == '/v1/system/admin-token/rotate' && method == 'POST') {
    v.adminToken = 'fsr_${_pick(_base64url, 43)}';
    return ok(<String, Object?>{'token': v.adminToken});
  }
  if (path == '/v1/tokens' && method == 'GET') {
    return ok(v.tokens.values.toList());
  }
  if (path == '/v1/tokens' && method == 'POST') {
    if ('${input['name'] ?? ''}'.trim().isEmpty) {
      return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'name is required'));
    }
    if (input['scope'] == 'admin' && input['restrictions'] != null) {
      return (status: 400, body: _problem(400, 'Restrictions not allowed', 'RESTRICTION_NOT_ALLOWED'));
    }
    final value = 'fsr_${_pick(_base64url, 43)}';
    final t = <String, Object?>{
      'id': _uuid(),
      'name': input['name'],
      'scope': input['scope'],
      'tokenPrefix': value.substring(0, 8),
      'createdAt': _iso(now),
      'lastUsedAt': null,
      'expiresAt': input['expiresAt'],
      'revokedAt': null,
      'bootstrap': false,
      'restrictions': input['restrictions'],
      'device': null,
      'createdVia': 'api',
      'principalId': _ulid(),
      'principalHandle': '${input['principalId'] ?? '${input['name']}'.toLowerCase().replaceAll(RegExp('[^a-z0-9]+'), '-')}',
      'privateAccess': input['privateAccess'] == true,
      _policyKey: input[_policyKey] ?? <String>[],
    };
    v.tokens['${t['id']}'] = t;
    return ok(<String, Object?>{...t, 'token': value}, 201);
  }
  if (parts.length == 4 && parts[2] == 'tokens' && parts[3] != 'current') {
    final t = v.tokens[parts[3]];
    if (t == null || (method == 'PATCH' && t['revokedAt'] != null)) {
      return notFound('NOT_FOUND');
    }
    if (method == 'PATCH') {
      t[_policyKey] = input[_policyKey] ?? <String>[];
      return ok(t);
    }
    if (method == 'DELETE') {
      if (t['bootstrap'] == true) {
        return (status: 409, body: _problem(409, 'Bootstrap token cannot be revoked', 'BOOTSTRAP_TOKEN', 'Rotate it instead.'));
      }
      t['revokedAt'] = _iso(now);
      return ok(null, 204);
    }
  }
  if (path == '/v1/stream-tickets' && method == 'POST') {
    final tiles = input['purpose'] == 'tiles';
    return ok(<String, Object?>{
      'ticket': 'fst_${_pick(_base64url, 32)}',
      'purpose': input['purpose'],
      'expiresAt': _iso(now.add(tiles ? const Duration(minutes: 10) : const Duration(seconds: 60))),
      'paths': input['paths'] ?? <String>[],
    }, 201);
  }
  if (path == '/v1/pairing-codes' && method == 'GET') {
    return ok(v.pairingCodes.values.toList());
  }
  if (path == '/v1/pairing-codes' && method == 'POST') {
    if (input['scope'] == 'admin') {
      return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'admin is never pairable'));
    }
    final code = '${_pick(_crockford, 4)}-${_pick(_crockford, 4)}';
    final c = <String, Object?>{
      'id': _uuid(),
      'name': input['name'],
      'scope': input['scope'],
      'restrictions': input['restrictions'],
      'principalId': null,
      'privateAccess': input['privateAccess'] == true,
      'createdAt': _iso(now),
      'expiresAt': _iso(now.add(const Duration(minutes: 10))),
    };
    v.pairingCodes['${c['id']}'] = c;
    return ok(<String, Object?>{
      ...c,
      'code': code,
      'qrPayload': 'foresignal://pair?u=${Uri.encodeComponent('http://foresignal.local:8080')}&c=$code',
    }, 201);
  }
  if (parts.length == 4 && parts[2] == 'pairing-codes' && method == 'DELETE') {
    return v.pairingCodes.remove(parts[3]) == null ? notFound('NOT_FOUND') : ok(null, 204);
  }
  if (path == '/v1/feed-keys' && method == 'GET') {
    return ok(v.feedKeys.values.toList());
  }
  if (path == '/v1/feed-keys' && method == 'POST') {
    final r = input['restrictions'];
    if (r is! Map || (r['sources'] == null && r['kinds'] == null && r['bbox'] == null && r['area'] == null)) {
      return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'restrictions need sources, kinds, area or bbox'));
    }
    final key = 'fsf_${_pick(_base64url, 43)}';
    final k = <String, Object?>{
      'id': _uuid(),
      'name': input['name'],
      'keyPrefix': key.substring(0, 8),
      'prefixes': input['prefixes'],
      'restrictions': <String, Object?>{...r.cast<String, Object?>(), 'excludePrivate': input['privateAccess'] != true},
      'privateAccess': input['privateAccess'] == true,
      'createdAt': _iso(now),
      'expiresAt': input['expiresAt'],
      'lastUsedAt': null,
      'revokedAt': null,
    };
    v.feedKeys['${k['id']}'] = k;
    return ok(<String, Object?>{
      ...k,
      'key': key,
      'urls': <Object?>[
        for (final p in (input['prefixes'] as List?) ?? const <Object?>[])
          <String, Object?>{'prefix': p, 'url': 'http://foresignal.local:8080/v1/k/$key/${'$p'.substring(4)}'},
      ],
    }, 201);
  }
  if (parts.length == 4 && parts[2] == 'feed-keys' && method == 'DELETE') {
    final k = v.feedKeys[parts[3]];
    if (k == null) {
      return notFound('NOT_FOUND');
    }
    k['revokedAt'] = _iso(now);
    return ok(null, 204);
  }
  if (path == '/v1/tile-keys' && method == 'GET') {
    final items = v.tileKeys.values.toList()..sort((a, b) => '${b['createdAt']}'.compareTo('${a['createdAt']}'));
    return ok(<String, Object?>{'items': items, 'nextCursor': null});
  }
  if (path == '/v1/tile-keys' && method == 'POST') {
    final key = 'fsk_${_pick(_base64url, 43)}';
    final ttl = '${input['ttl']}';
    final days = int.tryParse(RegExp(r'^(\d+)d$').firstMatch(ttl)?.group(1) ?? '') ?? 7;
    if (days > 30) {
      return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'ttl is at most 30 days'));
    }
    final k = <String, Object?>{
      'id': _uuid(),
      'name': input['name'],
      'keyPrefix': key.substring(0, 8),
      'prefixes': input['prefixes'],
      'restrictions': input['restrictions'],
      'createdAt': _iso(now),
      'expiresAt': _iso(now.add(Duration(days: days))),
      'lastUsedAt': null,
      'revokedAt': null,
    };
    v.tileKeys['${k['id']}'] = k;
    return ok(<String, Object?>{...k, 'key': key, 'urlBase': 'http://foresignal.local:8080/v1/k/$key'}, 201);
  }
  if (parts.length == 4 && parts[2] == 'tile-keys' && method == 'DELETE') {
    final k = v.tileKeys[parts[3]];
    if (k == null) {
      return notFound('NOT_FOUND');
    }
    k['revokedAt'] = _iso(now);
    return ok(null, 204);
  }

  // Signing and attributions.
  if (path == '/v1/system/jwks' && method == 'GET') {
    return ok(<String, Object?>{
      'keys': <Object?>[for (final k in v.keys.reversed) k['jwk']],
    });
  }
  if (path == '/v1/system/signing-key/rotate' && method == 'POST') {
    for (final k in v.keys) {
      if (k['status'] == 'active') {
        k
          ..['status'] = 'retired'
          ..['retiredAt'] = _iso(now)
          ..['removeAfter'] = _iso(now.add(const Duration(days: 90)));
      }
    }
    final kid = _pick(_base64url, 43);
    final key = <String, Object?>{
      'kid': kid,
      'alg': 'Ed25519',
      'status': 'active',
      'createdAt': _iso(now),
      'retiredAt': null,
      'removeAfter': null,
      'jwk': <String, Object?>{'kty': 'OKP', 'crv': 'Ed25519', 'x': _pick(_base64url, 43), 'kid': kid, 'use': 'sig', 'alg': 'Ed25519'},
    };
    v.keys.add(key);
    return ok(key);
  }
  if (path == '/v1/attributions' && method == 'GET') {
    final sources = query['source'] ?? const <String>[];
    final policy = query[_policyKey] ?? const <String>[];
    final all = <Map<String, Object?>>[
      <String, Object?>{
        'text': 'Earthquake data: USGS (public domain)',
        _licenseKey: 'US-PD',
        _licenseUrlKey: 'https://www.usgs.gov/information-policies-and-instructions/copyrights-and-credits',
        'requiredDisplay': false,
        'sourceId': 'usgs-quakes',
        'count': 18342,
      },
      <String, Object?>{
        'text': '© OpenStreetMap contributors',
        _licenseKey: 'ODbL-1.0',
        _licenseUrlKey: 'https://opendatacommons.org/licenses/odbl/1-0/',
        'requiredDisplay': true,
        'sourceId': 'osm-places',
        'count': 2210,
      },
      <String, Object?>{
        'text': 'EMSC-CSEM',
        _licenseKey: 'CC-BY-NC-4.0',
        _licenseUrlKey: null,
        'requiredDisplay': false,
        'sourceId': 'emsc-quakes',
        'count': 6120,
      },
      <String, Object?>{
        'text': 'Tide data: NOAA CO-OPS',
        _licenseKey: 'US-PD',
        _licenseUrlKey: null,
        'requiredDisplay': false,
        'sourceId': 'noaa-tides',
        'count': 914,
      },
    ];
    final shown = all.where((a) {
      if (sources.isNotEmpty && !sources.contains(a['sourceId'])) {
        return false;
      }
      if (policy.contains('no-nc') && '${a[_licenseKey]}'.contains('NC')) {
        return false;
      }
      if (policy.contains('no-sa') && '${a[_licenseKey]}'.contains('ODbL')) {
        return false;
      }
      return true;
    }).toList();
    return ok(<String, Object?>{
      'attributions': shown,
      'text': shown.map((a) => a['text']).join('; '),
    });
  }

  // Plugins.
  if (path == '/v1/plugins' && method == 'GET') {
    return ok(<String, Object?>{'enabled': v.pluginsEnabled, 'plugins': v.plugins.values.toList()});
  }
  if (path == '/v1/plugins' && method == 'PUT') {
    if (input['enabled'] is! bool) {
      return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'enabled is required'));
    }
    v.pluginsEnabled = input['enabled'] == true;
    for (final p in v.plugins.values) {
      if (p['state'] == 'enabled' || p['state'] == 'disabled') {
        p['state'] = v.pluginsEnabled && p['enabled'] == true ? 'enabled' : 'disabled';
      }
    }
    return ok(<String, Object?>{'enabled': v.pluginsEnabled, 'plugins': v.plugins.values.toList()});
  }
  if (parts.length == 4 && parts[2] == 'plugins') {
    final p = v.plugins[Uri.decodeComponent(parts[3])];
    if (p == null) {
      return notFound('UNKNOWN_PLUGIN');
    }
    if (method == 'GET') {
      return ok(p);
    }
    if (method == 'PUT') {
      if (input['enabled'] != true) {
        p
          ..['enabled'] = false
          ..['state'] = p['state'] == 'error' ? 'error' : 'disabled';
        return ok(p);
      }
      if (!v.pluginsEnabled) {
        return (status: 409, body: _problem(409, 'Plugins are disabled', 'PLUGINS_DISABLED'));
      }
      if (input['sha256'] == null) {
        return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'sha256 is required to enable'));
      }
      if (input['sha256'] != p['actualSha256'] || p['hashMatches'] != true) {
        return (status: 409, body: _problem(409, 'Hash mismatch', 'PLUGIN_HASH_MISMATCH', 'plugin.wasm does not hash to the declared sha256'));
      }
      if (p['state'] == 'error') {
        return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', '${p['error']}'));
      }
      p
        ..['enabled'] = true
        ..['state'] = 'enabled'
        ..['loadedAt'] = _iso(now);
      return ok(p);
    }
  }

  // Settings backup.
  if (path == '/v1/settings/export' && method == 'GET') {
    return ok(
      v.bundle(
        places: query['includePlaces']?.first == 'true',
        watchlists: query['includeWatchlists']?.first == 'true',
      ),
    );
  }
  if (path == '/v1/settings/import' && method == 'PUT') {
    if (input['sources'] is! Map) {
      return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'sources is required'));
    }
    final known = <String>{'usgs-quakes', 'noaa-tides', 'opensky', 'emsc-quakes'};
    final sources = (input['sources']! as Map).keys.map((k) => '$k').toList();
    for (final (member, path) in <(String, String)>[
      ('cors', '/v1/settings/cors'),
      ('notifications', '/v1/settings/notifications'),
      ('watchdog', '/v1/settings/watchdog'),
    ]) {
      if (input[member] is Map) {
        v.settings[path] = (_copy(input[member])! as Map).cast<String, Object?>()..remove('warnings');
      }
    }
    if (input['retention'] is Map) {
      v.retention = (_copy(input['retention'])! as Map).cast<String, Object?>();
    }
    return ok(<String, Object?>{
      'sourcesApplied': <String>[for (final s in sources) if (known.contains(s)) s],
      'sourcesUnknown': <String>[for (final s in sources) if (!known.contains(s)) s],
      'triggersUpserted': (input['triggers'] as List?)?.length ?? 0,
      'channelsUpserted': (input['channels'] as List?)?.length ?? 0,
      'briefingsUpserted': (input['briefings'] as List?)?.length ?? 0,
      'customSourcesUpserted': (input['customSources'] as List?)?.length ?? 0,
      'llmProvidersUpserted': (input['llmProviders'] as List?)?.length ?? 0,
      'pushProvidersUpserted': (input['pushProviders'] as List?)?.length ?? 0,
      'placesUpserted': (input['places'] as List?)?.length ?? 0,
      'viewsUpserted': (input['views'] as List?)?.length ?? 0,
      'watchlistsUpserted': (input['watchlists'] as List?)?.length ?? 0,
      'warnings': <String>[],
    });
  }
  return null;
}
