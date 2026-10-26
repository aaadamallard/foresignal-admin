import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// A signed-in user's session, as `login` issued it (`SessionToken` in the
/// contract). The [token] is a credential: it lives only in a [SessionStore]
/// and is never written to plain files or logs.
class StoredSession {
  /// Creates a session.
  const StoredSession({
    required this.token,
    required this.userId,
    required this.expiresAt,
    this.tokenPrefix,
    this.idleExpiresAt,
    this.email,
    this.permissions = const <String>[],
    this.scopes = const <String>[],
  });

  /// The session bearer (`fss_…`).
  final String token;

  /// The first characters of the token, for display.
  final String? tokenPrefix;

  /// The signed-in user's id.
  final String userId;

  /// The email the user signed in with, for display.
  final String? email;

  /// The absolute expiry.
  final DateTime expiresAt;

  /// The idle expiry when the login reported one; the backend refreshes it on
  /// use, so it is informational here.
  final DateTime? idleExpiresAt;

  /// The effective permission keys the login returned, exactly as the server
  /// spelled them (wire strings).
  final List<String> permissions;

  /// The effective coarse scopes the login returned.
  final List<String> scopes;

  /// Whether the absolute expiry has passed at [now].
  bool isExpiredAt(DateTime now) => !now.isBefore(expiresAt);

  /// A copy with [permissions] (and [scopes], when given) replaced.
  StoredSession withPermissions(List<String> permissions, {List<String>? scopes}) => StoredSession(
    token: token,
    tokenPrefix: tokenPrefix,
    userId: userId,
    email: email,
    expiresAt: expiresAt,
    idleExpiresAt: idleExpiresAt,
    permissions: List<String>.unmodifiable(permissions),
    scopes: List<String>.unmodifiable(scopes ?? this.scopes),
  );

  /// The JSON the secure store keeps.
  Map<String, Object?> toJson() => <String, Object?>{
    'token': token,
    'tokenPrefix': tokenPrefix,
    'userId': userId,
    'email': email,
    'expiresAt': expiresAt.toUtc().toIso8601String(),
    'idleExpiresAt': idleExpiresAt?.toUtc().toIso8601String(),
    'permissions': permissions,
    'scopes': scopes,
  };

  /// Reads [json] written by [toJson]; `null` when it is not a session.
  static StoredSession? fromJson(Object? json) {
    if (json is! Map) {
      return null;
    }
    final token = json['token'];
    final userId = json['userId'];
    final expiresAt = json['expiresAt'] is String
        ? DateTime.tryParse(json['expiresAt']! as String)
        : null;
    if (token is! String || token.isEmpty || userId is! String || expiresAt == null) {
      return null;
    }
    List<String> strings(Object? value) =>
        value is List ? List<String>.unmodifiable(value.whereType<String>()) : const <String>[];
    return StoredSession(
      token: token,
      tokenPrefix: json['tokenPrefix'] is String ? json['tokenPrefix']! as String : null,
      userId: userId,
      email: json['email'] is String ? json['email']! as String : null,
      expiresAt: expiresAt,
      idleExpiresAt: json['idleExpiresAt'] is String
          ? DateTime.tryParse(json['idleExpiresAt']! as String)
          : null,
      permissions: strings(json['permissions']),
      scopes: strings(json['scopes']),
    );
  }
}

/// Where the signed-in session lives, parallel to the admin-token store.
abstract interface class SessionStore {
  /// The stored session, or `null`.
  Future<StoredSession?> read();

  /// Stores [session], replacing any previous one.
  Future<void> write(StoredSession session);

  /// Removes the stored session.
  Future<void> clear();
}

/// A [SessionStore] in memory only: the default until startup installs the
/// secure one, and the store tests use.
class InMemorySessionStore implements SessionStore {
  /// Creates a store, optionally holding [session] already.
  InMemorySessionStore([this._session]);

  StoredSession? _session;

  @override
  Future<StoredSession?> read() async => _session;

