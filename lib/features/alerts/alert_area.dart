import 'dart:math' as math;

import 'package:latlong2/latlong.dart';

/// The members of `TriggerRuleInput` that define a rule's area. A rule has at
/// most one of `geofence` (with `bufferMeters` for a line), `near` and
/// `geofenceRef`; the backend refuses two at once. `geofenceRoute` is how a
/// stored line reads back.
const Set<String> areaMembers = <String>{'geofence', 'geofenceRoute', 'bufferMeters', 'near', 'geofenceRef'};

/// The smallest and largest radius of a circle (`near.point.radiusKm`).
const double minRadiusKm = 0.1;

/// See [minRadiusKm].
const double maxRadiusKm = 2000;

/// The largest corridor half-width of a route (`bufferMeters` 1 to 50,000).
const double maxHalfWidthKm = 50;

/// The smallest corridor half-width of a route.
const double minHalfWidthKm = 0.001;

/// The most vertices a drawn area may have (the backend's geofence limit).
const int maxAreaVertices = 10000;

/// Kilometers per statute mile.
const double kmPerMile = 1.609344;

/// How a rule's area is chosen in the Alert Builder.
enum AreaMode {
  /// No area: records anywhere match.
  none('No area', 'Records anywhere match'),

  /// Countries or states (`geofenceRef`), a city with a radius
  /// (`near.point`), or saved places (`near.placeIds`).
  named('Named place', 'A country, state, city or saved place'),

  /// A pin and a radius (`near.point`).
  circle('Circle', 'A pin and a radius'),

  /// Shapes clicked point by point (a Polygon `geofence`).
  polygon('Polygon', 'Click the corners of a shape'),

  /// Rectangles dragged on the map (a Polygon `geofence`).
  box('Box', 'Drag a rectangle'),

  /// A line with a width either side (a LineString `geofence` and
  /// `bufferMeters`, buffered by the backend).
  route('Route', 'A line and a width either side');

  const AreaMode(this.label, this.hint);

  /// The mode's name.
  final String label;

  /// What the mode draws.
  final String hint;
}

/// What a named area is: a country or admin-1 region of a `geofenceRef`.
enum RegionKind {
  /// A country, by ISO 3166-1 alpha-2 code.
  country,

  /// An admin-1 region (state, province), by its `ref_admin1` code.
  admin1,
}

/// A country or admin-1 region the area covers.
class AreaRegion {
  /// A region with its [code] and, when known, its display [name].
  const AreaRegion(this.kind, this.code, {this.name});

  /// Country or admin-1.
  final RegionKind kind;

  /// The `geofenceRef` code.
  final String code;

  /// The region's name, with its country for an admin-1 region; `null`
  /// until looked up.
  final String? name;

  /// [name], or the code until the name is known.
  String get label => name ?? code;

  @override
  bool operator ==(Object other) => other is AreaRegion && other.kind == kind && other.code == code;

  @override
  int get hashCode => Object.hash(kind, code);
}

/// A saved place (`near.placeIds`).
class SavedPlace {
  /// The place [id] and its [name].
  const SavedPlace(this.id, this.name);

  /// The place id.
  final String id;

  /// The place name.
  final String name;
}

/// The area of a rule as the Alert Builder edits it, read from and written to
/// the area members of the rule ([areaMembers]).
///
/// The area kinds are exclusive, as they are in the backend: countries and
/// states, a city, saved places, a circle, shapes (polygons and boxes,
/// combined) or route lines (combined, with one width). An area the builder
/// cannot show exactly — a moving anchor, a US county, a shape with holes —
/// is [kept] and sent back unchanged.
class AreaDraft {
  /// No area.
  AreaDraft();

