/// The preview backend's reference lookups for the Alert Builder's Area
/// node: `searchReferenceAreas`, `getReferenceArea`, `reverseGeocode` and
/// `listPlaces`, over a handful of countries, states and cities. Outlines are
/// boxes, not boundaries; the real ones come from the backend's reference
/// data.
library;

import 'dart:math' as math;

import 'preview_alerts.dart' show AlertsReply;

/// One region of the fake reference data: a country (ISO2 code) or an
/// admin-1 region, with its label point and a box `[w, s, e, n]` as its
/// outline.
typedef _Region = ({
  String kind,
  String code,
  String name,
  String iso2,
  String countryName,
  double lon,
  double lat,
  List<double> box,
});

const List<_Region> _regions = <_Region>[
  (
    kind: 'country',
    code: 'US',
    name: 'United States of America',
    iso2: 'US',
    countryName: 'United States of America',
    lon: -98.6,
    lat: 39.8,
    box: <double>[-125, 24, -66, 49],
  ),
  (
    kind: 'country',
    code: 'JP',
    name: 'Japan',
    iso2: 'JP',
    countryName: 'Japan',
    lon: 138.5,
    lat: 36.2,
    box: <double>[129, 31, 146, 45.5],
  ),
  (
    kind: 'country',
    code: 'VU',
    name: 'Vanuatu',
    iso2: 'VU',
    countryName: 'Vanuatu',
    lon: 167.7,
    lat: -16.2,
    box: <double>[166.5, -20.3, 170.3, -13],
  ),
  (
    kind: 'admin1',
    code: 'US-TX',
    name: 'Texas',
    iso2: 'US',
    countryName: 'United States of America',
    lon: -99.3,
    lat: 31.4,
    box: <double>[-106.6, 25.8, -93.5, 36.5],
  ),
  (
    kind: 'admin1',
    code: 'US-CA',
    name: 'California',
    iso2: 'US',
    countryName: 'United States of America',
    lon: -119.6,
    lat: 37.2,
    box: <double>[-124.4, 32.5, -114.1, 42],
  ),
];

/// A city of the fake gazetteer.
typedef _City = ({String id, String name, String iso2, String? admin1, double lon, double lat, int population});

const List<_City> _cities = <_City>[
  (id: '4671654', name: 'Austin', iso2: 'US', admin1: 'US-TX', lon: -97.74306, lat: 30.26715, population: 974447),
  (id: '4699066', name: 'Houston', iso2: 'US', admin1: 'US-TX', lon: -95.36327, lat: 29.76328, population: 2304580),
  (id: '1850147', name: 'Tokyo', iso2: 'JP', admin1: null, lon: 139.69171, lat: 35.6895, population: 8336599),
  (id: '2135171', name: 'Port Vila', iso2: 'VU', admin1: null, lon: 168.31366, lat: -17.73381, population: 35901),
];

/// The saved places `listPlaces` returns.
const List<Map<String, Object?>> previewPlaces = <Map<String, Object?>>[
  <String, Object?>{
    'id': 'pl-port-of-houston',
    'name': 'Port of Houston',
    'kind': 'user',
    'shape': 'point',
    'geometry': <String, Object?>{
      'type': 'Point',
      'coordinates': <double>[-95.0147, 29.7277],
    },
    'radiusKm': 15,
    'tags': <String>['port'],
  },
];

_Region? _region(String code) {
  final c = code.toUpperCase();
  for (final r in _regions) {
    if (r.code == c) {
      return r;
    }
  }
  return null;
}

bool _inBox(List<double> b, double lon, double lat) => lon >= b[0] && lon <= b[2] && lat >= b[1] && lat <= b[3];

