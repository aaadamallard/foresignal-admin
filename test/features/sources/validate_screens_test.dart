import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../../tool/preview/preview_sources.dart';
import '../../../tool/preview/preview_validate.dart';
import '../../support/fake_adapter.dart';
import 'sources_screens_test.dart' show openAt;

/// A fake backend answering the source, credentials, validate and custom
/// source operations from fresh preview state.
FakeAdapter validateBackend() {
  final sources = buildPreviewSources();
  final custom = PreviewCustom();
  final fallback = sourcesBackend(sources);
  return FakeAdapter((request) {
    final reply = answerValidate(
      request.method,
      request.uri.path,
      request.uri.queryParametersAll,
      request.body,
      sources,
      custom,
    );
    if (reply == null) {
      return fallback.handler(request);
    }
    if (reply.status == 204) {
      return FakeResponse.empty();
    }
    return reply.status >= 400
        ? FakeResponse.problem(reply.body! as Map<String, Object?>, status: reply.status)
        : FakeResponse.json(reply.body, status: reply.status);
  });
}

FakeAdapter sourcesBackend(List<PreviewSource> sources) {
  return FakeAdapter((request) {
    final reply = answerSources(request.method, request.uri.path, request.body, sources);
    if (reply == null) {
      return FakeResponse.problem(const <String, Object?>{
        'title': 'Not found',
        'status': 404,
      }, status: 404);
    }
    return reply.status >= 400
        ? FakeResponse.problem(reply.body! as Map<String, Object?>, status: reply.status)
        : FakeResponse.json(reply.body, status: reply.status);
  });
}

