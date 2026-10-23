import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Where this installation's device id is kept between runs. The id is the
/// client-chosen `Foresignal-Device-Id` the backend combines with the token
/// to key notification read state and presence; it is not a secret.
abstract interface class DeviceIdStore {
  /// The saved id, or `null` when none was saved.
  Future<String?> read();

  /// Saves [id].
  Future<void> write(String id);
}

/// A [DeviceIdStore] over `shared_preferences`.
class SharedPrefsDeviceIdStore implements DeviceIdStore {
  /// The preference key.
  static const String key = 'foresignal.deviceId';

  @override
  Future<String?> read() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  @override
  Future<void> write(String id) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, id);
  }
}

/// A [DeviceIdStore] in memory, for tests and the preview.
class InMemoryDeviceIdStore implements DeviceIdStore {
  /// Creates the store, optionally holding [id].
  InMemoryDeviceIdStore([this.id]);

  /// The held id.
  String? id;

  @override
  Future<String?> read() async => id;

  @override
  Future<void> write(String id) async => this.id = id;
}

final RegExp _uuidPattern = RegExp(
  r'^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$',
);

/// Whether [text] is a lower-case UUID, the form the backend accepts.
bool isDeviceId(String? text) => text != null && _uuidPattern.hasMatch(text);

/// A new random (version 4) UUID from [random], a secure generator by
/// default.
String newDeviceId([Random? random]) {
  final r = random ?? Random.secure();
  final bytes = List<int>.generate(16, (_) => r.nextInt(256));
  bytes[6] = (bytes[6] & 0x0f) | 0x40;
  bytes[8] = (bytes[8] & 0x3f) | 0x80;
  final hex = bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
  return '${hex.substring(0, 8)}-${hex.substring(8, 12)}-${hex.substring(12, 16)}-'
      '${hex.substring(16, 20)}-${hex.substring(20)}';
}

/// The device id store. Tests and the preview override it.
final deviceIdStoreProvider = Provider<DeviceIdStore>((ref) => SharedPrefsDeviceIdStore());

/// This installation's device id: the saved one, or a new one saved on first
/// use.
final deviceIdProvider = FutureProvider<String>((ref) async {
  final store = ref.watch(deviceIdStoreProvider);
  final saved = await store.read();
  if (isDeviceId(saved)) {
    return saved!;
  }
  final id = newDeviceId();
  await store.write(id);
  return id;
});
