import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../vetting/vetting_drafts.dart' show toJsonMap;

export '../forecasting/forecasting_providers.dart' show Json, jsonList, jsonMap;

/// Every page of a cursor-paged list: [load] is called with each
/// `nextCursor` until there is none.
Future<List<Json>> allPages(Future<({List<Json> items, String? next})> Function(String? cursor) load) async {
  final out = <Json>[];
  String? cursor;
  do {
    final page = await load(cursor);
    out.addAll(page.items);
    cursor = page.next;
  } while (cursor != null);
  return out;
}

/// Every sink (`listSinks`).
final sinksProvider = FutureProvider<List<Json>>((ref) {
  final api = ref.watch(foresignalApiProvider);
  return allPages((cursor) async {
    final page = await callApiRequired(() => api.getSinksApi().listSinks(cursor: cursor, limit: 500));
    return (items: <Json>[for (final s in page.items) toJsonMap(api.serializers, s)], next: page.nextCursor);
  });
});

/// The sink types (`listSinkTypes`).
final sinkTypesProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getSinksApi().listSinkTypes());
  return <Json>[for (final t in list) toJsonMap(api.serializers, t)];
});

/// The type named [id] among [types], or `null`.
Json? sinkTypeOf(List<Json> types, Object? id) => types.where((t) => t['id'] == id).firstOrNull;

/// One sink (`getSink`).
final sinkProvider = FutureProvider.family<Json, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  return toJsonMap(api.serializers, await callApiRequired(() => api.getSinksApi().getSink(sinkId: id)));
});

/// One sink's cursor, lag and counters (`getSinkStatus`).
final sinkStatusProvider = FutureProvider.family<Json, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  return toJsonMap(api.serializers, await callApiRequired(() => api.getSinksApi().getSinkStatus(sinkId: id)));
});

/// The export list filter: a job kind and a status, `null` for any.
typedef ExportFilter = ({String? kind, String? status});

/// A page of export jobs newest first (`listExports`) for [filter].
Future<({List<Json> items, String? nextCursor})> loadExports(
  ForesignalApi api,
  ExportFilter filter, {
  String? cursor,
  int limit = 50,
}) async {
  final page = await callApiRequired(
    () => api.getExportsApi().listExports(kind: filter.kind, status: filter.status, cursor: cursor, limit: limit),
  );
  return (items: <Json>[for (final j in page.items) toJsonMap(api.serializers, j)], nextCursor: page.nextCursor);
}

/// One export, snapshot or pack job (`getExport`).
final exportJobProvider = FutureProvider.family<Json, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  return toJsonMap(api.serializers, await callApiRequired(() => api.getExportsApi().getExport(exportId: id)));
});

/// Every active hold (`listHolds`).
final holdsProvider = FutureProvider<List<Json>>((ref) {
  final api = ref.watch(foresignalApiProvider);
  return allPages((cursor) async {
    final page = await callApiRequired(() => api.getArchiveApi().listHolds(cursor: cursor, limit: 500));
    return (items: <Json>[for (final h in page.items) toJsonMap(api.serializers, h)], next: page.nextCursor);
  });
});

/// The cold archive settings (`getArchiveSettings`).
final archiveSettingsProvider = FutureProvider<Json>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  return toJsonMap(api.serializers, await callApiRequired(() => api.getArchiveApi().getArchiveSettings()));
});

/// The archive catalog filter: a source and a date range, `null` for any.
typedef CatalogFilter = ({String? source, DateTime? from, DateTime? to});

Date? _date(DateTime? t) => t == null ? null : Date(t.year, t.month, t.day);

/// A page of archive partitions (`getArchiveCatalog`) for [filter].
Future<({List<Json> items, String? nextCursor})> loadCatalog(
  ForesignalApi api,
  CatalogFilter filter, {
  String? cursor,
  int limit = 100,
}) async {
  final page = await callApiRequired(
    () => api.getArchiveApi().getArchiveCatalog(
      source_: filter.source,
      from: _date(filter.from),
      to: _date(filter.to),
      cursor: cursor,
      limit: limit,
    ),
  );
  return (items: <Json>[for (final p in page.items) toJsonMap(api.serializers, p)], nextCursor: page.nextCursor);
}

/// Every peer (`listPeers`).
final peersProvider = FutureProvider<List<Json>>((ref) {
  final api = ref.watch(foresignalApiProvider);
  return allPages((cursor) async {
    final page = await callApiRequired(() => api.getPeersApi().listPeers(cursor: cursor, limit: 500));
    return (items: <Json>[for (final p in page.items) toJsonMap(api.serializers, p)], next: page.nextCursor);
  });
});

/// One peer with its replication state (`getPeer`).
final peerProvider = FutureProvider.family<Json, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  return toJsonMap(api.serializers, await callApiRequired(() => api.getPeersApi().getPeer(peerId: id)));
});

/// The path of peer [id] (and [action] beneath it).
String peerApiPath(String id, [String? action]) =>
    '/v1/peers/${Uri.encodeComponent(id)}${action == null ? '' : '/$action'}';

/// This instance's federation identity (`getFederationInfo`).
final federationInfoProvider = FutureProvider<Json>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  return toJsonMap(api.serializers, await callApiRequired(() => api.getFederationApi().getFederationInfo()));
});
