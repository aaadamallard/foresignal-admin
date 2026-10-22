import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// How the operator left the setup wizard.
enum SetupWizardStatus {
  /// Walked through to Finish.
  completed,

  /// Dismissed with Skip setup.
  skipped,
}

/// Remembers whether the setup wizard was finished or skipped, so it opens by
/// itself only on a first run. It stays re-openable from Connect.
abstract interface class SetupWizardStore {
  /// The saved status, or `null` when the wizard was never closed.
  Future<SetupWizardStatus?> read();

  /// Saves [status].
  Future<void> write(SetupWizardStatus status);
}

/// A [SetupWizardStore] over `shared_preferences`.
class SharedPrefsSetupWizardStore implements SetupWizardStore {
  /// The preference key.
  static const String key = 'foresignal.setupWizard';

  @override
  Future<SetupWizardStatus?> read() async {
    final value = (await SharedPreferences.getInstance()).getString(key);
    for (final status in SetupWizardStatus.values) {
      if (status.name == value) {
        return status;
      }
    }
    return null;
  }

  @override
  Future<void> write(SetupWizardStatus status) async =>
      (await SharedPreferences.getInstance()).setString(key, status.name);
}

/// A [SetupWizardStore] in memory, for tests and previews.
class InMemorySetupWizardStore implements SetupWizardStore {
  /// Creates the store, optionally holding [status].
  InMemorySetupWizardStore([this.status]);

  /// The held status.
  SetupWizardStatus? status;

  @override
  Future<SetupWizardStatus?> read() async => status;

  @override
  Future<void> write(SetupWizardStatus status) async => this.status = status;
}

/// The app's [SetupWizardStore].
final setupWizardStoreProvider = Provider<SetupWizardStore>((ref) => SharedPrefsSetupWizardStore());
