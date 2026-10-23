import 'package:flutter/material.dart';

import '../theme.dart';

/// The categorical series colors, in their fixed order, for the current
/// brightness. The order was checked for color-vision-deficiency
/// separation between neighbors on both card surfaces; a sixth series is
/// never given a new hue — it is folded into "Other" (see [chartOtherColor]).
List<Color> chartSeriesColors(BuildContext context) =>
    Theme.of(context).brightness == Brightness.dark ? _dark : _light;

const List<Color> _light = <Color>[
  Color(0xFF2A78D6),
  Color(0xFFEB6834),
  Color(0xFF1BAF7A),
  Color(0xFFEDA100),
  Color(0xFFE87BA4),
];

const List<Color> _dark = <Color>[
  Color(0xFF3987E5),
  Color(0xFFD95926),
  Color(0xFF199E70),
  Color(0xFFC98500),
  Color(0xFFD55181),
];

/// The color of the folded "Other" series: neutral, so it never reads as
/// one more category.
Color chartOtherColor(BuildContext context) => AdminPalette.of(context).neutral;

/// One series of a [StackedBarChart].
class ChartSeries {
  /// Creates the series.
  const ChartSeries({
    required this.label,
    required this.values,
    required this.color,
    this.total,
  });

  /// The legend text.
  final String label;

  /// One value per bucket.
  final List<int> values;

  /// The fill.
  final Color color;

  /// The total shown beside the legend entry.
  final String? total;
}

/// A stacked bar chart over time buckets: one bar per bucket, a segment per
/// series, a legend with totals, a tooltip per bar, and a recessive scale.
class StackedBarChart extends StatelessWidget {
  /// Creates the chart.
  const StackedBarChart({
    super.key,
    required this.buckets,
    required this.series,
    required this.bucketLabel,
    this.unit = 'requests',
    this.height = 180,
  });

  /// The bucket start times, oldest first.
  final List<DateTime> buckets;

  /// The series, bottom of the stack first.
  final List<ChartSeries> series;

  /// The axis and tooltip text of a bucket.
  final String Function(DateTime bucket) bucketLabel;

  /// What the values count, for the tooltip.
  final String unit;

  /// The plot height.
  final double height;

  int _stack(int i) => series.fold<int>(0, (sum, s) => sum + s.values[i]);

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final small = Theme.of(context).textTheme.bodySmall?.copyWith(color: palette.muted);
    var peak = 0;
    for (var i = 0; i < buckets.length; i++) {
      final s = _stack(i);
      if (s > peak) {
        peak = s;
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // A single series needs no legend: the card's title names it.
        if (series.length > 1) ...<Widget>[
          Wrap(
            spacing: 16,
            runSpacing: 6,
            children: <Widget>[
              for (final s in series)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: s.color,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(s.label, style: Theme.of(context).textTheme.bodySmall),
                    if (s.total case final t?) ...<Widget>[
                      const SizedBox(width: 4),
                      Text(t, style: small),
                    ],
                  ],
                ),
            ],
          ),
          const SizedBox(height: 12),
        ],
        SizedBox(
          height: height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                width: 44,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_short(peak), style: small),
                    Text(_short(peak ~/ 2), style: small),
                    Text('0', style: small),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    // Recessive grid: the peak, half and baseline.
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        for (var i = 0; i < 3; i++)
                          Container(height: 1, color: palette.border.withValues(alpha: 0.6)),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        for (var i = 0; i < buckets.length; i++)
                          Expanded(child: _bar(context, i, peak)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 6),
        if (buckets.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(bucketLabel(buckets.first), style: small),
                if (buckets.length > 2)
                  Text(bucketLabel(buckets[buckets.length ~/ 2]), style: small),
                if (buckets.length > 1) Text(bucketLabel(buckets.last), style: small),
              ],
            ),
          ),
      ],
    );
  }

  Widget _bar(BuildContext context, int i, int peak) {
    final stack = _stack(i);
    final lines = <String>[
      bucketLabel(buckets[i]),
      for (final s in series.reversed)
        if (s.values[i] > 0) '${s.label}: ${s.values[i]}',
      'Total: $stack $unit',
    ];
    final segments = <Widget>[];
    // Top of the stack first, so the column reads top-down.
    final visible = series.reversed.where((s) => s.values[i] > 0).toList();
    for (var k = 0; k < visible.length; k++) {
      final s = visible[k];
      segments.add(
        Padding(
          // A 2px surface gap between segments.
          padding: EdgeInsets.only(top: k == 0 ? 0 : 2),
          child: Container(
            // Room is kept for the gaps of the tallest stack (5 series + Other).
            height: peak == 0 ? 0 : (height - 12) * s.values[i] / peak,
            decoration: BoxDecoration(
              color: s.color,
              // The stack's top is rounded; its base sits on the baseline.
              borderRadius: k == 0
                  ? const BorderRadius.vertical(top: Radius.circular(4))
                  : BorderRadius.zero,
            ),
          ),
        ),
      );
    }
    return Tooltip(
      message: lines.join('\n'),
      waitDuration: const Duration(milliseconds: 150),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // A hit target the full height of the plot, not just the bar.
            Expanded(child: Container(color: Colors.transparent)),
            ...segments,
          ],
        ),
      ),
    );
  }

  static String _short(int n) {
    if (n >= 1000000) {
      return '${(n / 1000000).toStringAsFixed(1)}M';
    }
    if (n >= 1000) {
      return '${(n / 1000).toStringAsFixed(1)}K';
    }
    return '$n';
  }
}
