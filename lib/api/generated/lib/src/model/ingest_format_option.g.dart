// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_format_option.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IngestFormatOptionTypeEnum _$ingestFormatOptionTypeEnum_string =
    const IngestFormatOptionTypeEnum._('string');
const IngestFormatOptionTypeEnum _$ingestFormatOptionTypeEnum_integer =
    const IngestFormatOptionTypeEnum._('integer');
const IngestFormatOptionTypeEnum _$ingestFormatOptionTypeEnum_number =
    const IngestFormatOptionTypeEnum._('number');
const IngestFormatOptionTypeEnum _$ingestFormatOptionTypeEnum_boolean =
    const IngestFormatOptionTypeEnum._('boolean');
const IngestFormatOptionTypeEnum _$ingestFormatOptionTypeEnum_object =
    const IngestFormatOptionTypeEnum._('object');
const IngestFormatOptionTypeEnum _$ingestFormatOptionTypeEnum_array =
    const IngestFormatOptionTypeEnum._('array');

IngestFormatOptionTypeEnum _$ingestFormatOptionTypeEnumValueOf(String name) {
  switch (name) {
    case 'string':
      return _$ingestFormatOptionTypeEnum_string;
    case 'integer':
      return _$ingestFormatOptionTypeEnum_integer;
    case 'number':
      return _$ingestFormatOptionTypeEnum_number;
    case 'boolean':
      return _$ingestFormatOptionTypeEnum_boolean;
    case 'object':
      return _$ingestFormatOptionTypeEnum_object;
    case 'array':
      return _$ingestFormatOptionTypeEnum_array;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IngestFormatOptionTypeEnum> _$ingestFormatOptionTypeEnumValues =
    BuiltSet<IngestFormatOptionTypeEnum>(const <IngestFormatOptionTypeEnum>[
      _$ingestFormatOptionTypeEnum_string,
      _$ingestFormatOptionTypeEnum_integer,
      _$ingestFormatOptionTypeEnum_number,
      _$ingestFormatOptionTypeEnum_boolean,
      _$ingestFormatOptionTypeEnum_object,
      _$ingestFormatOptionTypeEnum_array,
    ]);

Serializer<IngestFormatOptionTypeEnum> _$ingestFormatOptionTypeEnumSerializer =
    _$IngestFormatOptionTypeEnumSerializer();

class _$IngestFormatOptionTypeEnumSerializer
    implements PrimitiveSerializer<IngestFormatOptionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'string': 'string',
    'integer': 'integer',
    'number': 'number',
    'boolean': 'boolean',
    'object': 'object',
    'array': 'array',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'string': 'string',
    'integer': 'integer',
    'number': 'number',
    'boolean': 'boolean',
    'object': 'object',
    'array': 'array',
  };

  @override
  final Iterable<Type> types = const <Type>[IngestFormatOptionTypeEnum];
  @override
  final String wireName = 'IngestFormatOptionTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    IngestFormatOptionTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IngestFormatOptionTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IngestFormatOptionTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IngestFormatOption extends IngestFormatOption {
  @override
  final String name;
  @override
  final IngestFormatOptionTypeEnum type;
  @override
  final bool? required_;
  @override
  final JsonObject? default_;
  @override
  final String? description;

  factory _$IngestFormatOption([
    void Function(IngestFormatOptionBuilder)? updates,
  ]) => (IngestFormatOptionBuilder()..update(updates))._build();

  _$IngestFormatOption._({
    required this.name,
    required this.type,
    this.required_,
    this.default_,
    this.description,
  }) : super._();
  @override
  IngestFormatOption rebuild(
    void Function(IngestFormatOptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IngestFormatOptionBuilder toBuilder() =>
      IngestFormatOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestFormatOption &&
        name == other.name &&
        type == other.type &&
        required_ == other.required_ &&
        default_ == other.default_ &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestFormatOption')
          ..add('name', name)
          ..add('type', type)
          ..add('required_', required_)
          ..add('default_', default_)
          ..add('description', description))
        .toString();
  }
}

class IngestFormatOptionBuilder
    implements Builder<IngestFormatOption, IngestFormatOptionBuilder> {
  _$IngestFormatOption? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  IngestFormatOptionTypeEnum? _type;
  IngestFormatOptionTypeEnum? get type => _$this._type;
  set type(IngestFormatOptionTypeEnum? type) => _$this._type = type;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  JsonObject? _default_;
  JsonObject? get default_ => _$this._default_;
  set default_(JsonObject? default_) => _$this._default_ = default_;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  IngestFormatOptionBuilder() {
    IngestFormatOption._defaults(this);
  }

  IngestFormatOptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _required_ = $v.required_;
      _default_ = $v.default_;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestFormatOption other) {
    _$v = other as _$IngestFormatOption;
  }

  @override
  void update(void Function(IngestFormatOptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestFormatOption build() => _build();

  _$IngestFormatOption _build() {
    final _$result =
        _$v ??
        _$IngestFormatOption._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'IngestFormatOption',
            'name',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'IngestFormatOption',
            'type',
          ),
          required_: required_,
          default_: default_,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
