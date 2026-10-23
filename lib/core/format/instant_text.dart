/// An instant typed as a UTC date (`2025-03-01`) or an ISO-8601 date-time;
/// empty is `null`. Throws [FormatException] for anything else.
DateTime? parseInstantText(String text) {
  final t = text.trim();
  if (t.isEmpty) {
    return null;
  }
  final date = RegExp(r'^(\d{4})-(\d{2})-(\d{2})$').firstMatch(t);
  if (date != null) {
    return DateTime.utc(int.parse(date[1]!), int.parse(date[2]!), int.parse(date[3]!));
  }
  final parsed = DateTime.tryParse(t);
  if (parsed == null) {
    throw const FormatException('A date such as 2025-03-01, or an ISO date-time.');
  }
  return parsed.toUtc();
}

/// [t] as text [parseInstantText] reads back: the date alone at midnight
/// UTC, otherwise an ISO-8601 UTC date-time; empty for `null`.
String instantText(DateTime? t) {
  if (t == null) {
    return '';
  }
  final u = t.toUtc();
  final midnight = u.hour == 0 && u.minute == 0 && u.second == 0 && u.millisecond == 0;
  final iso = u.toIso8601String();
  return midnight ? iso.substring(0, 10) : iso.replaceFirst('.000Z', 'Z');
}
