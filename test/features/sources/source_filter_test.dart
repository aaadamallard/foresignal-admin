import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/features/sources/source_filter.dart';
import 'package:foresignal_admin/features/sources/source_widgets.dart';

import '../../../tool/preview/preview_sources.dart';

List<SourceSummary> summaries() => <SourceSummary>[
  for (final s in buildPreviewSources())
    standardSerializers.deserialize(s.summary, specifiedType: const FullType(SourceSummary))!
        as SourceSummary,
];

void main() {
  final all = summaries();

  test('no filter keeps everything, sorted by name', () {
    final rows = const SourceFilter().apply(all);
    expect(rows, hasLength(all.length));
    expect(rows.map((s) => s.name).toList(), List<String>.of(rows.map((s) => s.name))..sort());
  });

  test('the enabled tabs split the catalog', () {
    final on = const SourceFilter(enabled: EnabledFilter.enabled).apply(all);
    final off = const SourceFilter(enabled: EnabledFilter.disabled).apply(all);
    expect(on.every((s) => s.enabled), isTrue);
    expect(off.every((s) => !s.enabled), isTrue);
    expect(on.length + off.length, all.length);
  });

  test('search matches the id or the name, ignoring case', () {
    expect(const SourceFilter(query: 'usgs').apply(all).single.id, 'usgs-earthquakes');
    expect(const SourceFilter(query: 'Alerts').apply(all).single.id, 'nws-alerts');
  });

  test('kind, credentials and health narrow the list', () {
    expect(const SourceFilter(kind: 'fire').apply(all).single.id, 'nasa-firms');
    expect(
      const SourceFilter(credentials: CredentialState.missing).apply(all).map((s) => s.id),
      unorderedEquals(<String>['nasa-firms', 'acled']),
    );
    expect(const SourceFilter(health: HealthStatus.failing).apply(all).single.id, 'acled');
  });

  test('tab counts ignore the tab but honor the other filters', () {
    const filter = SourceFilter(enabled: EnabledFilter.enabled, kind: 'fire');
    expect(all.where(filter.matchesIgnoringTab), hasLength(1));
    expect(filter.apply(all), isEmpty);
  });

  test('copyWith clears a field through its closure', () {
    const filter = SourceFilter(kind: 'fire');
    expect(filter.copyWith(kind: () => null).kind, isNull);
    expect(filter.copyWith(query: 'x').kind, 'fire');
  });

  test('kindsOf lists each kind once, sorted', () {
    final kinds = kindsOf(all);
    expect(kinds, List<String>.of(kinds)..sort());
    expect(kinds.toSet(), hasLength(kinds.length));
  });
}
