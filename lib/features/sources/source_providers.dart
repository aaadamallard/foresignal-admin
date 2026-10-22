import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';

/// Every registered source (`listSources`), re-read whenever invalidated.
final sourceListProvider = FutureProvider<List<SourceSummary>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final sources = await callApiRequired(() => api.getSourcesApi().listSources());
  return sources.toList();
});

/// Health of every source (`listSourceHealth`), by source id.
final sourceHealthProvider = FutureProvider<Map<String, SourceHealth>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final health = await callApiRequired(() => api.getSourcesApi().listSourceHealth());
  return <String, SourceHealth>{for (final h in health) h.sourceId: h};
});
