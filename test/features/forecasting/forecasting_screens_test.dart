import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../../tool/preview/preview_forecasting.dart';
import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../sources/sources_screens_test.dart' show openAt, sourcesBackend;

/// A fake backend answering the forecasting and EDP operations from [v],
/// then the source operations.
FakeAdapter forecastingBackend(PreviewForecasting v) {
  final fallback = sourcesBackend();
  return FakeAdapter((request) {
    final reply = answerForecasting(
      request.method,
      request.uri.path,
      request.uri.queryParametersAll,
      request.body,
      v,
    );
    if (reply == null) {
      return fallback.handler(request);
    }
    if (reply.body == null) {
      return FakeResponse.empty(status: reply.status);
    }
    return reply.status >= 400
        ? FakeResponse.problem(reply.body! as Map<String, Object?>, status: reply.status)
        : FakeResponse.json(reply.body, status: reply.status);
  });
}

Future<void> _tab(WidgetTester tester, String name) async {
  await tapVisible(tester, find.byKey(Key('forecasting.tab.$name')));
}

Future<void> _tapText(WidgetTester tester, String label) async {
  await tapVisible(tester, find.text(label).last);
}

/// The page's vertical scroll view (tables scroll sideways inside it).
final Finder _page = find.byWidgetPredicate(
  (w) => w is Scrollable && w.axisDirection == AxisDirection.down,
).first;

/// Whether the button keyed [key] can be pressed.
bool _enabled(WidgetTester tester, String key) => tester
    .widget<ButtonStyleButton>(find.descendant(of: find.byKey(Key(key)), matching: find.bySubtype<ButtonStyleButton>()))
    .enabled;