/// Answers the area lookups, or `null` when [path] is not one of them.
AlertsReply? answerAreas(String method, String path, Map<String, List<String>> query) {
  if (method != 'GET') {
    return null;
  }
  if (path == '/v1/places') {
    return (
      status: 200,
      body: <String, Object?>{'items': previewPlaces, 'nextCursor': null},
    );
  }
  if (path == '/v1/reference/areas') {
    final q = (query['q']?.first ?? '').trim();
    if (q.length < 2) {
      return (
        status: 400,
        body: <String, Object?>{
          'title': 'Validation failed',
          'status': 400,
          'code': 'VALIDATION_FAILED',
          'detail': 'q: 2 to 100 characters.',
        },
      );
    }
    final limit = int.tryParse(query['limit']?.first ?? '') ?? 10;
    final comma = q.indexOf(',');
    final name = (comma < 0 ? q : q.substring(0, comma)).trim().toLowerCase();
    final qualifier = comma < 0 ? null : q.substring(comma + 1).trim().toLowerCase();
    int rank(String n) => n.toLowerCase() == name ? 0 : (n.toLowerCase().startsWith(name) ? 1 : 2);
    final hits = <(int, int, int, Map<String, Object?>)>[];
    if (qualifier == null) {
      for (final r in _regions) {
        if (r.name.toLowerCase().contains(name) || r.code.toLowerCase() == name) {
          hits.add((
            r.code.toLowerCase() == name ? 0 : rank(r.name),
            r.kind == 'country' ? 0 : 1,
            0,
            <String, Object?>{
              'kind': r.kind,
              'code': r.code,
              'name': r.name,
              'label': r.kind == 'country' ? r.name : '${r.name}, ${r.countryName}',
              'countryIso2': r.iso2,
              'countryName': r.countryName,
              'lon': r.lon,
              'lat': r.lat,
            },
          ));
        }
      }
    }
    for (final c in _cities) {
      if (!c.name.toLowerCase().contains(name)) {
        continue;
      }
      final admin = c.admin1 == null ? null : _region(c.admin1!);
      final country = _region(c.iso2)!;
      if (qualifier != null &&
          !<String?>[
            c.iso2.toLowerCase(),
            country.name.toLowerCase(),
            admin?.name.toLowerCase(),
            admin?.code.toLowerCase(),
            admin?.code.split('-').last.toLowerCase(),
          ].contains(qualifier)) {
        continue;
      }
      hits.add((
        rank(c.name),
        2,
        -c.population,
        <String, Object?>{
          'kind': 'place',
          'code': null,
          'name': c.name,
          'label': <String>[c.name, ?admin?.name, country.name].join(', '),
          'countryIso2': c.iso2,
          'countryName': country.name,
          'admin1': admin?.code,
          'admin1Name': admin?.name,
          'lon': c.lon,
          'lat': c.lat,
          'placeId': c.id,
          'population': c.population,
        },
      ));
    }
    hits.sort((a, b) {
      final m = a.$1.compareTo(b.$1);
      if (m != 0) {
        return m;
      }
      final k = a.$2.compareTo(b.$2);
      return k != 0 ? k : a.$3.compareTo(b.$3);
    });
    return (status: 200, body: <Object?>[for (final h in hits.take(limit)) h.$4]);
  }
  if (path.startsWith('/v1/reference/areas/')) {
    final code = Uri.decodeComponent(path.substring('/v1/reference/areas/'.length));
    final r = _region(code);
    if (r == null) {
      return (
        status: 404,
        body: <String, Object?>{'title': 'Not found', 'status': 404, 'code': 'NOT_FOUND', 'detail': 'No area $code.'},
      );
    }
    final b = r.box;
    return (
      status: 200,
      body: <String, Object?>{
        'kind': r.kind,
        'code': r.code,
        'name': r.name,
        'countryIso2': r.iso2,
        'countryName': r.countryName,
        'bbox': b,
        'geometry': <String, Object?>{
          'type': 'Polygon',
          'coordinates': <Object?>[
            <Object?>[
              <double>[b[0], b[1]],
              <double>[b[2], b[1]],
              <double>[b[2], b[3]],
              <double>[b[0], b[3]],
              <double>[b[0], b[1]],
            ],
          ],
        },
      },
    );
  }
  if (path == '/v1/reference/reverse') {
    final lon = double.tryParse(query['lon']?.first ?? '') ?? 0;
    final lat = double.tryParse(query['lat']?.first ?? '') ?? 0;
    _Region? country;
    _Region? admin;
    for (final r in _regions) {
      if (_inBox(r.box, lon, lat)) {
        if (r.kind == 'country') {
          country ??= r;
        } else {
          admin ??= r;
        }
      }
    }
    _City? nearest;
    var best = double.infinity;
    for (final c in _cities) {
      // Degrees are close enough to pick the nearest of four cities.
      final d = (c.lon - lon) * (c.lon - lon) + (c.lat - lat) * (c.lat - lat);
      if (d < best) {
        best = d;
        nearest = c;
      }
    }
    final km = nearest == null ? null : _km(lon, lat, nearest.lon, nearest.lat);
    return (
      status: 200,
      body: <String, Object?>{
        'iso2': country?.iso2,
        'admin1': admin?.code,
        'admin2': null,
        'sea': null,
        'countryName': country?.name,
        'admin1Name': admin?.name,
        'countyName': null,
        'near': nearest == null || km! > 300
            ? null
            : <String, Object?>{
                'geonameid': int.parse(nearest.id),
                'name': nearest.name,
                'iso2': nearest.iso2,
                'admin1': nearest.admin1,
                'distanceKm': (km * 10).round() / 10,
                'population': nearest.population,
                'text': km < 1 ? nearest.name : '${km.round()} km from ${nearest.name}',
              },
        'attribution': 'Preview reference data',
      },
    );
  }
  return null;
}

/// An equirectangular approximation of the distance in kilometers, close
/// enough for the preview's nearest-city answer.
double _km(double lon1, double lat1, double lon2, double lat2) {
  const kmPerDegree = 111.32;
  final meanLat = (lat1 + lat2) / 2 * math.pi / 180;
  final dx = (lon2 - lon1) * kmPerDegree * math.cos(meanLat);
  final dy = (lat2 - lat1) * kmPerDegree;
  return math.sqrt(dx * dx + dy * dy);
}
