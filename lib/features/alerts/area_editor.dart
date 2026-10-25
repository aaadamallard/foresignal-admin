import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart' show kPrimaryButton;
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_drafts.dart' show jsonObjectText;
import 'alert_area.dart';

/// The OpenStreetMap raster tiles the area map shows; keyless.
const String osmTileUrl = 'https://tile.openstreetmap.org/{z}/{x}/{y}.png';

/// The package name sent in the tile requests' User-Agent, as the
/// OpenStreetMap tile usage policy asks.
const String osmUserAgentPackage = 'com.foresignal.foresignal_admin';

/// Whether the area map loads OpenStreetMap tiles. Tests turn it off, so the
/// map draws the area on a plain background without network requests.
final areaMapTilesProvider = Provider<bool>((ref) => true);

/// The reference lookups behind the Area node: outlines of countries and
/// states, saved places, the place at a point and name search. It notifies
/// when a lookup lands.
class AreaLookup extends ChangeNotifier {
  /// Lookups over [dio].
  AreaLookup(this.dio);

  /// The backend client.
  final Dio dio;

  /// `ReferenceAreaOutline`s by region code (upper case).
  final Map<String, Map<String, Object?>> outlines = <String, Map<String, Object?>>{};

  /// Why an outline could not be read, by region code.
  final Map<String, Object> outlineErrors = <String, Object>{};

  final Set<String> _pending = <String>{};

  /// The saved places (`listPlaces`), once read.
  List<Map<String, Object?>>? places;

  /// Why the saved places could not be read.
  Object? placesError;

  bool _disposed = false;

