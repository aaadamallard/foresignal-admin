import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:foresignal_admin/features/vetting/vetting_drafts.dart';

import '../../../tool/preview/preview_vetting.dart';
import '../../support/fake_adapter.dart';
import '../sources/sources_screens_test.dart' show openAt, sourcesBackend;

const String _vessel = '01JBK3Q8Z5N7W2X4Y6R9T1E002';
const String _person = '01JBK3Q8Z5N7W2X4Y6R9T1E003';

/// A fake backend answering the vetting operations from [v], then the
/// source operations.
FakeAdapter vettingBackend(PreviewVetting v) {
  final fallback = sourcesBackend();
  return FakeAdapter((request) {
    final reply = answerVetting(
      request.method,
      request.uri.path,
      request.uri.queryParametersAll,
      request.body,
      v,
    );
    if (reply == null) {
      return fallback.handler(request);
    }
    return reply.status >= 400
        ? FakeResponse.problem(reply.body! as Map<String, Object?>, status: reply.status)
        : FakeResponse.json(reply.body, status: reply.status);
  });
}

Future<void> _tab(WidgetTester tester, String name) async {
  // The tab bar scrolls; the last tabs start out of view.
  await tester.ensureVisible(find.byKey(Key('vetting.tab.$name')));
  await tester.pumpAndSettle();
  await tester.tap(find.byKey(Key('vetting.tab.$name')));
  await tester.pumpAndSettle();
}

