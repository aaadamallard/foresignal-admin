import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:foresignal_admin/features/usage/collector_gauges.dart';

import '../../../tool/preview/preview_sources.dart';
import '../../../tool/preview/preview_usage.dart';
import '../../../tool/preview/preview_validate.dart';
import '../../support/fake_adapter.dart';
import '../sources/sources_screens_test.dart' show openAt, sourcesBackend;

/// A fake backend answering usage, stats and settings, then the source
/// operations, from fresh preview state.
FakeAdapter usageBackend([PreviewSettings? held]) {
  final sources = buildPreviewSources();
  final settings = held ?? PreviewSettings();
  final custom = PreviewCustom();
  final fallback = sourcesBackend(sources);
  return FakeAdapter((request) {
    final query = request.uri.queryParametersAll;
    final reply =
        answerUsage(request.method, request.uri.path, query, request.body, sources, settings) ??
        answerValidate(request.method, request.uri.path, query, request.body, sources, custom);
    if (reply == null) {
      return fallback.handler(request);
    }
    return reply.status >= 400
        ? FakeResponse.problem(reply.body! as Map<String, Object?>, status: reply.status)
        : FakeResponse.json(reply.body, status: reply.status);
  });
}

void main() {
  testWidgets('Usage & Budgets shows the totals, the charts and the budget table', (
    tester,
  ) async {
    final adapter = await openAt(tester, usagePath, adapter: usageBackend());
    expect(find.byKey(const Key('usage.requestsToday')), findsOneWidget);
    expect(find.byKey(const Key('usage.spend')), findsOneWidget);
    expect(find.text('\$6.40'), findsWidgets);
    expect(find.byKey(const Key('usage.requestsChart')), findsOneWidget);
    expect(find.byKey(const Key('usage.writtenChart')), findsOneWidget);
    expect(find.byKey(const Key('usage.top')), findsOneWidget);
    expect(
      adapter.requests.where((r) => r.uri.path.endsWith('/usage')),
      isNotEmpty,
    );
  });

  testWidgets('the collector slider saves, then confirms by re-reading', (tester) async {
    final settings = PreviewSettings();
    final adapter = await openAt(tester, usagePath, adapter: usageBackend(settings));
    await tester.tap(find.byKey(const Key('usage.tab.collector')));
    await tester.pumpAndSettle();
    expect(
      find.descendant(of: find.byKey(const Key('collector.value')), matching: find.text('2')),
      findsOneWidget,
    );

    final slider = find.byKey(const Key('collector.slider'));
    await tester.tapAt(tester.getCenter(slider));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('form.save')));
    await tester.pumpAndSettle();

    final put = adapter.requests.singleWhere((r) => r.method == 'PUT');
    expect(put.uri.path, '/v1/settings/collector');
    expect((put.body! as Map)['maxConcurrentPulls'], settings.collector['maxConcurrentPulls']);
    expect(
      adapter.requests
          .skip(adapter.requests.indexOf(put) + 1)
          .any((r) => r.method == 'GET' && r.uri.path == '/v1/settings/collector'),
      isTrue,
    );
    expect(find.textContaining('Saved and confirmed'), findsOneWidget);
  });

  testWidgets('a rate limit saves the whole object and stays confirmed', (tester) async {
    final settings = PreviewSettings();
    final adapter = await openAt(tester, usagePath, adapter: usageBackend(settings));
    await tester.tap(find.byKey(const Key('usage.tab.rateLimits')));
    await tester.pumpAndSettle();

    await tester.enterText(find.byKey(const Key('settings.read')), '900');
    await tester.tap(find.byKey(const Key('form.save')));
    await tester.pumpAndSettle();

    final put = adapter.requests.singleWhere((r) => r.method == 'PUT');
    expect(put.uri.path, '/v1/settings/ratelimits');
    final body = put.body! as Map;
    expect(body['read'], 900);
    expect(body['tiles'], 1200);
    expect(settings.rateLimits['read'], 900);
    expect(find.textContaining('Saved and confirmed'), findsOneWidget);
  });

  testWidgets('a retention window under an hour is refused before sending', (tester) async {
    final adapter = await openAt(tester, usagePath, adapter: usageBackend());
    await tester.tap(find.byKey(const Key('usage.tab.retention')));
    await tester.pumpAndSettle();

    await tester.enterText(find.byKey(const Key('settings.ask')), '30m');
    await tester.tap(find.byKey(const Key('form.save')).first);
    await tester.pumpAndSettle();
    expect(find.text('At least 1h.'), findsOneWidget);
    expect(adapter.requests.where((r) => r.method == 'PUT'), isEmpty);
  });

  testWidgets('running retention asks first, then shows what was deleted', (tester) async {
    final adapter = await openAt(tester, usagePath, adapter: usageBackend());
    await tester.tap(find.byKey(const Key('usage.tab.retention')));
    await tester.pumpAndSettle();

    await tester.ensureVisible(find.byKey(const Key('retention.run')));
    await tester.tap(find.byKey(const Key('retention.run')));
    await tester.pumpAndSettle();
    expect(adapter.requests.where((r) => r.method == 'POST'), isEmpty);

    await tester.tap(find.byKey(const Key('retention.confirmRun')));
    await tester.pumpAndSettle();
    expect(
      adapter.requests.where((r) => r.method == 'POST' && r.uri.path.endsWith('/retention/run')),
      hasLength(1),
    );
    expect(find.byKey(const Key('retention.result')), findsOneWidget);
  });

  testWidgets('the mobile Sources screen carries the usage glance', (tester) async {
    await openAt(tester, sourcesPath, adapter: usageBackend(), formFactor: FormFactor.mobile);
    expect(find.byKey(const Key('usage.glance')), findsOneWidget);
    expect(find.text('Requests today'), findsOneWidget);
  });

  group('collector gauges', () {
    Future<FakeAdapter> openCollector(WidgetTester tester, PreviewSettings settings) async {
      final adapter = await openAt(tester, usagePath, adapter: usageBackend(settings));
      await tester.tap(find.byKey(const Key('usage.tab.collector')));
      await tester.pumpAndSettle();
      return adapter;
    }

    String figure(WidgetTester tester, String key) => tester
        .widgetList<Text>(find.descendant(of: find.byKey(Key(key)), matching: find.byType(Text)))
        .last
        .data!;

    Iterable<RecordedRequest> statusReads(FakeAdapter a) =>
        a.requests.where((r) => r.method == 'GET' && r.uri.path == '/v1/settings/collector/status');

    testWidgets('show cap, in use and waiting from getCollectorStatus', (tester) async {
      final settings = PreviewSettings()..demand = () => 5;
      final adapter = await openCollector(tester, settings);
      expect(find.byKey(const Key('collector.gauges')), findsOneWidget);
      expect(figure(tester, 'collector.cap'), '2');
      expect(figure(tester, 'collector.inUse'), '2');
      expect(figure(tester, 'collector.waiting'), '3');
      expect(find.text('2 pulls of 2 running; 3 waiting for a permit.'), findsOneWidget);
      expect(find.byKey(const Key('collector.live')), findsOneWidget);
      expect(statusReads(adapter), isNotEmpty);
    });

    testWidgets('re-read while the screen is open, and not after it closes', (tester) async {
      final settings = PreviewSettings()..demand = () => 1;
      final adapter = await openCollector(tester, settings);
      expect(figure(tester, 'collector.waiting'), '0');
      settings.demand = () => 4;
      await tester.pump(const Duration(seconds: 3));
      await tester.pump();
      expect(figure(tester, 'collector.inUse'), '2');
      expect(figure(tester, 'collector.waiting'), '2');

      await tester.tap(find.byKey(const Key('usage.tab.rateLimits')));
      await tester.pumpAndSettle();
      final reads = statusReads(adapter).length;
      await tester.pump(const Duration(seconds: 8));
      expect(statusReads(adapter).length, reads);
    });

    testWidgets('a cap lowered under running pulls is shown over the cap', (tester) async {
      final settings = PreviewSettings()
        ..demand = (() => 2)
        ..runningOverCap = 3;
      await openCollector(tester, settings);
      expect(figure(tester, 'collector.inUse'), '5');
      expect(find.textContaining('running over a cap of 2'), findsOneWidget);
    });
  });

  test('collectorStatusLine reads the snapshot', () {
    CollectorStatus s(int cap, int inUse, int waiting) => CollectorStatus(
      (b) => b
        ..cap = cap
        ..inUse = inUse
        ..waiting = waiting,
    );
    expect(collectorStatusLine(s(4, 1, 0)), '1 pull of 4 running; none waiting.');
    expect(collectorStatusLine(s(4, 4, 1)), '4 pulls of 4 running; 1 waiting for a permit.');
    expect(collectorStatusLine(s(2, 3, 0)), startsWith('3 pulls running over a cap of 2'));
  });
}
