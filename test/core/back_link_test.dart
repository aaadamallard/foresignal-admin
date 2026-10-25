import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/nav.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:foresignal_admin/core/ui/ui.dart';
import 'package:go_router/go_router.dart';

import '../../tool/preview/preview_analysis.dart';
import '../features/analysis/analysis_screens_test.dart' show analysisBackend;
import '../features/sources/sources_screens_test.dart' show openAt;
import '../support/fake_adapter.dart';

/// Every page path the router defines under [routes], with each `:param`
/// filled in.
List<String> _paths(List<RouteBase> routes, [String prefix = '']) {
  final out = <String>[];
  for (final route in routes) {
    if (route is GoRoute) {
      final path = route.path.startsWith('/') ? route.path : '$prefix/${route.path}';
      final concrete = path.replaceAllMapped(RegExp(r':(\w+)'), (m) => 'test-${m.group(1)}');
      out
        ..add(concrete)
        ..addAll(_paths(route.routes, concrete));
    } else if (route is ShellRouteBase) {
      out.addAll(_paths(route.routes, prefix));
    }
  }
  return out;
}

const Key _back = Key('page.back');

void main() {
  test('Back leads to the nearest enclosing page, skipping paths that are not pages', () {
    final pages = <String>{analysisPath, alertsPath, alertTriggersPath, sourcesPath, '/sources/reuters'};
    bool exists(String p) => pages.contains(p);

    expect(backTargetOf(analysisEventPath('E1'), routeExists: exists), analysisPath);
    expect(backTargetOf(alertTriggerPath('R1'), routeExists: exists), alertTriggersPath);
    expect(backTargetOf(sourceTestPath('reuters'), routeExists: exists), '/sources/reuters');
    expect(backTargetOf('/analysis/events', routeExists: (_) => false), analysisPath);
  });

  test('a section root and its tabs are homes; a detail page is not', () {
    final roots = <String>[connectPath, for (final s in navSectionsFor(FormFactor.desktop)) s.path];

    expect(isSectionHome(analysisPath, roots), isTrue);
    expect(isSectionHome(connectPath, roots), isTrue);
    expect(isSectionHome(alertTriggersPath, roots), isTrue);
    expect(isSectionHome(systemTokensPath, roots), isTrue);
    expect(isSectionHome(analysisEventPath('E1'), roots), isFalse);
    expect(isSectionHome(alertTriggerPath('R1'), roots), isFalse);
    expect(isSectionHome(setupPath, roots), isFalse);
  });

  testWidgets('every page pushed from another has Back, and no section home does', (tester) async {
    final backend = analysisBackend(PreviewAnalysis());
    await openAt(tester, sourcesPath, adapter: backend);
    final router = GoRouter.of(tester.element(find.byType(Navigator).first));
    final roots = <String>{connectPath, for (final s in navSectionsFor(FormFactor.desktop)) s.path};
    final paths = _paths(router.configuration.routes);
    expect(paths, contains(analysisEventPath('test-eventId')));

    final wrong = <String>[];
    for (final path in paths) {
      router.go(path);
      await tester.pumpAndSettle();
      tester.takeException();
      final home = roots.contains(path) || sectionTabPaths.contains(path);
      final shown = find.byKey(_back).evaluate().isNotEmpty;
      if (shown == home) {
        wrong.add('$path: ${home ? 'home with Back' : 'pushed page without Back'}');
      }
    }
    expect(wrong, isEmpty);
  });

  testWidgets('Back on an event returns to Analysis', (tester) async {
    final a = PreviewAnalysis();
    await openAt(tester, analysisEventPath(a.events.keys.first), adapter: analysisBackend(a));
    expect(find.byKey(_back), findsOneWidget);

    final router = GoRouter.of(tester.element(find.byType(Navigator).first));
    await tester.tap(find.byKey(_back));
    await tester.pumpAndSettle();
    expect(router.state.matchedLocation, analysisPath);

    expect(find.byKey(_back), findsNothing);
    expect(find.byKey(const Key('analysis.tab.overview')), findsOneWidget);
  });

  testWidgets('a page that failed to load still has Back', (tester) async {
    final backend = analysisBackend(PreviewAnalysis());
    await openAt(
      tester,
      analysisEventPath('missing'),
      adapter: FakeAdapter(
        (request) => request.uri.path.startsWith('/v1/intel/events/')
            ? FakeResponse.problem(const <String, Object?>{
                'title': 'Internal error',
                'status': 500,
                'code': 'INTERNAL',
                'detail': 'boom',
              }, status: 500)
            : backend.handler(request),
      ),
    );
    expect(find.byType(ErrorBanner), findsOneWidget);
    expect(find.byKey(_back), findsOneWidget);
  });
}
