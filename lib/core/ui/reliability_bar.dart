import 'package:flutter/material.dart';

import '../theme.dart';

/// `p` as a whole percentage, or `—`.
String _percent(num? p) => p == null ? '—' : '${(p * 100).round()}%';

/// A 0–100% track with an observed share as a bar and its expected value as
/// a tick: a well-calibrated row ends its bar on the tick.
///
/// Used for reliability bins (observed frequency against mean forecast) and
/// for quantile coverage (empirical against nominal level).
class ReliabilityBar extends StatelessWidget {
  /// Creates the bar.
  const ReliabilityBar({
    super.key,
    required this.forecast,
    required this.observed,
    this.observedLabel = 'Observed',
    this.forecastLabel = 'a mean forecast of',
    this.width = 160,
    this.max = 1,
  });

  /// Where the tick sits, 0 to 1; `null` draws none.
  final double? forecast;

  /// How long the bar is, 0 to 1; `null` draws none.
  final double? observed;

  /// The tooltip's word for [observed].
  final String observedLabel;

  /// The tooltip's words before [forecast].
  final String forecastLabel;

  /// The track width.
  final double width;

  /// The value at the track's right end: 1 for shares, less to magnify small
  /// ones (PIT bin frequencies). The tooltip shows the values unscaled.
  final double max;

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    return Tooltip(
      message: '$observedLabel ${_percent(observed)} against $forecastLabel ${_percent(forecast)}',
      child: SizedBox(
        width: width,
        height: 14,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              top: 4,
              bottom: 4,
              child: DecoratedBox(
                decoration: BoxDecoration(color: palette.border, borderRadius: BorderRadius.circular(3)),
              ),
            ),
            if (observed != null)
              Positioned(
                left: 0,
                top: 4,
                bottom: 4,
                width: width * (observed! / max).clamp(0, 1),
                child: DecoratedBox(
                  decoration: BoxDecoration(color: palette.primary, borderRadius: BorderRadius.circular(3)),
                ),
              ),
            if (forecast != null)
              Positioned(
                left: (width * (forecast! / max).clamp(0, 1)) - 1,
                top: 0,
                bottom: 0,
                width: 2,
                child: ColoredBox(color: palette.text),
              ),
          ],
        ),
      ),
    );
  }
}
