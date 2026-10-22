import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Where the theme choice is kept between runs. It is a plain preference,
/// not a secret.
abstract interface class ThemePreferenceStore {
  /// The saved choice, or `null` when none was saved.
  Future<ThemeMode?> read();

  /// Saves [mode].
  Future<void> write(ThemeMode mode);
}

/// A [ThemePreferenceStore] over `shared_preferences`.
class SharedPrefsThemeStore implements ThemePreferenceStore {
  /// The preference key.
  static const String key = 'foresignal.themeMode';

  @override
  Future<ThemeMode?> read() async {
    final prefs = await SharedPreferences.getInstance();
    return parseThemeMode(prefs.getString(key));
  }

  @override
  Future<void> write(ThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, mode.name);
  }
}

/// A [ThemePreferenceStore] in memory, for tests.
class InMemoryThemeStore implements ThemePreferenceStore {
  /// Creates the store, optionally holding [mode].
  InMemoryThemeStore([this.mode]);

  /// The held choice.
  ThemeMode? mode;

  @override
  Future<ThemeMode?> read() async => mode;

  @override
  Future<void> write(ThemeMode mode) async => this.mode = mode;
}

/// Parses a saved theme name; `null` for anything unknown.
ThemeMode? parseThemeMode(String? name) {
  for (final mode in ThemeMode.values) {
    if (mode.name == name) {
      return mode;
    }
  }
  return null;
}

/// The theme store. Tests override it.
final themePreferenceStoreProvider = Provider<ThemePreferenceStore>(
  (ref) => SharedPrefsThemeStore(),
);

/// The operator's theme choice: dark (the default, as in the mocks), light,
/// or follow the system. Saved on every change.
class ThemeModeController extends Notifier<ThemeMode> {
  @override
  ThemeMode build() => ThemeMode.dark;

  /// Applies a choice loaded at startup without saving it again.
  void restore(ThemeMode mode) => state = mode;

  /// Switches to [mode] and saves it.
  Future<void> set(ThemeMode mode) async {
    state = mode;
    await ref.read(themePreferenceStoreProvider).write(mode);
  }

  /// Flips between light and dark (from system, goes to the opposite of
  /// [platformBrightness]).
  Future<void> toggle(Brightness platformBrightness) {
    final effective = switch (state) {
      ThemeMode.dark => Brightness.dark,
      ThemeMode.light => Brightness.light,
      ThemeMode.system => platformBrightness,
    };
    return set(effective == Brightness.dark ? ThemeMode.light : ThemeMode.dark);
  }
}

/// The current theme choice.
final themeModeProvider = NotifierProvider<ThemeModeController, ThemeMode>(ThemeModeController.new);

/// A control that switches the theme: a light/dark toggle button with a
/// menu for System.
class ThemeModeButton extends ConsumerWidget {
  /// Creates the control.
  const ThemeModeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(themeModeProvider);
    final controller = ref.read(themeModeProvider.notifier);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return PopupMenuButton<ThemeMode>(
      key: const Key('theme.menu'),
      tooltip: 'Theme',
      initialValue: mode,
      icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode, size: 20),
      onSelected: controller.set,
      itemBuilder: (context) => const <PopupMenuEntry<ThemeMode>>[
        PopupMenuItem<ThemeMode>(value: ThemeMode.dark, child: Text('Dark')),
        PopupMenuItem<ThemeMode>(value: ThemeMode.light, child: Text('Light')),
        PopupMenuItem<ThemeMode>(value: ThemeMode.system, child: Text('Match system')),
      ],
    );
  }
}
