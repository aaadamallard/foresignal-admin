// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlaceInputShapeEnum _$placeInputShapeEnum_point =
    const PlaceInputShapeEnum._('point');
const PlaceInputShapeEnum _$placeInputShapeEnum_polygon =
    const PlaceInputShapeEnum._('polygon');
const PlaceInputShapeEnum _$placeInputShapeEnum_route =
    const PlaceInputShapeEnum._('route');

PlaceInputShapeEnum _$placeInputShapeEnumValueOf(String name) {
  switch (name) {
    case 'point':
      return _$placeInputShapeEnum_point;
    case 'polygon':
      return _$placeInputShapeEnum_polygon;
    case 'route':
      return _$placeInputShapeEnum_route;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PlaceInputShapeEnum> _$placeInputShapeEnumValues =
    BuiltSet<PlaceInputShapeEnum>(const <PlaceInputShapeEnum>[
      _$placeInputShapeEnum_point,
      _$placeInputShapeEnum_polygon,
      _$placeInputShapeEnum_route,
    ]);

const PlaceInputKindEnum _$placeInputKindEnum_user = const PlaceInputKindEnum._(
  'user',
);
const PlaceInputKindEnum _$placeInputKindEnum_airport =
    const PlaceInputKindEnum._('airport');
const PlaceInputKindEnum _$placeInputKindEnum_asset =
    const PlaceInputKindEnum._('asset');

PlaceInputKindEnum _$placeInputKindEnumValueOf(String name) {
  switch (name) {
    case 'user':
      return _$placeInputKindEnum_user;
    case 'airport':
      return _$placeInputKindEnum_airport;
    case 'asset':
      return _$placeInputKindEnum_asset;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PlaceInputKindEnum> _$placeInputKindEnumValues =
    BuiltSet<PlaceInputKindEnum>(const <PlaceInputKindEnum>[
      _$placeInputKindEnum_user,
      _$placeInputKindEnum_airport,
      _$placeInputKindEnum_asset,
    ]);

Serializer<PlaceInputShapeEnum> _$placeInputShapeEnumSerializer =
    _$PlaceInputShapeEnumSerializer();
Serializer<PlaceInputKindEnum> _$placeInputKindEnumSerializer =
    _$PlaceInputKindEnumSerializer();

class _$PlaceInputShapeEnumSerializer
    implements PrimitiveSerializer<PlaceInputShapeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'point': 'point',
    'polygon': 'polygon',
    'route': 'route',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'point': 'point',
    'polygon': 'polygon',
    'route': 'route',
  };

  @override
  final Iterable<Type> types = const <Type>[PlaceInputShapeEnum];
  @override
  final String wireName = 'PlaceInputShapeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PlaceInputShapeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PlaceInputShapeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PlaceInputShapeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PlaceInputKindEnumSerializer
    implements PrimitiveSerializer<PlaceInputKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'user': 'user',
    'airport': 'airport',
    'asset': 'asset',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user': 'user',
    'airport': 'airport',
    'asset': 'asset',
  };

  @override
  final Iterable<Type> types = const <Type>[PlaceInputKindEnum];
  @override
  final String wireName = 'PlaceInputKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    PlaceInputKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PlaceInputKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PlaceInputKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PlaceInput extends PlaceInput {
  @override
  final String id;
  @override
  final String name;
  @override
  final PlaceInputShapeEnum shape;
  @override
  final Geometry geometry;
  @override
  final num? radiusKm;
  @override
  final num? bufferM;
  @override
  final String? timezone;
  @override
  final PlaceInputKindEnum? kind;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? products;
  @override
  final bool? sensitive;
  @override
  final PlaceInputAttributes? attributes;

  factory _$PlaceInput([void Function(PlaceInputBuilder)? updates]) =>
      (PlaceInputBuilder()..update(updates))._build();

  _$PlaceInput._({
    required this.id,
    required this.name,
    required this.shape,
    required this.geometry,
    this.radiusKm,
    this.bufferM,
    this.timezone,
    this.kind,
    this.tags,
    this.products,
    this.sensitive,
    this.attributes,
  }) : super._();
  @override
  PlaceInput rebuild(void Function(PlaceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceInputBuilder toBuilder() => PlaceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceInput &&
        id == other.id &&
        name == other.name &&
        shape == other.shape &&
        geometry == other.geometry &&
        radiusKm == other.radiusKm &&
        bufferM == other.bufferM &&
        timezone == other.timezone &&
        kind == other.kind &&
        tags == other.tags &&
        products == other.products &&
        sensitive == other.sensitive &&
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, shape.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, radiusKm.hashCode);
    _$hash = $jc(_$hash, bufferM.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jc(_$hash, sensitive.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceInput')
          ..add('id', id)
          ..add('name', name)
          ..add('shape', shape)
          ..add('geometry', geometry)
          ..add('radiusKm', radiusKm)
          ..add('bufferM', bufferM)
          ..add('timezone', timezone)
          ..add('kind', kind)
          ..add('tags', tags)
          ..add('products', products)
          ..add('sensitive', sensitive)
          ..add('attributes', attributes))
        .toString();
  }
}

class PlaceInputBuilder implements Builder<PlaceInput, PlaceInputBuilder> {
  _$PlaceInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PlaceInputShapeEnum? _shape;
  PlaceInputShapeEnum? get shape => _$this._shape;
  set shape(PlaceInputShapeEnum? shape) => _$this._shape = shape;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  num? _radiusKm;
  num? get radiusKm => _$this._radiusKm;
  set radiusKm(num? radiusKm) => _$this._radiusKm = radiusKm;

  num? _bufferM;
  num? get bufferM => _$this._bufferM;
  set bufferM(num? bufferM) => _$this._bufferM = bufferM;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  PlaceInputKindEnum? _kind;
  PlaceInputKindEnum? get kind => _$this._kind;
  set kind(PlaceInputKindEnum? kind) => _$this._kind = kind;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _products;
  ListBuilder<String> get products =>
      _$this._products ??= ListBuilder<String>();
  set products(ListBuilder<String>? products) => _$this._products = products;

  bool? _sensitive;
  bool? get sensitive => _$this._sensitive;
  set sensitive(bool? sensitive) => _$this._sensitive = sensitive;

  PlaceInputAttributesBuilder? _attributes;
  PlaceInputAttributesBuilder get attributes =>
      _$this._attributes ??= PlaceInputAttributesBuilder();
  set attributes(PlaceInputAttributesBuilder? attributes) =>
      _$this._attributes = attributes;

  PlaceInputBuilder() {
    PlaceInput._defaults(this);
  }

  PlaceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _shape = $v.shape;
      _geometry = $v.geometry.toBuilder();
      _radiusKm = $v.radiusKm;
      _bufferM = $v.bufferM;
      _timezone = $v.timezone;
      _kind = $v.kind;
      _tags = $v.tags?.toBuilder();
      _products = $v.products?.toBuilder();
      _sensitive = $v.sensitive;
      _attributes = $v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceInput other) {
    _$v = other as _$PlaceInput;
  }

  @override
  void update(void Function(PlaceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceInput build() => _build();

  _$PlaceInput _build() {
    _$PlaceInput _$result;
    try {
      _$result =
          _$v ??
          _$PlaceInput._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'PlaceInput', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'PlaceInput',
              'name',
            ),
            shape: BuiltValueNullFieldError.checkNotNull(
              shape,
              r'PlaceInput',
              'shape',
            ),
            geometry: geometry.build(),
            radiusKm: radiusKm,
            bufferM: bufferM,
            timezone: timezone,
            kind: kind,
            tags: _tags?.build(),
            products: _products?.build(),
            sensitive: sensitive,
            attributes: _attributes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        geometry.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'products';
        _products?.build();

        _$failedField = 'attributes';
        _attributes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PlaceInput',
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
