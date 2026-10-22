/// The backend's duration strings: ISO-8601 (`P7D`, `PT15M`) or shorthand
/// (`7d`, `15m`, `12h`, `30s`), as every `interval`, `retention` and
/// `minInterval` in the contract is written.
library;

final RegExp _shorthand = RegExp(r'^(\d+)\s*(ms|s|m|h|d|w)$');
final RegExp _iso = RegExp(
  r'^P(?:(\d+)W)?(?:(\d+)D)?(?:T(?:(\d+)H)?(?:(\d+)M)?(?:(\d+(?:\.\d+)?)S)?)?$',
);

/// Parses [text] as a backend duration, or returns `null` if it is not one.
Duration? parseDurationText(String text) {
  final value = text.trim();
  final short = _shorthand.firstMatch(value);
  if (short != null) {
    final n = int.parse(short.group(1)!);
    return switch (short.group(2)) {
      'ms' => Duration(milliseconds: n),
      's' => Duration(seconds: n),
      'm' => Duration(minutes: n),
      'h' => Duration(hours: n),
      'd' => Duration(days: n),
      _ => Duration(days: 7 * n),
    };
  }
  final iso = _iso.firstMatch(value.toUpperCase());
  if (iso == null || value.length < 2 || value.toUpperCase().endsWith('T')) {
    return null;
  }
  int part(int group) => int.tryParse(iso.group(group) ?? '') ?? 0;
  final seconds = double.tryParse(iso.group(5) ?? '') ?? 0;
  return Duration(
    days: part(1) * 7 + part(2),
    hours: part(3),
    minutes: part(4),
    milliseconds: (seconds * 1000).round(),
  );
}

/// [duration] in the largest whole unit that fits: `15m`, `12h`, `7d`.
String formatDurationShort(Duration duration) {
  final s = duration.inSeconds;
  if (s == 0) {
    return '0s';
  }
  if (s % 86400 == 0) {
    return '${s ~/ 86400}d';
  }
  if (s % 3600 == 0) {
    return '${s ~/ 3600}h';
  }
  if (s % 60 == 0) {
    return '${s ~/ 60}m';
  }
  return '${s}s';
}

/// [text] normalized for display (`PT15M` → `15m`); unparseable text is
/// returned as-is.
String displayDurationText(String? text) {
  if (text == null || text.isEmpty) {
    return '—';
  }
  final parsed = parseDurationText(text);
  return parsed == null ? text : formatDurationShort(parsed);
}
