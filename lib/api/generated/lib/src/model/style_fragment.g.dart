// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_fragment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StyleFragmentVersionEnum _$styleFragmentVersionEnum_number8 =
    const StyleFragmentVersionEnum._('number8');

StyleFragmentVersionEnum _$styleFragmentVersionEnumValueOf(String name) {
  switch (name) {
    case 'number8':
      return _$styleFragmentVersionEnum_number8;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StyleFragmentVersionEnum> _$styleFragmentVersionEnumValues =
    BuiltSet<StyleFragmentVersionEnum>(const <StyleFragmentVersionEnum>[
  _$styleFragmentVersionEnum_number8,
]);

Serializer<StyleFragmentVersionEnum> _$styleFragmentVersionEnumSerializer =
    _$StyleFragmentVersionEnumSerializer();

class _$StyleFragmentVersionEnumSerializer
    implements PrimitiveSerializer<StyleFragmentVersionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number8': 8,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    8: 'number8',
  };

  @override
  final Iterable<Type> types = const <Type>[StyleFragmentVersionEnum];
  @override
  final String wireName = 'StyleFragmentVersionEnum';

  @override
  Object serialize(Serializers serializers, StyleFragmentVersionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StyleFragmentVersionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StyleFragmentVersionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StyleFragment extends StyleFragment {
  @override
  final StyleFragmentVersionEnum version;
  @override
  final BuiltMap<String, BuiltMap<String, JsonObject?>> sources;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>> layers;
  @override
  final StyleFragmentMetadata? metadata;

  factory _$StyleFragment([void Function(StyleFragmentBuilder)? updates]) =>
      (StyleFragmentBuilder()..update(updates))._build();

  _$StyleFragment._(
      {required this.version,
      required this.sources,
      required this.layers,
      this.metadata})
      : super._();
  @override
  StyleFragment rebuild(void Function(StyleFragmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StyleFragmentBuilder toBuilder() => StyleFragmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StyleFragment &&
        version == other.version &&
        sources == other.sources &&
        layers == other.layers &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StyleFragment')
          ..add('version', version)
          ..add('sources', sources)
          ..add('layers', layers)
          ..add('metadata', metadata))
        .toString();
  }
}

class StyleFragmentBuilder
    implements Builder<StyleFragment, StyleFragmentBuilder> {
  _$StyleFragment? _$v;

  StyleFragmentVersionEnum? _version;
  StyleFragmentVersionEnum? get version => _$this._version;
  set version(StyleFragmentVersionEnum? version) => _$this._version = version;

  MapBuilder<String, BuiltMap<String, JsonObject?>>? _sources;
  MapBuilder<String, BuiltMap<String, JsonObject?>> get sources =>
      _$this._sources ??= MapBuilder<String, BuiltMap<String, JsonObject?>>();
  set sources(MapBuilder<String, BuiltMap<String, JsonObject?>>? sources) =>
      _$this._sources = sources;

  ListBuilder<BuiltMap<String, JsonObject?>>? _layers;
  ListBuilder<BuiltMap<String, JsonObject?>> get layers =>
      _$this._layers ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set layers(ListBuilder<BuiltMap<String, JsonObject?>>? layers) =>
      _$this._layers = layers;

  StyleFragmentMetadataBuilder? _metadata;
  StyleFragmentMetadataBuilder get metadata =>
      _$this._metadata ??= StyleFragmentMetadataBuilder();
  set metadata(StyleFragmentMetadataBuilder? metadata) =>
      _$this._metadata = metadata;

  StyleFragmentBuilder() {
    StyleFragment._defaults(this);
  }

  StyleFragmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _sources = $v.sources.toBuilder();
      _layers = $v.layers.toBuilder();
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StyleFragment other) {
    _$v = other as _$StyleFragment;
  }

  @override
  void update(void Function(StyleFragmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StyleFragment build() => _build();

  _$StyleFragment _build() {
    _$StyleFragment _$result;
    try {
      _$result = _$v ??
          _$StyleFragment._(
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'StyleFragment', 'version'),
            sources: sources.build(),
            layers: layers.build(),
            metadata: _metadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        sources.build();
        _$failedField = 'layers';
        layers.build();
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StyleFragment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
