// The preview's fake source catalog. Every body follows its schema in
// openapi/OpenAPI.json: SourceSummary, SourceDetail (SourceDescriptor,
// SourceSettings, SourceHealth), EnableCoreSourcesResult and
// EnableFreeSourcesResult. Writes change the held state, so a save can be
// re-read.

/// One fake source: its descriptor fields and its settings.
class PreviewSource {
  /// Creates the source.
  PreviewSource(
    this.id,
    this.name, {
    required this.kind,
    required this.enabled,
    required this.status,
    this.needsKey = false,
    this.mode = 'polling',
    this.interval = '15m',
    this.minInterval = '5m',
    this.perMinute = 10,
    this.perDay = 10000,
    this.usedToday = 0,
    this.params = const <Map<String, Object?>>[],
    this.core = false,
    this.free = true,
    this.track = false,
  });

  /// `id`.
  final String id;

  /// `name`.
  final String name;

  /// The record kind.
  final String kind;

  /// `mode`.
  final String mode;

  /// Whether a key is required.
  final bool needsKey;

  /// `minInterval`.
  final String minInterval;

  /// The descriptor's ParamSpec list.
  final List<Map<String, Object?>> params;

  /// In the core set.
  final bool core;

  /// Runs without a key or required parameter.
  final bool free;

  /// TRACK history.
  final bool track;

  /// `enabled`.
  bool enabled;

  /// HealthStatus.
  String status;

  /// `interval`.
  String interval;

  /// `budget.perMinute`.
  int perMinute;

  /// `budget.perDay`.
  int perDay;

  /// `budgetUsedToday`.
  int usedToday;

  /// Whether credentials are stored (values are never kept by the fake).
  bool credentialsSet = false;

  /// FetchLogEntry rows, newest first.
  final List<Map<String, Object?>> fetches = <Map<String, Object?>>[];

  /// DoctorReport bodies, newest first.
  final List<Map<String, Object?>> doctorReports = <Map<String, Object?>>[];

  /// The rest of SourceSettings, as last written.
  final Map<String, Object?> settings = <String, Object?>{};

  Map<String, Object?> get _budget => <String, Object?>{'perMinute': perMinute, 'perDay': perDay};

  /// SourceSummary.
  Map<String, Object?> get summary => <String, Object?>{
    'id': id,
    'name': name,
    'kinds': <String>[kind],
    'mode': mode,
    'enabled': enabled,
    'status': status,
    'credentialsRequired': needsKey,
    'credentialsSet': credentialsSet,
    'interval': interval,
    'budget': _budget,
    'budgetUsedToday': usedToday,
    'historyTier': track ? 'TRACK' : 'STANDARD',
    // us-english-allow-start: `licence` is the contract's own field name.
    'licence': 'US-PD',
    // us-english-allow-end
    'access': <String, Object?>{'route': 'official', 'fragility': 'low'},
  };

  /// SourceDetail.
  Map<String, Object?> get detail => <String, Object?>{
    'descriptor': <String, Object?>{
      'id': id,
      'name': name,
      'description': '$name, collected by the ForeSignal $mode adapter.',
      'kinds': <String>[kind],
      'mode': mode,
      'homepage': 'https://example.org/$id',
      'credentialFields': <Object?>[
        if (needsKey)
          <String, Object?>{'name': 'apiKey', 'description': 'Provider API key', 'required': true},
      ],
      'params': params,
      'minInterval': minInterval,
      'defaultInterval': '15m',
      'defaultBudget': <String, Object?>{'perMinute': 10, 'perDay': 10000},
      'historyTier': track ? 'TRACK' : 'STANDARD',
      'defaultRetention': track ? null : '365d',
      'embedFields': <String>['title'],
      'egress': 'OPEN',
      'egressOverridable': false,
      'reliability': 'B',
      // us-english-allow-start: `licence` is the contract's own field name.
      'licence': 'US-PD',
      // us-english-allow-end
      'defaultIngestPolicy': <String, Object?>{'mode': 'ALL', 'keyframe': 'PT6H'},
      'access': <String, Object?>{'route': 'official', 'fragility': 'low'},
    },
    'settings': <String, Object?>{
      'params': <String, Object?>{},
      'retention': null,
      'embed': true,
      'statsEnabled': true,
      'regionTagging': track ? 'lazy' : 'eager',
      ...settings,
      'enabled': enabled,
      'interval': interval,
      'budget': _budget,
      'credentialsSet': credentialsSet,
      'updatedAt': '2026-10-22T16:30:00Z',
      'effectiveIngestPolicy':
          settings['ingestPolicy'] ?? <String, Object?>{'mode': 'ALL', 'keyframe': 'PT6H'},
      'effectiveRetention': settings['retention'] ?? (track ? '48h' : '365d'),
    },
    'health': health,
  };

  /// SourceHealth.
  Map<String, Object?> get health => <String, Object?>{
    'sourceId': id,
    'status': status,
    'statusReason': switch (status) {
      'failing' => 'Upstream answered 401 three times in a row',
      'degraded' => 'Slow responses in the last hour',
      _ => null,
    },
    'consecutiveFailures': status == 'failing' ? 3 : 0,
    'lastAttemptAt': enabled ? '2026-10-22T16:28:00Z' : null,
    'lastSuccessAt': enabled && status != 'failing' ? '2026-10-22T16:28:00Z' : null,
    'lastDataAt': enabled && status != 'failing' ? '2026-10-22T16:13:00Z' : null,
    'lastError': status == 'failing' ? 'HTTP 401 Unauthorized' : null,
    'lastHttpStatus': status == 'failing' ? 401 : 200,
    'budget': _budget,
    'budgetUsedToday': usedToday,
    'budgetRemainingToday': perDay - usedToday,
    'requestsLastHour': enabled ? 4 : 0,
    'errorRateLastHour': status == 'failing' ? 1 : 0,
    'lastRecordsSeen': enabled ? 12 : 0,
    'lastRecordsChanged': enabled ? 3 : 0,
  };