  /// The area of stored [rule].
  factory AreaDraft.of(Map<String, Object?> rule) {
    final d = AreaDraft();
    final ref = rule['geofenceRef'];
    final near = rule['near'];
    final route = rule['geofenceRoute'];
    final fence = rule['geofence'];
    if (ref is Map) {
      final county = ref['county'];
      if (county is List && county.isNotEmpty) {
        return d.._keep(rule, 'It names US counties.');
      }
      d.mode = AreaMode.named;
      for (final c in _strings(ref['country'])) {
        d.regions.add(AreaRegion(RegionKind.country, c));
      }
      for (final c in _strings(ref['admin1'])) {
        d.regions.add(AreaRegion(RegionKind.admin1, c));
      }
      return d;
    }
    if (near is Map) {
      final point = near['point'];
      final ids = <String>[..._strings(near['placeIds']), if (near['placeId'] is String) near['placeId']! as String];
      if (point is List && point.length == 2 && point[0] is num && point[1] is num) {
        d
          ..mode = AreaMode.circle
          ..center = LatLng((point[1]! as num).toDouble(), (point[0]! as num).toDouble())
          ..radiusKm = (near['radiusKm'] as num?)?.toDouble() ?? 25;
        return d;
      }
      if (ids.isNotEmpty) {
        d
          ..mode = AreaMode.named
          ..placeRadiusKm = (near['radiusKm'] as num?)?.toDouble();
        for (final id in ids) {
          d.savedPlaces.add(SavedPlace(id, id));
        }
        return d;
      }
      return d.._keep(rule, 'It follows a moving anchor.');
    }
    if (route is Map) {
      final lines = _lines(route);
      final buffer = rule['bufferMeters'];
      if (lines == null || buffer is! num) {
        return d.._keep(rule, 'Its route is not a line the builder can draw.');
      }
      d
        ..mode = AreaMode.route
        ..halfWidthKm = buffer / 1000;
      d.lines.addAll(lines);
      return d;
    }
    if (fence is Map) {
      final lines = _lines(fence);
      if (lines != null && rule['bufferMeters'] is num) {
        d
          ..mode = AreaMode.route
          ..halfWidthKm = (rule['bufferMeters']! as num) / 1000;
        d.lines.addAll(lines);
        return d;
      }
      final rings = _outerRings(fence);
      if (rings == null) {
        return d.._keep(rule, 'Its shape has holes or is not a polygon.');
      }
      d.shapes.addAll(rings);
      d.mode = rings.every(isBox) ? AreaMode.box : AreaMode.polygon;
      return d;
    }
    return d;
  }

  /// How the area is chosen.
  AreaMode mode = AreaMode.none;

  /// Named: the countries and admin-1 regions (a `geofenceRef`).
  final List<AreaRegion> regions = <AreaRegion>[];

  /// Named: the city, a point used as `near.point` with [radiusKm]; its
  /// display name.
  String? cityName;

  /// Named: saved places (`near.placeIds`).
  final List<SavedPlace> savedPlaces = <SavedPlace>[];

  /// Named, saved places: the distance around them, or `null` for their own
  /// areas.
  double? placeRadiusKm;

  /// Circle, or a named city: the center.
  LatLng? center;

  /// Circle, or a named city: the radius in kilometers.
  double radiusKm = 25;

  /// Polygon and box: the finished shapes, each an open ring (the first point
  /// is not repeated).
  final List<List<LatLng>> shapes = <List<LatLng>>[];

  /// Polygon: the shape being clicked, not finished yet.
  final List<LatLng> drawing = <LatLng>[];

  /// Route: the finished lines.
  final List<List<LatLng>> lines = <List<LatLng>>[];

  /// Route: the line being clicked, not finished yet.
  final List<LatLng> drawingLine = <LatLng>[];

  /// Route: the corridor's distance either side of the line, in kilometers.
  double halfWidthKm = 5;

  /// The stored area members, sent back unchanged, when the builder cannot
  /// show the stored area; `null` otherwise.
  Map<String, Object?>? kept;

  /// Why the area is [kept].
  String? keptReason;

  void _keep(Map<String, Object?> rule, String reason) {
    // A stored route reads back as its buffered polygon in `geofence` and
    // the line in `geofenceRoute`; the input is the line.
    kept = <String, Object?>{
      for (final m in areaMembers)
        if (m != 'geofenceRoute' && rule[m] != null) m: rule[m],
      if (rule['geofenceRoute'] != null) 'geofence': rule['geofenceRoute'],
    };
    keptReason = reason;
  }

  /// True when a named area is a city.
  bool get isCity => mode == AreaMode.named && cityName != null && center != null;

  /// True when the area narrows nothing: no mode, or a mode with nothing
  /// chosen yet.
  bool get isEmpty => kept == null && toJson().isEmpty;

  /// Chooses the city [name] at [point], replacing the named regions and
  /// saved places (a rule has one kind of area).
  void chooseCity(String name, LatLng point, {double? radius}) {
    regions.clear();
    savedPlaces.clear();
    cityName = name;
    center = point;
    if (radius != null) {
      radiusKm = radius;
    }
  }

  /// Adds [region], replacing a chosen city or saved places.
  void addRegion(AreaRegion region) {
    cityName = null;
    savedPlaces.clear();
    if (!regions.contains(region)) {
      regions.add(region);
    }
  }

