import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/features/system/overview.dart';

void main() {
  test('a degraded system names its failing sources', () {
    final reasons = systemStatusReasons(<String, Object?>{
      'status': 'degraded',
      'database': <String, Object?>{'status': 'up'},
      'ingestWriter': <String, Object?>{'state': 'RUNNING'},
      'catchUp': <String, Object?>{'catchingUp': false},
      'sources': <String, Object?>{'failing': 14},
      'warnings': <Object?>[],
    });
    expect(reasons, <String>['14 sources are failing']);
  });

  test('catch-up, a behind clock and a non-info warning are each named; info warnings are not', () {
    final reasons = systemStatusReasons(<String, Object?>{
      'ingestWriter': <String, Object?>{'state': 'CLOCK_BEHIND'},
      'catchUp': <String, Object?>{'catchingUp': true},
      'sources': <String, Object?>{'failing': 1},
      'warnings': <Object?>[
        <String, Object?>{'code': 'HISTORY_RATE_HIGH', 'severity': 'warning'},
        <String, Object?>{'code': 'OPEN_READS_EXPOSED', 'severity': 'info'},
      ],
    });
    expect(reasons, <String>[
      "the ingest writer's clock is behind",
      'ingest is catching up',
      '1 source is failing',
      'warning HISTORY_RATE_HIGH',
    ]);
  });

  test('a healthy system has no reasons', () {
    expect(systemStatusReasons(<String, Object?>{'status': 'ok'}), isEmpty);
  });
}