Future<void> _tapSave(WidgetTester tester) async {
  // A focused field scrolls itself back into view on the next frame, so
  // let go of it before scrolling to Save (a click on Save does the same).
  FocusManager.instance.primaryFocus?.unfocus();
  await tester.pumpAndSettle();
  await tester.ensureVisible(find.byKey(const Key('form.save')));
  await tester.pumpAndSettle();
  await tester.tap(find.byKey(const Key('form.save')));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('the claims table shows restatements, grades and framing', (tester) async {
    await openAt(tester, vettingPath, adapter: vettingBackend(PreviewVetting()));
    expect(find.byKey(const Key('vetting.claims')), findsOneWidget);
    expect(
      find.text(
        'The Port of Odesa stopped accepting vessel arrivals on the morning of 22 October.',
      ),
      findsOneWidget,
    );
    expect(find.text('B2 · kyivpost.com'), findsOneWidget);
    expect(find.textContaining('Inflammatory'), findsOneWidget);
  });

  testWidgets('a status chip filters the claims through the query', (tester) async {
    final adapter = await openAt(tester, vettingPath, adapter: vettingBackend(PreviewVetting()));
    await tester.tap(find.byKey(const Key('vetting.claims.status.contradicted')));
    await tester.pumpAndSettle();
    final last = adapter.requests.lastWhere((r) => r.uri.path == '/v1/social/claims');
    expect(last.uri.queryParametersAll['status'], <String>['contradicted']);
    expect(find.text('Power was cut across the southern districts.'), findsOneWidget);
    expect(find.text('An explosion occurred near the grain terminal.'), findsNothing);
  });

  testWidgets('a claim page lists its comparison and evidence', (tester) async {
    await openAt(
      tester,
      vettingClaimPath('01JBK3Q8Z5N7W2X4Y6R9T1CL01'),
      adapter: vettingBackend(PreviewVetting()),
    );
    expect(find.byKey(const Key('claim.grade')), findsOneWidget);
    expect(find.text('record:ais/odesa-arrivals/88412'), findsOneWidget);
    expect(find.textContaining('+2h 16m'), findsOneWidget);
  });

  testWidgets('lead times read as signed durations', (tester) async {
    await openAt(tester, vettingPath, adapter: vettingBackend(PreviewVetting()));
    await _tab(tester, 'leadTimes');
    expect(find.textContaining('+1h 30m'), findsOneWidget);
    expect(find.textContaining('−15m'), findsOneWidget);
  });

  testWidgets('platform settings save and confirm', (tester) async {
    final v = PreviewVetting();
    await openAt(tester, vettingPlatformPath('reddit'), adapter: vettingBackend(v));
    expect(find.byKey(const Key('platform.state')), findsOneWidget);
    await tester.enterText(
      find.byKey(const Key('platform.channels')),
      'worldnews, ukraine, europe',
    );
    await _tapSave(tester);
    expect((v.platforms['reddit']!['settings']! as Map)['channels'], <String>[
      'worldnews',
      'ukraine',
      'europe',
    ]);
    expect(find.textContaining('Saved'), findsOneWidget);
  });

  testWidgets("X's monthly cap says which of its two caps applies", (tester) async {
    await openAt(tester, vettingPath, adapter: vettingBackend(PreviewVetting()));
    await _tab(tester, 'platforms');
    expect(
      find.byKey(const Key('vetting.platform.capReason.x')),
      findsOneWidget,
    );
    expect(find.text(r'platform $50 / source $25 — stricter applies'), findsOneWidget);

    await openAt(tester, vettingPlatformPath('x'), adapter: vettingBackend(PreviewVetting()));
    expect(find.text('Monthly cap'), findsOneWidget);
    expect(find.text(r'platform $50 / source $25 — stricter applies'), findsOneWidget);
  });

  testWidgets('social settings return an emptied field to its default', (tester) async {
    final v = PreviewVetting();
    await openAt(tester, vettingPath, adapter: vettingBackend(v));
    await _tab(tester, 'settings');
    await tester.enterText(find.byKey(const Key('social.minRegionBaseline')), '');
    await _tapSave(tester);
    expect(v.settings.containsKey('minRegionBaseline'), isFalse);
    expect(v.settings['velocity'], isNotNull);
  });

  testWidgets('a ratings CSV is sent as the operator file', (tester) async {
    final adapter = await openAt(tester, vettingPath, adapter: vettingBackend(PreviewVetting()));
    await _tab(tester, 'ratings');
    await tester.enterText(
      find.byKey(const Key('vetting.ratings.text')),
      'domain,dimension,value,$ratingsTermsColumn,attribution\nexample.com,factuality,high,CC0,Operator',
    );
    await tester.tap(find.byKey(const Key('vetting.ratings.import')));
    await tester.pumpAndSettle();
    final post = adapter.requests.singleWhere((r) => r.uri.path == '/v1/media/ratings/import');
    expect(post.uri.queryParameters['provider'], 'operator');
    expect(find.byKey(const Key('vetting.ratings.result')), findsOneWidget);
  });

  testWidgets('the entities table searches by name prefix', (tester) async {
    final adapter = await openAt(tester, vettingPath, adapter: vettingBackend(PreviewVetting()));
    await _tab(tester, 'entities');
    await tester.enterText(find.byKey(const Key('vetting.entities.search')), 'MV');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    final last = adapter.requests.lastWhere((r) => r.uri.path == '/v1/entities');
    expect(last.uri.queryParameters['q'], 'MV');
    expect(find.text('MV Azov Star'), findsOneWidget);
    expect(find.text('Andreas Kyriakou'), findsNothing);
  });

  testWidgets('resolving a key opens its entity; an unheld key says so', (tester) async {
    final adapter = await openAt(tester, vettingPath, adapter: vettingBackend(PreviewVetting()));
    await _tab(tester, 'entities');
    await tester.enterText(find.byKey(const Key('vetting.resolve.key')), 'imo:1111111');
    await tester.tap(find.byKey(const Key('vetting.resolve.go')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('vetting.resolve.none')), findsOneWidget);
    await tester.enterText(find.byKey(const Key('vetting.resolve.key')), 'imo:9387421');
    await tester.tap(find.byKey(const Key('vetting.resolve.go')));
    await tester.pumpAndSettle();
    final last = adapter.requests.lastWhere((r) => r.uri.path == '/v1/entities/resolve');
    expect(last.uri.queryParameters['key'], 'imo:9387421');
    expect(find.text('MV Azov Star'), findsWidgets);
    expect(find.byKey(const Key('entity.keys')), findsOneWidget);
  });

  testWidgets('a key held elsewhere is refused until moved', (tester) async {
    final v = PreviewVetting();
    await openAt(tester, vettingEntityPath(_person), adapter: vettingBackend(v));
    await tester.tap(find.byKey(const Key('entity.key.type')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('imo').last);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('entity.key.value')), '9387421');
    await tester.ensureVisible(find.byKey(const Key('entity.key.add')));
    await tester.tap(find.byKey(const Key('entity.key.add')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('entity.key.force')), findsOneWidget);
    await tester.tap(find.byKey(const Key('entity.key.force')));
    await tester.pump();
    await tester.tap(find.byKey(const Key('entity.key.add')));
    await tester.pumpAndSettle();
    final keys = (v.entities[_person]!['keys']! as List).cast<Map<String, Object?>>();
    expect(keys.any((k) => k['keyValue'] == '9387421' && k['retracted'] == false), isTrue);
  });

  testWidgets('retracting a key asks first', (tester) async {
    final v = PreviewVetting();
    final adapter = await openAt(tester, vettingEntityPath(_vessel), adapter: vettingBackend(v));
    await tester.tap(find.byKey(const Key('entity.key.retract.22')));
    await tester.pumpAndSettle();
    expect(adapter.requests.where((r) => r.method == 'DELETE'), isEmpty);
    await tester.tap(find.byKey(const Key('entity.key.retract.confirm')));
    await tester.pumpAndSettle();
    expect(adapter.requests.where((r) => r.method == 'DELETE'), hasLength(1));
    expect(find.text('Retracted'), findsOneWidget);
  });

  testWidgets('an entity page traces its ownership chains', (tester) async {
    final adapter = await openAt(
      tester,
      vettingEntityPath(_vessel),
      adapter: vettingBackend(PreviewVetting()),
    );
    await tester.ensureVisible(find.byKey(const Key('ownership.chain')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('ownership.chain')));
    await tester.pumpAndSettle();
    final post = adapter.requests.singleWhere((r) => r.uri.path == '/v1/graph/ownership-chain');
    expect((post.body! as Map)['refs'], <String>['entity:$_vessel']);
    expect(find.byKey(const Key('ownership.result')), findsOneWidget);
    expect(find.text('Meridian Maritime Trust'), findsWidgets);
  });
}
