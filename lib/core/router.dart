import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../api/backend_endpoint.dart';
import '../features/ai/ai_screen.dart';
import '../features/ai/provider_screen.dart';
import '../features/alerts/alert_builder.dart';
import '../features/alerts/alert_inbox.dart';
import '../features/alerts/alerts_screen.dart';
import '../features/alerts/channels.dart';
import '../features/alerts/escalation.dart';
import '../features/alerts/triggers.dart';
import '../features/alerts/watchlists.dart';
import '../features/analysis/analysis_screen.dart';
import '../features/analysis/cycle_screen.dart';
import '../features/analysis/event_screen.dart';
import '../features/analysis/recipe_screen.dart';
import '../features/connect/connect_screen.dart';
import '../features/forecasting/edp_provider_screen.dart';
import '../features/forecasting/forecaster_screen.dart';
import '../features/forecasting/forecasting_screen.dart';
import '../features/forecasting/question_screen.dart';
import '../features/notifications/notification_inbox.dart';
import '../features/notifications/notifications_screen.dart';
import '../features/notifications/push_native.dart';
import '../features/notifications/this_device.dart';
import '../features/serving/exports.dart';
import '../features/serving/peers.dart';
import '../features/serving/serving_screen.dart';
import '../features/serving/sinks.dart';
import '../features/setup/setup_wizard_screen.dart';
import '../features/shell/app_shell.dart';
import '../features/shell/section_placeholder.dart';
import '../features/sources/credentials_screen.dart';
import '../features/sources/custom/custom_source_screen.dart';
import '../features/sources/custom/custom_sources_screen.dart';
import '../features/sources/source_detail_screen.dart';
import '../features/sources/source_test_screen.dart';
import '../features/sources/sources_catalog_screen.dart';
import '../features/system/system_screen.dart';
import '../features/usage/usage_screen.dart';
import '../features/vetting/claim_screen.dart';
import '../features/vetting/entity_screen.dart';
import '../features/vetting/platform_screen.dart';
import '../features/vetting/vetting_screen.dart';
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
    if (desktop)
      analysisPath: SectionRoutes(
        builder: (context, state) => const AnalysisScreen(),
        routes: <RouteBase>[
          GoRoute(path: 'new-recipe', builder: (context, state) => const RecipeScreen()),
          GoRoute(
            path: 'recipes/:recipeId',
            builder: (context, state) => RecipeScreen(recipeId: state.pathParameters['recipeId']),
          ),
          GoRoute(
            path: 'events/:eventId',
            builder: (context, state) => EventScreen(eventId: state.pathParameters['eventId']!),
          ),
          GoRoute(path: 'new-cycle', builder: (context, state) => const CycleScreen()),
          GoRoute(
            path: 'cycles/:cycleId',
            builder: (context, state) => CycleScreen(cycleId: state.pathParameters['cycleId']),
          ),
          GoRoute(
            path: 'runs/:runId',
            builder: (context, state) => RunScreen(runId: state.pathParameters['runId']!),
          ),
        ],
      ),
    if (desktop)
      vettingPath: SectionRoutes(
        builder: (context, state) => const VettingScreen(),
        routes: <RouteBase>[
          GoRoute(
            path: 'claims/:claimId',
            builder: (context, state) => ClaimScreen(claimId: state.pathParameters['claimId']!),
          ),
          GoRoute(
            path: 'platforms/:platformId',
            builder: (context, state) =>
                PlatformScreen(platformId: state.pathParameters['platformId']!),
          ),
          GoRoute(
            path: 'entities/:entityId',
            builder: (context, state) => EntityScreen(entityId: state.pathParameters['entityId']!),
          ),
        ],
      ),
    if (desktop)
      forecastingPath: SectionRoutes(
        builder: (context, state) => const ForecastingScreen(),
        routes: <RouteBase>[
          GoRoute(
            path: 'forecasters/:forecasterId',
            builder: (context, state) =>
                ForecasterScreen(forecasterId: state.pathParameters['forecasterId']!),
          ),
          GoRoute(path: 'new-question', builder: (context, state) => const QuestionScreen()),
          GoRoute(
            path: 'questions/:questionId',
            builder: (context, state) =>
                QuestionScreen(questionId: state.pathParameters['questionId']),
          ),
          GoRoute(
            path: 'providers/:sourceId',
            builder: (context, state) =>
                EdpProviderScreen(sourceId: state.pathParameters['sourceId']!),
          ),
        ],
      ),
    alertsPath: SectionRoutes(
      builder: (context, state) => const AlertsScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'inbox/:alertId',
          builder: (context, state) => AlertScreen(alertId: state.pathParameters['alertId']!),
        ),
        if (desktop) ...<RouteBase>[
          GoRoute(
            path: 'triggers',
            builder: (context, state) => const AlertsScreen(tab: AlertsTab.triggers),
            routes: <RouteBase>[
              GoRoute(
                path: ':ruleId',
                builder: (context, state) => TriggerScreen(ruleId: state.pathParameters['ruleId']),
              ),
            ],
          ),
          GoRoute(path: 'new-trigger', builder: (context, state) => const TriggerScreen()),
          GoRoute(
            path: 'builder',
            builder: (context, state) => const AlertBuilderScreen(),
            routes: <RouteBase>[
              GoRoute(
                path: ':ruleId',
                builder: (context, state) => AlertBuilderScreen(ruleId: state.pathParameters['ruleId']),
              ),
            ],
          ),
          GoRoute(
            path: 'escalation',
            builder: (context, state) => const AlertsScreen(tab: AlertsTab.escalation),
            routes: <RouteBase>[
              GoRoute(
                path: ':policyId',
                builder: (context, state) => PolicyScreen(policyId: state.pathParameters['policyId']),
              ),
            ],
          ),
          GoRoute(path: 'new-policy', builder: (context, state) => const PolicyScreen()),
          GoRoute(
            path: 'channels',
            builder: (context, state) => const AlertsScreen(tab: AlertsTab.channels),
            routes: <RouteBase>[
              GoRoute(
                path: ':channelId',
                builder: (context, state) => ChannelScreen(channelId: state.pathParameters['channelId']),
              ),
            ],
          ),
          GoRoute(path: 'new-channel', builder: (context, state) => const ChannelScreen()),
          GoRoute(
            path: 'watchlists',
            builder: (context, state) => const AlertsScreen(tab: AlertsTab.watchlists),
            routes: <RouteBase>[
              GoRoute(
                path: ':watchlistId',
                builder: (context, state) =>
                    WatchlistScreen(watchlistId: state.pathParameters['watchlistId']!),
              ),
            ],
          ),
        ],
      ],
    ),
    notificationsPath: SectionRoutes(
      builder: (context, state) => const NotificationsScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'inbox/:notificationId',
          builder: (context, state) =>
              NotificationScreen(notificationId: state.pathParameters['notificationId']!),
        ),
        if (desktop) ...<RouteBase>[
          GoRoute(
            path: 'push',
            builder: (context, state) => const NotificationsScreen(tab: NotificationsTab.push),
            routes: <RouteBase>[
              GoRoute(path: 'new-provider', builder: (context, state) => const PushProviderScreen()),
              GoRoute(
                path: 'providers/:providerId',
                builder: (context, state) =>
                    PushProviderScreen(providerId: state.pathParameters['providerId']),
              ),
              GoRoute(
                path: 'devices/:deviceId',
                builder: (context, state) => PushDeviceScreen(deviceId: state.pathParameters['deviceId']!),
              ),
            ],
          ),
          GoRoute(
            path: 'web-push',
            builder: (context, state) => const NotificationsScreen(tab: NotificationsTab.webPush),
          ),
        ],
      ],
    ),
    if (desktop)
      servingPath: SectionRoutes(
        builder: (context, state) => const ServingScreen(),
        routes: <RouteBase>[
          GoRoute(path: 'new-sink', builder: (context, state) => const SinkScreen()),
          GoRoute(
            path: 'sinks/:sinkId',
            builder: (context, state) => SinkScreen(sinkId: state.pathParameters['sinkId']),
          ),
          GoRoute(path: 'new-export', builder: (context, state) => const NewExportScreen()),
          GoRoute(
            path: 'exports',
            builder: (context, state) => const ServingScreen(tab: ServingTab.exports),
            routes: <RouteBase>[
              GoRoute(
                path: ':exportId',
                builder: (context, state) => ExportJobScreen(exportId: state.pathParameters['exportId']!),
              ),
            ],
          ),
          GoRoute(
            path: 'archive',
            builder: (context, state) => const ServingScreen(tab: ServingTab.archive),
          ),
          GoRoute(path: 'new-peer', builder: (context, state) => const PeerScreen()),
          GoRoute(
            path: 'peers',
            builder: (context, state) => const ServingScreen(tab: ServingTab.peers),
            routes: <RouteBase>[
              GoRoute(
                path: ':peerId',
                builder: (context, state) => PeerScreen(peerId: state.pathParameters['peerId']),
              ),
            ],
          ),
        ],
      ),
    if (desktop)
      systemPath: SectionRoutes(
        builder: (context, state) => const SystemScreen(),
        routes: <RouteBase>[
          for (final tab in SystemTab.values.skip(1))
            GoRoute(path: tab.path.substring(systemPath.length + 1), builder: (context, state) => SystemScreen(tab: tab)),
        ],
      ),
    if (!desktop) devicePath: SectionRoutes(builder: (context, state) => const ThisDeviceScreen()),
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
