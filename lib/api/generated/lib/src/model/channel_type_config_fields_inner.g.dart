// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_type_config_fields_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChannelTypeConfigFieldsInnerTypeEnum
    _$channelTypeConfigFieldsInnerTypeEnum_string =
    const ChannelTypeConfigFieldsInnerTypeEnum._('string');
const ChannelTypeConfigFieldsInnerTypeEnum
    _$channelTypeConfigFieldsInnerTypeEnum_url =
    const ChannelTypeConfigFieldsInnerTypeEnum._('url');
const ChannelTypeConfigFieldsInnerTypeEnum
    _$channelTypeConfigFieldsInnerTypeEnum_integer =
    const ChannelTypeConfigFieldsInnerTypeEnum._('integer');
const ChannelTypeConfigFieldsInnerTypeEnum
    _$channelTypeConfigFieldsInnerTypeEnum_number =
    const ChannelTypeConfigFieldsInnerTypeEnum._('number');
const ChannelTypeConfigFieldsInnerTypeEnum
    _$channelTypeConfigFieldsInnerTypeEnum_boolean =
    const ChannelTypeConfigFieldsInnerTypeEnum._('boolean');
const ChannelTypeConfigFieldsInnerTypeEnum
    _$channelTypeConfigFieldsInnerTypeEnum_stringList =
    const ChannelTypeConfigFieldsInnerTypeEnum._('stringList');
const ChannelTypeConfigFieldsInnerTypeEnum
    _$channelTypeConfigFieldsInnerTypeEnum_map =
    const ChannelTypeConfigFieldsInnerTypeEnum._('map');
const ChannelTypeConfigFieldsInnerTypeEnum
    _$channelTypeConfigFieldsInnerTypeEnum_enum_ =
    const ChannelTypeConfigFieldsInnerTypeEnum._('enum_');

ChannelTypeConfigFieldsInnerTypeEnum
    _$channelTypeConfigFieldsInnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'string':
      return _$channelTypeConfigFieldsInnerTypeEnum_string;
    case 'url':
      return _$channelTypeConfigFieldsInnerTypeEnum_url;
    case 'integer':
      return _$channelTypeConfigFieldsInnerTypeEnum_integer;
    case 'number':
      return _$channelTypeConfigFieldsInnerTypeEnum_number;
    case 'boolean':
      return _$channelTypeConfigFieldsInnerTypeEnum_boolean;
    case 'stringList':
      return _$channelTypeConfigFieldsInnerTypeEnum_stringList;
    case 'map':
      return _$channelTypeConfigFieldsInnerTypeEnum_map;
    case 'enum_':
      return _$channelTypeConfigFieldsInnerTypeEnum_enum_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChannelTypeConfigFieldsInnerTypeEnum>
    _$channelTypeConfigFieldsInnerTypeEnumValues = BuiltSet<
        ChannelTypeConfigFieldsInnerTypeEnum>(const <ChannelTypeConfigFieldsInnerTypeEnum>[
  _$channelTypeConfigFieldsInnerTypeEnum_string,
  _$channelTypeConfigFieldsInnerTypeEnum_url,
  _$channelTypeConfigFieldsInnerTypeEnum_integer,
  _$channelTypeConfigFieldsInnerTypeEnum_number,
  _$channelTypeConfigFieldsInnerTypeEnum_boolean,
  _$channelTypeConfigFieldsInnerTypeEnum_stringList,
  _$channelTypeConfigFieldsInnerTypeEnum_map,
  _$channelTypeConfigFieldsInnerTypeEnum_enum_,
]);

Serializer<ChannelTypeConfigFieldsInnerTypeEnum>
    _$channelTypeConfigFieldsInnerTypeEnumSerializer =
    _$ChannelTypeConfigFieldsInnerTypeEnumSerializer();

