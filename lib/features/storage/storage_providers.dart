import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../forecasting/forecasting_providers.dart' show Json;

/// How often the resource gauges re-read `getResourceStatus` while shown.
/// Tests override it.
final resourceStatusIntervalProvider = Provider<Duration>((ref) => const Duration(seconds: 5));

/// The pages a storage list follows at most, of [storagePageSize] each.
const int storageMaxPages = 10;

/// The page size of the archive and backup lists (the contract's maximum).
const int storagePageSize = 500;

/// The resource thresholds (`getResourceThresholds`), as JSON so the members
/// this build does not edit go back unchanged.
final resourceThresholdsProvider = FutureProvider<Json>(
  (ref) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/settings/thresholds'),
);

/// The retention settings (`getRetention`), as JSON: `updateRetention`
/// replaces the whole object, so every window goes back as read.
final retentionJsonProvider = FutureProvider<Json>(
  (ref) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/settings/retention'),
);

/// What the next retention run would prune under the saved policy
/// (`previewRetention`).
final retentionPreviewProvider = FutureProvider.autoDispose<Json>(
  (ref) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/settings/retention/preview'),
);

/// Follows `nextCursor` on [path] for up to [storageMaxPages] pages.
Future<List<Json>> _pages(Ref ref, String path) async {
  final dio = ref.watch(backendDioProvider);
  final items = <Json>[];
  String? cursor;
  for (var page = 0; page < storageMaxPages; page++) {
    final body = await jsonObjectCall(
      dio,
      'GET',
      path,
      query: <String, Object?>{'limit': storagePageSize, 'cursor': ?cursor},
    );
    for (final item in (body['items'] as List?) ?? const <Object?>[]) {
      if (item is Map) {
        items.add(item.cast<String, Object?>());
      }
    }
    cursor = body['nextCursor'] as String?;
    if (cursor == null) {
      break;
    }
  }
  return items;
}

/// The archive inventory (`listArchives`), newest first as the server sends.
final archivesProvider = FutureProvider<List<Json>>((ref) => _pages(ref, '/v1/archives'));

/// The backup history (`listBackups`).
final backupsProvider = FutureProvider<List<Json>>((ref) => _pages(ref, '/v1/backups'));

/// The backup settings (`getBackupSettings`), as JSON.
final backupSettingsProvider = FutureProvider<Json>(
  (ref) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/settings/backup'),
);

/// [bytes] as `1.5 GB`; `—` for `null`.
String storageBytesText(Object? bytes) {
  if (bytes is! num) {
    return '—';
  }
  const units = <String>['B', 'KB', 'MB', 'GB', 'TB', 'PB'];
  var value = bytes.toDouble();
  var unit = 0;
  while (value >= 1024 && unit < units.length - 1) {
    value /= 1024;
    unit++;
  }
  return unit == 0 ? '${bytes.toInt()} B' : '${value.toStringAsFixed(1)} ${units[unit]}';
}
