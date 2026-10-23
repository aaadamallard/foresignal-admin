import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../serving/serving_providers.dart' show allPages;
import '../vetting/vetting_drafts.dart' show toJsonMap;
import 'system_drafts.dart';

/// A settings resource read whole, as JSON (`getServerSettings`,
/// `getSecuritySettings`, `getCors`, … by [path]).
///
/// Settings are read and replaced as plain JSON rather than through the
/// generated models: those drop a member set to `null`, and a replace must
/// be able to send one (a pause lifted, a URL cleared), and members this
/// app does not edit must go back exactly as read.
final settingsResourceProvider = FutureProvider.family<Json, String>((ref, path) {
  return jsonObjectCall(ref.watch(backendDioProvider), 'GET', path);
});

/// The system document (`getSystem`), as JSON: it is shown, not edited,
/// and its open sets (warning codes, features) are read as they come.
final systemInfoProvider = FutureProvider<Json>((ref) {
  return jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/system');
});

/// The client contract versions (`getContract`).
final contractProvider = FutureProvider<Json>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  return toJsonMap(api.serializers, await callApiRequired(() => api.getObjectsApi().getContract()));
});

/// Every API token (`listTokens`), newest first.
final tokensProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getTokensApi().listTokens());
  return <Json>[for (final t in list) toJsonMap(api.serializers, t)]
    ..sort((a, b) => '${b['createdAt']}'.compareTo('${a['createdAt']}'));
});

/// The open pairing codes (`listPairingCodes`).
final pairingCodesProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getTokensApi().listPairingCodes());
  return <Json>[for (final c in list) toJsonMap(api.serializers, c)];
});

/// The feed keys (`listFeedKeys`).
final feedKeysProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getTokensApi().listFeedKeys());
  return <Json>[for (final k in list) toJsonMap(api.serializers, k)];
});

/// Every tile key (`listTileKeys`), newest first.
final tileKeysProvider = FutureProvider<List<Json>>((ref) {
  final api = ref.watch(foresignalApiProvider);
  return allPages((cursor) async {
    final page = await callApiRequired(() => api.getTokensApi().listTileKeys(cursor: cursor, limit: 200));
    return (items: <Json>[for (final k in page.items) toJsonMap(api.serializers, k)], next: page.nextCursor);
  });
});

/// The instance signing keys (`getSystemJwks`).
final jwksProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final set = await callApiRequired(() => api.getProvenanceApi().getSystemJwks());
  return <Json>[for (final k in set.keys) toJsonMap(api.serializers, k)];
});

/// The attribution filter: sources, kinds and license policy flags, each
/// empty for none.
typedef AttributionFilter = ({String sources, String kinds, String policy});

/// The aggregated attributions for [filter] (`getAttributions`).
final attributionsProvider = FutureProvider.family<Json, AttributionFilter>((ref, filter) {
  return jsonObjectCall(
    ref.watch(backendDioProvider),
    'GET',
    attributionsPath,
    query: <String, Object?>{
      if (filter.sources.isNotEmpty) 'source': lineItems(filter.sources),
      if (filter.kinds.isNotEmpty) 'kind': lineItems(filter.kinds),
      if (filter.policy.isNotEmpty) licensePolicyMember: lineItems(filter.policy),
    },
  );
});

/// The plugin subsystem and its plugins (`listPlugins`).
final pluginsProvider = FutureProvider<Json>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  return toJsonMap(api.serializers, await callApiRequired(() => api.getPluginsApi().listPlugins()));
});

/// One plugin (`getPlugin`).
final pluginProvider = FutureProvider.family<Json, String>((ref, name) async {
  final api = ref.watch(foresignalApiProvider);
  return toJsonMap(api.serializers, await callApiRequired(() => api.getPluginsApi().getPlugin(name: name)));
});
