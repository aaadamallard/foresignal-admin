// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_geometry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpGeometryTypeEnum _$edpGeometryTypeEnum_point =
    const EdpGeometryTypeEnum._('point');
const EdpGeometryTypeEnum _$edpGeometryTypeEnum_multiPoint =
    const EdpGeometryTypeEnum._('multiPoint');
const EdpGeometryTypeEnum _$edpGeometryTypeEnum_lineString =
    const EdpGeometryTypeEnum._('lineString');
const EdpGeometryTypeEnum _$edpGeometryTypeEnum_multiLineString =
    const EdpGeometryTypeEnum._('multiLineString');
const EdpGeometryTypeEnum _$edpGeometryTypeEnum_polygon =
    const EdpGeometryTypeEnum._('polygon');
const EdpGeometryTypeEnum _$edpGeometryTypeEnum_multiPolygon =
    const EdpGeometryTypeEnum._('multiPolygon');

EdpGeometryTypeEnum _$edpGeometryTypeEnumValueOf(String name) {
  switch (name) {
    case 'point':
      return _$edpGeometryTypeEnum_point;
    case 'multiPoint':
      return _$edpGeometryTypeEnum_multiPoint;
    case 'lineString':
      return _$edpGeometryTypeEnum_lineString;
    case 'multiLineString':
      return _$edpGeometryTypeEnum_multiLineString;
    case 'polygon':
      return _$edpGeometryTypeEnum_polygon;
    case 'multiPolygon':
      return _$edpGeometryTypeEnum_multiPolygon;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpGeometryTypeEnum> _$edpGeometryTypeEnumValues =
    BuiltSet<EdpGeometryTypeEnum>(const <EdpGeometryTypeEnum>[
  _$edpGeometryTypeEnum_point,
  _$edpGeometryTypeEnum_multiPoint,
  _$edpGeometryTypeEnum_lineString,
  _$edpGeometryTypeEnum_multiLineString,
  _$edpGeometryTypeEnum_polygon,
  _$edpGeometryTypeEnum_multiPolygon,
]);

Serializer<EdpGeometryTypeEnum> _$edpGeometryTypeEnumSerializer =
    _$EdpGeometryTypeEnumSerializer();

class _$EdpGeometryTypeEnumSerializer
    implements PrimitiveSerializer<EdpGeometryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'point': 'Point',
    'multiPoint': 'MultiPoint',
    'lineString': 'LineString',
    'multiLineString': 'MultiLineString',
    'polygon': 'Polygon',
    'multiPolygon': 'MultiPolygon',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Point': 'point',
    'MultiPoint': 'multiPoint',
    'LineString': 'lineString',
    'MultiLineString': 'multiLineString',
    'Polygon': 'polygon',
    'MultiPolygon': 'multiPolygon',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpGeometryTypeEnum];
  @override
  final String wireName = 'EdpGeometryTypeEnum';

  @override
  Object serialize(Serializers serializers, EdpGeometryTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EdpGeometryTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EdpGeometryTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EdpGeometry extends EdpGeometry {
  @override
  final EdpGeometryTypeEnum type;
  @override
  final BuiltList<String> coordinates;

  factory _$EdpGeometry([void Function(EdpGeometryBuilder)? updates]) =>
      (EdpGeometryBuilder()..update(updates))._build();

  _$EdpGeometry._({required this.type, required this.coordinates}) : super._();
  @override
  EdpGeometry rebuild(void Function(EdpGeometryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpGeometryBuilder toBuilder() => EdpGeometryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpGeometry &&
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
    return (newBuiltValueToStringHelper(r'EdpGeometry')
          ..add('type', type)
          ..add('coordinates', coordinates))
        .toString();
  }
}

class EdpGeometryBuilder implements Builder<EdpGeometry, EdpGeometryBuilder> {
  _$EdpGeometry? _$v;

  EdpGeometryTypeEnum? _type;
  EdpGeometryTypeEnum? get type => _$this._type;
  set type(EdpGeometryTypeEnum? type) => _$this._type = type;

  ListBuilder<String>? _coordinates;
  ListBuilder<String> get coordinates =>
      _$this._coordinates ??= ListBuilder<String>();
  set coordinates(ListBuilder<String>? coordinates) =>
      _$this._coordinates = coordinates;

  EdpGeometryBuilder() {
    EdpGeometry._defaults(this);
  }

  EdpGeometryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _coordinates = $v.coordinates.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpGeometry other) {
    _$v = other as _$EdpGeometry;
  }

  @override
  void update(void Function(EdpGeometryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpGeometry build() => _build();

  _$EdpGeometry _build() {
    _$EdpGeometry _$result;
    try {
      _$result = _$v ??
          _$EdpGeometry._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'EdpGeometry', 'type'),
            coordinates: coordinates.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coordinates';
        coordinates.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EdpGeometry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
