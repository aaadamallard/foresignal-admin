import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/features/usage/usage_summary.dart';

import '../../../tool/preview/preview_sources.dart';

SourceHealth _health(Map<String, Object?> json) =>
    standardSerializers.deserialize(json, specifiedType: const FullType(SourceHealth))!
        as SourceHealth;

UsageSeries _series(String id, List<int> requests) =>
    standardSerializers.deserialize(
          <String, Object?>{
            'sourceId': id,
            'resolution': 'hour',
            'points': <Object?>[
              for (var i = 0; i < requests.length; i++)
                <String, Object?>{
                  't': DateTime.utc(2026, 10, 22, i).toIso8601String(),
                  'requests': requests[i],
                  'bytes': 0,
                  'errors': 0,
                  'refused': 0,
                  'recordsSeen': 0,
                },
            ],
            'totals': <String, Object?>{
              't': DateTime.utc(2026, 10, 22).toIso8601String(),
              'requests': requests.fold<int>(0, (a, b) => a + b),
              'bytes': 0,
              'errors': 0,
              'refused': 0,
              'recordsSeen': 0,
              'versions': 0,
            },
          },
          specifiedType: const FullType(UsageSeries),
        )!
        as UsageSeries;

void main() {
  group('UsageTotals.fromHealth', () {
    final sources = buildPreviewSources();
    final health = <SourceHealth>[for (final s in sources) _health(s.health)];
    final totals = UsageTotals.fromHealth(health);

    test('sums requests today over every source', () {
      expect(totals.requestsToday, sources.fold<int>(0, (sum, s) => sum + s.usedToday));
    });

    test('counts only the budgets of sources that are not disabled', () {
      final expected = health
          .where((h) => h.status != HealthStatus.disabled)
          .fold<int>(0, (sum, h) => sum + (h.budget?.perDay ?? 0));
      expect(totals.budgetToday, expected);
      expect(totals.activeSources, health.where((h) => h.status != HealthStatus.disabled).length);
    });

    test('sums spend and caps only where reported', () {
      expect(totals.spentUsdThisMonth, closeTo(6.4, 1e-9));
      expect(totals.monthlyCapUsd, 25);
      expect(totals.spendFraction, closeTo(6.4 / 25, 1e-9));
    });

    test('has no fractions without a budget or a cap', () {
      final empty = UsageTotals.fromHealth(const <SourceHealth>[]);
      expect(empty.budgetFraction, isNull);
      expect(empty.spendFraction, isNull);
      expect(empty.spentUsdThisMonth, isNull);
    });
  });

  test('SourceBudgetRow.rank puts the fullest budget first', () {
    final health = <SourceHealth>[for (final s in buildPreviewSources()) _health(s.health)];
    final rows = SourceBudgetRow.rank(health);
    for (var i = 1; i < rows.length; i++) {
      expect((rows[i - 1].fraction ?? -1) >= (rows[i].fraction ?? -1), isTrue);
    }
  });

  group('StackedUsage.combine', () {
    test('keeps the top sources in id order and folds the rest into Other', () {
      final stacked = StackedUsage.combine(<String, UsageSeries>{
        'f': _series('f', <int>[1, 1]),
        'b': _series('b', <int>[50, 50]),
        'a': _series('a', <int>[10, 0]),
        'c': _series('c', <int>[30, 30]),
        'z': _series('z', <int>[0, 0]),
      }, top: 2);
      expect(stacked.keys, <String>['b', 'c', StackedUsage.other]);
      expect(stacked.values[StackedUsage.other], <int>[11, 1]);
      expect(stacked.totals, <String, int>{'b': 100, 'c': 60, StackedUsage.other: 12});
      expect(stacked.buckets, hasLength(2));
      expect(stacked.stackAt(0), 91);
      expect(stacked.peak, 91);
      expect(stacked.total, 172);
    });

    test('has no Other series when every source fits', () {
      final stacked = StackedUsage.combine(<String, UsageSeries>{
        'a': _series('a', <int>[1]),
      });
      expect(stacked.keys, <String>['a']);
    });

    test('an hour the backend left out is an empty bucket, not a closed gap', () {
      final stacked = StackedUsage.fromPoints(<String, Map<DateTime, int>>{
        'a': <DateTime, int>{
          DateTime.utc(2026, 10, 22, 21): 10,
          DateTime.utc(2026, 10, 23, 1): 4,
        },
      }, step: usageStep('hour'));
      expect(stacked.buckets, <DateTime>[
        for (var h = 21; h <= 25; h++) DateTime.utc(2026, 10, 22, h),
      ]);
      expect(stacked.values['a'], <int>[10, 0, 0, 0, 4]);
    });
  });
}
