// The preview's fake answers for usage, the collector governor, rate limits
// and retention. Bodies follow their schemas in openapi/OpenAPI.json
// (CollectorSettings, RateLimitSettings, RetentionSettings,
// RetentionRunResult, StatsSeries, StatsTop).

import 'preview_sources.dart';

/// A fake reply.
typedef UsageReply = ({int status, Object? body});

/// Settings the fake keeps.
class PreviewSettings {
  /// CollectorSettings.
  Map<String, Object?> collector = <String, Object?>{'maxConcurrentPulls': 2};

  /// RateLimitSettings.
  Map<String, Object?> rateLimits = <String, Object?>{
    'read': 600,
    'tiles': 1200,
    'stream': <String, Object?>{'opensPerMinute': 30, 'concurrent': 8},
    'expensive': 20,
    'write': 120,
    'anonymous': 120,
  };

  /// RetentionSettings.
  Map<String, Object?> retention = <String, Object?>{
    'default': '7d',
    'alerts': '90d',
    'usage': '30d',
    'briefings': '30d',
    'ask': '30d',
    'sources': <String, Object?>{'usgs-earthquakes': '3650d'},
    'trackWindow': '3d',
    'provenance': '30d',
    'notifications': '90d',
    'kinds': <String, Object?>{},
    'audit': '90d',
    'stats': <String, Object?>{
      'hourly': '35d',
      'daily': '1825d',
      'regionHourly': '1095d',
      'regionDaily': '3650d',
    },
    'inbox': '30d',
    'trackRawWindow': '24h',
    'trackDownsampleInterval': '5m',
    'entityLinks': '365d',
  };
}

Map<String, Object?> _problem(int status, String title, String code, [Object? errors]) =>
    <String, Object?>{
      'title': title,
      'status': status,
      'code': code,
      'errors': ?errors,
    };

/// Answers the usage, stats and settings operations, or `null` for any
/// other request.
UsageReply? answerUsage(
  String method,
  String path,
  Map<String, List<String>> query,
  Object? body,
  List<PreviewSource> sources,
  PreviewSettings settings,
) {
  switch ((method, path)) {
    case ('GET', '/v1/settings/collector'):
      return (status: 200, body: settings.collector);
    case ('PUT', '/v1/settings/collector'):
      final input = (body! as Map).cast<String, Object?>();
      final n = input['maxConcurrentPulls'];
      if (n is! int || input.keys.any((k) => k != 'maxConcurrentPulls')) {
        return (status: 400, body: _problem(400, 'Invalid', 'VALIDATION_FAILED'));
      }
      settings.collector = <String, Object?>{'maxConcurrentPulls': n.clamp(1, 16)};
      return (status: 200, body: settings.collector);
    case ('GET', '/v1/settings/ratelimits'):
      return (status: 200, body: settings.rateLimits);
    case ('PUT', '/v1/settings/ratelimits'):
      settings.rateLimits = (body! as Map).cast<String, Object?>();
      return (status: 200, body: settings.rateLimits);
    case ('GET', '/v1/settings/retention'):
      return (status: 200, body: settings.retention);
    case ('PUT', '/v1/settings/retention'):
      final input = (body! as Map).cast<String, Object?>();
      final unknown = <String>[
        for (final id in ((input['sources'] as Map?) ?? const <String, Object?>{}).keys)
          if (!sources.any((s) => s.id == id)) id as String,
      ];
      if (unknown.isNotEmpty) {
        return (
          status: 400,
          body: _problem(400, 'Unknown sources', 'VALIDATION_FAILED', <Object?>[
            <String, Object?>{'field': 'sources', 'message': 'Unknown: ${unknown.join(', ')}'},
          ]),
        );
      }
      settings.retention = input;
      return (status: 200, body: settings.retention);
    case ('POST', '/v1/settings/retention/run'):
      return (
        status: 200,
        body: <String, Object?>{
          'startedAt': '2026-10-22T16:30:00Z',
          'durationMs': 2840,
          'versionsDeleted': 18342,
          'headsDeleted': 211,
          'headsPurged': 211,
          'alertsDeleted': 12,
          'usageRowsDeleted': 960,
          'fetchLogDeleted': 4410,
          'notificationsDeleted': 3,
          'partitionsDropped': 1,
          'skippedSources': <String>[],
        },
      );
    case ('GET', '/v1/stats/timeseries'):
      final from = DateTime.parse(query['from']!.first);
      final to = DateTime.parse(query['to']!.first);
      final hourly = query['bucket']?.first == '1h';
      final step = hourly ? const Duration(hours: 1) : const Duration(days: 1);
      final points = <Object?>[];
      var i = 0;
      for (var t = _floor(from, hourly); t.isBefore(to); t = t.add(step), i++) {
        points.add(<String, Object?>{
          't': t.toIso8601String(),
          'value': (hourly ? 120 : 2900) + (i * 37) % (hourly ? 90 : 1400),
        });
      }
      return (
        status: 200,
        body: <String, Object?>{
          'from': from.toIso8601String(),
          'to': to.toIso8601String(),
          'bucket': hourly ? '1h' : '1d',
          'measure': 'versions',
          'groupBy': 'none',
          'timeField': 'ingested',
          'backend': 'rollup',
          'series': <Object?>[
            <String, Object?>{'key': null, 'points': points},
          ],
        },
      );
    case ('GET', '/v1/stats/top'):
      final enabled = sources.where((s) => s.enabled).toList()
        ..sort((a, b) => b.usedToday.compareTo(a.usedToday));
      return (
        status: 200,
        body: <String, Object?>{
          'by': 'source',
          'measure': 'versions',
          'items': <Object?>[
            for (final s in enabled.take(5))
              <String, Object?>{'key': s.id, 'sourceId': s.id, 'count': s.usedToday * 3 + 40},
          ],
        },
      );
  }
  return null;
}