void main() {
  testWidgets('saving credentials sends them, clears the field and confirms', (tester) async {
    final adapter = await openAt(
      tester,
      sourceCredentialsPath('acled'),
      adapter: validateBackend(),
    );
    expect(find.text('Not set'), findsWidgets);

    await tester.enterText(find.byKey(const Key('credentials.field.apiKey')), 'k-123');
    await tester.tap(find.byKey(const Key('credentials.save')));
    await tester.pumpAndSettle();

    final put = adapter.requests.singleWhere(
      (r) => r.method == 'PUT' && r.uri.path.endsWith('/credentials'),
    );
    expect(put.body, <String, Object?>{
      'values': <String, Object?>{'apiKey': 'k-123'},
    });
    // Confirmed by re-reading the source.
    final putIndex = adapter.requests.indexOf(put);
    expect(
      adapter.requests.skip(putIndex + 1).any((r) => r.uri.path == '/v1/sources/acled'),
      isTrue,
    );
    expect(find.text('Credentials set'), findsOneWidget);
    expect(find.text('k-123'), findsNothing);
  });

  testWidgets('deleting credentials asks first', (tester) async {
    final adapter = await openAt(
      tester,
      sourceCredentialsPath('acled'),
      adapter: validateBackend(),
    );
    await tester.enterText(find.byKey(const Key('credentials.field.apiKey')), 'k-123');
    await tester.tap(find.byKey(const Key('credentials.save')));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('credentials.delete')));
    await tester.pumpAndSettle();
    expect(adapter.requests.where((r) => r.method == 'DELETE'), isEmpty);

    await tester.tap(find.byKey(const Key('credentials.confirmDelete')));
    await tester.pumpAndSettle();
    expect(adapter.requests.where((r) => r.method == 'DELETE'), hasLength(1));
    expect(find.text('Not set'), findsWidgets);
  });

  testWidgets('Fetch Now shows the outcome and the fetch log', (tester) async {
    await openAt(tester, sourceTestPath('acled'), adapter: validateBackend());
    await tester.tap(find.byKey(const Key('test.fetchNow')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('test.fetchOutcome')), findsOneWidget);
    expect(find.text('HTTP 401 Unauthorized'), findsWidgets);
    expect(find.text('MANUAL'), findsOneWidget);
  });

  testWidgets('a fetch outcome survives a switch to another tab and back', (tester) async {
    await openAt(tester, sourceTestPath('acled'), adapter: validateBackend());
    await tester.tap(find.byKey(const Key('test.fetchNow')));
    await tester.tap(find.byKey(const Key('test.tab.doctor')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('test.fetchOutcome')), findsNothing);

    await tester.tap(find.byKey(const Key('test.tab.fetch')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('test.fetchOutcome')), findsOneWidget);
    expect(find.text('MANUAL'), findsOneWidget);
  });

  testWidgets('the doctor follows a 202 to the finished report', (tester) async {
    final adapter = await openAt(tester, sourceTestPath('acled'), adapter: validateBackend());
    await tester.tap(find.byKey(const Key('test.tab.doctor')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('test.doctor')));
    await tester.pumpAndSettle(const Duration(seconds: 3));

    expect(
      adapter.requests.any((r) => r.method == 'POST' && r.uri.path.endsWith('/doctor')),
      isTrue,
    );
    expect(
      adapter.requests.any((r) => r.uri.path.startsWith('/v1/doctor/reports/')),
      isTrue,
    );
    expect(find.byKey(const Key('test.doctorReport')), findsOneWidget);
    expect(find.text('AUTH_FAILED'), findsOneWidget);
  });

  testWidgets('a probe with stored credentials passes', (tester) async {
    final adapter = await openAt(
      tester,
      sourceCredentialsPath('acled'),
      adapter: validateBackend(),
    );
    await tester.enterText(find.byKey(const Key('credentials.field.apiKey')), 'k-123');
    await tester.tap(find.byKey(const Key('credentials.save')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('credentials.test')));
    await tester.pumpAndSettle();
    expect(adapter.requests.any((r) => r.uri.path.endsWith('/probe')), isTrue);
    expect(find.text('Probe succeeded'), findsOneWidget);
  });

  testWidgets('creating a custom source shows its ingest key once', (tester) async {
    final adapter = await openAt(tester, customSourcesPath, adapter: validateBackend());
    await tester.tap(find.byKey(const Key('custom.new')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('custom.id')), 'custom-river-gauge');
    await tester.enterText(find.byKey(const Key('custom.name')), 'River Gauge');
    await tester.enterText(find.byKey(const Key('custom.kinds')), 'water-level');
    await tester.ensureVisible(find.byKey(const Key('form.save')));
    await tester.tap(find.byKey(const Key('form.save')));
    await tester.pumpAndSettle();

    final post = adapter.requests.singleWhere(
      (r) => r.method == 'POST' && r.uri.path == '/v1/custom-sources',
    );
    final body = post.body! as Map<String, Object?>;
    expect(body['id'], 'custom-river-gauge');
    expect(body['kinds'], <String>['water-level']);
    expect(find.byKey(const Key('oneTimeSecret')), findsOneWidget);
    expect(find.text('River Gauge'), findsOneWidget);

    await tester.tap(find.byKey(const Key('oneTimeSecret.dismiss')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('oneTimeSecret')), findsNothing);
  });

  testWidgets('the ingest key is scrolled into view after creating', (tester) async {
    await openAt(tester, customSourcesPath, adapter: validateBackend());
    await tester.tap(find.byKey(const Key('custom.new')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('custom.id')), 'custom-river-gauge');
    await tester.enterText(find.byKey(const Key('custom.name')), 'River Gauge');
    await tester.enterText(find.byKey(const Key('custom.kinds')), 'water-level');
    await tester.ensureVisible(find.byKey(const Key('form.save')));
    await tester.tap(find.byKey(const Key('form.save')));
    await tester.pumpAndSettle();

    final panel = tester.getRect(find.byKey(const Key('oneTimeSecret')));
    final screen = tester.view.physicalSize / tester.view.devicePixelRatio;
    expect(panel.top, greaterThanOrEqualTo(0));
    expect(panel.top, lessThan(screen.height));
  });

  testWidgets('an invalid custom source id is refused before sending', (tester) async {
    final adapter = await openAt(tester, customSourcesPath, adapter: validateBackend());
    await tester.tap(find.byKey(const Key('custom.new')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('custom.id')), 'River Gauge');
    await tester.ensureVisible(find.byKey(const Key('form.save')));
    await tester.tap(find.byKey(const Key('form.save')));
    await tester.pumpAndSettle();
    expect(adapter.requests.where((r) => r.method == 'POST'), isEmpty);
    expect(find.textContaining('Start with custom-'), findsOneWidget);
  });

  testWidgets('adding a device masks the key in its setup URL', (tester) async {
    final adapter = await openAt(
      tester,
      customSourcePath('custom-weather-station'),
      adapter: validateBackend(),
    );
    await tester.tap(find.byKey(const Key('custom.tab.keys')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('custom.device.externalId')), 'garage');
    await tester.enterText(find.byKey(const Key('custom.device.name')), 'Garage Sensor');
    await tester.tap(find.byKey(const Key('custom.device.add')));
    await tester.pumpAndSettle();

    expect(
      adapter.requests.any((r) => r.method == 'POST' && r.uri.path.endsWith('/devices')),
      isTrue,
    );
    expect(find.byKey(const Key('oneTimeSecret')), findsOneWidget);
    expect(find.textContaining('PreviewOnly'), findsNothing);

    await tester.tap(find.byKey(const Key('oneTimeSecret.reveal')));
    await tester.pumpAndSettle();
    expect(find.textContaining('PreviewOnly'), findsNWidgets(2));
  });

  testWidgets('the stored mapping is tested over the captured samples', (tester) async {
    final adapter = await openAt(
      tester,
      customSourcePath('custom-weather-station'),
      adapter: validateBackend(),
    );
    await tester.tap(find.byKey(const Key('custom.tab.mapping')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('custom.testStored')));
    await tester.pumpAndSettle();
    final post = adapter.requests.singleWhere((r) => r.uri.path.endsWith('/mapping/test'));
    expect((post.body as Map?)?['mapping'], isNull);
    expect(find.byKey(const Key('custom.mappingResult')), findsOneWidget);
  });
}
