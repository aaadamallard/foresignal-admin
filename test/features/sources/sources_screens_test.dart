import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/connection_store.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/router.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../../tool/preview/preview_sources.dart';
import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../../support/test_app.dart';

/// A fake backend holding a fresh copy of the preview sources.
FakeAdapter sourcesBackend([List<PreviewSource>? sources]) {
  final held = sources ?? buildPreviewSources();
  final connect = connectBackend();
  return FakeAdapter((request) {
    final reply = answerSources(request.method, request.uri.path, request.body, held);
    if (reply != null) {
      return reply.status >= 400
          ? FakeResponse.problem(reply.body! as Map<String, Object?>, status: reply.status)
          : FakeResponse.json(reply.body, status: reply.status);
    }
    return connect.handler(request);
  });
}

Future<FakeAdapter> openAt(
  WidgetTester tester,
  String path, {
  FakeAdapter? adapter,
  FormFactor formFactor = FormFactor.desktop,
}) async {
  tester.view.physicalSize = formFactor == FormFactor.desktop
      ? const Size(1500, 1100)
      : const Size(420, 900);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  final backend = adapter ?? sourcesBackend();
  final container = testContainer(
    adapter: backend,
    formFactor: formFactor,
    store: InMemoryConnectionStore(url: Uri.parse('http://h:8080'), token: 'fsr_good'),
    connectedTo: Uri.parse('http://h:8080'),
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(testApp(container));
  await tester.pumpAndSettle();
  container.read(routerProvider).go(path);
  await tester.pumpAndSettle();
  return backend;
}

void main() {
  testWidgets('a long kind list and name do not push the other columns off the table', (tester) async {
    final held = buildPreviewSources();
    final plain = sourcesBackend(held);
    const kinds = <String>['aerodrome-osm', 'data-centre-osm', 'hospital', 'port-osm', 'power-line',
      'power-plant-osm', 'substation', 'telecom-exchange', 'water-facility'];
    final adapter = FakeAdapter((request) {
      if (request.method == 'GET' && request.uri.path == '/v1/sources') {
        final rows = <Object?>[for (final s in held) s.summary];
        (rows.first! as Map<String, Object?>)
          ..['kinds'] = kinds
          ..['name'] = 'Work zones: Metropolitan Transportation Commission San Francisco (WZDx)';
        return FakeResponse.json(rows);
      }
      return plain.handler(request);
    });
    await openAt(tester, sourcesPath, adapter: adapter);
    final first = held.first.id;
    final toggle = find.byKey(Key('sources.enabled.$first'));
    expect(toggle, findsOneWidget);
    expect(tester.getRect(toggle).right, lessThan(1500));
    expect(find.text(kinds.join(', ')), findsOneWidget);
  });

  testWidgets('the catalog lists every source with tab counts', (tester) async {
    await openAt(tester, sourcesPath);
    expect(find.text('USGS Earthquakes'), findsOneWidget);
    expect(find.text('OpenSky States'), findsOneWidget);
    expect(find.text('8'), findsWidgets); // All Sources
    expect(find.text('Not set'), findsNWidgets(2)); // ACLED, NASA FIRMS
  });

  testWidgets('rows are numbered, and a header click sorts ascending, then descending', (tester) async {
    await openAt(tester, sourcesPath);
    final table = find.byKey(const Key('sources.table'));
    double top(String text) => tester.getTopLeft(find.descendant(of: table, matching: find.text(text))).dy;
    expect(find.descendant(of: table, matching: find.text('#')), findsOneWidget);
    for (var n = 1; n <= 8; n++) {
      expect(find.descendant(of: table, matching: find.text('$n')), findsWidgets);
    }

    await tester.tap(find.descendant(of: table, matching: find.text('Name')));
    await tester.pumpAndSettle();
    expect(top('ACLED'), lessThan(top('CelesTrak GP')));
    expect(top('OpenSky States'), lessThan(top('USGS Earthquakes')));
    // The direction indicator: Name (column 1, after #) sorted ascending.
    DataTable dataTable() => tester.widget<DataTable>(find.descendant(of: table, matching: find.byType(DataTable)));
    expect(dataTable().sortColumnIndex, 1);
    expect(dataTable().sortAscending, isTrue);
    // Row 1 is the first row as shown.
    expect((top('1') - top('ACLED')).abs(), lessThan(24));

    await tester.tap(find.descendant(of: table, matching: find.text('Name')));
    await tester.pumpAndSettle();
    expect(top('USGS Earthquakes'), lessThan(top('ACLED')));
    expect((top('1') - top('USGS Earthquakes')).abs(), lessThan(24));
    expect(dataTable().sortAscending, isFalse);

    // Another column starts ascending: sources needing a key that is not set come last.
    await tester.tap(find.descendant(of: table, matching: find.text('Credentials')));
    await tester.pumpAndSettle();
    expect(top('GDELT'), lessThan(top('ACLED')));
  });

  testWidgets('the info button describes a source from its descriptor', (tester) async {
    await openAt(tester, sourcesPath);
    await tapVisible(tester, find.byKey(const Key('sources.info.usgs-earthquakes')));
    final dialog = find.byKey(const Key('sourceInfo.dialog'));
    expect(dialog, findsOneWidget);
    Finder inDialog(String text) => find.descendant(of: dialog, matching: find.text(text));
    expect(inDialog('USGS Earthquakes'), findsOneWidget);
    expect(inDialog('earthquake'), findsOneWidget);
    expect(inDialog('USGS Earthquakes, collected by the ForeSignal polling adapter.'), findsOneWidget);
    expect(inDialog('No'), findsWidgets); // Needs credentials
    expect(find.descendant(of: dialog, matching: find.textContaining('minMagnitude')), findsOneWidget);
    expect(
      find.descendant(of: dialog, matching: find.textContaining('one of all_hour, all_day, 2.5_day')),
      findsOneWidget,
    );
    expect(inDialog('Smallest magnitude kept'), findsOneWidget);
    expect(inDialog('US-PD'), findsOneWidget);
    // Opening the dialog did not open the row's detail page.
    expect(find.byKey(const Key('sources.table')), findsOneWidget);

    await tester.tap(find.byKey(const Key('sourceInfo.close')));
    await tester.pumpAndSettle();
    expect(dialog, findsNothing);

    await tapVisible(tester, find.byKey(const Key('sources.info.acled')));
    expect(find.byKey(const Key('sourceInfo.credentials')), findsOneWidget);
    expect(find.descendant(of: dialog, matching: find.textContaining('apiKey')), findsOneWidget);
    expect(find.descendant(of: dialog, matching: find.text('Yes')), findsOneWidget);
  });

  testWidgets('search and the Enabled tab filter the table', (tester) async {
    await openAt(tester, sourcesPath);
    await tester.enterText(find.byKey(const Key('sources.search')).last, 'usgs');
    await tester.pumpAndSettle();
    expect(find.text('USGS Earthquakes'), findsOneWidget);
    expect(find.text('GDELT'), findsNothing);

    await tester.enterText(find.byKey(const Key('sources.search')).last, '');
    await tapVisible(tester, find.byKey(const Key('sources.tab.enabled')));
    expect(find.text('GDELT'), findsOneWidget);
    expect(find.text('USGS Earthquakes'), findsNothing);
  });

  testWidgets('the enabled switch writes, then re-reads the source', (tester) async {
    final adapter = await openAt(tester, sourcesPath);
    await tapVisible(tester, find.byKey(const Key('sources.enabled.gdacs')));
    final put = adapter.requests.singleWhere((r) => r.method == 'PUT');
    expect(put.uri.path, '/v1/sources/gdacs');
    expect(put.body, <String, Object?>{'enabled': true});
    expect(put.options.headers['Authorization'], 'Bearer fsr_good');
    final after = adapter.requests.indexOf(put);
    expect(
      adapter.requests
          .skip(after + 1)
          .any((r) => r.method == 'GET' && r.uri.path == '/v1/sources/gdacs'),
      isTrue,
    );
    final toggle = tester.widget<Switch>(find.byKey(const Key('sources.enabled.gdacs')));
    expect(toggle.value, isTrue);
  });

  testWidgets('enabling a source without its key shows the refusal', (tester) async {
    await openAt(tester, sourcesPath);
    await tapVisible(tester, find.byKey(const Key('sources.enabled.nasa-firms')));
    expect(find.textContaining('CREDENTIALS_REQUIRED'), findsWidgets);
    final toggle = tester.widget<Switch>(find.byKey(const Key('sources.enabled.nasa-firms')));
    expect(toggle.value, isFalse);
  });

  testWidgets('Enable Free Sources posts and shows what it enabled', (tester) async {
    final adapter = await openAt(tester, sourcesPath);
    await tapVisible(tester, find.byKey(const Key('sources.enableFree')));
    final post = adapter.requests.singleWhere((r) => r.uri.path == '/v1/sources/enable-free');
    expect(post.method, 'POST');
    expect(find.byKey(const Key('sources.bulkResult')), findsOneWidget);
    expect(find.textContaining('Enabled 4 sources'), findsOneWidget);
  });

  testWidgets('tapping a row opens its detail on desktop', (tester) async {
    await openAt(tester, sourcesPath);
    await tester.tap(find.text('GDELT'));
    await tester.pumpAndSettle();
    expect(find.text('Source information'), findsOneWidget);
    expect(find.text('Test Source'), findsOneWidget);
  });

  testWidgets('a settings edit is saved, re-read and confirmed', (tester) async {
    final adapter = await openAt(tester, sourceDetailPath('usgs-earthquakes'));
    await tapVisible(tester, find.byKey(const Key('source.tab.configuration')));
    final interval = find.byWidgetPredicate(
      (w) =>
          w.key is ValueKey<String> &&
          (w.key! as ValueKey<String>).value.startsWith('config.interval.'),
    );
    await tester.enterText(interval, '30m');
    await tapVisible(tester, find.byKey(const Key('form.save')));

    final put = adapter.requests.singleWhere((r) => r.method == 'PUT');
    expect(put.body, <String, Object?>{'interval': '30m'});
    final after = adapter.requests.indexOf(put);
    expect(
      adapter.requests.skip(after + 1).any((r) => r.uri.path == '/v1/sources/usgs-earthquakes'),
      isTrue,
    );
    expect(find.textContaining('Saved and confirmed'), findsOneWidget);
  });

  testWidgets('an emptied retention clears the override with an explicit null', (tester) async {
    final sources = buildPreviewSources();
    sources.firstWhere((s) => s.id == 'usgs-earthquakes').settings['retention'] = '30d';
    final adapter = await openAt(
      tester,
      sourceDetailPath('usgs-earthquakes'),
      adapter: sourcesBackend(sources),
    );
    await tapVisible(tester, find.byKey(const Key('source.tab.configuration')));
    final retention = find.byWidgetPredicate(
      (w) =>
          w.key is ValueKey<String> &&
          (w.key! as ValueKey<String>).value.startsWith('config.retention.'),
    );
    await tester.enterText(retention, '');
    await tapVisible(tester, find.byKey(const Key('form.save')));

    final put = adapter.requests.singleWhere((r) => r.method == 'PUT');
    expect(put.body, <String, Object?>{'retention': null});
    expect(find.textContaining('Saved and confirmed'), findsOneWidget);
  });

  testWidgets('editing a field drops the backend\'s problem with it', (tester) async {
    final backend = sourcesBackend();
    final adapter = await openAt(
      tester,
      sourceDetailPath('usgs-earthquakes'),
      adapter: FakeAdapter(
        (request) => request.method == 'PUT'
            ? FakeResponse.problem(const <String, Object?>{
                'title': 'Bad Request',
                'status': 400,
                'code': 'VALIDATION_FAILED',
                'errors': <Object?>[
                  <String, Object?>{'field': 'interval', 'message': 'refused by the backend'},
                ],
              }, status: 400)
            : backend.handler(request),
      ),
    );
    await tapVisible(tester, find.byKey(const Key('source.tab.configuration')));
    final interval = find.byWidgetPredicate(
      (w) =>
          w.key is ValueKey<String> &&
          (w.key! as ValueKey<String>).value.startsWith('config.interval.'),
    );
    await tester.enterText(interval, '30m');
    await tapVisible(tester, find.byKey(const Key('form.save')));
    expect(adapter.requests.where((r) => r.method == 'PUT'), hasLength(1));
    expect(find.text('refused by the backend'), findsWidgets);

    await tester.enterText(interval, '45m');
    await tester.pumpAndSettle();
    expect(find.text('refused by the backend'), findsNothing);
  });

  testWidgets('an interval below the minimum is refused before any request', (tester) async {
    final adapter = await openAt(tester, sourceDetailPath('usgs-earthquakes'));
    await tapVisible(tester, find.byKey(const Key('source.tab.configuration')));
    final interval = find.byWidgetPredicate(
      (w) =>
          w.key is ValueKey<String> &&
          (w.key! as ValueKey<String>).value.startsWith('config.interval.'),
    );
    await tester.enterText(interval, '10s');
    await tapVisible(tester, find.byKey(const Key('form.save')));
    expect(adapter.requests.where((r) => r.method == 'PUT'), isEmpty);
    expect(find.textContaining('The shortest interval'), findsOneWidget);
  });

  testWidgets('mobile browses and toggles but has no detail route', (tester) async {
    await openAt(tester, sourcesPath, formFactor: FormFactor.mobile);
    expect(find.text('GDELT'), findsOneWidget);
    expect(find.byKey(const Key('sources.enableCore')), findsNothing);
    await tester.tap(find.text('GDELT'));
    await tester.pumpAndSettle();
    expect(find.text('Source information'), findsNothing);
  });
}
