import '../../api/api.dart';

/// Instance-wide usage, summed from every source's health
/// (`listSourceHealth`): requests against the daily budgets, the last hour,
/// and money spent by paid adapters this month.
class UsageTotals {
  /// Creates the totals.
  const UsageTotals({
    required this.requestsToday,
    required this.budgetToday,
    required this.requestsLastHour,
    required this.refusedLastHour,
    required this.bytesLastHour,
    required this.spentUsdThisMonth,
    required this.monthlyCapUsd,
    required this.activeSources,
  });

  /// Sums [health]. Disabled sources count toward what they used today but
  /// not toward the budget available, since they will not spend it.
  factory UsageTotals.fromHealth(Iterable<SourceHealth> health) {
    var requestsToday = 0;
    var budgetToday = 0;
    var requestsLastHour = 0;
    var refusedLastHour = 0;
    var bytesLastHour = 0;
    var active = 0;
    num? spent;
    num? cap;
    for (final h in health) {
      requestsToday += h.budgetUsedToday ?? 0;
      requestsLastHour += h.requestsLastHour ?? 0;
      refusedLastHour += h.refusedLastHour ?? 0;
      bytesLastHour += h.bytesLastHour ?? 0;
      if (h.status != HealthStatus.disabled) {
        active++;
        budgetToday += h.budget?.perDay ?? 0;
      }
      if (h.spentUsdThisMonth case final s?) {
        spent = (spent ?? 0) + s;
      }
      if (h.budget?.monthlyCapUsd case final c?) {
        cap = (cap ?? 0) + c;
      }
    }
    return UsageTotals(
      requestsToday: requestsToday,
      budgetToday: budgetToday,
      requestsLastHour: requestsLastHour,
      refusedLastHour: refusedLastHour,
      bytesLastHour: bytesLastHour,
      spentUsdThisMonth: spent,
      monthlyCapUsd: cap,
      activeSources: active,
    );
  }

  /// Requests made today, every source.
  final int requestsToday;

  /// The daily request budgets of the sources not disabled, summed.
  final int budgetToday;

  /// Requests in the last hour.
  final int requestsLastHour;

  /// Requests the budgets refused in the last hour.
  final int refusedLastHour;

  /// Bytes pulled in the last hour.
  final int bytesLastHour;

  /// Money spent by paid adapters this month; `null` when none reports it.
  final num? spentUsdThisMonth;

  /// The paid adapters' monthly caps, summed; `null` when none has one.
  final num? monthlyCapUsd;

  /// Sources not disabled.
  final int activeSources;

  /// [requestsToday] as a fraction of [budgetToday], `null` without a budget.
  double? get budgetFraction => budgetToday == 0 ? null : requestsToday / budgetToday;

  /// Spend as a fraction of the caps, `null` without both.
  double? get spendFraction => switch ((spentUsdThisMonth, monthlyCapUsd)) {
    (final s?, final c?) when c > 0 => s / c,
    _ => null,
  };
}

/// One source's budget state, a row of the budget table.
class SourceBudgetRow {
  /// Creates the row.
  const SourceBudgetRow({required this.health, this.name});

  /// The source's health.
  final SourceHealth health;

  /// The display name, when the catalog has it.
  final String? name;

  /// The source id.
  String get id => health.sourceId;

  /// Requests today.
  int get usedToday => health.budgetUsedToday ?? 0;

  /// The daily budget, `null` when the source has none.
  int? get perDay => health.budget?.perDay;

  /// [usedToday] as a fraction of [perDay].
  double? get fraction => switch (perDay) {
    final d? when d > 0 => usedToday / d,
    _ => null,
  };

  /// Rows for [health], fullest budget first, then by requests today.
  static List<SourceBudgetRow> rank(
    Iterable<SourceHealth> health, [
    Map<String, String> names = const <String, String>{},
  ]) {
    final rows = <SourceBudgetRow>[
      for (final h in health) SourceBudgetRow(health: h, name: names[h.sourceId]),
    ];
    rows.sort((a, b) {
      final byFraction = (b.fraction ?? -1).compareTo(a.fraction ?? -1);
      return byFraction != 0 ? byFraction : b.usedToday.compareTo(a.usedToday);
    });
    return rows;
  }
}

/// Requests per bucket for the busiest sources, the rest folded into
/// "Other" — the data of the stacked usage chart.
class StackedUsage {
  /// Creates the stacked series.
  const StackedUsage({
    required this.buckets,
    required this.keys,
    required this.values,
    required this.totals,
  });

  /// The series key for every source folded together.
  static const String other = 'Other';

  /// Combines per-source series. The [top] sources by requests keep their
  /// own series, in id order so a source keeps its color while it stays in
  /// the top; the rest are summed into [other].
  factory StackedUsage.combine(Map<String, UsageSeries> bySource, {int top = 5}) =>
      StackedUsage.fromPoints(<String, Map<DateTime, int>>{
        for (final entry in bySource.entries)
          entry.key: <DateTime, int>{for (final p in entry.value.points) p.t.toUtc(): p.requests},
      }, top: top);

  /// Combines per-key counts by bucket start the same way as [combine]:
  /// the [top] keys by total keep their own series, in key order, and the
  /// rest are summed into [other].
  factory StackedUsage.fromPoints(Map<String, Map<DateTime, int>> byKey, {int top = 5}) {
    final totals = <String, int>{
      for (final entry in byKey.entries)
        entry.key: entry.value.values.fold<int>(0, (sum, v) => sum + v),
    };
    final ranked = totals.keys.where((k) => totals[k]! > 0).toList()
      ..sort((a, b) => totals[b]!.compareTo(totals[a]!));
    final kept = ranked.take(top).toList()..sort();
    final folded = ranked.skip(top).toSet();
    final keys = <String>[...kept, if (folded.isNotEmpty) other];

    final times = <DateTime>{
      for (final points in byKey.values) ...points.keys.map((t) => t.toUtc()),
    }.toList()..sort();
    final index = <DateTime, int>{for (var i = 0; i < times.length; i++) times[i]: i};
    final values = <String, List<int>>{
      for (final k in keys) k: List<int>.filled(times.length, 0),
    };
    for (final entry in byKey.entries) {
      final key = folded.contains(entry.key) ? other : entry.key;
      final row = values[key];
      if (row == null) {
        continue;
      }
      for (final point in entry.value.entries) {
        row[index[point.key.toUtc()]!] += point.value;
      }
    }
    final keptTotals = <String, int>{
      for (final k in kept) k: totals[k]!,
      if (folded.isNotEmpty) other: folded.fold<int>(0, (sum, k) => sum + totals[k]!),
    };
    return StackedUsage(buckets: times, keys: keys, values: values, totals: keptTotals);
  }

  /// The bucket start times, oldest first.
  final List<DateTime> buckets;

  /// The series, in stacking (and color) order.
  final List<String> keys;

  /// Requests per bucket, per series.
  final Map<String, List<int>> values;

  /// Requests over the whole window, per series.
  final Map<String, int> totals;

  /// The sum of every series in bucket [i].
  int stackAt(int i) => keys.fold<int>(0, (sum, k) => sum + values[k]![i]);

  /// The tallest stack.
  int get peak {
    var peak = 0;
    for (var i = 0; i < buckets.length; i++) {
      final s = stackAt(i);
      if (s > peak) {
        peak = s;
      }
    }
    return peak;
  }

  /// Requests over the window, every source.
  int get total => totals.values.fold<int>(0, (sum, v) => sum + v);
}
