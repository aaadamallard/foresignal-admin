import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/device_id.dart';
import 'package:foresignal_admin/features/notifications/presence.dart';

void main() {
  test('a new device id is a lower-case version 4 UUID', () {
    final id = newDeviceId(Random(7));
    expect(isDeviceId(id), isTrue);
    expect(id[14], '4');
    expect('89ab'.contains(id[19]), isTrue);
  });

  test('ids that are not lower-case UUIDs are refused', () {
    expect(isDeviceId(null), isFalse);
    expect(isDeviceId('desktop-1'), isFalse);
    expect(isDeviceId('0F8E2D3C-1B4A-4C5D-8E6F-7A8B9C0D1E2F'), isFalse);
  });

  test('a saved id is kept', () async {
    const saved = '0f8e2d3c-1b4a-4c5d-8e6f-7a8b9c0d1e2f';
    final container = ProviderContainer(
      overrides: [deviceIdStoreProvider.overrideWithValue(InMemoryDeviceIdStore(saved))],
    );
    addTearDown(container.dispose);
    expect(await container.read(deviceIdProvider.future), saved);
  });

  test('without a valid saved id, a new one is made and saved', () async {
    final store = InMemoryDeviceIdStore('not-an-id');
    final container = ProviderContainer(overrides: [deviceIdStoreProvider.overrideWithValue(store)]);
    addTearDown(container.dispose);
    final id = await container.read(deviceIdProvider.future);
    expect(isDeviceId(id), isTrue);
    expect(store.id, id);
  });

  test('app lifecycle states map to presence states', () {
    expect(presenceStateOf(AppLifecycleState.resumed), 'active');
    expect(presenceStateOf(AppLifecycleState.inactive), 'idle');
    expect(presenceStateOf(AppLifecycleState.hidden), 'background');
    expect(presenceStateOf(AppLifecycleState.paused), 'background');
  });
}
