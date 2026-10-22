// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GeometryTypeEnum _$geometryTypeEnum_point =
    const GeometryTypeEnum._('point');
const GeometryTypeEnum _$geometryTypeEnum_multiPoint =
    const GeometryTypeEnum._('multiPoint');
const GeometryTypeEnum _$geometryTypeEnum_lineString =
    const GeometryTypeEnum._('lineString');
const GeometryTypeEnum _$geometryTypeEnum_multiLineString =
    const GeometryTypeEnum._('multiLineString');
const GeometryTypeEnum _$geometryTypeEnum_polygon =
    const GeometryTypeEnum._('polygon');
const GeometryTypeEnum _$geometryTypeEnum_multiPolygon =
    const GeometryTypeEnum._('multiPolygon');
const GeometryTypeEnum _$geometryTypeEnum_geometryCollection =
    const GeometryTypeEnum._('geometryCollection');

GeometryTypeEnum _$geometryTypeEnumValueOf(String name) {
  switch (name) {
    case 'point':
      return _$geometryTypeEnum_point;
    case 'multiPoint':
      return _$geometryTypeEnum_multiPoint;
    case 'lineString':
      return _$geometryTypeEnum_lineString;
    case 'multiLineString':
      return _$geometryTypeEnum_multiLineString;
    case 'polygon':
      return _$geometryTypeEnum_polygon;
    case 'multiPolygon':
      return _$geometryTypeEnum_multiPolygon;
    case 'geometryCollection':
      return _$geometryTypeEnum_geometryCollection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GeometryTypeEnum> _$geometryTypeEnumValues =
    BuiltSet<GeometryTypeEnum>(const <GeometryTypeEnum>[
  _$geometryTypeEnum_point,
  _$geometryTypeEnum_multiPoint,
  _$geometryTypeEnum_lineString,
  _$geometryTypeEnum_multiLineString,
  _$geometryTypeEnum_polygon,
  _$geometryTypeEnum_multiPolygon,
  _$geometryTypeEnum_geometryCollection,
]);

Serializer<GeometryTypeEnum> _$geometryTypeEnumSerializer =
    _$GeometryTypeEnumSerializer();

class _$GeometryTypeEnumSerializer
    implements PrimitiveSerializer<GeometryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'point': 'Point',
    'multiPoint': 'MultiPoint',
    'lineString': 'LineString',
    'multiLineString': 'MultiLineString',
    'polygon': 'Polygon',
    'multiPolygon': 'MultiPolygon',
    'geometryCollection': 'GeometryCollection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Point': 'point',
    'MultiPoint': 'multiPoint',
    'LineString': 'lineString',
    'MultiLineString': 'multiLineString',
    'Polygon': 'polygon',
    'MultiPolygon': 'multiPolygon',
    'GeometryCollection': 'geometryCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[GeometryTypeEnum];
  @override
  final String wireName = 'GeometryTypeEnum';

  @override
  Object serialize(Serializers serializers, GeometryTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GeometryTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GeometryTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Geometry extends Geometry {
  @override
  final GeometryTypeEnum type;
  @override
  final BuiltList<JsonObject?>? coordinates;

  factory _$Geometry([void Function(GeometryBuilder)? updates]) =>
      (GeometryBuilder()..update(updates))._build();

  _$Geometry._({required this.type, this.coordinates}) : super._();
  @override
  Geometry rebuild(void Function(GeometryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeometryBuilder toBuilder() => GeometryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Geometry &&
        type == other.type &&
        coordinates == other.coordinates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, coordinates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Geometry')
          ..add('type', type)
          ..add('coordinates', coordinates))
        .toString();
  }
}

class GeometryBuilder implements Builder<Geometry, GeometryBuilder> {
  _$Geometry? _$v;

  GeometryTypeEnum? _type;
  GeometryTypeEnum? get type => _$this._type;
  set type(GeometryTypeEnum? type) => _$this._type = type;

  ListBuilder<JsonObject?>? _coordinates;
  ListBuilder<JsonObject?> get coordinates =>
      _$this._coordinates ??= ListBuilder<JsonObject?>();
  set coordinates(ListBuilder<JsonObject?>? coordinates) =>
      _$this._coordinates = coordinates;

  GeometryBuilder() {
    Geometry._defaults(this);
  }

  GeometryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _coordinates = $v.coordinates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Geometry other) {
    _$v = other as _$Geometry;
  }

  @override
  void update(void Function(GeometryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Geometry build() => _build();

  _$Geometry _build() {
    _$Geometry _$result;
    try {
      _$result = _$v ??
          _$Geometry._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Geometry', 'type'),
            coordinates: _coordinates?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coordinates';
        _coordinates?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Geometry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
