import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/format/money_text.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_providers.dart';
import '../sources/source_validate.dart';
import '../sources/source_widgets.dart';
import '../vetting/vetting_providers.dart';
import 'settings_panels.dart';
import 'usage_providers.dart';
import 'usage_summary.dart';

/// The tabs of the Usage section (mocks C1 and C2).
enum UsageTab {
  /// Usage against budgets, and activity over time.
  budgets('Usage & Budgets'),

  /// The pull governor.
  collector('Collector'),

  /// Per-class rate limits.
  rateLimits('Rate Limits'),

  /// Retention windows and run-now.
  retention('Retention');

  const UsageTab(this.label);

  /// The tab text.
  final String label;
}

/// Data usage, budgets and collector load (Screens §C), desktop only. The
/// mobile companion's glance is [UsageGlanceCard], on its Sources screen.
class UsageScreen extends ConsumerStatefulWidget {
  /// Creates the screen.
  const UsageScreen({super.key});

  @override
  ConsumerState<UsageScreen> createState() => _UsageScreenState();
}

class _UsageScreenState extends ConsumerState<UsageScreen> {
  UsageTab _tab = UsageTab.budgets;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        const PageHeader(
          title: 'Usage',
          subtitle: 'The load this instance puts on its sources and on this machine.',
        ),
        DefaultTabController(
          length: UsageTab.values.length,
          initialIndex: _tab.index,
          child: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            onTap: (i) => setState(() => _tab = UsageTab.values[i]),
            tabs: <Widget>[
              for (final tab in UsageTab.values)
                Tab(key: Key('usage.tab.${tab.name}'), text: tab.label),
            ],
          ),
        ),
        const SizedBox(height: 20),
        switch (_tab) {
          UsageTab.budgets => const BudgetsPanel(),
          UsageTab.collector => const CollectorPanel(),
          UsageTab.rateLimits => const RateLimitsPanel(),
          UsageTab.retention => const RetentionPanel(),
        },
      ],
    );
  }
}

/// A headline number with an optional progress bar against its limit.
class StatTile extends StatelessWidget {
  /// Creates the tile.
  const StatTile({
    super.key,
    required this.label,
    required this.value,
    this.detail,
    this.fraction,
  });

  /// What it counts.
  final String label;

  /// The headline.
  final String value;

  /// The line under it ("of 500,000").
  final String? detail;

  /// Use against the limit, 0 to 1 (and beyond when over).
  final double? fraction;

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final f = fraction;
    final tone = f == null
        ? palette.primary
        : f >= 1
        ? palette.error
        : f >= 0.8
        ? palette.warning
        : palette.primary;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: palette.card,
        border: Border.all(color: palette.border),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(label, style: TextStyle(color: palette.muted)),
          const SizedBox(height: 6),
          Text(value, style: Theme.of(context).textTheme.headlineSmall),
          if (detail case final d?) Text(d, style: TextStyle(color: palette.muted, fontSize: 12)),
          if (f != null) ...<Widget>[
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: f.clamp(0, 1).toDouble(),
                minHeight: 6,
                color: tone,
                backgroundColor: palette.border,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${(f * 100).toStringAsFixed(f < 0.1 ? 1 : 0)}% used',
              style: TextStyle(color: palette.muted, fontSize: 12),
            ),
          ],
        ],
      ),
    );
  }
}

String _usd(num n) => '\$${n.toStringAsFixed(2)}';

/// The headline tiles from every source's health.
List<Widget> usageTiles(UsageTotals t) => <Widget>[
  StatTile(
    key: const Key('usage.requestsToday'),
    label: 'Requests today',
    value: compactCount(t.requestsToday),
    detail: t.budgetToday == 0
        ? 'No daily budget set'
        : 'of ${compactCount(t.budgetToday)} across ${t.activeSources} active sources',
    fraction: t.budgetFraction,
  ),
  StatTile(
    key: const Key('usage.lastHour'),
    label: 'Last hour',
    value: '${compactCount(t.requestsLastHour)} requests',
    detail: '${byteText(t.bytesLastHour)} pulled · ${t.refusedLastHour} refused by budgets',
  ),
  if (t.spentUsdThisMonth case final spent?)
    StatTile(
      key: const Key('usage.spend'),
      label: 'Spend this month',
      value: _usd(spent),
      detail: t.monthlyCapUsd == null ? 'Paid adapters' : 'of ${_usd(t.monthlyCapUsd!)} in caps',
      fraction: t.spendFraction,
    ),
];