DateTime _floor(DateTime t, bool hourly) {
  final u = t.toUtc();
  return hourly
      ? DateTime.utc(u.year, u.month, u.day, u.hour)
      : DateTime.utc(u.year, u.month, u.day);
}

/// A source's usage series between `from` and `to` (UsageSeries), one point
/// per hour or day.
Map<String, Object?> previewUsageSeries(PreviewSource source, Map<String, List<String>> query) {
  final to = DateTime.parse(query['to']!.first);
  final from = DateTime.parse(query['from']!.first);
  final hourly = query['resolution']?.first != 'day';
  final step = hourly ? const Duration(hours: 1) : const Duration(days: 1);
  // A per-source shape, so the stacked chart has visible variety.
  final seed = source.id.codeUnits.fold<int>(0, (a, b) => a + b);
  final points = <Object?>[];
  var total = 0;
  var i = 0;
  for (var t = _floor(from, hourly); t.isBefore(to); t = t.add(step), i++) {
    final base = source.enabled ? source.usedToday ~/ (hourly ? 24 : 1) : 0;
    final requests = base == 0 ? 0 : base + ((i * 7 + seed) % 9) * base ~/ 10;
    total += requests;
    points.add(<String, Object?>{
      't': t.toIso8601String(),
      'requests': requests,
      'bytes': requests * 2400,
      'errors': source.status == 'failing' && i.isEven ? (requests ~/ 3) : 0,
      'refused': 0,
      'recordsSeen': requests * 3,
    });
  }
  return <String, Object?>{
    'sourceId': source.id,
    'resolution': hourly ? 'hour' : 'day',
    'points': points,
    'totals': <String, Object?>{
      't': from.toIso8601String(),
      'requests': total,
      'bytes': total * 2400,
      'errors': source.status == 'failing' ? total ~/ 6 : 0,
      'refused': 0,
      'recordsSeen': total * 3,
      'versions': total,
    },
  };
}
