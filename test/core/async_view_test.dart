import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/core/ui/ui.dart';

/// A 503 the way the backend reports a query that ran out of time.
ProblemException _timeout() => ProblemException(
  status: 503,
  title: 'Service Unavailable',
  code: 'QUERY_TIMEOUT',
  detail: 'The query ran longer than 10000 ms; narrow the filters or retry.',
);

/// What the next load of [_list] does: answer with a list, or fail.
bool _fail = false;

final FutureProvider<List<String>> _list = FutureProvider<List<String>>((ref) async {
  if (_fail) {
    throw _timeout();
  }
  return <String>['analog', 'base-rate'];
});

/// Shows [_list] through an [AsyncView] whose Retry refreshes it, laid out by
/// [frame] (a bounded body, or a scroll view).
Widget _screen(Widget Function(Widget view) frame) => ProviderScope(
  // As in the app's tests: no automatic retry, so a failure stays failed.
  retry: (_, _) => null,
  child: MaterialApp(
    home: Scaffold(
      body: Consumer(
        builder: (context, ref, _) => frame(
          AsyncView<List<String>>(
            value: ref.watch(_list),
            onRetry: () => ref.invalidate(_list),
            data: (list) => Column(mainAxisSize: MainAxisSize.min, children: <Widget>[for (final s in list) Text(s)]),
          ),
        ),
      ),
    ),
  ),
);

Future<void> _refresh(WidgetTester tester) async {
  ProviderScope.containerOf(tester.element(find.byType(Consumer))).invalidate(_list);
  await tester.pumpAndSettle();
}

void main() {
  setUp(() => _fail = false);

  for (final (name, frame) in <(String, Widget Function(Widget))>[
    ('a bounded body', (view) => view),
    ('a scroll view', (view) => SingleChildScrollView(child: view)),
  ]) {
    testWidgets('in $name, a refresh that fails says so above the data it keeps, and Retry reloads', (tester) async {
      await tester.pumpWidget(_screen(frame));
      await tester.pumpAndSettle();
      expect(find.text('analog'), findsOneWidget);
      expect(find.byKey(const Key('asyncView.refreshFailed')), findsNothing);

      _fail = true;
      await _refresh(tester);
      expect(tester.takeException(), isNull);
      expect(find.byKey(const Key('asyncView.refreshFailed')), findsOneWidget);
      expect(find.text('Refresh failed; showing what was loaded before'), findsOneWidget);
      expect(find.text('HTTP 503 · QUERY_TIMEOUT'), findsOneWidget);
      expect(find.text('analog'), findsOneWidget);
      expect(
        tester.getTopLeft(find.byKey(const Key('asyncView.refreshFailed'))).dy,
        lessThan(tester.getTopLeft(find.text('analog')).dy),
      );

      _fail = false;
      await tester.tap(find.widgetWithText(TextButton, 'Retry'));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('asyncView.refreshFailed')), findsNothing);
      expect(find.text('base-rate'), findsOneWidget);
    });
  }

  testWidgets('a first load that fails shows only the problem and a Retry', (tester) async {
    _fail = true;
    await tester.pumpWidget(_screen((view) => view));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('asyncView.refreshFailed')), findsNothing);
    expect(find.text('The backend failed'), findsOneWidget);
    expect(find.widgetWithText(TextButton, 'Retry'), findsOneWidget);
    expect(find.text('analog'), findsNothing);
  });
}
