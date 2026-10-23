import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api/api.dart';
import 'app.dart';
import 'core/connection_store.dart';
import 'core/error_reporter.dart';
import 'core/theme_mode.dart';
import 'features/notifications/push_arrival.dart';

/// Starts ForeSignal Admin: loads the saved connection from the secure store
/// and the saved theme, installs the global error surface, and runs the app.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  installPushBackgroundHandler();
  final store = SecureConnectionStore();
  Uri? savedUrl;
  try {
    savedUrl = await store.readBackendUrl();
  } on Object {
    // An unreadable secure store means no saved connection; Connect asks again.
    savedUrl = null;
  }
  final container = ProviderContainer(
    overrides: [
      connectionStoreProvider.overrideWithValue(store),
      adminTokenStoreProvider.overrideWithValue(store),
    ],
  );
  if (savedUrl != null) {
    container.read(backendEndpointProvider.notifier).set(savedUrl);
  }
  try {
    final mode = await container.read(themePreferenceStoreProvider).read();
    if (mode != null) {
      container.read(themeModeProvider.notifier).restore(mode);
    }
  } on Object {
    // An unreadable preference keeps the default (dark).
  }
  installGlobalErrorHandlers(container);
  runApp(UncontrolledProviderScope(container: container, child: const ForeSignalAdminApp()));
}
