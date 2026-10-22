import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Where the admin token lives. The token is the only credential the app
/// persists; it is never written to plain files or logs.
abstract interface class AdminTokenStore {
  /// Returns the stored token, or `null` when none is set.
  Future<String?> read();

  /// Stores [token], replacing any previous one.
  Future<void> write(String token);

  /// Removes the stored token.
  Future<void> clear();
}

/// An [AdminTokenStore] held in memory only: nothing survives a restart. It is
/// the default until the platform secure store is wired in, and the store
/// tests use.
class InMemoryAdminTokenStore implements AdminTokenStore {
  /// Creates a store, optionally holding [token] already.
  InMemoryAdminTokenStore([this._token]);

  String? _token;

  @override
  Future<String?> read() async => _token;

  @override
  Future<void> write(String token) async => _token = token;

  @override
  Future<void> clear() async => _token = null;
}

/// The app's [AdminTokenStore]. Overridden at startup with the secure store.
final adminTokenStoreProvider = Provider<AdminTokenStore>((ref) => InMemoryAdminTokenStore());
