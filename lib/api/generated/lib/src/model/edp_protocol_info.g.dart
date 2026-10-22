// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_protocol_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpProtocolInfoModesEnum _$edpProtocolInfoModesEnum_layer =
    const EdpProtocolInfoModesEnum._('layer');
const EdpProtocolInfoModesEnum _$edpProtocolInfoModesEnum_atomic =
    const EdpProtocolInfoModesEnum._('atomic');

EdpProtocolInfoModesEnum _$edpProtocolInfoModesEnumValueOf(String name) {
  switch (name) {
    case 'layer':
      return _$edpProtocolInfoModesEnum_layer;
    case 'atomic':
      return _$edpProtocolInfoModesEnum_atomic;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpProtocolInfoModesEnum> _$edpProtocolInfoModesEnumValues =
    BuiltSet<EdpProtocolInfoModesEnum>(const <EdpProtocolInfoModesEnum>[
  _$edpProtocolInfoModesEnum_layer,
  _$edpProtocolInfoModesEnum_atomic,
]);

Serializer<EdpProtocolInfoModesEnum> _$edpProtocolInfoModesEnumSerializer =
    _$EdpProtocolInfoModesEnumSerializer();

class _$EdpProtocolInfoModesEnumSerializer
    implements PrimitiveSerializer<EdpProtocolInfoModesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'layer': 'layer',
    'atomic': 'atomic',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'layer': 'layer',
    'atomic': 'atomic',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpProtocolInfoModesEnum];
  @override
  final String wireName = 'EdpProtocolInfoModesEnum';

  @override
  Object serialize(Serializers serializers, EdpProtocolInfoModesEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EdpProtocolInfoModesEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EdpProtocolInfoModesEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EdpProtocolInfo extends EdpProtocolInfo {
  @override
  final String protocol;
  @override
  final BuiltList<String>? supported;
  @override
  final BuiltList<String> itemTypes;
  @override
  final BuiltList<EdpProtocolInfoModesEnum> modes;
  @override
  final BuiltList<String>? schemas;
  @override
  final String? documentation;
  @override
  final int? maxMinor;

  factory _$EdpProtocolInfo([void Function(EdpProtocolInfoBuilder)? updates]) =>
      (EdpProtocolInfoBuilder()..update(updates))._build();

  _$EdpProtocolInfo._(
      {required this.protocol,
      this.supported,
      required this.itemTypes,
      required this.modes,
      this.schemas,
      this.documentation,
      this.maxMinor})
      : super._();
  @override
  EdpProtocolInfo rebuild(void Function(EdpProtocolInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpProtocolInfoBuilder toBuilder() => EdpProtocolInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpProtocolInfo &&
        protocol == other.protocol &&
        supported == other.supported &&
        itemTypes == other.itemTypes &&
        modes == other.modes &&
        schemas == other.schemas &&
        documentation == other.documentation &&
        maxMinor == other.maxMinor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, supported.hashCode);
    _$hash = $jc(_$hash, itemTypes.hashCode);
    _$hash = $jc(_$hash, modes.hashCode);
    _$hash = $jc(_$hash, schemas.hashCode);
    _$hash = $jc(_$hash, documentation.hashCode);
    _$hash = $jc(_$hash, maxMinor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpProtocolInfo')
          ..add('protocol', protocol)
          ..add('supported', supported)
          ..add('itemTypes', itemTypes)
          ..add('modes', modes)
          ..add('schemas', schemas)
          ..add('documentation', documentation)
          ..add('maxMinor', maxMinor))
        .toString();
  }
}

class EdpProtocolInfoBuilder
    implements Builder<EdpProtocolInfo, EdpProtocolInfoBuilder> {
  _$EdpProtocolInfo? _$v;

  String? _protocol;
  String? get protocol => _$this._protocol;
  set protocol(String? protocol) => _$this._protocol = protocol;

  ListBuilder<String>? _supported;
  ListBuilder<String> get supported =>
      _$this._supported ??= ListBuilder<String>();
  set supported(ListBuilder<String>? supported) =>
      _$this._supported = supported;

  ListBuilder<String>? _itemTypes;
  ListBuilder<String> get itemTypes =>
      _$this._itemTypes ??= ListBuilder<String>();
  set itemTypes(ListBuilder<String>? itemTypes) =>
      _$this._itemTypes = itemTypes;

  ListBuilder<EdpProtocolInfoModesEnum>? _modes;
  ListBuilder<EdpProtocolInfoModesEnum> get modes =>
      _$this._modes ??= ListBuilder<EdpProtocolInfoModesEnum>();
  set modes(ListBuilder<EdpProtocolInfoModesEnum>? modes) =>
      _$this._modes = modes;

  ListBuilder<String>? _schemas;
  ListBuilder<String> get schemas => _$this._schemas ??= ListBuilder<String>();
  set schemas(ListBuilder<String>? schemas) => _$this._schemas = schemas;

  String? _documentation;
  String? get documentation => _$this._documentation;
  set documentation(String? documentation) =>
      _$this._documentation = documentation;

  int? _maxMinor;
  int? get maxMinor => _$this._maxMinor;
  set maxMinor(int? maxMinor) => _$this._maxMinor = maxMinor;

  EdpProtocolInfoBuilder() {
    EdpProtocolInfo._defaults(this);
  }

  EdpProtocolInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _protocol = $v.protocol;
      _supported = $v.supported?.toBuilder();
      _itemTypes = $v.itemTypes.toBuilder();
      _modes = $v.modes.toBuilder();
      _schemas = $v.schemas?.toBuilder();
      _documentation = $v.documentation;
      _maxMinor = $v.maxMinor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpProtocolInfo other) {
    _$v = other as _$EdpProtocolInfo;
  }

  @override
  void update(void Function(EdpProtocolInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpProtocolInfo build() => _build();

  _$EdpProtocolInfo _build() {
    _$EdpProtocolInfo _$result;
    try {
      _$result = _$v ??
          _$EdpProtocolInfo._(
            protocol: BuiltValueNullFieldError.checkNotNull(
                protocol, r'EdpProtocolInfo', 'protocol'),
            supported: _supported?.build(),
            itemTypes: itemTypes.build(),
            modes: modes.build(),
            schemas: _schemas?.build(),
            documentation: documentation,
            maxMinor: maxMinor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supported';
        _supported?.build();
        _$failedField = 'itemTypes';
        itemTypes.build();
        _$failedField = 'modes';
        modes.build();
        _$failedField = 'schemas';
        _schemas?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EdpProtocolInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
