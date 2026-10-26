import 'package:timezone/data/latest_10y.dart' as tzdata;
import 'package:timezone/timezone.dart' as tz;

/// The zone the app shows instants in: UTC until a signed-in user's
/// timezone is known, then that IANA zone. Stored times stay UTC; only the
/// rendering changes. The app root sets it ([use]) and rebuilds every
/// screen when it changes.
abstract final class DisplayZone {
  static tz.Location? _location;

  static void _load() {
    if (!tz.timeZoneDatabase.isInitialized) {
      tzdata.initializeTimeZones();
    }
  }

  static String? _requested;

  /// Applies [zone] as [use] does, unless it is the zone last asked for;
  /// returns whether anything changed (the caller then rebuilds what shows
  /// instants).
  static bool changeTo(String? zone) {
    if (zone == _requested) {
      return false;
    }
    _requested = zone;
    use(zone);
    return true;
  }

  /// The zone in use, or `null` for UTC.
  static String? get name => _location?.name;

  /// Every IANA zone this build knows, sorted, for a zone picker.
  static List<String> get known {
    _load();
    return tz.timeZoneDatabase.locations.keys.toList()..sort();
  }

  /// Whether [zone] is an IANA zone this build knows (`UTC` included).
  static bool isKnown(String zone) {
    _load();
    return zone == 'UTC' || tz.timeZoneDatabase.locations.containsKey(zone);
  }

  /// Shows instants in [zone]; `null`, empty, `UTC` or a zone this build does
  /// not know shows them in UTC. Returns whether [zone] was applied as given.
  static bool use(String? zone) {
    _requested = zone;
    if (zone == null || zone.isEmpty || zone == 'UTC') {
      _location = null;
      return true;
    }
    _load();
    final location = tz.timeZoneDatabase.locations[zone];
    _location = location;
    return location != null;
  }

  /// [t] as `2026-10-22 16:30:00`, in UTC, or in the zone in use followed by
  /// its abbreviation (`2026-10-22 11:30:00 CDT`).
  static String format(DateTime t) {
    final location = _location;
    if (location == null) {
      final s = t.toUtc().toIso8601String();
      return '${s.substring(0, 10)} ${s.substring(11, 19)}';
    }
    final local = tz.TZDateTime.from(t, location);
    String two(int n) => n.toString().padLeft(2, '0');
    return '${local.year.toString().padLeft(4, '0')}-${two(local.month)}-${two(local.day)} '
        '${two(local.hour)}:${two(local.minute)}:${two(local.second)} ${local.timeZoneName}';
  }
}
