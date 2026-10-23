import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/format/instant_text.dart';

void main() {
  test('utcClockText shows a local time as its UTC clock', () {
    final local = DateTime.utc(2026, 10, 23, 19, 7, 41).toLocal();
    expect(utcClockText(local), '19:07:41');
  });

  test('utcClockText pads single digits', () {
    expect(utcClockText(DateTime.utc(2026, 1, 2, 3, 4, 5)), '03:04:05');
  });
}
