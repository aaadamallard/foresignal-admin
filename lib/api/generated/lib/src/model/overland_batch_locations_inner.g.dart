// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overland_batch_locations_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OverlandBatchLocationsInnerTypeEnum
_$overlandBatchLocationsInnerTypeEnum_feature =
    const OverlandBatchLocationsInnerTypeEnum._('feature');

OverlandBatchLocationsInnerTypeEnum
_$overlandBatchLocationsInnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'feature':
      return _$overlandBatchLocationsInnerTypeEnum_feature;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OverlandBatchLocationsInnerTypeEnum>
_$overlandBatchLocationsInnerTypeEnumValues =
    BuiltSet<OverlandBatchLocationsInnerTypeEnum>(
      const <OverlandBatchLocationsInnerTypeEnum>[
        _$overlandBatchLocationsInnerTypeEnum_feature,
      ],
    );

Serializer<OverlandBatchLocationsInnerTypeEnum>
_$overlandBatchLocationsInnerTypeEnumSerializer =
    _$OverlandBatchLocationsInnerTypeEnumSerializer();

class _$OverlandBatchLocationsInnerTypeEnumSerializer
    implements PrimitiveSerializer<OverlandBatchLocationsInnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'feature': 'Feature',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Feature': 'feature',
  };

  @override
  final Iterable<Type> types = const <Type>[
    OverlandBatchLocationsInnerTypeEnum,
  ];
  @override
  final String wireName = 'OverlandBatchLocationsInnerTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    OverlandBatchLocationsInnerTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OverlandBatchLocationsInnerTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OverlandBatchLocationsInnerTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OverlandBatchLocationsInner extends OverlandBatchLocationsInner {
  @override
  final OverlandBatchLocationsInnerTypeEnum? type;
  @override
  final Geometry geometry;
  @override
  final OverlandBatchLocationsInnerProperties properties;

  factory _$OverlandBatchLocationsInner([
    void Function(OverlandBatchLocationsInnerBuilder)? updates,
  ]) => (OverlandBatchLocationsInnerBuilder()..update(updates))._build();

  _$OverlandBatchLocationsInner._({
    this.type,
    required this.geometry,
    required this.properties,
  }) : super._();
  @override
  OverlandBatchLocationsInner rebuild(
    void Function(OverlandBatchLocationsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OverlandBatchLocationsInnerBuilder toBuilder() =>
      OverlandBatchLocationsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OverlandBatchLocationsInner &&
        type == other.type &&
        geometry == other.geometry &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OverlandBatchLocationsInner')
          ..add('type', type)
          ..add('geometry', geometry)
          ..add('properties', properties))
        .toString();
  }
}

class OverlandBatchLocationsInnerBuilder
    implements
        Builder<
          OverlandBatchLocationsInner,
          OverlandBatchLocationsInnerBuilder
        > {
  _$OverlandBatchLocationsInner? _$v;

  OverlandBatchLocationsInnerTypeEnum? _type;
  OverlandBatchLocationsInnerTypeEnum? get type => _$this._type;
  set type(OverlandBatchLocationsInnerTypeEnum? type) => _$this._type = type;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  OverlandBatchLocationsInnerPropertiesBuilder? _properties;
  OverlandBatchLocationsInnerPropertiesBuilder get properties =>
      _$this._properties ??= OverlandBatchLocationsInnerPropertiesBuilder();
  set properties(OverlandBatchLocationsInnerPropertiesBuilder? properties) =>
      _$this._properties = properties;

  OverlandBatchLocationsInnerBuilder() {
    OverlandBatchLocationsInner._defaults(this);
  }

  OverlandBatchLocationsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _geometry = $v.geometry.toBuilder();
      _properties = $v.properties.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OverlandBatchLocationsInner other) {
    _$v = other as _$OverlandBatchLocationsInner;
  }

  @override
  void update(void Function(OverlandBatchLocationsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OverlandBatchLocationsInner build() => _build();

  _$OverlandBatchLocationsInner _build() {
    _$OverlandBatchLocationsInner _$result;
    try {
      _$result =
          _$v ??
          _$OverlandBatchLocationsInner._(
            type: type,
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
          r'OverlandBatchLocationsInner',
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
