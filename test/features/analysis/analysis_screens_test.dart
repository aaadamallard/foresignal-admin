import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../../tool/preview/preview_analysis.dart';
import '../../support/fake_adapter.dart';
import '../sources/sources_screens_test.dart' show openAt, sourcesBackend;

const String _event = '01JB9Q4D2F6G8H0J2K4M6N8P0R';
const String _cycle = '01JA0C1D2E3F4G5H6J7K8M9N0P';

/// A fake backend answering the analysis operations from [a], then the
/// source operations.
FakeAdapter analysisBackend(PreviewAnalysis a) {
  final fallback = sourcesBackend();
  return FakeAdapter((request) {
    final reply = answerAnalysis(
      request.method,
      request.uri.path,
      request.uri.queryParametersAll,
      request.options.headers,
      request.body,
      a,
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

Future<void> _tab(WidgetTester tester, String name) async {
  await tester.tap(find.byKey(Key('analysis.tab.$name')));
  await tester.pumpAndSettle();
}

Future<void> _tapSave(WidgetTester tester) async {
  await tester.ensureVisible(find.byKey(const Key('form.save')));
  await tester.tap(find.byKey(const Key('form.save')));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('the board shows situations, assessments and benchmarks', (tester) async {
    await openAt(tester, analysisPath, adapter: analysisBackend(PreviewAnalysis()));
    expect(find.text('Felixstowe port disruption'), findsOneWidget);
    expect(find.text('Berth delays exceed 12 hours by Friday'), findsOneWidget);
    expect(find.text('precursors: warn'), findsOneWidget);
  });

  testWidgets('the recipes table marks a failing recipe as an error', (tester) async {
    await openAt(tester, analysisPath, adapter: analysisBackend(PreviewAnalysis()));
    await _tab(tester, 'recipes');
    expect(find.byKey(const Key('analysis.recipes')), findsOneWidget);
    expect(find.text('vessel-dark-gap'), findsOneWidget);
    expect(find.text('Error'), findsOneWidget);
  });

  testWidgets('a bundled recipe saves only enabled and overrides', (tester) async {
    final a = PreviewAnalysis();
    final adapter = await openAt(
      tester,
      analysisRecipePath('vessel-dark-gap'),
      adapter: analysisBackend(a),
    );
    expect(find.byKey(const Key('recipe.definitionJson')), findsOneWidget);
    await tester.tap(find.byKey(const Key('recipe.enabled')));
    await tester.pump();
    await _tapSave(tester);
    final put = adapter.requests.singleWhere((r) => r.method == 'PUT');
    expect((put.body! as Map).keys, unorderedEquals(<String>['enabled', 'params']));
    expect(a.recipes['vessel-dark-gap']!['enabled'], isFalse);
    expect(find.textContaining('Saved'), findsOneWidget);
  });

  testWidgets('testing a recipe lists the events it would make', (tester) async {
    await openAt(
      tester,
      analysisRecipePath('vessel-dark-gap'),
      adapter: analysisBackend(PreviewAnalysis()),
    );
    await tester.enterText(find.byKey(const Key('recipe.test.from')), '88000');
    await tester.enterText(find.byKey(const Key('recipe.test.to')), '89000');
    await tester.ensureVisible(find.byKey(const Key('recipe.test.run')));
    await tester.tap(find.byKey(const Key('recipe.test.run')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('recipe.test.result')), findsOneWidget);
    expect(find.textContaining('1 event from records 88000–89000'), findsOneWidget);
  });

  testWidgets('a new recipe is created and opens its page', (tester) async {
    final a = PreviewAnalysis();
    await openAt(tester, analysisNewRecipePath, adapter: analysisBackend(a));
    await tester.enterText(find.byKey(const Key('recipe.id')), 'cable-cut');
    await tester.enterText(find.byKey(const Key('recipe.seedKinds')), 'cable.alarm');
    await _tapSave(tester);
    expect(a.recipes['cable-cut']?['origin'], 'operator');
    expect(find.byKey(const Key('recipe.test.run')), findsOneWidget);
  });

  testWidgets('editing an event sends only what changed, with its version', (tester) async {
    final a = PreviewAnalysis();
    final adapter = await openAt(tester, analysisEventPath(_event), adapter: analysisBackend(a));
    await tester.enterText(find.byKey(const Key('event.notes')), 'Checked with the harbor master.');
    await _tapSave(tester);
    final patch = adapter.requests.singleWhere((r) => r.method == 'PATCH');
    expect(patch.body, <String, Object?>{'notes': 'Checked with the harbor master.'});
    expect(patch.options.headers['If-Match'], '4');
    expect(a.events[_event]!['version'], 5);
  });

  testWidgets('a stale version is refused and offers a reload', (tester) async {
    final a = PreviewAnalysis();
    await openAt(tester, analysisEventPath(_event), adapter: analysisBackend(a));
    a.events[_event]!['version'] = 9;
    await tester.enterText(find.byKey(const Key('event.title')), 'Renamed');
    await _tapSave(tester);
    expect(find.byKey(const Key('event.reload')), findsOneWidget);
    expect(a.events[_event]!['title'], isNot('Renamed'));
  });

  testWidgets('a member is removed after confirming', (tester) async {
    final a = PreviewAnalysis();
    await openAt(tester, analysisEventPath(_event), adapter: analysisBackend(a));
    await tester.ensureVisible(find.byKey(const Key('event.remove.m3')));
    await tester.tap(find.byKey(const Key('event.remove.m3')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('event.confirmRemove.m3')));
    await tester.pumpAndSettle();
    final members = ((a.events[_event]!['evidence']! as Map)['members']! as List)
        .cast<Map<String, Object?>>();
    expect(members.map((m) => m['id']), isNot(contains('m3')));
  });

  testWidgets('a record member needs its source, external id and sequence', (tester) async {
    await openAt(tester, analysisEventPath(_event), adapter: analysisBackend(PreviewAnalysis()));
    await tester.ensureVisible(find.byKey(const Key('event.addMember')));
    await tester.tap(find.byKey(const Key('event.addMember')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('event.add.save')));
    await tester.pumpAndSettle();
    expect(
      find.text('A record needs its source, external id and sequence number.'),
      findsOneWidget,
    );
  });

  testWidgets('running a cycle opens the run, which lists its roles', (tester) async {
    await openAt(tester, analysisCyclePath(_cycle), adapter: analysisBackend(PreviewAnalysis()));
    await tester.tap(find.byKey(const Key('cycle.runNow')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('run.roles')), findsOneWidget);
    expect(find.byKey(const Key('run.packet')), findsOneWidget);
  });

  testWidgets('a cycle is saved whole and confirmed', (tester) async {
    final a = PreviewAnalysis();
    final adapter = await openAt(tester, analysisCyclePath(_cycle), adapter: analysisBackend(a));
    await tester.enterText(find.byKey(const Key('cycle.name')), 'Early brief');
    await _tapSave(tester);
    final put = adapter.requests.singleWhere((r) => r.method == 'PUT');
    expect((put.body! as Map)['name'], 'Early brief');
    expect((put.body! as Map)['roles'], <String>['analyst', 'red-team', 'forecaster']);
    expect(a.cycles[_cycle]!['name'], 'Early brief');
  });

  testWidgets('feedback on the latest assessment is recorded', (tester) async {
    await openAt(tester, analysisPath, adapter: analysisBackend(PreviewAnalysis()));
    await _tab(tester, 'assessments');
    await tester.tap(find.byKey(const Key('analysis.feedback.useful')).first);
    await tester.pump();
    await tester.tap(find.byKey(const Key('analysis.feedback.send')).first);
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('analysis.feedback.recorded')), findsOneWidget);
  });

  testWidgets('maintenance shows each step', (tester) async {
    await openAt(tester, analysisPath, adapter: analysisBackend(PreviewAnalysis()));
    await _tab(tester, 'cycles');
    await tester.ensureVisible(find.byKey(const Key('analysis.maintenance')));
    await tester.tap(find.byKey(const Key('analysis.maintenance')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('analysis.maintenanceRun')), findsOneWidget);
    expect(find.text('Base rate refresh: failed'), findsOneWidget);
  });

  testWidgets('calibration shows the uncalibrated scope and its sample size', (tester) async {
    await openAt(tester, analysisPath, adapter: analysisBackend(PreviewAnalysis()));
    await _tab(tester, 'calibration');
    expect(find.text('Uncalibrated'), findsOneWidget);
    expect(find.text('17 of 50 needed'), findsOneWidget);
  });

  testWidgets('corroboration saves the policy and an emptied field defaults', (tester) async {
    final a = PreviewAnalysis();
    final adapter = await openAt(tester, analysisPath, adapter: analysisBackend(a));
    await _tab(tester, 'corroboration');
    await tester.enterText(
      find.byKey(const Key('corroboration.situationActivation.minGroups')),
      '3',
    );
    await tester.enterText(find.byKey(const Key('corroboration.eventQuality.strongFamilies')), '');
    await _tapSave(tester);
    final put = adapter.requests.singleWhere((r) => r.method == 'PUT');
    expect(((put.body! as Map)['eventQuality']! as Map).containsKey('strongFamilies'), isFalse);
    expect((a.corroboration['situationActivation']! as Map)['minGroups'], 3);
    expect((a.corroboration['eventQuality']! as Map)['strongFamilies'], 3);
  });
}