/// Lays [tiles] out in a row, or stacked when narrow.
Widget tileRow(List<Widget> tiles) => LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth < 640) {
      return Column(
        children: <Widget>[
          for (final t in tiles) Padding(padding: const EdgeInsets.only(bottom: 12), child: t),
        ],
      );
    }
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          for (var i = 0; i < tiles.length; i++) ...<Widget>[
            if (i > 0) const SizedBox(width: 16),
            Expanded(child: tiles[i]),
          ],
        ],
      ),
    );
  },
);

/// The axis and tooltip text of bucket [t] in [window], UTC.
String bucketText(DateTime t, UsageWindow window) {
  final u = t.toUtc();
  String two(int n) => n.toString().padLeft(2, '0');
  return window == UsageWindow.day
      ? '${two(u.hour)}:00'
      : '${u.year}-${two(u.month)}-${two(u.day)}';
}

/// Usage against budgets over a chosen window (mock C1): headline tiles,
/// requests over time stacked by source, records written, the busiest
/// sources, and every source's budget.
class BudgetsPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const BudgetsPanel({super.key});

  @override
  ConsumerState<BudgetsPanel> createState() => _BudgetsPanelState();
}

class _BudgetsPanelState extends ConsumerState<BudgetsPanel> {
  UsageWindow _window = UsageWindow.day;

  void _refresh() {
    ref
      ..invalidate(sourceHealthProvider)
      ..invalidate(sourceListProvider)
      ..invalidate(globalUsageProvider(_window))
      ..invalidate(statsSeriesProvider(_window))
      ..invalidate(statsTopProvider(_window));
  }

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final names = <String, String>{
      for (final s in ref.watch(sourceListProvider).value ?? const <SourceSummary>[]) s.id: s.name,
    };
    String nameOf(String id) => names[id] ?? id;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              'Times are UTC.',
              style: TextStyle(color: palette.muted),
            ),
            const Spacer(),
            SizedBox(
              width: 200,
              child: DropdownButtonFormField<UsageWindow>(
                key: const Key('usage.window'),
                isExpanded: true,
                initialValue: _window,
                items: withCurrentItem(<DropdownMenuItem<UsageWindow>>[
                  for (final w in UsageWindow.values)
                    DropdownMenuItem<UsageWindow>(value: w, child: Text(w.label)),
                ], _window),
                onChanged: (w) => setState(() => _window = w ?? _window),
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              key: const Key('usage.refresh'),
              tooltip: 'Refresh',
              onPressed: _refresh,
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        const SizedBox(height: 16),
        AsyncView<Map<String, SourceHealth>>(
          value: ref.watch(sourceHealthProvider),
          onRetry: () => ref.invalidate(sourceHealthProvider),
          data: (health) => tileRow(usageTiles(UsageTotals.fromHealth(health.values))),
        ),
        const SizedBox(height: 16),
        SectionCard(
          title: 'Requests over time',
          subtitle: 'Upstream requests by source; the busiest five, the rest as Other.',
          child: AsyncView<GlobalUsage>(
            value: ref.watch(globalUsageProvider(_window)),
            onRetry: () => ref.invalidate(globalUsageProvider(_window)),
            data: (usage) => _RequestsChart(
              usage: usage,
              window: _window,
              nameOf: nameOf,
            ),
          ),
        ),
        const SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, constraints) {
            final written = SectionCard(
              title: 'Records written',
              subtitle: 'New record versions, every source.',
              child: AsyncView<StatsSeries>(
                value: ref.watch(statsSeriesProvider(_window)),
                onRetry: () => ref.invalidate(statsSeriesProvider(_window)),
                data: (series) => _WrittenChart(series: series, window: _window),
              ),
            );
            final top = SectionCard(
              title: 'Top sources',
              subtitle: 'By record versions written.',
              child: AsyncView<StatsTop>(
                value: ref.watch(statsTopProvider(_window)),
                onRetry: () => ref.invalidate(statsTopProvider(_window)),
                data: (top) => _TopList(top: top, nameOf: nameOf),
              ),
            );
            if (constraints.maxWidth < 900) {
              return Column(children: <Widget>[written, const SizedBox(height: 16), top]);
            }
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(flex: 3, child: written),
                const SizedBox(width: 16),
                Expanded(flex: 2, child: top),
              ],
            );
          },
        ),
        const SizedBox(height: 24),
        Text('Budgets by source', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        AsyncView<Map<String, SourceHealth>>(
          value: ref.watch(sourceHealthProvider),
          onRetry: () => ref.invalidate(sourceHealthProvider),
          data: (health) => BudgetTable(
            rows: SourceBudgetRow.rank(health.values, names),
            platformCaps: <String, num>{
              for (final p in ref.watch(socialPlatformsProvider).value ?? const <SocialPlatform>[])
                wireOf(p.id, p, 'id'): ?p.spend?.monthlyCapUsd,
            },
          ),
        ),
      ],
    );
  }
}

