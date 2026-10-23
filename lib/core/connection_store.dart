import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../api/admin_token_store.dart';

/// Where the connection — backend URL and admin token — is kept.
abstract interface class ConnectionStore implements AdminTokenStore {
  /// The saved backend URL, or `null`.
  Future<Uri?> readBackendUrl();

  /// Saves the backend URL.
  Future<void> writeBackendUrl(Uri url);

  /// Uses [token] until the app exits without saving it, and removes any
  /// saved copy (the Connect screen's "Save token in secure storage" unticked).
  Future<void> useForSession(String token);

  /// Why nothing outlives this session, or `null` while saving works: the
  /// platform secure store refused (on Linux, no Secret Service keyring).
  String? get persistenceProblem;
}

/// A [ConnectionStore] in memory only, for tests and as the default before
/// startup installs the secure one.
class InMemoryConnectionStore extends InMemoryAdminTokenStore implements ConnectionStore {
  /// Creates a store, optionally holding [url] and [token] already.
  InMemoryConnectionStore({Uri? url, String? token}) : super(token) {
    _url = url;
  }

  Uri? _url;

  @override
  Future<Uri?> readBackendUrl() async => _url;

  @override
  Future<void> writeBackendUrl(Uri url) async => _url = url;

  @override
  Future<void> useForSession(String token) => write(token);

  @override
  String? get persistenceProblem => null;
}

/// The app's [ConnectionStore]. Startup overrides it (and
/// [adminTokenStoreProvider]) with one [SecureConnectionStore].
final connectionStoreProvider = Provider<ConnectionStore>((ref) => InMemoryConnectionStore());

/// Persists the connection — the backend URL and the admin token — in the
/// platform secure store (Keychain, Keystore, libsecret, Windows Credential
/// Manager). The token is never written anywhere else: when the secure store
/// refuses (a Linux desktop with no Secret Service keyring), both are held
/// in memory for this session and [persistenceProblem] says why.
class SecureConnectionStore implements ConnectionStore {
  /// Creates the store over [storage].
  SecureConnectionStore([FlutterSecureStorage? storage])
    : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  /// The secure-store key of the admin token.
  static const String tokenKey = 'foresignal.adminToken';

  /// The secure-store key of the backend URL.
  static const String backendUrlKey = 'foresignal.backendUrl';

  String? _cachedToken;
  bool _tokenLoaded = false;
  Uri? _sessionUrl;
  String? _problem;

  @override
  String? get persistenceProblem => _problem;

  /// Runs [action] on the secure store; once it has refused, runs nothing
  /// and answers [fallback] instead.
  Future<T> _guard<T>(Future<T> Function() action, T fallback) async {
    if (_problem != null) {
      return fallback;
    }
    try {
      return await action();
    } on PlatformException catch (e) {
      _problem = e.message ?? e.code;
      return fallback;
    }
  }

  @override
  Future<String?> read() async {
    if (!_tokenLoaded) {
      _cachedToken = await _guard(() => _storage.read(key: tokenKey), null);
      _tokenLoaded = true;
    }
    return _cachedToken;
  }

  @override
  Future<void> write(String token) async {
    await _guard(() => _storage.write(key: tokenKey, value: token), null);
    _cachedToken = token;
    _tokenLoaded = true;
  }

  @override
  Future<void> clear() async {
    await _guard(() => _storage.delete(key: tokenKey), null);
    _cachedToken = null;
    _tokenLoaded = true;
  }

  @override
  Future<void> useForSession(String token) async {
    await _guard(() => _storage.delete(key: tokenKey), null);
    _cachedToken = token;
    _tokenLoaded = true;
  }

  /// Whether a token is saved in the secure store (not just held for the
  /// session).
  Future<bool> hasSavedToken() async =>
      (await _guard(() => _storage.read(key: tokenKey), null))?.isNotEmpty ?? false;

  @override
  Future<Uri?> readBackendUrl() async {
    final text = await _guard(() => _storage.read(key: backendUrlKey), null);
    return text == null || text.isEmpty ? _sessionUrl : Uri.tryParse(text);
  }

  @override
  Future<void> writeBackendUrl(Uri url) async {
    await _guard(() => _storage.write(key: backendUrlKey, value: url.toString()), null);
    _sessionUrl = url;
  }
}
