// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'normalized_record_preview_geometry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NormalizedRecordPreviewGeometryTypeEnum
_$normalizedRecordPreviewGeometryTypeEnum_point =
    const NormalizedRecordPreviewGeometryTypeEnum._('point');
const NormalizedRecordPreviewGeometryTypeEnum
_$normalizedRecordPreviewGeometryTypeEnum_multiPoint =
    const NormalizedRecordPreviewGeometryTypeEnum._('multiPoint');
const NormalizedRecordPreviewGeometryTypeEnum
_$normalizedRecordPreviewGeometryTypeEnum_lineString =
    const NormalizedRecordPreviewGeometryTypeEnum._('lineString');
const NormalizedRecordPreviewGeometryTypeEnum
_$normalizedRecordPreviewGeometryTypeEnum_multiLineString =
    const NormalizedRecordPreviewGeometryTypeEnum._('multiLineString');
const NormalizedRecordPreviewGeometryTypeEnum
_$normalizedRecordPreviewGeometryTypeEnum_polygon =
    const NormalizedRecordPreviewGeometryTypeEnum._('polygon');
const NormalizedRecordPreviewGeometryTypeEnum
_$normalizedRecordPreviewGeometryTypeEnum_multiPolygon =
    const NormalizedRecordPreviewGeometryTypeEnum._('multiPolygon');
const NormalizedRecordPreviewGeometryTypeEnum
_$normalizedRecordPreviewGeometryTypeEnum_geometryCollection =
    const NormalizedRecordPreviewGeometryTypeEnum._('geometryCollection');
const NormalizedRecordPreviewGeometryTypeEnum
_$normalizedRecordPreviewGeometryTypeEnum_unknownDefaultOpenApi =
    const NormalizedRecordPreviewGeometryTypeEnum._('unknownDefaultOpenApi');