  /// Adds saved place [place], replacing a chosen city or regions.
  void addSavedPlace(SavedPlace place) {
    cityName = null;
    regions.clear();
    if (!savedPlaces.any((p) => p.id == place.id)) {
      savedPlaces.add(place);
    }
  }

  /// Polygon: closes [drawing] into a shape. False when it has fewer than
  /// three points.
  bool closeShape() {
    if (drawing.length < 3) {
      return false;
    }
    shapes.add(List<LatLng>.of(drawing));
    drawing.clear();
    return true;
  }

  /// Route: finishes [drawingLine]. False when it has fewer than two points.
  bool finishLine() {
    if (drawingLine.length < 2) {
      return false;
    }
    lines.add(List<LatLng>.of(drawingLine));
    drawingLine.clear();
    return true;
  }

  /// Takes back the last step of the current mode: the last point being
  /// drawn, else the last finished shape or line. False when there is none.
  bool undo() {
    switch (mode) {
      case AreaMode.polygon || AreaMode.box:
        if (drawing.isNotEmpty) {
          drawing.removeLast();
          return true;
        }
        if (shapes.isNotEmpty) {
          shapes.removeLast();
          return true;
        }
      case AreaMode.route:
        if (drawingLine.isNotEmpty) {
          drawingLine.removeLast();
          return true;
        }
        if (lines.isNotEmpty) {
          lines.removeLast();
          return true;
        }
      case AreaMode.circle:
        if (center != null) {
          center = null;
          return true;
        }
      case AreaMode.named || AreaMode.none:
        break;
    }
    return false;
  }

  /// The problem that keeps the area from being saved, or `null`.
  String? problem() {
    if (kept != null) {
      return null;
    }
    switch (mode) {
      case AreaMode.none:
        return null;
      case AreaMode.named:
        if (regions.isEmpty && savedPlaces.isEmpty && !isCity) {
          return 'Choose a country, state, city or saved place, or pick No area.';
        }
        if (isCity) {
          return _radiusProblem(radiusKm);
        }
        if (savedPlaces.isNotEmpty && placeRadiusKm != null && placeRadiusKm! < 0) {
          return 'The distance around the places cannot be negative.';
        }
        return null;
      case AreaMode.circle:
        if (center == null) {
          return 'Drop a pin on the map for the center.';
        }
        return _radiusProblem(radiusKm);
      case AreaMode.polygon || AreaMode.box:
        if (drawing.isNotEmpty) {
          return drawing.length < 3
              ? 'Finish the shape: it needs at least 3 points.'
              : 'Close the shape you are drawing, or undo its points.';
        }
        if (shapes.isEmpty) {
          return mode == AreaMode.box ? 'Drag a box on the map.' : 'Click at least 3 points on the map.';
        }
        return _vertices(shapes) > maxAreaVertices ? 'Up to $maxAreaVertices points.' : null;
      case AreaMode.route:
        if (drawingLine.isNotEmpty) {
          return drawingLine.length < 2
              ? 'Finish the line: it needs at least 2 points.'
              : 'Finish the line you are drawing, or undo its points.';
        }
        if (lines.isEmpty) {
          return 'Click the points of the route on the map.';
        }
        if (halfWidthKm < minHalfWidthKm || halfWidthKm > maxHalfWidthKm) {
          return 'The width either side is 1 m to ${maxHalfWidthKm.toStringAsFixed(0)} km.';
        }
        return _vertices(lines) > maxAreaVertices ? 'Up to $maxAreaVertices points.' : null;
    }
  }

  static String? _radiusProblem(double r) =>
      r < minRadiusKm || r > maxRadiusKm ? 'The radius is $minRadiusKm to ${maxRadiusKm.toStringAsFixed(0)} km.' : null;

  static int _vertices(List<List<LatLng>> parts) => parts.fold(0, (n, p) => n + p.length);