class _RequestsChart extends StatelessWidget {
  const _RequestsChart({required this.usage, required this.window, required this.nameOf});

  final GlobalUsage usage;
  final UsageWindow window;
  final String Function(String id) nameOf;

  @override
  Widget build(BuildContext context) {
    final stacked = usage.stacked;
    final colors = chartSeriesColors(context);
    final muted = AdminPalette.of(context).muted;
    var slot = 0;
    final series = <ChartSeries>[
      for (final key in stacked.keys)
        ChartSeries(
          label: key == StackedUsage.other ? 'Other' : nameOf(key),
          values: stacked.values[key]!,
          color: key == StackedUsage.other ? chartOtherColor(context) : colors[slot++],
          total: compactCount(stacked.totals[key]!),
        ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (stacked.buckets.isEmpty || stacked.total == 0)
          Text('No upstream requests in this window.', style: TextStyle(color: muted))
        else
          StackedBarChart(
            key: const Key('usage.requestsChart'),
            buckets: stacked.buckets,
            series: series,
            bucketLabel: (t) => bucketText(t, window),
          ),
        if (usage.failed.isNotEmpty) ...<Widget>[
          const SizedBox(height: 8),
          Text(
            'Usage could not be read for ${usage.failed.map(nameOf).join(', ')}.',
            style: TextStyle(color: AdminPalette.of(context).warning),
          ),
        ],
      ],
    );
  }
}

class _WrittenChart extends StatelessWidget {
  const _WrittenChart({required this.series, required this.window});

  final StatsSeries series;
  final UsageWindow window;

  @override
  Widget build(BuildContext context) {
    final points = <DateTime, int>{};
    for (final s in series.series) {
      for (final p in s.points) {
        points.update(p.t.toUtc(), (v) => v + p.value, ifAbsent: () => p.value);
      }
    }
    final buckets = points.keys.toList()..sort();
    if (buckets.isEmpty || points.values.every((v) => v == 0)) {
      return Text(
        'No records written in this window.',
        style: TextStyle(color: AdminPalette.of(context).muted),
      );
    }
    final total = points.values.fold<int>(0, (a, b) => a + b);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          '${compactCount(total)} versions in this window',
          style: TextStyle(color: AdminPalette.of(context).muted),
        ),
        const SizedBox(height: 8),
        StackedBarChart(
          key: const Key('usage.writtenChart'),
          buckets: buckets,
          unit: 'versions',
          height: 140,
          series: <ChartSeries>[
            ChartSeries(
              label: 'Versions',
              values: <int>[for (final b in buckets) points[b]!],
              color: chartSeriesColors(context).first,
              total: compactCount(total),
            ),
          ],
          bucketLabel: (t) => bucketText(t, window),
        ),
      ],
    );
  }
}

class _TopList extends StatelessWidget {
  const _TopList({required this.top, required this.nameOf});

  final StatsTop top;
  final String Function(String id) nameOf;

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final items = top.items.toList();
    if (items.isEmpty) {
      return Text('Nothing written in this window.', style: TextStyle(color: palette.muted));
    }
    return Column(
      key: const Key('usage.top'),
      children: <Widget>[
        for (var i = 0; i < items.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 24,
                  child: Text('${i + 1}', style: TextStyle(color: palette.muted)),
                ),
                Expanded(
                  child: Text(
                    nameOf(items[i].sourceId ?? items[i].key),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(compactCount(items[i].count)),
              ],
            ),
          ),
      ],
    );
  }
}

/// Every source's daily budget: used, remaining, how long it lasts at the
/// last hour's rate, refusals and spend. A row opens the source.
class BudgetTable extends StatelessWidget {
  /// Creates the table.
  const BudgetTable({super.key, required this.rows, this.platformCaps = const <String, num>{}});

  /// The rows, fullest first.
  final List<SourceBudgetRow> rows;

