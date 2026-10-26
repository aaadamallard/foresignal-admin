import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';

/// A secure store over [values], or one that refuses every call the way
/// libsecret does without a Secret Service ([refuse]).
class _Storage extends Fake implements FlutterSecureStorage {
  _Storage(this.values, {this.refuse = false});

  final Map<String, String> values;
  final bool refuse;
  int calls = 0;

  void _check() {
    calls++;
    if (refuse) {
      throw PlatformException(
        code: 'Libsecret error',
        message: 'secret_service_get_sync: no Secret Service',
      );
    }
  }

  @override
  Future<String?> read({
    required String key,
    AppleOptions? iOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
    WebOptions? webOptions,
    AppleOptions? mOptions,
    WindowsOptions? wOptions,
  }) async {
    _check();
    return values[key];
  }

  @override
  Future<void> write({
    required String key,
    required String? value,
    AppleOptions? iOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
    WebOptions? webOptions,
    AppleOptions? mOptions,
    WindowsOptions? wOptions,
  }) async {
    _check();
    if (value == null) {
      values.remove(key);
    } else {
      values[key] = value;
    }
  }

  @override
  Future<void> delete({
    required String key,
    AppleOptions? iOptions,
    AndroidOptions? aOptions,
    LinuxOptions? lOptions,
    WebOptions? webOptions,
    AppleOptions? mOptions,
    WindowsOptions? wOptions,
  }) async {
    _check();
    values.remove(key);
  }
}

StoredSession _session({String token = 'fss_abc', DateTime? expiresAt}) => StoredSession(
  token: token,
  tokenPrefix: 'fss_ab',
  userId: '6f1d3a2e-0b4c-4d5e-8f9a-1b2c3d4e5f60',
  email: 'ana@example.com',
  expiresAt: expiresAt ?? DateTime.utc(2099, 1, 1),
  idleExpiresAt: DateTime.utc(2099, 1, 1, 2),
  permissions: const <String>['users.manage', 'data.read'],
  scopes: const <String>['read', 'admin'],
);

void main() {
  test('a session round-trips through JSON', () {
    final restored = StoredSession.fromJson(jsonDecode(jsonEncode(_session().toJson())))!;
    expect(restored.token, 'fss_abc');
    expect(restored.tokenPrefix, 'fss_ab');
    expect(restored.userId, '6f1d3a2e-0b4c-4d5e-8f9a-1b2c3d4e5f60');
    expect(restored.email, 'ana@example.com');
    expect(restored.expiresAt, DateTime.utc(2099, 1, 1));
    expect(restored.idleExpiresAt, DateTime.utc(2099, 1, 1, 2));
    expect(restored.permissions, <String>['users.manage', 'data.read']);
    expect(restored.scopes, <String>['read', 'admin']);
  });

  test('a body that is not a session reads as none', () {
    expect(StoredSession.fromJson(null), isNull);
    expect(StoredSession.fromJson(<String, Object?>{'token': 'fss_x'}), isNull);
    expect(
      StoredSession.fromJson(<String, Object?>{
        'token': '',
        'userId': 'u',
        'expiresAt': '2099-01-01T00:00:00Z',
      }),
      isNull,
    );
  });

  test('the in-memory store round-trips and clears', () async {
    final store = InMemorySessionStore();
    expect(await store.read(), isNull);
    await store.write(_session());
    expect((await store.read())!.token, 'fss_abc');
    await store.clear();
    expect(await store.read(), isNull);
  });

  test('the secure store keeps the session across restarts and clears it', () async {
    final values = <String, String>{};
    await SecureSessionStore(_Storage(values)).write(_session());
    expect(values.keys, <String>[SecureSessionStore.sessionKey]);

    final next = SecureSessionStore(_Storage(values));
    expect((await next.read())!.permissions, <String>['users.manage', 'data.read']);
    await next.clear();
    expect(values, isEmpty);
    expect(await SecureSessionStore(_Storage(values)).read(), isNull);
  });

  test('a secure store that refuses holds the session for this run only', () async {
    final store = SecureSessionStore(_Storage(<String, String>{}, refuse: true));
    await store.write(_session());
    expect(store.persistenceProblem, contains('no Secret Service'));
    expect((await store.read())!.token, 'fss_abc');
  });

  group('SessionController', () {
    ProviderContainer containerWith(SessionStore store) {
      final container = ProviderContainer(
        overrides: [sessionStoreProvider.overrideWithValue(store)],
      );
      addTearDown(container.dispose);
      return container;
    }

    test('restores a stored session', () async {
      final container = containerWith(InMemorySessionStore(_session()));
      await container.read(sessionControllerProvider.notifier).restore();
      expect(container.read(sessionControllerProvider).session!.token, 'fss_abc');
    });

    test('drops a session past its absolute expiry', () async {
      final store = InMemorySessionStore(_session(expiresAt: DateTime.utc(2026, 1, 1)));
      final container = containerWith(store);
      await container
          .read(sessionControllerProvider.notifier)
          .restore(now: DateTime.utc(2026, 10, 26));
      expect(container.read(sessionControllerProvider).signedIn, isFalse);
      expect(await store.read(), isNull);
    });

    test('signing in stores the session; clearing removes it', () async {
      final store = InMemorySessionStore();
      final container = containerWith(store);
      final controller = container.read(sessionControllerProvider.notifier);
      await controller.signedIn(_session());
      expect((await store.read())!.token, 'fss_abc');
      await controller.clear();
      expect(await store.read(), isNull);
      expect(container.read(sessionControllerProvider).signedIn, isFalse);
    });

    test('an ended session is noticed once', () async {
      final container = containerWith(InMemorySessionStore());
      final controller = container.read(sessionControllerProvider.notifier);
      controller.ended();
      expect(container.read(sessionControllerProvider).ended, isTrue);
      controller.acknowledgeEnded();
      expect(container.read(sessionControllerProvider).ended, isFalse);
    });
  });
}