  /// The area members of the rule: one of `geofenceRef`, `near` or
  /// `geofence` (with `bufferMeters` for a route), or none.
  Map<String, Object?> toJson() {
    if (kept case final k?) {
      return k;
    }
    switch (mode) {
      case AreaMode.none:
        return const <String, Object?>{};
      case AreaMode.named:
        if (isCity) {
          return _nearPoint(center!, radiusKm);
        }
        if (savedPlaces.isNotEmpty) {
          return <String, Object?>{
            'near': <String, Object?>{
              'placeIds': <String>[for (final p in savedPlaces) p.id],
              'radiusKm': ?placeRadiusKm,
            },
          };
        }
        if (regions.isEmpty) {
          return const <String, Object?>{};
        }
        final countries = <String>[
          for (final r in regions)
            if (r.kind == RegionKind.country) r.code,
        ];
        final admin1 = <String>[
          for (final r in regions)
            if (r.kind == RegionKind.admin1) r.code,
        ];
        return <String, Object?>{
          'geofenceRef': <String, Object?>{
            if (countries.isNotEmpty) 'country': countries,
            if (admin1.isNotEmpty) 'admin1': admin1,
          },
        };
      case AreaMode.circle:
        return center == null ? const <String, Object?>{} : _nearPoint(center!, radiusKm);
      case AreaMode.polygon || AreaMode.box:
        if (shapes.isEmpty) {
          return const <String, Object?>{};
        }
        return <String, Object?>{
          'geofence': <String, Object?>{
            'type': 'MultiPolygon',
            'coordinates': <Object?>[
              for (final s in shapes)
                <Object?>[
                  <Object?>[for (final p in s) _position(p), _position(s.first)],
                ],
            ],
          },
        };
      case AreaMode.route:
        if (lines.isEmpty) {
          return const <String, Object?>{};
        }
        return <String, Object?>{
          'geofence': lines.length == 1
              ? <String, Object?>{
                  'type': 'LineString',
                  'coordinates': <Object?>[for (final p in lines.single) _position(p)],
                }
              : <String, Object?>{
                  'type': 'MultiLineString',
                  'coordinates': <Object?>[
                    for (final l in lines) <Object?>[for (final p in l) _position(p)],
                  ],
                },
          'bufferMeters': _round(halfWidthKm * 1000, 1),
        };
    }
  }

  static Map<String, Object?> _nearPoint(LatLng c, double r) => <String, Object?>{
    'near': <String, Object?>{
      'point': _position(c),
      'radiusKm': _round(r, 3),
    },
  };

  /// One line of what the area is, for the flow and the editor.
  String describe() {
    if (kept != null) {
      return 'Set in the full rule form';
    }
    switch (mode) {
      case AreaMode.none:
        return 'Anywhere';
      case AreaMode.named:
        if (isCity) {
          return 'Within ${distanceText(radiusKm)} of $cityName';
        }
        if (savedPlaces.isNotEmpty) {
          final names = savedPlaces.map((p) => p.name).join(', ');
          return placeRadiusKm == null ? 'Inside $names' : 'Within ${distanceText(placeRadiusKm!)} of $names';
        }
        if (regions.isEmpty) {
          return 'No place chosen';
        }
        return 'Inside ${regions.map((r) => r.label).join(' or ')}';
      case AreaMode.circle:
        return center == null ? 'No pin dropped' : 'Within ${distanceText(radiusKm)} of ${coordinateText(center!)}';
      case AreaMode.polygon || AreaMode.box:
        final n = shapes.length;
        if (n == 0) {
          return 'Nothing drawn';
        }
        final boxes = shapes.every(isBox);
        if (n == 1) {
          return boxes ? 'Inside 1 box' : 'Inside 1 shape';
        }
        return boxes ? 'Inside any of $n boxes' : 'Inside any of $n shapes';
      case AreaMode.route:
        if (lines.isEmpty) {
          return 'Nothing drawn';
        }
        final km = lines.fold(0.0, (t, l) => t + lineLengthKm(l));
        return 'Within ${distanceText(halfWidthKm)} either side of '
            '${lines.length == 1 ? 'a route' : '${lines.length} routes'} (${distanceText(km)} long)';
    }
  }
}

/// A box from two opposite corners, as an open ring (SW, SE, NE, NW).
List<LatLng> boxRing(LatLng a, LatLng b) {
  final s = math.min(a.latitude, b.latitude);
  final n = math.max(a.latitude, b.latitude);
  final w = math.min(a.longitude, b.longitude);
  final e = math.max(a.longitude, b.longitude);
  return <LatLng>[LatLng(s, w), LatLng(s, e), LatLng(n, e), LatLng(n, w)];
}

