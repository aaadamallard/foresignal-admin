import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../forecasting/forecasting_providers.dart' show Json;

/// Every edition (briefing) the caller can read (`listBriefings`).
final editionListProvider = FutureProvider<List<Json>>(
  (ref) => jsonArrayCall(ref.watch(backendDioProvider), '/v1/briefings'),
);

/// One edition by its briefing id (`getBriefing`).
final editionProvider = FutureProvider.family<Json, String>(
  (ref, id) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/briefings/$id'),
);

/// The signed-in caller's own editions (`listMyEditions`), each an
/// `EditionSummary` with its site URL and latest run.
final myEditionsProvider = FutureProvider<List<Json>>(
  (ref) => jsonArrayCall(ref.watch(backendDioProvider), '/v1/me/editions'),
);

/// One edition's hosted-site URLs (`getEditionSite`): the canonical, feed-key
/// and read-only share URLs. Family keyed by the briefing id.
final editionSiteProvider = FutureProvider.family<Json, String>(
  (ref, id) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/editions/$id/site'),
);