void main() {
  testWidgets('the forecasters table names every forecaster and its type', (tester) async {
    await openAt(tester, forecastingPath, adapter: forecastingBackend(PreviewForecasting()));
    expect(find.byKey(const Key('forecasters.table')), findsOneWidget);
    expect(find.text('Daily analyst'), findsOneWidget);
    expect(find.text('LLM'), findsWidgets);
    expect(find.text('TimesFM daily'), findsOneWidget);
    expect(find.byKey(const Key('forecasters.configure.ensemble')), findsOneWidget);
  });

  testWidgets('registering a forecaster posts it and opens its page', (tester) async {
    final adapter = await openAt(tester, forecastingPath, adapter: forecastingBackend(PreviewForecasting()));
    await tapVisible(tester, find.byKey(const Key('forecasters.register')));
    await tester.enterText(find.byKey(const Key('forecasters.new.id')), 'edp:kalshi/odds');
    await tester.enterText(find.byKey(const Key('forecasters.new.name')), 'Kalshi odds');
    await _tapText(tester, 'Register');
    final post = adapter.requests.lastWhere((r) => r.method == 'POST' && r.uri.path == '/v1/forecasts/forecasters');
    expect((post.body! as Map)['id'], 'edp:kalshi/odds');
    expect(find.byKey(const Key('forecaster.settings')), findsOneWidget);
    expect(find.text('Kalshi odds'), findsWidgets);
  });

  testWidgets('saving an external forecaster encodes the slash in its id', (tester) async {
    final adapter = await openAt(
      tester,
      forecastingForecasterPath('edp:timesfm/daily'),
      adapter: forecastingBackend(PreviewForecasting()),
    );
    await tester.enterText(find.byKey(const Key('forecaster.name')), 'TimesFM (daily)');
    await tapVisible(tester, find.byKey(const Key('form.save')).first);
    final put = adapter.requests.lastWhere((r) => r.method != 'GET' && r.uri.path.contains('timesfm'));
    expect(put.uri.toString(), contains('edp%3Atimesfm%2Fdaily'));
    expect(find.textContaining('confirmed'), findsWidgets);
  });

  testWidgets('a numeric forecaster shows quantile coverage and PIT', (tester) async {
    await openAt(
      tester,
      forecastingForecasterPath('edp:timesfm/daily'),
      adapter: forecastingBackend(PreviewForecasting()),
    );
    await tester.scrollUntilVisible(find.byKey(const Key('calibration.quantiles')), 300, scrollable: _page);
    expect(find.byKey(const Key('calibration.quantiles')), findsOneWidget);
    expect(find.byKey(const Key('calibration.pit')), findsOneWidget);
  });

  testWidgets('editing a question sends only what changed', (tester) async {
    final adapter = await openAt(
      tester,
      forecastingQuestionPath(previewQuestionBinary),
      adapter: forecastingBackend(PreviewForecasting()),
    );
    final tags = find.byKey(const Key('question.tags'));
    await tester.ensureVisible(tags);
    await tester.enterText(tags, 'ports, grain');
    await _tapText(tester, 'Save Changes');
    final patch = adapter.requests.lastWhere((r) => r.method == 'PATCH');
    expect(patch.body, <String, Object?>{
      'tags': <String>['ports', 'grain'],
    });
  });

  testWidgets('resolving a numeric question asks first, then shows it resolved', (tester) async {
    final adapter = await openAt(
      tester,
      forecastingQuestionPath(previewQuestionNumeric),
      adapter: forecastingBackend(PreviewForecasting()),
    );
    await tester.enterText(find.byKey(const Key('resolve.value')), '114.5');
    await tester.enterText(find.byKey(const Key('resolve.evidence')), 'series:bosporus/transits');
    await _tapText(tester, 'Resolve');
    expect(adapter.requests.where((r) => r.uri.path.endsWith('/resolve')), isEmpty);
    await tapVisible(tester, find.byKey(const Key('resolve.confirm')));
    final post = adapter.requests.lastWhere((r) => r.uri.path.endsWith('/resolve'));
    expect((post.body! as Map)['value'], 114.5);
    expect(find.byKey(const Key('question.resolve')), findsNothing);
  });

  testWidgets('creating a question opens its page', (tester) async {
    final adapter = await openAt(tester, forecastingNewQuestionPath, adapter: forecastingBackend(PreviewForecasting()));
    await tester.enterText(find.byKey(const Key('question.title')), 'Will the strait close?');
    await tester.enterText(find.byKey(const Key('question.category')), 'maritime');
    await tester.enterText(find.byKey(const Key('question.criteria')), 'Yes if transits stop for a day.');
    await tester.enterText(find.byKey(const Key('question.closesAt')), '2026-12-01');
    await tester.enterText(find.byKey(const Key('question.resolveBy')), '2026-12-15');
    await _tapText(tester, 'Create Question');
    expect(adapter.requests.where((r) => r.method == 'POST' && r.uri.path == '/v1/forecasts/questions'), hasLength(1));
    expect(find.byKey(const Key('question.summary')), findsOneWidget);
    expect(find.text('Will the strait close?'), findsWidgets);
  });

  testWidgets('Show and Compare wait for their forecasters instead of ignoring a click', (tester) async {
    await openAt(tester, forecastingPath, adapter: forecastingBackend(PreviewForecasting()));
    await _tab(tester, 'calibration');
    expect(_enabled(tester, 'calibration.show'), isFalse);
    await _tab(tester, 'scores');
    expect(_enabled(tester, 'compare.go'), isFalse);
  });

  testWidgets('a registration token is shown once after creation', (tester) async {
    await openAt(tester, forecastingPath, adapter: forecastingBackend(PreviewForecasting()));
    await _tab(tester, 'tokens');
    await tester.enterText(find.byKey(const Key('tokens.name')), 'Pilot');
    await _tapText(tester, 'Create Token');
    expect(find.byKey(const Key('tokens.secret')), findsOneWidget);
  });

  testWidgets('a private manifest URL is refused with an explanation', (tester) async {
    await openAt(tester, forecastingPath, adapter: forecastingBackend(PreviewForecasting()));
    await _tab(tester, 'providers');
    await tapVisible(tester, find.byKey(const Key('providers.register')));
    await tester.enterText(find.byKey(const Key('providers.new.url')), 'http://192.168.1.20/manifest.json');
    await _tapText(tester, 'Register');
    expect(find.textContaining('resolves to a private or loopback address'), findsOneWidget);
    expect(find.byKey(const Key('providers.created')), findsNothing);
  });

  testWidgets('a binding created from the suggestion can be previewed', (tester) async {
    final adapter = await openAt(
      tester,
      forecastingProviderPath('timesfm'),
      adapter: forecastingBackend(PreviewForecasting()),
    );
    await tester.scrollUntilVisible(find.byKey(const Key('bindings.table')), 300, scrollable: _page);
    final preview = find.byWidgetPredicate((w) => '${w.key}'.contains('bindings.preview.'));
    await tapVisible(tester, preview.first);
    expect(adapter.requests.where((r) => r.uri.path.endsWith('/preview')), isNotEmpty);
    expect(find.byKey(const Key('bindings.previewResult')), findsOneWidget);
  });
}
