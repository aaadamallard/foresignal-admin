// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_style.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MapStyleVersionEnum _$mapStyleVersionEnum_number8 =
    const MapStyleVersionEnum._('number8');

MapStyleVersionEnum _$mapStyleVersionEnumValueOf(String name) {
  switch (name) {
    case 'number8':
      return _$mapStyleVersionEnum_number8;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MapStyleVersionEnum> _$mapStyleVersionEnumValues =
    BuiltSet<MapStyleVersionEnum>(const <MapStyleVersionEnum>[
      _$mapStyleVersionEnum_number8,
    ]);

Serializer<MapStyleVersionEnum> _$mapStyleVersionEnumSerializer =
    _$MapStyleVersionEnumSerializer();

class _$MapStyleVersionEnumSerializer
    implements PrimitiveSerializer<MapStyleVersionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number8': 8,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    8: 'number8',
  };

  @override
  final Iterable<Type> types = const <Type>[MapStyleVersionEnum];
  @override
  final String wireName = 'MapStyleVersionEnum';

  @override
  Object serialize(
    Serializers serializers,
    MapStyleVersionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MapStyleVersionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MapStyleVersionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MapStyle extends MapStyle {
  @override
  final MapStyleVersionEnum version;
  @override
  final String? name;
  @override
  final BuiltMap<String, BuiltMap<String, JsonObject?>> sources;
  @override
  final String sprite;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>> layers;
  @override
  final MapStyleMetadata metadata;

  factory _$MapStyle([void Function(MapStyleBuilder)? updates]) =>
      (MapStyleBuilder()..update(updates))._build();

  _$MapStyle._({
    required this.version,
    this.name,
    required this.sources,
    required this.sprite,
    required this.layers,
    required this.metadata,
  }) : super._();
  @override
  MapStyle rebuild(void Function(MapStyleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapStyleBuilder toBuilder() => MapStyleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapStyle &&
        version == other.version &&
        name == other.name &&
        sources == other.sources &&
        sprite == other.sprite &&
        layers == other.layers &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, sprite.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapStyle')
          ..add('version', version)
          ..add('name', name)
          ..add('sources', sources)
          ..add('sprite', sprite)
          ..add('layers', layers)
          ..add('metadata', metadata))
        .toString();
  }
}

class MapStyleBuilder implements Builder<MapStyle, MapStyleBuilder> {
  _$MapStyle? _$v;

  MapStyleVersionEnum? _version;
  MapStyleVersionEnum? get version => _$this._version;
  set version(MapStyleVersionEnum? version) => _$this._version = version;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MapBuilder<String, BuiltMap<String, JsonObject?>>? _sources;
  MapBuilder<String, BuiltMap<String, JsonObject?>> get sources =>
      _$this._sources ??= MapBuilder<String, BuiltMap<String, JsonObject?>>();
  set sources(MapBuilder<String, BuiltMap<String, JsonObject?>>? sources) =>
      _$this._sources = sources;

  String? _sprite;
  String? get sprite => _$this._sprite;
  set sprite(String? sprite) => _$this._sprite = sprite;

  ListBuilder<BuiltMap<String, JsonObject?>>? _layers;
  ListBuilder<BuiltMap<String, JsonObject?>> get layers =>
      _$this._layers ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set layers(ListBuilder<BuiltMap<String, JsonObject?>>? layers) =>
      _$this._layers = layers;

  MapStyleMetadataBuilder? _metadata;
  MapStyleMetadataBuilder get metadata =>
      _$this._metadata ??= MapStyleMetadataBuilder();
  set metadata(MapStyleMetadataBuilder? metadata) =>
      _$this._metadata = metadata;

  MapStyleBuilder() {
    MapStyle._defaults(this);
  }

  MapStyleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _name = $v.name;
      _sources = $v.sources.toBuilder();
      _sprite = $v.sprite;
      _layers = $v.layers.toBuilder();
      _metadata = $v.metadata.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapStyle other) {
    _$v = other as _$MapStyle;
  }

  @override
  void update(void Function(MapStyleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapStyle build() => _build();

  _$MapStyle _build() {
    _$MapStyle _$result;
    try {
      _$result =
          _$v ??
          _$MapStyle._(
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'MapStyle',
              'version',
            ),
            name: name,
            sources: sources.build(),
            sprite: BuiltValueNullFieldError.checkNotNull(
              sprite,
              r'MapStyle',
              'sprite',
            ),
            layers: layers.build(),
            metadata: metadata.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        sources.build();

        _$failedField = 'layers';
        layers.build();
        _$failedField = 'metadata';
        metadata.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MapStyle',
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