class _$ChannelTypeConfigFieldsInnerTypeEnumSerializer
    implements PrimitiveSerializer<ChannelTypeConfigFieldsInnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'string': 'string',
    'url': 'url',
    'integer': 'integer',
    'number': 'number',
    'boolean': 'boolean',
    'stringList': 'string-list',
    'map': 'map',
    'enum_': 'enum',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'string': 'string',
    'url': 'url',
    'integer': 'integer',
    'number': 'number',
    'boolean': 'boolean',
    'string-list': 'stringList',
    'map': 'map',
    'enum': 'enum_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChannelTypeConfigFieldsInnerTypeEnum
  ];
  @override
  final String wireName = 'ChannelTypeConfigFieldsInnerTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ChannelTypeConfigFieldsInnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChannelTypeConfigFieldsInnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChannelTypeConfigFieldsInnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChannelTypeConfigFieldsInner extends ChannelTypeConfigFieldsInner {
  @override
  final String name;
  @override
  final ChannelTypeConfigFieldsInnerTypeEnum type;
  @override
  final bool required_;
  @override
  final String? description;
  @override
  final JsonObject? default_;
  @override
  final BuiltList<String>? allowed;

  factory _$ChannelTypeConfigFieldsInner(
          [void Function(ChannelTypeConfigFieldsInnerBuilder)? updates]) =>
      (ChannelTypeConfigFieldsInnerBuilder()..update(updates))._build();

  _$ChannelTypeConfigFieldsInner._(
      {required this.name,
      required this.type,
      required this.required_,
      this.description,
      this.default_,
      this.allowed})
      : super._();
  @override
  ChannelTypeConfigFieldsInner rebuild(
          void Function(ChannelTypeConfigFieldsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChannelTypeConfigFieldsInnerBuilder toBuilder() =>
      ChannelTypeConfigFieldsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelTypeConfigFieldsInner &&
        name == other.name &&
        type == other.type &&
        required_ == other.required_ &&
        description == other.description &&
        default_ == other.default_ &&
        allowed == other.allowed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jc(_$hash, allowed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChannelTypeConfigFieldsInner')
          ..add('name', name)
          ..add('type', type)
          ..add('required_', required_)
          ..add('description', description)
          ..add('default_', default_)
          ..add('allowed', allowed))
        .toString();
  }
}

class ChannelTypeConfigFieldsInnerBuilder
    implements
        Builder<ChannelTypeConfigFieldsInner,
            ChannelTypeConfigFieldsInnerBuilder> {
  _$ChannelTypeConfigFieldsInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ChannelTypeConfigFieldsInnerTypeEnum? _type;
  ChannelTypeConfigFieldsInnerTypeEnum? get type => _$this._type;
  set type(ChannelTypeConfigFieldsInnerTypeEnum? type) => _$this._type = type;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  JsonObject? _default_;
  JsonObject? get default_ => _$this._default_;
  set default_(JsonObject? default_) => _$this._default_ = default_;

  ListBuilder<String>? _allowed;
  ListBuilder<String> get allowed => _$this._allowed ??= ListBuilder<String>();
  set allowed(ListBuilder<String>? allowed) => _$this._allowed = allowed;

  ChannelTypeConfigFieldsInnerBuilder() {
    ChannelTypeConfigFieldsInner._defaults(this);
  }

  ChannelTypeConfigFieldsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _required_ = $v.required_;
      _description = $v.description;
      _default_ = $v.default_;
      _allowed = $v.allowed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelTypeConfigFieldsInner other) {
    _$v = other as _$ChannelTypeConfigFieldsInner;
  }

  @override
  void update(void Function(ChannelTypeConfigFieldsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChannelTypeConfigFieldsInner build() => _build();

  _$ChannelTypeConfigFieldsInner _build() {
    _$ChannelTypeConfigFieldsInner _$result;
    try {
      _$result = _$v ??
          _$ChannelTypeConfigFieldsInner._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ChannelTypeConfigFieldsInner', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ChannelTypeConfigFieldsInner', 'type'),
            required_: BuiltValueNullFieldError.checkNotNull(
                required_, r'ChannelTypeConfigFieldsInner', 'required_'),
            description: description,
            default_: default_,
            allowed: _allowed?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowed';
        _allowed?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChannelTypeConfigFieldsInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
