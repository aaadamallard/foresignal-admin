import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/connection_store.dart';

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
      throw PlatformException(code: 'Libsecret error', message: 'secret_service_get_sync: no Secret Service');
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

void main() {
  test('the URL and token outlive the app in the secure store', () async {
    final values = <String, String>{};
    final first = SecureConnectionStore(_Storage(values));
    await first.writeBackendUrl(Uri.parse('http://foresignal.local:8080'));
    await first.write('fsr_good');
    expect(first.persistenceProblem, isNull);

    final next = SecureConnectionStore(_Storage(values));
    expect(await next.readBackendUrl(), Uri.parse('http://foresignal.local:8080'));
    expect(await next.read(), 'fsr_good');
    expect(await next.hasSavedToken(), isTrue);
  });

  test('a session-only token is not left in the secure store', () async {
    final values = <String, String>{SecureConnectionStore.tokenKey: 'fsr_old'};
    final store = SecureConnectionStore(_Storage(values));
    await store.useForSession('fsr_new');
    expect(await store.read(), 'fsr_new');
    expect(values.containsKey(SecureConnectionStore.tokenKey), isFalse);
  });

  test('a refusing secure store keeps the connection for this session and says why', () async {
    final storage = _Storage(<String, String>{}, refuse: true);
    final store = SecureConnectionStore(storage);
    expect(await store.readBackendUrl(), isNull);
    expect(store.persistenceProblem, contains('Secret Service'));

    await store.writeBackendUrl(Uri.parse('http://h:8080'));
    await store.write('fsr_good');
    expect(await store.readBackendUrl(), Uri.parse('http://h:8080'));
    expect(await store.read(), 'fsr_good');
    expect(await store.hasSavedToken(), isFalse);
    expect(storage.values, isEmpty, reason: 'the token is never written anywhere else');
    expect(storage.calls, 1, reason: 'after the first refusal the store is not asked again');
  });

  test('the in-memory store has no persistence problem', () {
    expect(InMemoryConnectionStore().persistenceProblem, isNull);
  });
}
