import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../forecasting/forecasting_providers.dart' show Json;

/// The pages the egress pool follows at most, of [egressPageSize] each.
const int egressMaxPages = 10;

/// The page size of the egress pool.
const int egressPageSize = 200;

/// The egress pool (`listEgressRoutes`), following `nextCursor`.
final egressRoutesProvider = FutureProvider<List<Json>>((ref) async {
  final dio = ref.watch(backendDioProvider);
  final routes = <Json>[];
  String? cursor;
  for (var page = 0; page < egressMaxPages; page++) {
    final body = await jsonObjectCall(
      dio,
      'GET',
      '/v1/egress',
      query: <String, Object?>{'limit': egressPageSize, 'cursor': ?cursor},
    );
    for (final item in (body['items'] as List?) ?? const <Object?>[]) {
      if (item is Map) {
        routes.add(item.cast<String, Object?>());
      }
    }
    cursor = body['nextCursor'] as String?;
    if (cursor == null) {
      break;
    }
  }
  return routes;
});

/// One route's health (`getEgressRouteHealth`), with the sources held off
/// it by a rate limit.
final egressHealthProvider = FutureProvider.autoDispose.family<Json, String>(
  (ref, id) => jsonObjectCall(
    ref.watch(backendDioProvider),
    'GET',
    '/v1/egress/${Uri.encodeComponent(id)}/health',
  ),
);

/// The rotation policy and default route (`getEgressSettings`).
final egressSettingsProvider = FutureProvider<Json>(
  (ref) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/settings/egress'),
);

/// The first-party aggregators across domains (`listAggregators`).
final aggregatorsProvider = FutureProvider<List<Json>>((ref) async {
  final body = await jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/aggregators');
  return <Json>[
    for (final item in (body['items'] as List?) ?? const <Object?>[])
      if (item is Map) item.cast<String, Object?>(),
  ];
});

/// The labels of the egress route types, by wire name.
const Map<String, String> egressTypeLabels = <String, String>{
  'http': 'HTTP proxy',
  'socks5': 'SOCKS5 proxy',
  'wireguard': 'WireGuard / VPN',
  'interface': 'Bound interface / IP',
};

/// The labels of the rotation policies, by wire name.
const Map<String, String> rotationLabels = <String, String>{
  'direct': 'Direct (no egress routing)',
  'round-robin': 'Round-robin',
  'random': 'Random',
  'per-source-sticky': 'Per-source sticky',
  'rotate-on-rate-limit': 'Rotate on rate limit',
};

/// The labels of the aggregator domains, by wire name.
const Map<String, String> aggregatorDomainLabels = <String, String>{
  'adsb': 'ADS-B',
  'ais': 'AIS',
  'datalink': 'Aircraft datalink (ACARS / VDL / HFDL / APRS)',
  'satellite': 'Direct satellite',
  'ground-sensors': 'Ground sensors',
};

/// The labels of the aggregator modes, by wire name.
const Map<String, String> aggregatorModeLabels = <String, String>{
  'receiver': 'Own receiver',
  'feed': 'Aggregated feed',
  'hybrid': 'Both',
};
