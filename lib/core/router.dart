import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../api/backend_endpoint.dart';
import '../features/ai/ai_screen.dart';
import '../features/ai/provider_screen.dart';
import '../features/connect/connect_screen.dart';
import '../features/setup/setup_wizard_screen.dart';
import '../features/shell/app_shell.dart';
import '../features/shell/section_placeholder.dart';
import '../features/sources/credentials_screen.dart';
import '../features/sources/custom/custom_source_screen.dart';
import '../features/sources/custom/custom_sources_screen.dart';
import '../features/sources/source_detail_screen.dart';
import '../features/sources/source_test_screen.dart';
import '../features/sources/sources_catalog_screen.dart';
import '../features/usage/usage_screen.dart';
import 'form_factor.dart';
import 'nav.dart';
import 'routes.dart';

/// Builds the screen for a section path. Later prompts register their real
/// screens here; a path with no entry shows [SectionPlaceholder].
typedef SectionBuilder = Widget Function(BuildContext context, GoRouterState state);

/// Section screens by path, and any nested routes beneath them.
class SectionRoutes {
  /// Creates the registry entry for one section.
  const SectionRoutes({required this.builder, this.routes = const <RouteBase>[]});

  /// The section's landing screen.
  final SectionBuilder builder;

  /// Routes nested under the section path (detail screens).
  final List<RouteBase> routes;
}

/// The registered section screens for the current form factor, by path.
/// Overridable in tests.
final sectionRoutesProvider = Provider<Map<String, SectionRoutes>>(
  (ref) => sectionRoutesFor(ref.watch(formFactorProvider)),
);

/// The registered section screens. Each feature prompt adds its entry; a
/// screen that is desktop-only is left out on mobile, so its route does not
/// exist there.
Map<String, SectionRoutes> sectionRoutesFor(FormFactor formFactor) {
  final desktop = formFactor == FormFactor.desktop;
  return <String, SectionRoutes>{
    sourcesPath: SectionRoutes(
      builder: (context, state) => const SourcesCatalogScreen(),
      routes: <RouteBase>[
        if (desktop) ...<RouteBase>[
          // Before `:sourceId`: a custom source id always starts `custom-`,
          // so `custom` alone is never a source id.
          GoRoute(
            path: 'custom',
            builder: (context, state) => const CustomSourcesScreen(),
            routes: <RouteBase>[
              GoRoute(
                path: ':customId',
                builder: (context, state) =>
                    CustomSourceScreen(sourceId: state.pathParameters['customId']!),
              ),
            ],
          ),
          GoRoute(
            path: ':sourceId',
            builder: (context, state) =>
                SourceDetailScreen(sourceId: state.pathParameters['sourceId']!),
            routes: <RouteBase>[
              GoRoute(
                path: 'credentials',
                builder: (context, state) =>
                    CredentialsScreen(sourceId: state.pathParameters['sourceId']!),
              ),
              GoRoute(
                path: 'test',
                builder: (context, state) =>
                    SourceTestScreen(sourceId: state.pathParameters['sourceId']!),
              ),
            ],
          ),
        ],
      ],
    ),
    if (desktop) usagePath: SectionRoutes(builder: (context, state) => const UsageScreen()),
    if (desktop)
      aiPath: SectionRoutes(
        builder: (context, state) => const AiScreen(),
        routes: <RouteBase>[
          GoRoute(path: 'new-provider', builder: (context, state) => const ProviderScreen()),
          GoRoute(
            path: 'providers/:providerId',
            builder: (context, state) =>
                ProviderScreen(providerId: state.pathParameters['providerId']),
          ),
        ],
      ),
  };
}

/// Refreshes the router's redirect when the backend URL changes.
class _RouterRefresh extends ChangeNotifier {
  void ping() => notifyListeners();
}

/// The app's router: the sections mounted on the current form factor (the
/// mobile companion gets only its subset — routes for the rest do not exist
/// there), plus Connect. Until a backend URL is set, every route redirects to
/// Connect.
final routerProvider = Provider<GoRouter>((ref) {
  final formFactor = ref.watch(formFactorProvider);
  final registry = ref.watch(sectionRoutesProvider);
  final refresh = _RouterRefresh();
  ref.listen(backendEndpointProvider, (_, _) => refresh.ping());
  ref.onDispose(refresh.dispose);

  final sections = navSectionsFor(formFactor);
  final router = GoRouter(
    initialLocation: sections.first.path,
    refreshListenable: refresh,
    // A deep link to a screen not mounted yet (or not on this form factor)
    // lands on its section instead of an error page.
    onException: (context, state, router) {
      final root = sectionRootOf(state.uri.path);
      router.go(sections.any((s) => s.path == root) ? root : connectPath);
    },
    redirect: (context, state) {
      final connected = ref.read(backendEndpointProvider) != null;
      if (!connected && state.matchedLocation != connectPath) {
        return connectPath;
      }
      return null;
    },
    routes: <RouteBase>[
      ShellRoute(
        builder: (context, state, child) => AppShell(location: state.matchedLocation, child: child),
        routes: <RouteBase>[
          for (final section in sections)
            GoRoute(
              path: section.path,
              builder:
                  registry[section.path]?.builder ??
                  (context, state) => SectionPlaceholder(section: section),
              routes: registry[section.path]?.routes ?? const <RouteBase>[],
            ),
          GoRoute(path: connectPath, builder: (context, state) => const ConnectScreen()),
          if (formFactor == FormFactor.desktop)
            GoRoute(path: setupPath, builder: (context, state) => const SetupWizardScreen()),
        ],
      ),
    ],
  );
  ref.onDispose(router.dispose);
  return router;
});
