// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_attachment_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MapAttachmentConfigAttachMapEnum _$mapAttachmentConfigAttachMapEnum_none =
    const MapAttachmentConfigAttachMapEnum._('none');
const MapAttachmentConfigAttachMapEnum
_$mapAttachmentConfigAttachMapEnum_static_ =
    const MapAttachmentConfigAttachMapEnum._('static_');

MapAttachmentConfigAttachMapEnum _$mapAttachmentConfigAttachMapEnumValueOf(
  String name,
) {
  switch (name) {
    case 'none':
      return _$mapAttachmentConfigAttachMapEnum_none;
    case 'static_':
      return _$mapAttachmentConfigAttachMapEnum_static_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MapAttachmentConfigAttachMapEnum>
_$mapAttachmentConfigAttachMapEnumValues =
    BuiltSet<MapAttachmentConfigAttachMapEnum>(
      const <MapAttachmentConfigAttachMapEnum>[
        _$mapAttachmentConfigAttachMapEnum_none,
        _$mapAttachmentConfigAttachMapEnum_static_,
      ],
    );

Serializer<MapAttachmentConfigAttachMapEnum>
_$mapAttachmentConfigAttachMapEnumSerializer =
    _$MapAttachmentConfigAttachMapEnumSerializer();

class _$MapAttachmentConfigAttachMapEnumSerializer
    implements PrimitiveSerializer<MapAttachmentConfigAttachMapEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'static_': 'static',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'static': 'static_',
  };

  @override
  final Iterable<Type> types = const <Type>[MapAttachmentConfigAttachMapEnum];
  @override
  final String wireName = 'MapAttachmentConfigAttachMapEnum';

  @override
  Object serialize(
    Serializers serializers,
    MapAttachmentConfigAttachMapEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MapAttachmentConfigAttachMapEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MapAttachmentConfigAttachMapEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MapAttachmentConfig extends MapAttachmentConfig {
  @override
  final MapAttachmentConfigAttachMapEnum? attachMap;
  @override
  final BuiltList<String>? mapProducts;
  @override
  final num? mapRadiusKm;
  @override
  final int? maxAttachmentBytes;

  factory _$MapAttachmentConfig([
    void Function(MapAttachmentConfigBuilder)? updates,
  ]) => (MapAttachmentConfigBuilder()..update(updates))._build();

  _$MapAttachmentConfig._({
    this.attachMap,
    this.mapProducts,
    this.mapRadiusKm,
    this.maxAttachmentBytes,
  }) : super._();
  @override
  MapAttachmentConfig rebuild(
    void Function(MapAttachmentConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MapAttachmentConfigBuilder toBuilder() =>
      MapAttachmentConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapAttachmentConfig &&
        attachMap == other.attachMap &&
        mapProducts == other.mapProducts &&
        mapRadiusKm == other.mapRadiusKm &&
        maxAttachmentBytes == other.maxAttachmentBytes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachMap.hashCode);
    _$hash = $jc(_$hash, mapProducts.hashCode);
    _$hash = $jc(_$hash, mapRadiusKm.hashCode);
    _$hash = $jc(_$hash, maxAttachmentBytes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapAttachmentConfig')
          ..add('attachMap', attachMap)
          ..add('mapProducts', mapProducts)
          ..add('mapRadiusKm', mapRadiusKm)
          ..add('maxAttachmentBytes', maxAttachmentBytes))
        .toString();
  }
}

class MapAttachmentConfigBuilder
    implements Builder<MapAttachmentConfig, MapAttachmentConfigBuilder> {
  _$MapAttachmentConfig? _$v;

  MapAttachmentConfigAttachMapEnum? _attachMap;
  MapAttachmentConfigAttachMapEnum? get attachMap => _$this._attachMap;
  set attachMap(MapAttachmentConfigAttachMapEnum? attachMap) =>
      _$this._attachMap = attachMap;

  ListBuilder<String>? _mapProducts;
  ListBuilder<String> get mapProducts =>
      _$this._mapProducts ??= ListBuilder<String>();
  set mapProducts(ListBuilder<String>? mapProducts) =>
      _$this._mapProducts = mapProducts;

  num? _mapRadiusKm;
  num? get mapRadiusKm => _$this._mapRadiusKm;
  set mapRadiusKm(num? mapRadiusKm) => _$this._mapRadiusKm = mapRadiusKm;

  int? _maxAttachmentBytes;
  int? get maxAttachmentBytes => _$this._maxAttachmentBytes;
  set maxAttachmentBytes(int? maxAttachmentBytes) =>
      _$this._maxAttachmentBytes = maxAttachmentBytes;

  MapAttachmentConfigBuilder() {
    MapAttachmentConfig._defaults(this);
  }

  MapAttachmentConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachMap = $v.attachMap;
      _mapProducts = $v.mapProducts?.toBuilder();
      _mapRadiusKm = $v.mapRadiusKm;
      _maxAttachmentBytes = $v.maxAttachmentBytes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapAttachmentConfig other) {
    _$v = other as _$MapAttachmentConfig;
  }

  @override
  void update(void Function(MapAttachmentConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapAttachmentConfig build() => _build();

  _$MapAttachmentConfig _build() {
    _$MapAttachmentConfig _$result;
    try {
      _$result =
          _$v ??
          _$MapAttachmentConfig._(
            attachMap: attachMap,
            mapProducts: _mapProducts?.build(),
            mapRadiusKm: mapRadiusKm,
            maxAttachmentBytes: maxAttachmentBytes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mapProducts';
        _mapProducts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MapAttachmentConfig',
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