  /// The social platforms' own monthly caps by source id (X's
  /// `monthlyCapUsd`): a source with one and a source cap says which applies.
  final Map<String, num> platformCaps;

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final paid = rows.any((r) => r.health.spentUsdThisMonth != null);
    return DataTableCard<SourceBudgetRow>(
      rows: rows,
      empty: 'No sources report health yet. A source appears here once it is collected.',
      onTap: (r) => context.go(sourceDetailPath(r.id)),
      // Nine columns fit a 1280-wide window: a long name or cap reason wraps
      // onto a second line rather than widening the table past the screen.
      columnSpacing: 20,
      columns: <TableColumnSpec<SourceBudgetRow>>[
        TableColumnSpec<SourceBudgetRow>(
          label: 'Source',
          cell: (r) => ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 200),
            child: Text(r.name ?? r.id),
          ),
        ),
        TableColumnSpec<SourceBudgetRow>(
          label: 'Today',
          cell: (r) => SizedBox(
            width: 160,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: LinearProgressIndicator(
                      value: (r.fraction ?? 0).clamp(0, 1).toDouble(),
                      minHeight: 6,
                      color: (r.fraction ?? 0) >= 1
                          ? palette.error
                          : (r.fraction ?? 0) >= 0.8
                          ? palette.warning
                          : palette.primary,
                      backgroundColor: palette.border,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    r.perDay == null
                        ? compactCount(r.usedToday)
                        : '${compactCount(r.usedToday)} / ${compactCount(r.perDay!)}',
                  ),
                ),
              ],
            ),
          ),
        ),
        TableColumnSpec<SourceBudgetRow>(
          label: 'Remaining',
          numeric: true,
          cell: (r) => Text(
            r.health.budgetRemainingToday == null
                ? '—'
                : compactCount(r.health.budgetRemainingToday!),
          ),
        ),
        TableColumnSpec<SourceBudgetRow>(
          label: 'Lasts',
          numeric: true,
          cell: (r) => Text(switch (r.health.budgetHoursRemaining) {
            null => '—',
            final h when h >= 24 => 'All day',
            final h => '${h.toStringAsFixed(1)} h',
          }),
        ),
        TableColumnSpec<SourceBudgetRow>(
          label: 'Last hour',
          numeric: true,
          cell: (r) => Text(compactCount(r.health.requestsLastHour ?? 0)),
        ),
        TableColumnSpec<SourceBudgetRow>(
          label: 'Refused',
          numeric: true,
          cell: (r) {
            final n = r.health.refusedLastHour ?? 0;
            return Text('$n', style: n > 0 ? TextStyle(color: palette.warning) : null);
          },
        ),
        TableColumnSpec<SourceBudgetRow>(
          label: 'Pulled / h',
          numeric: true,
          cell: (r) => Text(byteText(r.health.bytesLastHour ?? 0)),
        ),
        if (paid)
          TableColumnSpec<SourceBudgetRow>(
            label: 'Spend (month)',
            numeric: true,
            cell: (r) {
              final spend = Text(switch (r.health.spentUsdThisMonth) {
                null => '—',
                final s =>
                  r.health.budget?.monthlyCapUsd == null
                      ? _usd(s)
                      : '${_usd(s)} / ${_usd(r.health.budget!.monthlyCapUsd!)}',
              });
              final reason = capReasonText(
                platformCap: platformCaps[r.id],
                sourceCap: r.health.budget?.monthlyCapUsd,
              );
              return reason == null
                  ? spend
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        spend,
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 150),
                          child: Text(
                            reason,
                            key: Key('usage.capReason.${r.id}'),
                            textAlign: TextAlign.end,
                            style: TextStyle(color: palette.muted, fontSize: 12),
                          ),
                        ),
                      ],
                    );
            },
          ),
      ],
    );
  }
}

/// The mobile companion's usage glance, shown above its source list:
/// today's requests against the daily budgets, the last hour, and spend.
class UsageGlanceCard extends ConsumerWidget {
  /// Creates the card.
  const UsageGlanceCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final palette = AdminPalette.of(context);
    final health = ref.watch(sourceHealthProvider).value;
    if (health == null) {
      return const SizedBox.shrink();
    }
    final t = UsageTotals.fromHealth(health.values);
    final f = t.budgetFraction;
    final muted = TextStyle(color: palette.muted, fontSize: 12);
    return Container(
      key: const Key('usage.glance'),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: palette.card,
        border: Border.all(color: palette.border),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              // Wraps rather than pushing the count off a narrow phone.
              Expanded(child: Text('Requests today', style: TextStyle(color: palette.muted))),
              const SizedBox(width: 8),
              Text(
                t.budgetToday == 0
                    ? compactCount(t.requestsToday)
                    : '${compactCount(t.requestsToday)} / ${compactCount(t.budgetToday)}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          if (f != null) ...<Widget>[
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: f.clamp(0, 1).toDouble(),
                minHeight: 6,
                color: f >= 1
                    ? palette.error
                    : f >= 0.8
                    ? palette.warning
                    : palette.primary,
                backgroundColor: palette.border,
              ),
            ),
          ],
          const SizedBox(height: 8),
          Text(
            <String>[
              'Last hour: ${compactCount(t.requestsLastHour)} requests',
              if (t.refusedLastHour > 0) '${t.refusedLastHour} refused',
              if (t.spentUsdThisMonth case final s?) '${_usd(s)} spent this month',
            ].join(' · '),
            style: muted,
          ),
        ],
      ),
    );
  }
}
