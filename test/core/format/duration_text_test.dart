import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/format/duration_text.dart';

void main() {
  test('parses shorthand', () {
    expect(parseDurationText('30s'), const Duration(seconds: 30));
    expect(parseDurationText('15m'), const Duration(minutes: 15));
    expect(parseDurationText('12h'), const Duration(hours: 12));
    expect(parseDurationText('7d'), const Duration(days: 7));
    expect(parseDurationText('2w'), const Duration(days: 14));
    expect(parseDurationText('500ms'), const Duration(milliseconds: 500));
  });

  test('parses ISO-8601', () {
    expect(parseDurationText('PT15M'), const Duration(minutes: 15));
    expect(parseDurationText('P7D'), const Duration(days: 7));
    expect(parseDurationText('P1DT2H'), const Duration(days: 1, hours: 2));
    expect(parseDurationText('PT1.5S'), const Duration(milliseconds: 1500));
  });

  test('rejects what is not a duration', () {
    expect(parseDurationText(''), isNull);
    expect(parseDurationText('soon'), isNull);
    expect(parseDurationText('P'), isNull);
    expect(parseDurationText('PT'), isNull);
    expect(parseDurationText('15'), isNull);
  });

  test('formats in the largest whole unit', () {
    expect(formatDurationShort(const Duration(minutes: 15)), '15m');
    expect(formatDurationShort(const Duration(hours: 24)), '1d');
    expect(formatDurationShort(const Duration(seconds: 90)), '90s');
    expect(displayDurationText('PT6H'), '6h');
    expect(displayDurationText('none'), 'none');
    expect(displayDurationText(null), '—');
  });
}
