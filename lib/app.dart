import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The application title shown in the window bar and the placeholder home.
const String appTitle = 'ForeSignal Admin';

/// The root widget: a [MaterialApp.router] over the app's [GoRouter].
class ForeSignalAdminApp extends StatelessWidget {
  /// Creates the root widget.
  const ForeSignalAdminApp({super.key});

  static final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(path: '/', builder: (context, state) => const PlaceholderHome()),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: appTitle,
      theme: ThemeData(colorSchemeSeed: Colors.teal, brightness: Brightness.dark),
      routerConfig: _router,
    );
  }
}

/// A placeholder home screen that proves the scaffold builds and runs.
class PlaceholderHome extends StatelessWidget {
  /// Creates the placeholder home.
  const PlaceholderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(appTitle, style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}
