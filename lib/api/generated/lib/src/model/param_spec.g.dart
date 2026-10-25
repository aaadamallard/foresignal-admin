// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param_spec.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ParamSpecTypeEnum _$paramSpecTypeEnum_string = const ParamSpecTypeEnum._(
  'string',
);
const ParamSpecTypeEnum _$paramSpecTypeEnum_integer = const ParamSpecTypeEnum._(
  'integer',
);
const ParamSpecTypeEnum _$paramSpecTypeEnum_number = const ParamSpecTypeEnum._(
  'number',
);
const ParamSpecTypeEnum _$paramSpecTypeEnum_boolean = const ParamSpecTypeEnum._(
  'boolean',
);
const ParamSpecTypeEnum _$paramSpecTypeEnum_duration =
    const ParamSpecTypeEnum._('duration');
const ParamSpecTypeEnum _$paramSpecTypeEnum_bbox = const ParamSpecTypeEnum._(
  'bbox',
);
const ParamSpecTypeEnum _$paramSpecTypeEnum_stringList =
    const ParamSpecTypeEnum._('stringList');
const ParamSpecTypeEnum _$paramSpecTypeEnum_lanUrl = const ParamSpecTypeEnum._(
  'lanUrl',
);
const ParamSpecTypeEnum _$paramSpecTypeEnum_inboxPath =
    const ParamSpecTypeEnum._('inboxPath');
const ParamSpecTypeEnum _$paramSpecTypeEnum_json = const ParamSpecTypeEnum._(
  'json',
);
const ParamSpecTypeEnum _$paramSpecTypeEnum_unknownDefaultOpenApi =
    const ParamSpecTypeEnum._('unknownDefaultOpenApi');

ParamSpecTypeEnum _$paramSpecTypeEnumValueOf(String name) {
  switch (name) {
    case 'string':
      return _$paramSpecTypeEnum_string;
    case 'integer':
      return _$paramSpecTypeEnum_integer;
    case 'number':
      return _$paramSpecTypeEnum_number;
    case 'boolean':
      return _$paramSpecTypeEnum_boolean;
    case 'duration':
      return _$paramSpecTypeEnum_duration;
    case 'bbox':
      return _$paramSpecTypeEnum_bbox;
    case 'stringList':
      return _$paramSpecTypeEnum_stringList;
    case 'lanUrl':
      return _$paramSpecTypeEnum_lanUrl;
    case 'inboxPath':
      return _$paramSpecTypeEnum_inboxPath;
    case 'json':
      return _$paramSpecTypeEnum_json;
    case 'unknownDefaultOpenApi':
      return _$paramSpecTypeEnum_unknownDefaultOpenApi;
    default:
      return _$paramSpecTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ParamSpecTypeEnum> _$paramSpecTypeEnumValues =
    BuiltSet<ParamSpecTypeEnum>(const <ParamSpecTypeEnum>[
      _$paramSpecTypeEnum_string,
      _$paramSpecTypeEnum_integer,
      _$paramSpecTypeEnum_number,
      _$paramSpecTypeEnum_boolean,
      _$paramSpecTypeEnum_duration,
      _$paramSpecTypeEnum_bbox,
      _$paramSpecTypeEnum_stringList,
      _$paramSpecTypeEnum_lanUrl,
      _$paramSpecTypeEnum_inboxPath,
      _$paramSpecTypeEnum_json,
      _$paramSpecTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<ParamSpecTypeEnum> _$paramSpecTypeEnumSerializer =
    _$ParamSpecTypeEnumSerializer();

class _$ParamSpecTypeEnumSerializer
    implements PrimitiveSerializer<ParamSpecTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'string': 'string',
    'integer': 'integer',
    'number': 'number',
    'boolean': 'boolean',
    'duration': 'duration',
    'bbox': 'bbox',
    'stringList': 'string-list',
    'lanUrl': 'lan-url',
    'inboxPath': 'inbox-path',
    'json': 'json',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'string': 'string',
    'integer': 'integer',
    'number': 'number',
    'boolean': 'boolean',
    'duration': 'duration',
    'bbox': 'bbox',
    'string-list': 'stringList',
    'lan-url': 'lanUrl',
    'inbox-path': 'inboxPath',
    'json': 'json',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ParamSpecTypeEnum];
  @override
  final String wireName = 'ParamSpecTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ParamSpecTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ParamSpecTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ParamSpecTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ParamSpec extends ParamSpec {
  @override
  final String name;
  @override
  final ParamSpecTypeEnum type;
  @override
  final String? description;
  @override
  final JsonObject? default_;
  @override
  final bool? required_;
  @override
  final BuiltList<String>? allowed;

  factory _$ParamSpec([void Function(ParamSpecBuilder)? updates]) =>
      (ParamSpecBuilder()..update(updates))._build();

  _$ParamSpec._({
    required this.name,
    required this.type,
    this.description,
    this.default_,
    this.required_,
    this.allowed,
  }) : super._();
  @override
  ParamSpec rebuild(void Function(ParamSpecBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamSpecBuilder toBuilder() => ParamSpecBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamSpec &&
        name == other.name &&
        type == other.type &&
        description == other.description &&
        default_ == other.default_ &&
        required_ == other.required_ &&
        allowed == other.allowed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, allowed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamSpec')
          ..add('name', name)
          ..add('type', type)
          ..add('description', description)
          ..add('default_', default_)
          ..add('required_', required_)
          ..add('allowed', allowed))
        .toString();
  }
}

class ParamSpecBuilder implements Builder<ParamSpec, ParamSpecBuilder> {
  _$ParamSpec? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ParamSpecTypeEnum? _type;
  ParamSpecTypeEnum? get type => _$this._type;
  set type(ParamSpecTypeEnum? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  JsonObject? _default_;
  JsonObject? get default_ => _$this._default_;
  set default_(JsonObject? default_) => _$this._default_ = default_;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  ListBuilder<String>? _allowed;
  ListBuilder<String> get allowed => _$this._allowed ??= ListBuilder<String>();
  set allowed(ListBuilder<String>? allowed) => _$this._allowed = allowed;

  ParamSpecBuilder() {
    ParamSpec._defaults(this);
  }

  ParamSpecBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _description = $v.description;
      _default_ = $v.default_;
      _required_ = $v.required_;
      _allowed = $v.allowed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamSpec other) {
    _$v = other as _$ParamSpec;
  }

  @override
  void update(void Function(ParamSpecBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamSpec build() => _build();

  _$ParamSpec _build() {
    _$ParamSpec _$result;
    try {
      _$result =
          _$v ??
          _$ParamSpec._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'ParamSpec',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ParamSpec',
              'type',
            ),
            description: description,
            default_: default_,
            required_: required_,
            allowed: _allowed?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowed';
        _allowed?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ParamSpec',
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
