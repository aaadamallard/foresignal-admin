// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FeatureTypeEnum _$featureTypeEnum_feature = const FeatureTypeEnum._(
  'feature',
);

FeatureTypeEnum _$featureTypeEnumValueOf(String name) {
  switch (name) {
    case 'feature':
      return _$featureTypeEnum_feature;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FeatureTypeEnum> _$featureTypeEnumValues =
    BuiltSet<FeatureTypeEnum>(const <FeatureTypeEnum>[
      _$featureTypeEnum_feature,
    ]);

Serializer<FeatureTypeEnum> _$featureTypeEnumSerializer =
    _$FeatureTypeEnumSerializer();

class _$FeatureTypeEnumSerializer
    implements PrimitiveSerializer<FeatureTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'feature': 'Feature',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Feature': 'feature',
  };

  @override
  final Iterable<Type> types = const <Type>[FeatureTypeEnum];
  @override
  final String wireName = 'FeatureTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    FeatureTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FeatureTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FeatureTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Feature extends Feature {
  @override
  final FeatureTypeEnum type;
  @override
  final String? id;
  @override
  final Geometry? geometry;
  @override
  final FeatureProperties properties;

  factory _$Feature([void Function(FeatureBuilder)? updates]) =>
      (FeatureBuilder()..update(updates))._build();

  _$Feature._({
    required this.type,
    this.id,
    this.geometry,
    required this.properties,
  }) : super._();
  @override
  Feature rebuild(void Function(FeatureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeatureBuilder toBuilder() => FeatureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Feature &&
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
    return (newBuiltValueToStringHelper(r'Feature')
          ..add('type', type)
          ..add('id', id)
          ..add('geometry', geometry)
          ..add('properties', properties))
        .toString();
  }
}

class FeatureBuilder implements Builder<Feature, FeatureBuilder> {
  _$Feature? _$v;

  FeatureTypeEnum? _type;
  FeatureTypeEnum? get type => _$this._type;
  set type(FeatureTypeEnum? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  FeaturePropertiesBuilder? _properties;
  FeaturePropertiesBuilder get properties =>
      _$this._properties ??= FeaturePropertiesBuilder();
  set properties(FeaturePropertiesBuilder? properties) =>
      _$this._properties = properties;

  FeatureBuilder() {
    Feature._defaults(this);
  }

  FeatureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _geometry = $v.geometry?.toBuilder();
      _properties = $v.properties.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Feature other) {
    _$v = other as _$Feature;
  }

  @override
  void update(void Function(FeatureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Feature build() => _build();

  _$Feature _build() {
    _$Feature _$result;
    try {
      _$result =
          _$v ??
          _$Feature._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'Feature',
              'type',
            ),
            id: id,
            geometry: _geometry?.build(),
            properties: properties.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'properties';
        properties.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Feature',
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
