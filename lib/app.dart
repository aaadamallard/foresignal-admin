import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/format/display_zone.dart';
import 'core/router.dart';
import 'core/theme.dart';
import 'core/theme_mode.dart';
import 'features/profile/profile_providers.dart';

/// The application title shown in the window bar.
const String appTitle = 'ForeSignal Admin';

/// The root widget: a [MaterialApp.router] over [routerProvider], in the
/// light or dark admin theme the operator chose, showing instants in the
/// signed-in user's timezone ([displayZoneProvider]).
class ForeSignalAdminApp extends ConsumerWidget {
  /// Creates the root widget.
  const ForeSignalAdminApp({super.key});

  /// Rebuilds every widget under [context], so each instant is formatted
  /// again in the zone just applied (formatting reads [DisplayZone], which
  /// no widget watches). Widget state is kept.
  static void _rebuildAll(BuildContext context) {
    void mark(Element element) {
      element.markNeedsBuild();
      element.visitChildren(mark);
    }

    if (context.mounted) {
      (context as Element).visitChildren(mark);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (DisplayZone.changeTo(ref.watch(displayZoneProvider))) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _rebuildAll(context));
    }
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
