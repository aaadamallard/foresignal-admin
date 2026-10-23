import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../sources/source_providers.dart';
import '../sources/source_validate.dart';
import 'usage_summary.dart';

/// Every source's request usage over a window, combined for the stacked
/// chart: `getSourceUsage` for each source that is not disabled. A source
/// whose usage cannot be read is listed in [GlobalUsage.failed] rather than
/// failing the whole chart.
final globalUsageProvider = FutureProvider.family<GlobalUsage, UsageWindow>((ref, window) async {
  final api = ref.watch(foresignalApiProvider);
  final sources = await ref.watch(sourceListProvider.future);
  final to = DateTime.now().toUtc();
  final from = to.subtract(window.span);
  final ids = <String>[
    for (final s in sources)
      if (s.enabled) s.id,
  ];
  final results = await Future.wait(<Future<(String, UsageSeries?)>>[
    for (final id in ids)
      callApiRequired(
        () => api.getSourcesApi().getSourceUsage(
          sourceId: id,
          from: from,
          to: to,
          resolution: window.resolution,
        ),
      ).then<(String, UsageSeries?)>((s) => (id, s), onError: (Object _) => (id, null)),
  ]);
  return GlobalUsage(
    stacked: StackedUsage.combine(<String, UsageSeries>{
      for (final (id, series) in results) id: ?series,
    }),
    failed: <String>[
      for (final (id, series) in results)
        if (series == null) id,
    ],
  );
});

/// The combined usage and the sources it could not read.
class GlobalUsage {
  /// Creates the result.
  const GlobalUsage({required this.stacked, required this.failed});

  /// Requests per bucket, busiest sources first.
  final StackedUsage stacked;

  /// Sources whose usage could not be read.
  final List<String> failed;
}

/// The stats bucket that matches a usage window.
String statsBucketOf(UsageWindow window) => window == UsageWindow.day ? '1h' : '1d';

/// New record versions written over a window, every source
/// (`getStatsTimeseries`, `measure=versions`).
final statsSeriesProvider = FutureProvider.family<StatsSeries, UsageWindow>((ref, window) async {
  final api = ref.watch(foresignalApiProvider);
  final to = DateTime.now().toUtc();
  return callApiRequired(
    () => api.getStatsApi().getStatsTimeseries(
      from: to.subtract(window.span),
      to: to,
      bucket: statsBucketOf(window),
      measure: 'versions',
    ),
  );
});

/// The sources that wrote the most record versions over a window
/// (`getStatsTop`, `by=source`).
final statsTopProvider = FutureProvider.family<StatsTop, UsageWindow>((ref, window) async {
  final api = ref.watch(foresignalApiProvider);
  final to = DateTime.now().toUtc();
  return callApiRequired(
    () => api.getStatsApi().getStatsTop(
      from: to.subtract(window.span),
      to: to,
      by: 'source',
      measure: 'versions',
      limit: 5,
    ),
  );
});

/// The collector's settings (`getCollectorSettings`).
final collectorSettingsProvider = FutureProvider<CollectorSettings>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getSettingsApi().getCollectorSettings());
});

/// The per-class rate limits (`getRateLimits`).
final rateLimitsProvider = FutureProvider<RateLimitSettings>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getSettingsApi().getRateLimits());
});

/// The retention windows (`getRetention`).
final retentionProvider = FutureProvider<RetentionSettings>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getSettingsApi().getRetention());
});