/// True when [ring] (open) is an axis-aligned rectangle: four corners on two
/// latitudes and two longitudes.
bool isBox(List<LatLng> ring) {
  if (ring.length != 4) {
    return false;
  }
  bool near(double a, double b) => (a - b).abs() < 1e-7;
  final lats = <double>[];
  final lons = <double>[];
  for (final p in ring) {
    if (!lats.any((l) => near(l, p.latitude))) {
      lats.add(p.latitude);
    }
    if (!lons.any((l) => near(l, p.longitude))) {
      lons.add(p.longitude);
    }
  }
  if (lats.length != 2 || lons.length != 2) {
    return false;
  }
  // Consecutive corners share a latitude or a longitude: no diagonal edge.
  for (var i = 0; i < 4; i++) {
    final a = ring[i];
    final b = ring[(i + 1) % 4];
    if (!near(a.latitude, b.latitude) && !near(a.longitude, b.longitude)) {
      return false;
    }
  }
  return true;
}

const Distance _distance = Distance();

/// The great-circle distance between [a] and [b], in kilometers.
double distanceKm(LatLng a, LatLng b) => _distance.as(LengthUnit.Meter, a, b) / 1000;

/// The length of [line], in kilometers.
double lineLengthKm(List<LatLng> line) {
  var km = 0.0;
  for (var i = 1; i < line.length; i++) {
    km += distanceKm(line[i - 1], line[i]);
  }
  return km;
}

/// [km] in kilometers and miles: `25 km (15.5 mi)`, `800 m (0.5 mi)`.
String distanceText(double km) {
  final mi = km / kmPerMile;
  final metric = km < 1 ? '${(km * 1000).round()} m' : '${_trim(km)} km';
  return '$metric (${_trim(mi)} mi)';
}

/// [p] as `30.2672° N, 97.7431° W`.
String coordinateText(LatLng p) =>
    '${p.latitude.abs().toStringAsFixed(4)}° ${p.latitude >= 0 ? 'N' : 'S'}, '
    '${p.longitude.abs().toStringAsFixed(4)}° ${p.longitude >= 0 ? 'E' : 'W'}';

String _trim(double v) {
  if (v >= 100) {
    return v.round().toString();
  }
  final s = v.toStringAsFixed(v >= 10 ? 1 : 2);
  return s.contains('.') ? s.replaceFirst(RegExp(r'\.?0+$'), '') : s;
}

List<double> _position(LatLng p) => <double>[_round(p.longitude, 6), _round(p.latitude, 6)];

double _round(double v, int places) {
  final f = math.pow(10, places);
  return (v * f).roundToDouble() / f;
}

List<String> _strings(Object? list) => list is List ? <String>[for (final e in list) '$e'] : const <String>[];

LatLng? _latLng(Object? position) {
  if (position is List && position.length >= 2 && position[0] is num && position[1] is num) {
    return LatLng((position[1]! as num).toDouble(), (position[0]! as num).toDouble());
  }
  return null;
}

/// The lines of a LineString or MultiLineString, or `null`.
List<List<LatLng>>? _lines(Map<Object?, Object?> geometry) {
  final coordinates = geometry['coordinates'];
  if (coordinates is! List) {
    return null;
  }
  final raw = switch (geometry['type']) {
    'LineString' => <Object?>[coordinates],
    'MultiLineString' => coordinates,
    _ => null,
  };
  if (raw == null) {
    return null;
  }
  final out = <List<LatLng>>[];
  for (final line in raw) {
    if (line is! List) {
      return null;
    }
    final points = <LatLng>[];
    for (final p in line) {
      final ll = _latLng(p);
      if (ll == null) {
        return null;
      }
      points.add(ll);
    }
    if (points.length < 2) {
      return null;
    }
    out.add(points);
  }
  return out;
}

/// The outer rings (open) of a Polygon or MultiPolygon without holes, or
/// `null` (holes, or not a polygon).
List<List<LatLng>>? _outerRings(Map<Object?, Object?> geometry) {
  final coordinates = geometry['coordinates'];
  if (coordinates is! List) {
    return null;
  }
  final polygons = switch (geometry['type']) {
    'Polygon' => <Object?>[coordinates],
    'MultiPolygon' => coordinates,
    _ => null,
  };
  if (polygons == null) {
    return null;
  }
  final out = <List<LatLng>>[];
  for (final polygon in polygons) {
    if (polygon is! List || polygon.length != 1 || polygon.first is! List) {
      return null;
    }
    final ring = <LatLng>[];
    for (final p in polygon.first! as List<Object?>) {
      final ll = _latLng(p);
      if (ll == null) {
        return null;
      }
      ring.add(ll);
    }
    if (ring.length > 1 && ring.first == ring.last) {
      ring.removeLast();
    }
    if (ring.length < 3) {
      return null;
    }
    out.add(ring);
  }
  return out;
}