NormalizedRecordPreviewGeometryTypeEnum
_$normalizedRecordPreviewGeometryTypeEnumValueOf(String name) {
  switch (name) {
    case 'point':
      return _$normalizedRecordPreviewGeometryTypeEnum_point;
    case 'multiPoint':
      return _$normalizedRecordPreviewGeometryTypeEnum_multiPoint;
    case 'lineString':
      return _$normalizedRecordPreviewGeometryTypeEnum_lineString;
    case 'multiLineString':
      return _$normalizedRecordPreviewGeometryTypeEnum_multiLineString;
    case 'polygon':
      return _$normalizedRecordPreviewGeometryTypeEnum_polygon;
    case 'multiPolygon':
      return _$normalizedRecordPreviewGeometryTypeEnum_multiPolygon;
    case 'geometryCollection':
      return _$normalizedRecordPreviewGeometryTypeEnum_geometryCollection;
    case 'unknownDefaultOpenApi':
      return _$normalizedRecordPreviewGeometryTypeEnum_unknownDefaultOpenApi;
    default:
      return _$normalizedRecordPreviewGeometryTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NormalizedRecordPreviewGeometryTypeEnum>
_$normalizedRecordPreviewGeometryTypeEnumValues =
    BuiltSet<NormalizedRecordPreviewGeometryTypeEnum>(
      const <NormalizedRecordPreviewGeometryTypeEnum>[
        _$normalizedRecordPreviewGeometryTypeEnum_point,
        _$normalizedRecordPreviewGeometryTypeEnum_multiPoint,
        _$normalizedRecordPreviewGeometryTypeEnum_lineString,
        _$normalizedRecordPreviewGeometryTypeEnum_multiLineString,
        _$normalizedRecordPreviewGeometryTypeEnum_polygon,
        _$normalizedRecordPreviewGeometryTypeEnum_multiPolygon,
        _$normalizedRecordPreviewGeometryTypeEnum_geometryCollection,
        _$normalizedRecordPreviewGeometryTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<NormalizedRecordPreviewGeometryTypeEnum>
_$normalizedRecordPreviewGeometryTypeEnumSerializer =
    _$NormalizedRecordPreviewGeometryTypeEnumSerializer();

class _$NormalizedRecordPreviewGeometryTypeEnumSerializer
    implements PrimitiveSerializer<NormalizedRecordPreviewGeometryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'point': 'Point',
    'multiPoint': 'MultiPoint',
    'lineString': 'LineString',
    'multiLineString': 'MultiLineString',
    'polygon': 'Polygon',
    'multiPolygon': 'MultiPolygon',
    'geometryCollection': 'GeometryCollection',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Point': 'point',
    'MultiPoint': 'multiPoint',
    'LineString': 'lineString',
    'MultiLineString': 'multiLineString',
    'Polygon': 'polygon',
    'MultiPolygon': 'multiPolygon',
    'GeometryCollection': 'geometryCollection',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    NormalizedRecordPreviewGeometryTypeEnum,
  ];
  @override
  final String wireName = 'NormalizedRecordPreviewGeometryTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    NormalizedRecordPreviewGeometryTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NormalizedRecordPreviewGeometryTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NormalizedRecordPreviewGeometryTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NormalizedRecordPreviewGeometry
    extends NormalizedRecordPreviewGeometry {
  @override
  final NormalizedRecordPreviewGeometryTypeEnum type;
  @override
  final BuiltList<JsonObject?>? coordinates;

  factory _$NormalizedRecordPreviewGeometry([
    void Function(NormalizedRecordPreviewGeometryBuilder)? updates,
  ]) => (NormalizedRecordPreviewGeometryBuilder()..update(updates))._build();

  _$NormalizedRecordPreviewGeometry._({required this.type, this.coordinates})
    : super._();
  @override
  NormalizedRecordPreviewGeometry rebuild(
    void Function(NormalizedRecordPreviewGeometryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NormalizedRecordPreviewGeometryBuilder toBuilder() =>
      NormalizedRecordPreviewGeometryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NormalizedRecordPreviewGeometry &&
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
    return (newBuiltValueToStringHelper(r'NormalizedRecordPreviewGeometry')
          ..add('type', type)
          ..add('coordinates', coordinates))
        .toString();
  }
}

class NormalizedRecordPreviewGeometryBuilder
    implements
        Builder<
          NormalizedRecordPreviewGeometry,
          NormalizedRecordPreviewGeometryBuilder
        > {
  _$NormalizedRecordPreviewGeometry? _$v;

  NormalizedRecordPreviewGeometryTypeEnum? _type;
  NormalizedRecordPreviewGeometryTypeEnum? get type => _$this._type;
  set type(NormalizedRecordPreviewGeometryTypeEnum? type) =>
      _$this._type = type;

  ListBuilder<JsonObject?>? _coordinates;
  ListBuilder<JsonObject?> get coordinates =>
      _$this._coordinates ??= ListBuilder<JsonObject?>();
  set coordinates(ListBuilder<JsonObject?>? coordinates) =>
      _$this._coordinates = coordinates;

  NormalizedRecordPreviewGeometryBuilder() {
    NormalizedRecordPreviewGeometry._defaults(this);
  }

  NormalizedRecordPreviewGeometryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _coordinates = $v.coordinates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NormalizedRecordPreviewGeometry other) {
    _$v = other as _$NormalizedRecordPreviewGeometry;
  }

  @override
  void update(void Function(NormalizedRecordPreviewGeometryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NormalizedRecordPreviewGeometry build() => _build();

  _$NormalizedRecordPreviewGeometry _build() {
    _$NormalizedRecordPreviewGeometry _$result;
    try {
      _$result =
          _$v ??
          _$NormalizedRecordPreviewGeometry._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'NormalizedRecordPreviewGeometry',
              'type',
            ),
            coordinates: _coordinates?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coordinates';
        _coordinates?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NormalizedRecordPreviewGeometry',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