  @override
  Future<void> write(StoredSession session) async => _session = session;

  @override
  Future<void> clear() async => _session = null;
}

/// Persists the session in the platform secure store (Keychain, Keystore,
/// libsecret, Windows Credential Manager) and nowhere else. When the secure
/// store refuses (a Linux desktop with no Secret Service keyring), the
/// session is held in memory for this run and [persistenceProblem] says why.
class SecureSessionStore implements SessionStore {
  /// Creates the store over [storage].
  SecureSessionStore([FlutterSecureStorage? storage])
    : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  /// The secure-store key of the session.
  static const String sessionKey = 'foresignal.session';

  StoredSession? _cached;
  bool _loaded = false;
  String? _problem;

  /// Why nothing outlives this run, or `null` while saving works.
  String? get persistenceProblem => _problem;

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
  Future<StoredSession?> read() async {
    if (!_loaded) {
      final text = await _guard(() => _storage.read(key: sessionKey), null);
      StoredSession? session;
      if (text != null && text.isNotEmpty) {
        try {
          session = StoredSession.fromJson(jsonDecode(text));
        } on FormatException {
          session = null;
        }
      }
      _cached = session;
      _loaded = true;
    }
    return _cached;
  }

  @override
  Future<void> write(StoredSession session) async {
    await _guard(() => _storage.write(key: sessionKey, value: jsonEncode(session.toJson())), null);
    _cached = session;
    _loaded = true;
  }

  @override
  Future<void> clear() async {
    await _guard(() => _storage.delete(key: sessionKey), null);
    _cached = null;
    _loaded = true;
  }
}

/// The app's [SessionStore]. Startup overrides it with a [SecureSessionStore].
final sessionStoreProvider = Provider<SessionStore>((ref) => InMemorySessionStore());

/// What the app knows about the signed-in session.
class SessionState {
  /// Creates the state.
  const SessionState({this.session, this.ended = false});

  /// The session in use, or `null` when nobody is signed in.
  final StoredSession? session;

  /// Whether the last session was ended by the backend (a 401), so the login
  /// screen says "your session ended, sign in again".
  final bool ended;

  /// Whether a user is signed in.
  bool get signedIn => session != null;
}

/// Keeps [SessionState] and the [SessionStore] in step: restored at startup,
/// set by a sign-in, cleared by a sign-out, a password change or a 401.
class SessionController extends Notifier<SessionState> {
  @override
  SessionState build() => const SessionState();

  SessionStore get _store => ref.read(sessionStoreProvider);

  /// Loads the stored session; one past its absolute expiry is dropped.
  Future<void> restore({DateTime? now}) async {
    final stored = await _store.read();
    if (stored != null && stored.isExpiredAt(now ?? DateTime.now())) {
      await _store.clear();
      state = const SessionState();
      return;
    }
    state = SessionState(session: stored);
  }

  /// Stores [session] and makes it the one in use.
  Future<void> signedIn(StoredSession session) async {
    await _store.write(session);
    state = SessionState(session: session);
  }

  /// Replaces the stored session's permissions (from `getMe`).
  Future<void> updatePermissions(List<String> permissions, {List<String>? scopes}) async {
    final session = state.session;
    if (session == null) {
      return;
    }
    final updated = session.withPermissions(permissions, scopes: scopes);
    await _store.write(updated);
    state = SessionState(session: updated);
  }

  /// Clears the session (logout, password change).
  Future<void> clear() async {
    await _store.clear();
    state = const SessionState();
  }

  /// Records that the backend ended the session (the interceptor has already
  /// cleared the store).
  void ended() {
    state = const SessionState(ended: true);
  }

  /// Forgets the "session ended" notice once it has been shown.
  void acknowledgeEnded() {
    if (state.ended) {
      state = SessionState(session: state.session);
    }
  }
}

/// The signed-in session.
final sessionControllerProvider = NotifierProvider<SessionController, SessionState>(
  SessionController.new,
);
