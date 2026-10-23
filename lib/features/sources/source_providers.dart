import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/ui/write_confirm.dart';

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

/// One source's descriptor, settings and health (`getSource`).
final sourceDetailProvider = FutureProvider.family<SourceDetail, String>((ref, sourceId) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getSourcesApi().getSource(sourceId: sourceId));
});

/// Source writes, each confirmed by re-reading the source.
class SourceWrites {
  /// Creates the writer over [api].
  const SourceWrites(this.api);

  /// The generated client.
  final ForesignalApi api;

  /// Sends [update] with `updateSource`, with each of [clears] as an explicit
  /// `null` (clearing that override), then re-reads the source with
  /// `getSource` and checks it with [confirm] (see [writeThenConfirm]).
  Future<SourceDetail> update(
    String sourceId,
    SourceSettingsUpdate update, {
    List<String> clears = const <String>[],
    String? Function(SourceDetail confirmed)? confirm,
  }) {
    final sources = api.getSourcesApi();
    return writeThenConfirm<SourceDetail>(
      write: () => sources.updateSource(
        sourceId: sourceId,
        sourceSettingsUpdate: update,
        extra: clears.isEmpty ? null : explicitNulls(clears),
      ),
      reread: () => callApiRequired(() => sources.getSource(sourceId: sourceId)),
      confirm: confirm,
    );
  }

  /// Turns a source on or off and confirms the re-read shows it.
  Future<SourceDetail> setEnabled(String sourceId, {required bool enabled}) => update(
    sourceId,
    SourceSettingsUpdate((b) => b.enabled = enabled),
    confirm: (d) => d.settings.enabled == enabled
        ? null
        : 'the source is still ${d.settings.enabled ? 'enabled' : 'disabled'}',
  );

  /// `enableCoreSources`.
  Future<EnableCoreSourcesResult> enableCore() =>
      callApiRequired(() => api.getSourcesApi().enableCoreSources());

  /// `enableFreeSources`.
  Future<EnableFreeSourcesResult> enableFree() =>
      callApiRequired(() => api.getSourcesApi().enableFreeSources());
}

/// The app's [SourceWrites].
final sourceWritesProvider = Provider<SourceWrites>(
  (ref) => SourceWrites(ref.watch(foresignalApiProvider)),
);

/// Re-reads everything the source screens show.
void invalidateSources(WidgetRef ref, [String? sourceId]) {
  ref
    ..invalidate(sourceListProvider)
    ..invalidate(sourceHealthProvider);
  if (sourceId != null) {
    ref.invalidate(sourceDetailProvider(sourceId));
  }
}
