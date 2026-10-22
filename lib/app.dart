import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/router.dart';
import 'core/theme.dart';
import 'core/theme_mode.dart';

/// The application title shown in the window bar.
const String appTitle = 'ForeSignal Admin';

/// The root widget: a [MaterialApp.router] over [routerProvider], in the
/// light or dark admin theme the operator chose.
class ForeSignalAdminApp extends ConsumerWidget {
  /// Creates the root widget.
  const ForeSignalAdminApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: buildAdminLightTheme(),
      darkTheme: buildAdminTheme(),
      themeMode: ref.watch(themeModeProvider),
      routerConfig: ref.watch(routerProvider),
    );
  }
}
