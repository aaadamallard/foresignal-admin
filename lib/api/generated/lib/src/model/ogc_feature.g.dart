// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_feature.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OgcFeatureTypeEnum _$ogcFeatureTypeEnum_feature =
    const OgcFeatureTypeEnum._('feature');

OgcFeatureTypeEnum _$ogcFeatureTypeEnumValueOf(String name) {
  switch (name) {
    case 'feature':
      return _$ogcFeatureTypeEnum_feature;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OgcFeatureTypeEnum> _$ogcFeatureTypeEnumValues =
    BuiltSet<OgcFeatureTypeEnum>(const <OgcFeatureTypeEnum>[
  _$ogcFeatureTypeEnum_feature,
]);

Serializer<OgcFeatureTypeEnum> _$ogcFeatureTypeEnumSerializer =
    _$OgcFeatureTypeEnumSerializer();

class _$OgcFeatureTypeEnumSerializer
    implements PrimitiveSerializer<OgcFeatureTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'feature': 'Feature',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Feature': 'feature',
  };

  @override
  final Iterable<Type> types = const <Type>[OgcFeatureTypeEnum];
  @override
  final String wireName = 'OgcFeatureTypeEnum';

  @override
  Object serialize(Serializers serializers, OgcFeatureTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OgcFeatureTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OgcFeatureTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OgcFeature extends OgcFeature {
  @override
  final OgcFeatureTypeEnum type;
  @override
  final String id;
  @override
  final Geometry? geometry;
  @override
  final OgcFeatureProperties properties;
  @override
  final BuiltList<OgcLink>? links;

  factory _$OgcFeature([void Function(OgcFeatureBuilder)? updates]) =>
      (OgcFeatureBuilder()..update(updates))._build();

  _$OgcFeature._(
      {required this.type,
      required this.id,
      this.geometry,
      required this.properties,
      this.links})
      : super._();
  @override
  OgcFeature rebuild(void Function(OgcFeatureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcFeatureBuilder toBuilder() => OgcFeatureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcFeature &&
        type == other.type &&
        id == other.id &&
        geometry == other.geometry &&
        properties == other.properties &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcFeature')
          ..add('type', type)
          ..add('id', id)
          ..add('geometry', geometry)
          ..add('properties', properties)
          ..add('links', links))
        .toString();
  }
}

class OgcFeatureBuilder implements Builder<OgcFeature, OgcFeatureBuilder> {
  _$OgcFeature? _$v;

  OgcFeatureTypeEnum? _type;
  OgcFeatureTypeEnum? get type => _$this._type;
  set type(OgcFeatureTypeEnum? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  OgcFeaturePropertiesBuilder? _properties;
  OgcFeaturePropertiesBuilder get properties =>
      _$this._properties ??= OgcFeaturePropertiesBuilder();
  set properties(OgcFeaturePropertiesBuilder? properties) =>
      _$this._properties = properties;

  ListBuilder<OgcLink>? _links;
  ListBuilder<OgcLink> get links => _$this._links ??= ListBuilder<OgcLink>();
  set links(ListBuilder<OgcLink>? links) => _$this._links = links;

  OgcFeatureBuilder() {
    OgcFeature._defaults(this);
  }

  OgcFeatureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _geometry = $v.geometry?.toBuilder();
      _properties = $v.properties.toBuilder();
      _links = $v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcFeature other) {
    _$v = other as _$OgcFeature;
  }

  @override
  void update(void Function(OgcFeatureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcFeature build() => _build();

  _$OgcFeature _build() {
    _$OgcFeature _$result;
    try {
      _$result = _$v ??
          _$OgcFeature._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'OgcFeature', 'type'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'OgcFeature', 'id'),
            geometry: _geometry?.build(),
            properties: properties.build(),
            links: _links?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'properties';
        properties.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OgcFeature', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