  void _changed() {
    if (!_disposed) {
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  /// Reads the outline of region [code] unless it is read or being read.
  Future<void> outline(String code) async {
    final c = code.toUpperCase();
    if (outlines.containsKey(c) || !_pending.add(c)) {
      return;
    }
    outlineErrors.remove(c);
    try {
      outlines[c] = await jsonObjectCall(dio, 'GET', '/v1/reference/areas/${Uri.encodeComponent(c)}');
    } on Object catch (e) {
      outlineErrors[c] = e;
    } finally {
      _pending.remove(c);
      _changed();
    }
  }

  /// Reads the saved places unless they are read.
  Future<void> loadPlaces() async {
    if (places != null) {
      return;
    }
    placesError = null;
    try {
      final page = await jsonObjectCall(dio, 'GET', '/v1/places', query: <String, Object?>{'limit': 500});
      places = <Map<String, Object?>>[
        for (final p in (page['items'] as List<Object?>?) ?? const <Object?>[])
          if (p is Map) p.cast<String, Object?>(),
      ];
    } on Object catch (e) {
      placesError = e;
    }
    _changed();
  }

  /// The `RegionTags` at [p].
  Future<Map<String, Object?>> reverse(LatLng p) => jsonObjectCall(
    dio,
    'GET',
    '/v1/reference/reverse',
    query: <String, Object?>{'lon': p.longitude, 'lat': p.latitude},
  );

  /// The `ReferenceArea`s named like [q].
  Future<List<Map<String, Object?>>> search(String q) =>
      jsonArrayCall(dio, '/v1/reference/areas', query: <String, Object?>{'q': q, 'limit': 12});

  /// Fills in what the stored [area] does not say: the names of its regions
  /// and saved places, and whether its circle is a city (a center on a
  /// gazetteer place). True when [area] changed.
  Future<bool> resolve(AreaDraft area) async {
    var changed = false;
    for (final r in List<AreaRegion>.of(area.regions)) {
      await outline(r.code);
      final o = outlines[r.code.toUpperCase()];
      if (o != null && r.name == null) {
        final i = area.regions.indexOf(r);
        if (i >= 0) {
          area.regions[i] = AreaRegion(r.kind, r.code, name: regionLabel(o));
          changed = true;
        }
      }
    }
    if (area.savedPlaces.isNotEmpty) {
      await loadPlaces();
      for (var i = 0; i < area.savedPlaces.length; i++) {
        final s = area.savedPlaces[i];
        final p = places?.where((p) => p['id'] == s.id).firstOrNull;
        if (p != null && p['name'] is String && p['name'] != s.name) {
          area.savedPlaces[i] = SavedPlace(s.id, p['name']! as String);
          changed = true;
        }
      }
    }
    final center = area.center;
    if (area.mode == AreaMode.circle && center != null) {
      // A circle is a city when its center is exactly a gazetteer place's
      // point, as choosing the city by name stores it.
      try {
        final tags = await reverse(center);
        final near = tags['near'];
        if (near is Map && near['name'] is String) {
          final hits = await search(near['name']! as String);
          final hit = hits.where((h) => h['kind'] == 'place' && _samePoint(h, center)).firstOrNull;
          if (hit != null && area.mode == AreaMode.circle && area.center == center) {
            area
              ..mode = AreaMode.named
              ..chooseCity('${hit['label'] ?? hit['name']}', center);
            changed = true;
          }
        }
      } on Object {
        // Without the reference data the circle stays a circle.
      }
    }
    return changed;
  }
}

/// Whether `ReferenceArea` [hit] lies at [p], to the six decimals a rule
/// stores.
bool _samePoint(Map<String, Object?> hit, LatLng p) {
  final lon = hit['lon'];
  final lat = hit['lat'];
  return lon is num && lat is num && (lon - p.longitude).abs() < 1e-6 && (lat - p.latitude).abs() < 1e-6;
}

/// The name an outline reads as: `Texas, United States of America`.
String regionLabel(Map<String, Object?> outline) {
  final name = '${outline['name']}';
  final country = outline['countryName'];
  return outline['kind'] == 'admin1' && country is String ? '$name, $country' : name;
}

/// The name of the gazetteer place [near] of reverse-geocode [tags]:
/// `Austin, Texas`.
String cityLabel(Map<String, Object?> near, Map<String, Object?> tags) {
  final region = near['admin1'] != null && near['admin1'] == tags['admin1'] ? tags['admin1Name'] : tags['countryName'];
  return <Object?>[near['name'], region].whereType<String>().join(', ');
}

/// The vertex being dragged: shape or line [part] (`-1` for the one being
/// drawn) and [index] in it.
typedef _Grip = ({int part, int index});

/// The Area node's editor: the mode, the controls of that mode and the map
/// the area is drawn on. It edits [area] in place and calls [onChanged]
/// after each change.
class AreaEditor extends ConsumerStatefulWidget {
  /// Creates the editor of [area], with [lookup] for names and outlines.
  const AreaEditor({
    super.key,
    required this.area,
    required this.lookup,
    required this.onChanged,
    this.error,
    this.actions = const <Widget>[],
  });

  /// The area edited.
  final AreaDraft area;

  /// The reference lookups.
  final AreaLookup lookup;

  /// Called after each change to [area].
  final VoidCallback onChanged;

  /// The problem from the last save attempt, if any.
  final String? error;

  /// The node's buttons (Back, Next).
  final List<Widget> actions;

  @override
  ConsumerState<AreaEditor> createState() => _AreaEditorState();
}

class _AreaEditorState extends ConsumerState<AreaEditor> {
  final MapController _map = MapController();
  final TextEditingController _query = TextEditingController();
  final TextEditingController _radius = TextEditingController();
  final TextEditingController _halfWidth = TextEditingController();
  final TextEditingController _placeRadius = TextEditingController();

  bool _ready = false;
  bool _drawTool = true;

  Timer? _debounce;
  int _searchSerial = 0;
  bool _searching = false;
  List<Map<String, Object?>> _hits = const <Map<String, Object?>>[];
  Object? _searchError;

  LatLng? _herePoint;
  Map<String, Object?>? _here;
  Object? _hereError;

  Offset? _downAt;
  bool _moved = false;
  _Grip? _grip;
  LatLng? _boxStart;
  LatLng? _boxEnd;

  AreaDraft get _a => widget.area;

  @override
  void initState() {
    super.initState();
    _syncFields();
    for (final r in _a.regions) {
      widget.lookup.outline(r.code);
    }
    if (_a.mode == AreaMode.named) {
      widget.lookup.loadPlaces();
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    for (final c in <ChangeNotifier>[_query, _radius, _halfWidth, _placeRadius]) {
      c.dispose();
    }
    super.dispose();
  }

  void _syncFields() {
    _radius.text = _number(_a.radiusKm);
    _halfWidth.text = _number(_a.halfWidthKm);
    _placeRadius.text = _a.placeRadiusKm == null ? '' : _number(_a.placeRadiusKm!);
  }

  static String _number(double v) {
    final s = v.toStringAsFixed(v >= 100 ? 0 : (v >= 10 ? 1 : 3));
    return s.contains('.') ? s.replaceFirst(RegExp(r'\.?0+$'), '') : s;
  }

  void _change(VoidCallback f) {
    setState(f);
    widget.onChanged();
  }

  bool get _drawing => switch (_a.mode) {
    AreaMode.circle || AreaMode.polygon || AreaMode.box || AreaMode.route => true,
    AreaMode.named || AreaMode.none => false,
  };

  bool get _drawActive => _drawing && _drawTool;

  // ---- Modes ----

  void _setMode(AreaMode m) {
    _change(() {
      _a.mode = m;
      _grip = null;
      _boxStart = null;
      _boxEnd = null;
      _drawTool = true;
    });
    if (m == AreaMode.named) {
      widget.lookup.loadPlaces();
    }
    _fitSoon();
  }

  // ---- Named ----

  void _onQuery(String text) {
    _debounce?.cancel();
    final q = text.trim();
    if (q.length < 2) {
      setState(() {
        _hits = const <Map<String, Object?>>[];
        _searchError = null;
        _searching = false;
      });
      return;
    }
    _debounce = Timer(const Duration(milliseconds: 300), () => _search(q));
  }

  Future<void> _search(String q) async {
    final serial = ++_searchSerial;
    setState(() => _searching = true);
    try {
      final hits = await widget.lookup.search(q);
      if (mounted && serial == _searchSerial) {
        setState(() {
          _hits = hits;
          _searchError = null;
        });
      }
    } on Object catch (e) {
      if (mounted && serial == _searchSerial) {
        setState(() {
          _hits = const <Map<String, Object?>>[];
          _searchError = e;
        });
      }
    } finally {
      if (mounted && serial == _searchSerial) {
        setState(() => _searching = false);
      }
    }
  }

  void _pick(Map<String, Object?> hit) {
    final kind = hit['kind'];
    _change(() {
      if (kind == 'place') {
        _a.chooseCity(
          '${hit['label'] ?? hit['name']}',
          LatLng((hit['lat']! as num).toDouble(), (hit['lon']! as num).toDouble()),
        );
      } else {
        final code = '${hit['code']}';
        _a.addRegion(
          AreaRegion(
            kind == 'country' ? RegionKind.country : RegionKind.admin1,
            code,
            name: '${hit['label'] ?? hit['name']}',
          ),
        );
        widget.lookup.outline(code).then((_) => _fitSoon());
      }
      _query.clear();
      _hits = const <Map<String, Object?>>[];
    });
    _fitSoon();
  }

  Future<void> _lookHere(LatLng p) async {
    setState(() {
      _herePoint = p;
      _here = null;
      _hereError = null;
    });
    try {
      final tags = await widget.lookup.reverse(p);
      if (mounted && _herePoint == p) {
        setState(() => _here = tags);
      }
    } on Object catch (e) {
      if (mounted && _herePoint == p) {
        setState(() => _hereError = e);
      }
    }
  }

  // ---- Drawing ----

  /// The vertex of [parts] (and [current], as part -1) within 10 pixels of
  /// screen point [at].
  _Grip? _gripAt(Offset at, List<List<LatLng>> parts, List<LatLng> current) {
    if (!_ready) {
      return null;
    }
    final camera = _map.camera;
    _Grip? best;
    var bestD = 10.0;
    void consider(int part, List<LatLng> points) {
      for (var i = 0; i < points.length; i++) {
        final d = (camera.latLngToScreenOffset(points[i]) - at).distance;
        if (d <= bestD) {
          bestD = d;
          best = (part: part, index: i);
        }
      }
    }

    consider(-1, current);
    for (var p = 0; p < parts.length; p++) {
      consider(p, parts[p]);
    }
    return best;
  }

  void _moveGrip(_Grip g, LatLng to, List<List<LatLng>> parts, List<LatLng> current) {
    final points = g.part < 0 ? current : parts[g.part];
    if (g.index < points.length) {
      points[g.index] = to;
    }
  }

  void _onDown(PointerDownEvent e, LatLng p) {
    if (!_drawActive || e.buttons & kPrimaryButton == 0) {
      return;
    }
    _downAt = e.localPosition;
    _moved = false;
    _grip = null;
    switch (_a.mode) {
      case AreaMode.circle:
        // Pressing on the pin moves it; pressing elsewhere starts a new
        // circle there, sized by dragging.
        final c = _a.center;
        if (c != null && _ready && (_map.camera.latLngToScreenOffset(c) - e.localPosition).distance <= 12) {
          _grip = (part: -1, index: 0);
        }
      case AreaMode.box:
        _boxStart = p;
        _boxEnd = p;
      case AreaMode.polygon:
        _grip = _gripAt(e.localPosition, _a.shapes, _a.drawing);
      case AreaMode.route:
        _grip = _gripAt(e.localPosition, _a.lines, _a.drawingLine);
      case AreaMode.named || AreaMode.none:
        break;
    }
  }

  void _onMove(PointerMoveEvent e, LatLng p) {
    final down = _downAt;
    if (down == null || !_drawActive) {
      return;
    }
    if (!_moved && (e.localPosition - down).distance > 4) {
      _moved = true;
    }
    if (!_moved) {
      return;
    }
    final grip = _grip;
    switch (_a.mode) {
      case AreaMode.circle:
        _change(() {
          if (grip != null) {
            _a.center = p;
          } else {
            _a.center ??= p;
            final start = _map.camera.screenOffsetToLatLng(down);
            _a
              ..center = start
              ..radiusKm = distanceKm(start, p).clamp(minRadiusKm, maxRadiusKm);
            _radius.text = _number(_a.radiusKm);
          }
        });
      case AreaMode.box:
        setState(() => _boxEnd = p);
      case AreaMode.polygon:
        if (grip != null) {
          _change(() => _moveGrip(grip, p, _a.shapes, _a.drawing));
        }
      case AreaMode.route:
        if (grip != null) {
          _change(() => _moveGrip(grip, p, _a.lines, _a.drawingLine));
        }
      case AreaMode.named || AreaMode.none:
        break;
    }
  }

  void _onUp(PointerUpEvent e, LatLng p) {
    final down = _downAt;
    _downAt = null;
    if (down == null || !_drawActive) {
      return;
    }
    final grip = _grip;
    _grip = null;
    switch (_a.mode) {
      case AreaMode.circle:
        if (!_moved) {
          _change(() => _a.center = p);
        }
      case AreaMode.box:
        final start = _boxStart;
        final end = _boxEnd;
        _boxStart = null;
        _boxEnd = null;
        if (_moved && start != null && end != null && start.latitude != end.latitude && start.longitude != end.longitude) {
          _change(() => _a.shapes.add(boxRing(start, end)));
        } else {
          setState(() {});
        }
      case AreaMode.polygon:
        if (_moved || grip != null && grip.part >= 0) {
          return;
        }
        _change(() {
          if (grip != null && grip.index == 0 && _a.drawing.length >= 3) {
            _a.closeShape();
          } else if (grip == null || grip.index != _a.drawing.length - 1) {
            _a.drawing.add(p);
          }
        });
      case AreaMode.route:
        if (_moved || grip != null && grip.part >= 0) {
          return;
        }
        _change(() {
          if (grip != null && grip.index == _a.drawingLine.length - 1 && _a.drawingLine.length >= 2) {
            // A click on the last point finishes the line.
            _a.finishLine();
          } else if (grip == null) {
            _a.drawingLine.add(p);
          }
        });
      case AreaMode.named || AreaMode.none:
        break;
    }
  }

  void _onTap(TapPosition _, LatLng p) {
    if (_a.mode == AreaMode.named) {
      _lookHere(p);
    }
  }

  // ---- Camera ----

  /// The points the camera fits: the area's shapes, lines, circle and the
  /// outlines read so far.
  List<LatLng> _extent() {
    final points = <LatLng>[];
    void circle(LatLng c, double km) {
      const d = Distance();
      for (final bearing in <double>[0, 90, 180, 270]) {
        points.add(d.offset(c, km * 1000, bearing));
      }
    }

    switch (_a.mode) {
      case AreaMode.named:
        if (_a.isCity) {
          circle(_a.center!, _a.radiusKm);
        }
        for (final r in _a.regions) {
          final bbox = widget.lookup.outlines[r.code.toUpperCase()]?['bbox'];
          if (bbox is List && bbox.length == 4) {
            final b = <double>[for (final v in bbox) (v as num).toDouble()];
            points
              ..add(LatLng(b[1], b[0]))
              ..add(LatLng(b[3], b[2]));
          }
        }
        for (final s in _a.savedPlaces) {
          for (final g in _placeShapes(s.id)) {
            points.addAll(g);
          }
        }
      case AreaMode.circle:
        if (_a.center case final c?) {
          circle(c, _a.radiusKm);
        }
      case AreaMode.polygon || AreaMode.box:
        for (final s in _a.shapes) {
          points.addAll(s);
        }
        points.addAll(_a.drawing);
      case AreaMode.route:
        for (final l in _a.lines) {
          points.addAll(l);
        }
        points.addAll(_a.drawingLine);
      case AreaMode.none:
        break;
    }
    return points;
  }

  void _fitSoon() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _fit();
      }
    });
  }

  void _fit() {
    if (!_ready) {
      return;
    }
    final points = _extent();
    if (points.isEmpty) {
      return;
    }
    _map.fitCamera(
      CameraFit.coordinates(coordinates: points, padding: const EdgeInsets.all(36), maxZoom: 12, minZoom: 1),
    );
  }

  void _zoom(double by) {
    if (!_ready) {
      return;
    }
    final c = _map.camera;
    _map.move(c.center, (c.zoom + by).clamp(1, 18));
  }

  // ---- Build ----

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final error = widget.error;
    return SectionCard(
      key: const Key('builder.editor.area'),
      title: '2 · Area',
      subtitle: 'Where a record must be to fire. Records without a location never match an area.',
      actions: widget.actions,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              for (final m in AreaMode.values)
                ChoiceChip(
                  key: Key('builder.area.mode.${m.name}'),
                  label: Text(m.label),
                  tooltip: m.hint,
                  selected: _a.mode == m && _a.kept == null,
                  onSelected: _a.kept != null ? null : (_) => _setMode(m),
                ),
            ],
          ),
          const SizedBox(height: 12),
          if (_a.kept != null)
            _keptPanel(context)
          else ...<Widget>[
            _controls(context),
            const SizedBox(height: 12),
            _mapView(context),
          ],
          const SizedBox(height: 8),
          Text(
            _a.describe(),
            key: const Key('builder.area.summary'),
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          if (error != null)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                error,
                key: const Key('builder.area.error'),
                style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12),
              ),
            )
          else if (_a.problem() case final p? when _a.mode != AreaMode.none)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(p, key: const Key('builder.area.hint'), style: TextStyle(color: palette.muted, fontSize: 12)),
            ),
        ],
      ),
    );
  }

  Widget _keptPanel(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      StatusLabel(
        key: const Key('builder.area.kept'),
        label: '${_a.keptReason} It is kept as it is; edit it in the full rule form, or replace it here.',
        tone: StatusTone.info,
      ),
      const SizedBox(height: 8),
      SelectableText(
        jsonObjectPreview(_a.kept!),
        style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
      ),
      const SizedBox(height: 8),
      Align(
        alignment: Alignment.centerLeft,
        child: TextButton.icon(
          key: const Key('builder.area.replace'),
          onPressed: () => _change(() {
            _a
              ..kept = null
              ..keptReason = null
              ..mode = AreaMode.none;
          }),
          icon: const Icon(Icons.edit_location_alt_outlined, size: 18),
          label: const Text('Replace It'),
        ),
      ),
    ],
  );

  Widget _controls(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return switch (_a.mode) {
      AreaMode.none => Text(
        'No area: the rule fires on matching records anywhere, and on records without a location.',
        style: TextStyle(color: muted),
      ),
      AreaMode.named => _namedControls(context),
      AreaMode.circle => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _drawBar(context, 'Click to drop the pin, or press and drag out the radius. Drag the pin to move it.'),
          const SizedBox(height: 8),
          _radiusField(context, 'builder.area.radius', 'Radius', _radius, (v) => _a.radiusKm = v),
        ],
      ),
      AreaMode.polygon => _drawBar(
        context,
        'Click the corners; click the first corner or Close Shape to finish. Drag a corner to move it.',
        extra: <Widget>[
          OutlinedButton(
            key: const Key('builder.area.close'),
            onPressed: _a.drawing.length >= 3 ? () => _change(_a.closeShape) : null,
            child: const Text('Close Shape'),
          ),
        ],
      ),
      AreaMode.box => _drawBar(context, 'Press and drag to draw a box. Draw more to cover more places.'),
      AreaMode.route => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _drawBar(
            context,
            'Click the points of the route; click the last point or Finish Line to end it. Drag a point to move it.',
            extra: <Widget>[
              OutlinedButton(
                key: const Key('builder.area.finish'),
                onPressed: _a.drawingLine.length >= 2 ? () => _change(_a.finishLine) : null,
                child: const Text('Finish Line'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _radiusField(
            context,
            'builder.area.halfWidth',
            'Width either side',
            _halfWidth,
            (v) => _a.halfWidthKm = v,
          ),
        ],
      ),
    };
  }

  Widget _drawBar(BuildContext context, String how, {List<Widget> extra = const <Widget>[]}) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Text(how, style: TextStyle(color: AdminPalette.of(context).muted)),
      const SizedBox(height: 8),
      Wrap(
        spacing: 8,
        runSpacing: 8,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          SegmentedButton<bool>(
            key: const Key('builder.area.tool'),
            segments: const <ButtonSegment<bool>>[
              ButtonSegment<bool>(
                value: true,
                icon: Icon(Icons.draw_outlined, size: 18),
                label: Text('Draw', key: Key('builder.area.tool.draw')),
              ),
              ButtonSegment<bool>(
                value: false,
                icon: Icon(Icons.pan_tool_outlined, size: 18),
                label: Text('Move Map', key: Key('builder.area.tool.move')),
              ),
            ],
            selected: <bool>{_drawTool},
            onSelectionChanged: (s) => setState(() => _drawTool = s.first),
          ),
          ...extra,
          OutlinedButton.icon(
            key: const Key('builder.area.undo'),
            onPressed: () => _change(() => _a.undo()),
            icon: const Icon(Icons.undo, size: 18),
            label: const Text('Undo'),
          ),
          TextButton(
            key: const Key('builder.area.clear'),
            onPressed: () => _change(() {
              switch (_a.mode) {
                case AreaMode.circle:
                  _a.center = null;
                case AreaMode.polygon || AreaMode.box:
                  _a
                    ..shapes.clear()
                    ..drawing.clear();
                case AreaMode.route:
                  _a
                    ..lines.clear()
                    ..drawingLine.clear();
                case AreaMode.named || AreaMode.none:
                  break;
              }
            }),
            child: const Text('Clear'),
          ),
        ],
      ),
    ],
  );

  Widget _radiusField(
    BuildContext context,
    String key,
    String label,
    TextEditingController controller,
    void Function(double) set, {
    bool optional = false,
  }) {
    final v = double.tryParse(controller.text.trim());
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 320,
        child: TextField(
          key: Key(key),
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            labelText: label,
            suffixText: 'km',
            isDense: true,
            helperText: v == null ? (optional ? 'Empty: the places\' own areas' : 'A number of kilometers') : distanceText(v),
          ),
          onChanged: (t) {
            final n = double.tryParse(t.trim());
            _change(() {
              if (n != null) {
                set(n);
              } else if (optional && t.trim().isEmpty) {
                _a.placeRadiusKm = null;
              }
            });
          },
        ),
      ),
    );
  }

  Widget _namedControls(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    final lookup = widget.lookup;
    final places = lookup.places ?? const <Map<String, Object?>>[];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(
          width: 520,
          child: TextField(
            key: const Key('builder.area.search'),
            controller: _query,
            decoration: InputDecoration(
              labelText: 'Find a country, state or city',
              hintText: 'Texas, Japan, Austin, Houston, TX',
              isDense: true,
              prefixIcon: const Icon(Icons.search, size: 18),
              suffixIcon: _searching
                  ? const Padding(
                      padding: EdgeInsets.all(10),
                      child: SizedBox.square(dimension: 14, child: CircularProgressIndicator(strokeWidth: 2)),
                    )
                  : null,
            ),
            onChanged: _onQuery,
          ),
        ),
        if (_searchError case final e?)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              'Search failed: ${e is ApiException ? e.message : e}',
              key: const Key('builder.area.search.error'),
              style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12),
            ),
          ),
        if (_hits.isNotEmpty)
          Card(
            margin: const EdgeInsets.only(top: 4),
            child: Column(
              children: <Widget>[
                for (var i = 0; i < _hits.length; i++)
                  ListTile(
                    key: Key('builder.area.hit.$i'),
                    dense: true,
                    leading: Icon(switch (_hits[i]['kind']) {
                      'country' => Icons.flag_outlined,
                      'admin1' => Icons.map_outlined,
                      _ => Icons.location_city_outlined,
                    }, size: 18),
                    title: Text('${_hits[i]['label'] ?? _hits[i]['name']}'),
                    subtitle: Text(switch (_hits[i]['kind']) {
                      'country' => 'Country · ${_hits[i]['code']}',
                      'admin1' => 'State or province · ${_hits[i]['code']}',
                      _ => 'City · a circle around it',
                    }, style: TextStyle(color: muted, fontSize: 12)),
                    onTap: () => _pick(_hits[i]),
                  ),
              ],
            ),
          )
        else if (!_searching && _query.text.trim().length >= 2 && _searchError == null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text('Nothing by that name.', style: TextStyle(color: muted, fontSize: 12)),
          ),
        const SizedBox(height: 10),
        if (_a.regions.isNotEmpty || _a.isCity)
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              for (final r in _a.regions)
                InputChip(
                  key: Key('builder.area.region.${r.code}'),
                  avatar: Icon(r.kind == RegionKind.country ? Icons.flag_outlined : Icons.map_outlined, size: 16),
                  label: Text(r.label),
                  onDeleted: () => _change(() => _a.regions.remove(r)),
                ),
              if (_a.isCity)
                InputChip(
                  key: const Key('builder.area.city'),
                  avatar: const Icon(Icons.location_city_outlined, size: 16),
                  label: Text(_a.cityName!),
                  onDeleted: () => _change(() {
                    _a
                      ..cityName = null
                      ..center = null;
                  }),
                ),
            ],
          ),
        if (_a.regions.length > 1)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text('A record in any of them matches.', style: TextStyle(color: muted, fontSize: 12)),
          ),
        if (_a.isCity) ...<Widget>[
          const SizedBox(height: 8),
          _radiusField(context, 'builder.area.radius', 'Distance around the city', _radius, (v) => _a.radiusKm = v),
        ],
        const SizedBox(height: 12),
        Text('Saved places', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 4),
        if (lookup.placesError case final e?)
          Text(
            'Saved places could not be read: ${e is ApiException ? e.message : e}',
            style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12),
          )
        else if (lookup.places == null)
          Text('Reading saved places…', style: TextStyle(color: muted, fontSize: 12))
        else if (places.isEmpty)
          Text('No saved places. Add them on the Places page.', style: TextStyle(color: muted, fontSize: 12))
        else
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              for (final p in places)
                FilterChip(
                  key: Key('builder.area.place.${p['id']}'),
                  label: Text('${p['name'] ?? p['id']}'),
                  selected: _a.savedPlaces.any((s) => s.id == p['id']),
                  onSelected: (on) {
                    _change(() {
                      if (on) {
                        _a.addSavedPlace(SavedPlace('${p['id']}', '${p['name'] ?? p['id']}'));
                      } else {
                        _a.savedPlaces.removeWhere((s) => s.id == p['id']);
                      }
                    });
                    _fitSoon();
                  },
                ),
            ],
          ),
        if (_a.savedPlaces.isNotEmpty) ...<Widget>[
          const SizedBox(height: 8),
          _radiusField(
            context,
            'builder.area.placeRadius',
            'Distance around the places',
            _placeRadius,
            (v) => _a.placeRadiusKm = v,
            optional: true,
          ),
        ],
        const SizedBox(height: 8),
        Text(
          'One kind at a time: countries and states together, or one city, or saved places. Click the map to see '
          'what is there.',
          style: TextStyle(color: muted, fontSize: 12),
        ),
        if (_herePoint != null) _herePanel(context),
      ],
    );
  }

  Widget _herePanel(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    final tags = _here;
    final error = _hereError;
    final p = _herePoint!;
    final near = tags?['near'];
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Wrap(
        key: const Key('builder.area.here'),
        spacing: 8,
        runSpacing: 8,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          Text('At ${coordinateText(p)}:', style: TextStyle(color: muted)),
          if (error != null)
            Text(
              'Not looked up: ${error is ApiException ? error.message : error}',
              style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12),
            )
          else if (tags == null)
            const SizedBox.square(dimension: 14, child: CircularProgressIndicator(strokeWidth: 2))
          else ...<Widget>[
            if (tags['admin1'] case final String code)
              ActionChip(
                key: const Key('builder.area.here.admin1'),
                avatar: const Icon(Icons.add, size: 16),
                label: Text('${tags['admin1Name'] ?? code}'),
                onPressed: () => _pick(<String, Object?>{
                  'kind': 'admin1',
                  'code': code,
                  'label': <Object?>[tags['admin1Name'], tags['countryName']].whereType<String>().join(', '),
                }),
              ),
            if (tags['iso2'] case final String iso2)
              ActionChip(
                key: const Key('builder.area.here.country'),
                avatar: const Icon(Icons.add, size: 16),
                label: Text('${tags['countryName'] ?? iso2}'),
                onPressed: () =>
                    _pick(<String, Object?>{'kind': 'country', 'code': iso2, 'label': tags['countryName'] ?? iso2}),
              ),
            if (near is Map && near['name'] != null)
              ActionChip(
                key: const Key('builder.area.here.city'),
                avatar: const Icon(Icons.location_city_outlined, size: 16),
                label: Text('${near['name']}'),
                onPressed: () async {
                  // The city's own point, not the click.
                  try {
                    final hits = await widget.lookup.search('${near['name']}');
                    final hit = hits
                        .where(
                          (h) =>
                              h['kind'] == 'place' &&
                              h['name'] == near['name'] &&
                              h['countryIso2'] == near['iso2'] &&
                              (near['admin1'] == null || h['admin1'] == near['admin1']),
                        )
                        .firstOrNull;
                    if (mounted) {
                      _pick(
                        hit ??
                            <String, Object?>{
                              'kind': 'place',
                              'label': cityLabel(near.cast<String, Object?>(), tags),
                              'lat': p.latitude,
                              'lon': p.longitude,
                            },
                      );
                    }
                  } on Object catch (e) {
                    if (mounted) {
                      setState(() => _hereError = e);
                    }
                  }
                },
              ),
            if (tags['iso2'] == null && tags['admin1'] == null && near == null)
              Text('No country or state here.', style: TextStyle(color: muted, fontSize: 12)),
          ],
        ],
      ),
    );
  }

  /// The shapes saved place [id] covers, as outer rings, for drawing and
  /// fitting: its stored area, or a circle around its point.
  List<List<LatLng>> _placeShapes(String id) {
    final place = widget.lookup.places?.where((p) => p['id'] == id).firstOrNull;
    if (place == null) {
      return const <List<LatLng>>[];
    }
    final area = place['area'];
    if (area is Map) {
      return geoJsonRings(area.cast<Object?, Object?>()).map((r) => r.first).toList();
    }
    final geometry = place['geometry'];
    if (geometry is Map && geometry['type'] == 'Point') {
      final c = geometry['coordinates'];
      if (c is List && c.length >= 2 && c[0] is num && c[1] is num) {
        final center = LatLng((c[1]! as num).toDouble(), (c[0]! as num).toDouble());
        final km = _a.placeRadiusKm ?? (place['radiusKm'] as num?)?.toDouble() ?? 1;
        return <List<LatLng>>[circleRing(center, km)];
      }
    }
    return const <List<LatLng>>[];
  }

  Widget _mapView(BuildContext context) {
    final palette = AdminPalette.of(context);
    final tiles = ref.watch(areaMapTilesProvider);
    final fill = palette.primary.withValues(alpha: 0.18);
    final edge = palette.primary;
    final pending = palette.warning;
    final polygons = <Polygon>[];
    final circles = <CircleMarker>[];
    final lines = <Polyline>[];
    final markers = <Marker>[];

    Marker dot(LatLng p, Color color, {double size = 12, Key? key}) => Marker(
      key: key,
      point: p,
      width: size,
      height: size,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2),
        ),
      ),
    );

    switch (_a.mode) {
      case AreaMode.named:
        for (final r in _a.regions) {
          final o = widget.lookup.outlines[r.code.toUpperCase()];
          final geometry = o?['geometry'];
          if (geometry is Map) {
            for (final rings in geoJsonRings(geometry.cast<Object?, Object?>())) {
              polygons.add(
                Polygon(
                  points: rings.first,
                  holePointsList: rings.length > 1 ? rings.sublist(1) : null,
                  color: fill,
                  borderStrokeWidth: 2,
                  borderColor: edge,
                ),
              );
            }
          }
        }
        if (_a.isCity) {
          circles.add(
            CircleMarker(
              point: _a.center!,
              radius: _a.radiusKm * 1000,
              useRadiusInMeter: true,
              color: fill,
              borderStrokeWidth: 2,
              borderColor: edge,
            ),
          );
          markers.add(dot(_a.center!, edge));
        }
        for (final s in _a.savedPlaces) {
          for (final ring in _placeShapes(s.id)) {
            polygons.add(Polygon(points: ring, color: fill, borderStrokeWidth: 2, borderColor: edge));
          }
        }
        if (_herePoint case final h?) {
          markers.add(dot(h, pending, size: 10));
        }
      case AreaMode.circle:
        if (_a.center case final c?) {
          circles.add(
            CircleMarker(
              point: c,
              radius: _a.radiusKm * 1000,
              useRadiusInMeter: true,
              color: fill,
              borderStrokeWidth: 2,
              borderColor: edge,
            ),
          );
          markers.add(dot(c, edge, size: 16, key: const Key('builder.area.pin')));
        }
      case AreaMode.polygon || AreaMode.box:
        for (final s in _a.shapes) {
          polygons.add(Polygon(points: s, color: fill, borderStrokeWidth: 2, borderColor: edge));
          if (_a.mode == AreaMode.polygon) {
            markers.addAll(s.map((p) => dot(p, edge, size: 10)));
          }
        }
        if (_a.drawing.isNotEmpty) {
          lines.add(Polyline(points: _a.drawing, strokeWidth: 2, color: pending));
          for (var i = 0; i < _a.drawing.length; i++) {
            markers.add(dot(_a.drawing[i], pending, size: i == 0 ? 14 : 10));
          }
        }
        if (_boxStart != null && _boxEnd != null) {
          polygons.add(
            Polygon(
              points: boxRing(_boxStart!, _boxEnd!),
              color: pending.withValues(alpha: 0.15),
              borderStrokeWidth: 2,
              borderColor: pending,
            ),
          );
        }
      case AreaMode.route:
        for (final l in _a.lines) {
          lines
            ..add(
              Polyline(
                points: l,
                strokeWidth: _a.halfWidthKm * 2000,
                useStrokeWidthInMeter: true,
                color: fill,
                strokeCap: StrokeCap.round,
              ),
            )
            ..add(Polyline(points: l, strokeWidth: 2, color: edge));
          markers.addAll(l.map((p) => dot(p, edge, size: 10)));
        }
        if (_a.drawingLine.isNotEmpty) {
          lines.add(Polyline(points: _a.drawingLine, strokeWidth: 2, color: pending));
          markers.addAll(_a.drawingLine.map((p) => dot(p, pending, size: 10)));
        }
      case AreaMode.none:
        break;
    }

    final extent = _extent();
    const flagsDrawing =
        InteractiveFlag.all &
        ~InteractiveFlag.drag &
        ~InteractiveFlag.flingAnimation &
        ~InteractiveFlag.doubleTapZoom &
        ~InteractiveFlag.doubleTapDragZoom &
        ~InteractiveFlag.rotate;
    const flagsMoving = InteractiveFlag.all & ~InteractiveFlag.rotate;
    // Keyed so the map keeps its state (and its controller) when the
    // controls above it change kind with the mode.
    return Column(
      key: const ValueKey<String>('builder.area.mapView'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                _drawActive ? 'Drawing: the map does not pan. Use Move Map to pan.' : 'Drag to pan; scroll to zoom.',
                style: TextStyle(color: palette.muted, fontSize: 12),
              ),
            ),
            IconButton(
              key: const Key('builder.area.zoomIn'),
              tooltip: 'Zoom in',
              onPressed: () => _zoom(1),
              icon: const Icon(Icons.add),
            ),
            IconButton(
              key: const Key('builder.area.zoomOut'),
              tooltip: 'Zoom out',
              onPressed: () => _zoom(-1),
              icon: const Icon(Icons.remove),
            ),
            IconButton(
              key: const Key('builder.area.fit'),
              tooltip: 'Fit the area',
              onPressed: extent.isEmpty ? null : _fit,
              icon: const Icon(Icons.fit_screen_outlined),
            ),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: DecoratedBox(
            decoration: BoxDecoration(border: Border.all(color: palette.border), color: const Color(0xFFDDE3EA)),
            child: SizedBox(
              key: const Key('builder.area.map'),
              height: 460,
              child: MouseRegion(
                cursor: _drawActive ? SystemMouseCursors.precise : SystemMouseCursors.grab,
                child: FlutterMap(
                  mapController: _map,
                  options: MapOptions(
                    initialCenter: const LatLng(25, 0),
                    initialZoom: 1.6,
                    minZoom: 1,
                    maxZoom: 18,
                    initialCameraFit: extent.isEmpty
                        ? null
                        : CameraFit.coordinates(
                            coordinates: extent,
                            padding: const EdgeInsets.all(36),
                            maxZoom: 12,
                            minZoom: 1,
                          ),
                    interactionOptions: InteractionOptions(flags: _drawActive ? flagsDrawing : flagsMoving),
                    onMapReady: () => _ready = true,
                    onTap: _onTap,
                    onPointerDown: _onDown,
                    onPointerMove: _onMove,
                    onPointerUp: _onUp,
                  ),
                  children: <Widget>[
                    if (tiles)
                      TileLayer(
                        urlTemplate: osmTileUrl,
                        userAgentPackageName: osmUserAgentPackage,
                        maxNativeZoom: 19,
                      ),
                    PolygonLayer(polygons: polygons),
                    CircleLayer(circles: circles),
                    PolylineLayer(polylines: lines),
                    MarkerLayer(markers: markers),
                    const SimpleAttributionWidget(source: Text('OpenStreetMap contributors')),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// The rings of a GeoJSON Polygon or MultiPolygon: per polygon, its outer
/// ring then its holes.
List<List<List<LatLng>>> geoJsonRings(Map<Object?, Object?> geometry) {
  final coordinates = geometry['coordinates'];
  if (coordinates is! List) {
    return const <List<List<LatLng>>>[];
  }
  final polygons = switch (geometry['type']) {
    'Polygon' => <Object?>[coordinates],
    'MultiPolygon' => coordinates,
    _ => const <Object?>[],
  };
  final out = <List<List<LatLng>>>[];
  for (final polygon in polygons) {
    if (polygon is! List) {
      continue;
    }
    final rings = <List<LatLng>>[];
    for (final ring in polygon) {
      if (ring is! List) {
        continue;
      }
      rings.add(<LatLng>[
        for (final p in ring)
          if (p is List && p.length >= 2 && p[0] is num && p[1] is num)
            LatLng((p[1]! as num).toDouble(), (p[0]! as num).toDouble()),
      ]);
    }
    if (rings.isNotEmpty && rings.first.length >= 3) {
      out.add(rings);
    }
  }
  return out;
}

/// A 48-point ring of radius [km] around [center].
List<LatLng> circleRing(LatLng center, double km) {
  const d = Distance();
  return <LatLng>[for (var i = 0; i < 48; i++) d.offset(center, km * 1000, i * 7.5)];
}

/// [json] as one line of JSON, for showing a kept area.
String jsonObjectPreview(Map<String, Object?> json) {
  final text = jsonObjectText(json).replaceAll(RegExp(r'\s+'), ' ');
  return text.length > 600 ? '${text.substring(0, 600)}…' : text;
}
