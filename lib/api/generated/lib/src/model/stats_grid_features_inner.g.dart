// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_grid_features_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StatsGridFeaturesInnerTypeEnum _$statsGridFeaturesInnerTypeEnum_feature =
    const StatsGridFeaturesInnerTypeEnum._('feature');

StatsGridFeaturesInnerTypeEnum _$statsGridFeaturesInnerTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'feature':
      return _$statsGridFeaturesInnerTypeEnum_feature;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StatsGridFeaturesInnerTypeEnum>
    _$statsGridFeaturesInnerTypeEnumValues = BuiltSet<
        StatsGridFeaturesInnerTypeEnum>(const <StatsGridFeaturesInnerTypeEnum>[
  _$statsGridFeaturesInnerTypeEnum_feature,
]);

Serializer<StatsGridFeaturesInnerTypeEnum>
    _$statsGridFeaturesInnerTypeEnumSerializer =
    _$StatsGridFeaturesInnerTypeEnumSerializer();

class _$StatsGridFeaturesInnerTypeEnumSerializer
    implements PrimitiveSerializer<StatsGridFeaturesInnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'feature': 'Feature',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Feature': 'feature',
  };

  @override
  final Iterable<Type> types = const <Type>[StatsGridFeaturesInnerTypeEnum];
  @override
  final String wireName = 'StatsGridFeaturesInnerTypeEnum';

  @override
  Object serialize(
          Serializers serializers, StatsGridFeaturesInnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StatsGridFeaturesInnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StatsGridFeaturesInnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StatsGridFeaturesInner extends StatsGridFeaturesInner {
  @override
  final StatsGridFeaturesInnerTypeEnum type;
  @override
  final String? id;
  @override
  final Geometry geometry;
  @override
  final StatsGridFeaturesInnerProperties properties;

  factory _$StatsGridFeaturesInner(
          [void Function(StatsGridFeaturesInnerBuilder)? updates]) =>
      (StatsGridFeaturesInnerBuilder()..update(updates))._build();

  _$StatsGridFeaturesInner._(
      {required this.type,
      this.id,
      required this.geometry,
      required this.properties})
      : super._();
  @override
  StatsGridFeaturesInner rebuild(
          void Function(StatsGridFeaturesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsGridFeaturesInnerBuilder toBuilder() =>
      StatsGridFeaturesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsGridFeaturesInner &&
        type == other.type &&
        id == other.id &&
        geometry == other.geometry &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsGridFeaturesInner')
          ..add('type', type)
          ..add('id', id)
          ..add('geometry', geometry)
          ..add('properties', properties))
        .toString();
  }
}

class StatsGridFeaturesInnerBuilder
    implements Builder<StatsGridFeaturesInner, StatsGridFeaturesInnerBuilder> {
  _$StatsGridFeaturesInner? _$v;

  StatsGridFeaturesInnerTypeEnum? _type;
  StatsGridFeaturesInnerTypeEnum? get type => _$this._type;
  set type(StatsGridFeaturesInnerTypeEnum? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  StatsGridFeaturesInnerPropertiesBuilder? _properties;
  StatsGridFeaturesInnerPropertiesBuilder get properties =>
      _$this._properties ??= StatsGridFeaturesInnerPropertiesBuilder();
  set properties(StatsGridFeaturesInnerPropertiesBuilder? properties) =>
      _$this._properties = properties;

  StatsGridFeaturesInnerBuilder() {
    StatsGridFeaturesInner._defaults(this);
  }

  StatsGridFeaturesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _geometry = $v.geometry.toBuilder();
      _properties = $v.properties.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsGridFeaturesInner other) {
    _$v = other as _$StatsGridFeaturesInner;
  }

  @override
  void update(void Function(StatsGridFeaturesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsGridFeaturesInner build() => _build();

  _$StatsGridFeaturesInner _build() {
    _$StatsGridFeaturesInner _$result;
    try {
      _$result = _$v ??
          _$StatsGridFeaturesInner._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'StatsGridFeaturesInner', 'type'),
            id: id,
            geometry: geometry.build(),
            properties: properties.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        geometry.build();
        _$failedField = 'properties';
        properties.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StatsGridFeaturesInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