  /// Applies a SourceSettingsUpdate; returns a Problem body and status, or
  /// `null` when it was accepted.
  ({int status, Object? body})? apply(Map<String, Object?> update) {
    if (update['enabled'] == true && needsKey && !credentialsSet) {
      return (
        status: 409,
        body: <String, Object?>{
          'title': 'Credentials required',
          'status': 409,
          'code': 'CREDENTIALS_REQUIRED',
          'detail': 'Set the apiKey credential before enabling $name.',
        },
      );
    }
    for (final entry in update.entries) {
      switch (entry.key) {
        case 'enabled':
          enabled = entry.value! as bool;
          status = enabled ? 'healthy' : 'disabled';
        case 'interval':
          interval = entry.value! as String;
        case 'budget':
          final budget = entry.value! as Map<String, Object?>;
          perMinute = budget['perMinute']! as int;
          perDay = budget['perDay']! as int;
        default:
          settings[entry.key] = entry.value;
      }
    }
    return null;
  }
}

/// A fresh copy of the preview's sources.
List<PreviewSource> buildPreviewSources() => <PreviewSource>[
  PreviewSource(
    'usgs-earthquakes',
    'USGS Earthquakes',
    kind: 'earthquake',
    enabled: false,
    status: 'disabled',
    core: true,
    interval: '5m',
    minInterval: '1m',
    params: const <Map<String, Object?>>[
      <String, Object?>{
        'name': 'minMagnitude',
        'type': 'number',
        'description': 'Smallest magnitude kept',
        'default': 2.5,
      },
      <String, Object?>{
        'name': 'feed',
        'type': 'string',
        'description': 'Which USGS summary feed to poll',
        'allowed': <String>['all_hour', 'all_day', '2.5_day'],
        'default': 'all_hour',
      },
    ],
  ),
  PreviewSource(
    'nws-alerts',
    'NWS Alerts',
    kind: 'weather-alert',
    enabled: false,
    status: 'disabled',
    core: true,
    interval: '2m',
    minInterval: '1m',
  ),
  PreviewSource(
    'celestrak-gp',
    'CelesTrak GP',
    kind: 'satellite',
    enabled: false,
    status: 'disabled',
    core: true,
    interval: '12h',
    minInterval: '2h',
    perDay: 50,
    track: true,
  ),
  PreviewSource(
    'nasa-firms',
    'NASA FIRMS',
    kind: 'fire',
    enabled: false,
    status: 'disabled',
    needsKey: true,
    core: true,
    free: false,
    interval: '30m',
  ),
  PreviewSource(
    'gdelt',
    'GDELT',
    kind: 'event',
    enabled: true,
    status: 'degraded',
    usedToday: 4210,
    perDay: 20000,
  ),
  PreviewSource(
    'acled',
    'ACLED',
    kind: 'conflict',
    enabled: true,
    status: 'failing',
    needsKey: true,
    free: false,
    interval: '1h',
    usedToday: 36,
    perDay: 500,
  ),
  PreviewSource(
    'opensky-states',
    'OpenSky States',
    kind: 'aircraft',
    enabled: true,
    status: 'healthy',
    mode: 'polling',
    interval: '30s',
    minInterval: '10s',
    usedToday: 1834,
    track: true,
  ),
  PreviewSource(
    'gdacs',
    'GDACS',
    kind: 'disaster',
    enabled: false,
    status: 'disabled',
    interval: '10m',
  ),
];

/// The preview app's sources.
final List<PreviewSource> previewSources = buildPreviewSources();

/// Answers the source operations from [sources], or returns `null` for any
/// other request.
({int status, Object? body})? answerSources(
  String method,
  String path,
  Object? body, [
  List<PreviewSource>? sources,
]) {
  final held = sources ?? previewSources;
  if (path == '/v1/sources' && method == 'GET') {
    return (status: 200, body: <Object?>[for (final s in held) s.summary]);
  }
  if (path == '/v1/sources/health' && method == 'GET') {
    return (status: 200, body: <Object?>[for (final s in held) s.health]);
  }
  if ((path == '/v1/sources/enable-core' || path == '/v1/sources/enable-free') &&
      method == 'POST') {
    final core = path.endsWith('core');
    final enabled = <String>[];
    var skipped = 0;
    for (final s in held) {
      if (s.enabled) {
        continue;
      }
      if ((!core || s.core) && s.free) {
        s.enabled = true;
        s.status = 'healthy';
        enabled.add(s.id);
      } else {
        skipped++;
      }
    }
    return (
      status: 200,
      body: <String, Object?>{
        'enabled': enabled..sort(),
        'count': enabled.length,
        'skipped': skipped,
      },
    );
  }
  final match = RegExp(r'^/v1/sources/([^/]+)$').firstMatch(path);
  if (match == null) {
    return null;
  }
  final id = Uri.decodeComponent(match.group(1)!);
  final source = held.where((s) => s.id == id).firstOrNull;
  if (source == null) {
    return (
      status: 404,
      body: <String, Object?>{'title': 'Not found', 'status': 404, 'code': 'NOT_FOUND'},
    );
  }
  if (method == 'PUT') {
    final refused = source.apply((body! as Map).cast<String, Object?>());
    if (refused != null) {
      return refused;
    }
  }
  return (status: 200, body: source.detail);
}
