import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/format/money_text.dart';

void main() {
  test('whole dollars drop the cents; other amounts keep two places', () {
    expect(usdText(25), r'$25');
    expect(usdText(25.0), r'$25');
    expect(usdText(12.5), r'$12.50');
    expect(usdText(0), r'$0');
  });

  test('the cap reason names both caps', () {
    expect(capReasonText(platformCap: 25, sourceCap: 25), r'platform $25 / source $25 — stricter applies');
    expect(capReasonText(platformCap: 25, sourceCap: 10.5), r'platform $25 / source $10.50 — stricter applies');
  });

  test('no reason unless both caps are set', () {
    expect(capReasonText(platformCap: null, sourceCap: 25), isNull);
    expect(capReasonText(platformCap: 25, sourceCap: null), isNull);
  });
}
