import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Which shell the app mounts: the full desktop admin tree, or the mobile
/// companion's subset (Screens.md §K).
enum FormFactor {
  /// Linux, macOS and Windows: every screen group.
  desktop,

  /// iOS and Android: alerts, notifications, source on/off + health, and
  /// this device's push registration.
  mobile;

  /// The form factor for [platform].
  static FormFactor forPlatform(TargetPlatform platform) => switch (platform) {
    TargetPlatform.android || TargetPlatform.iOS => FormFactor.mobile,
    TargetPlatform.linux ||
    TargetPlatform.macOS ||
    TargetPlatform.windows ||
    TargetPlatform.fuchsia => FormFactor.desktop,
  };
}

/// The running form factor. Tests override it to exercise either shell.
final formFactorProvider = Provider<FormFactor>(
  (ref) => FormFactor.forPlatform(defaultTargetPlatform),
);
