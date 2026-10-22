// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlaceShapeEnum _$placeShapeEnum_point = const PlaceShapeEnum._('point');
const PlaceShapeEnum _$placeShapeEnum_polygon =
    const PlaceShapeEnum._('polygon');
const PlaceShapeEnum _$placeShapeEnum_route = const PlaceShapeEnum._('route');

PlaceShapeEnum _$placeShapeEnumValueOf(String name) {
  switch (name) {
    case 'point':
      return _$placeShapeEnum_point;
    case 'polygon':
      return _$placeShapeEnum_polygon;
    case 'route':
      return _$placeShapeEnum_route;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PlaceShapeEnum> _$placeShapeEnumValues =
    BuiltSet<PlaceShapeEnum>(const <PlaceShapeEnum>[
  _$placeShapeEnum_point,
  _$placeShapeEnum_polygon,
  _$placeShapeEnum_route,
]);

const PlaceKindEnum _$placeKindEnum_user = const PlaceKindEnum._('user');
const PlaceKindEnum _$placeKindEnum_airport = const PlaceKindEnum._('airport');
const PlaceKindEnum _$placeKindEnum_asset = const PlaceKindEnum._('asset');

PlaceKindEnum _$placeKindEnumValueOf(String name) {
  switch (name) {
    case 'user':
      return _$placeKindEnum_user;
    case 'airport':
      return _$placeKindEnum_airport;
    case 'asset':
      return _$placeKindEnum_asset;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PlaceKindEnum> _$placeKindEnumValues =
    BuiltSet<PlaceKindEnum>(const <PlaceKindEnum>[
  _$placeKindEnum_user,
  _$placeKindEnum_airport,
  _$placeKindEnum_asset,
]);

Serializer<PlaceShapeEnum> _$placeShapeEnumSerializer =
    _$PlaceShapeEnumSerializer();
Serializer<PlaceKindEnum> _$placeKindEnumSerializer =
    _$PlaceKindEnumSerializer();

class _$PlaceShapeEnumSerializer
    implements PrimitiveSerializer<PlaceShapeEnum> {
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
  final Iterable<Type> types = const <Type>[PlaceShapeEnum];
  @override
  final String wireName = 'PlaceShapeEnum';

  @override
  Object serialize(Serializers serializers, PlaceShapeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlaceShapeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlaceShapeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PlaceKindEnumSerializer implements PrimitiveSerializer<PlaceKindEnum> {
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
  final Iterable<Type> types = const <Type>[PlaceKindEnum];
  @override
  final String wireName = 'PlaceKindEnum';

  @override
  Object serialize(Serializers serializers, PlaceKindEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlaceKindEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlaceKindEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Place extends Place {
  @override
  final String id;
  @override
  final String name;
  @override
  final PlaceShapeEnum shape;
  @override
  final Geometry geometry;
  @override
  final num? radiusKm;
  @override
  final num? bufferM;
  @override
  final String? timezone;
  @override
  final PlaceKindEnum? kind;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? products;
  @override
  final bool? sensitive;
  @override
  final PlaceInputAttributes? attributes;
  @override
  final Geometry? area;
  @override
  final int version;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final BuiltMap<String, JsonObject?>? external_;

  factory _$Place([void Function(PlaceBuilder)? updates]) =>
      (PlaceBuilder()..update(updates))._build();

  _$Place._(
      {required this.id,
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
      this.area,
      required this.version,
      required this.createdAt,
      required this.updatedAt,
      this.external_})
      : super._();
  @override
  Place rebuild(void Function(PlaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceBuilder toBuilder() => PlaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Place &&
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
        attributes == other.attributes &&
        area == other.area &&
        version == other.version &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        external_ == other.external_;
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
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, external_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Place')
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
          ..add('attributes', attributes)
          ..add('area', area)
          ..add('version', version)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('external_', external_))
        .toString();
  }
}

class PlaceBuilder implements Builder<Place, PlaceBuilder> {
  _$Place? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PlaceShapeEnum? _shape;
  PlaceShapeEnum? get shape => _$this._shape;
  set shape(PlaceShapeEnum? shape) => _$this._shape = shape;

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

  PlaceKindEnum? _kind;
  PlaceKindEnum? get kind => _$this._kind;
  set kind(PlaceKindEnum? kind) => _$this._kind = kind;

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

  GeometryBuilder? _area;
  GeometryBuilder get area => _$this._area ??= GeometryBuilder();
  set area(GeometryBuilder? area) => _$this._area = area;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  MapBuilder<String, JsonObject?>? _external_;
  MapBuilder<String, JsonObject?> get external_ =>
      _$this._external_ ??= MapBuilder<String, JsonObject?>();
  set external_(MapBuilder<String, JsonObject?>? external_) =>
      _$this._external_ = external_;

  PlaceBuilder() {
    Place._defaults(this);
  }

  PlaceBuilder get _$this {
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
      _area = $v.area?.toBuilder();
      _version = $v.version;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _external_ = $v.external_?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Place other) {
    _$v = other as _$Place;
  }

  @override
  void update(void Function(PlaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Place build() => _build();

  _$Place _build() {
    _$Place _$result;
    try {
      _$result = _$v ??
          _$Place._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Place', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Place', 'name'),
            shape:
                BuiltValueNullFieldError.checkNotNull(shape, r'Place', 'shape'),
            geometry: geometry.build(),
            radiusKm: radiusKm,
            bufferM: bufferM,
            timezone: timezone,
            kind: kind,
            tags: _tags?.build(),
            products: _products?.build(),
            sensitive: sensitive,
            attributes: _attributes?.build(),
            area: _area?.build(),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'Place', 'version'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Place', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'Place', 'updatedAt'),
            external_: _external_?.build(),
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
        _$failedField = 'area';
        _area?.build();

        _$failedField = 'external_';
        _external_?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Place', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
