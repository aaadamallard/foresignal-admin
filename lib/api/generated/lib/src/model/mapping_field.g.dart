// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_field.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MappingFieldTypeEnum _$mappingFieldTypeEnum_number =
    const MappingFieldTypeEnum._('number');
const MappingFieldTypeEnum _$mappingFieldTypeEnum_integer =
    const MappingFieldTypeEnum._('integer');
const MappingFieldTypeEnum _$mappingFieldTypeEnum_string =
    const MappingFieldTypeEnum._('string');
const MappingFieldTypeEnum _$mappingFieldTypeEnum_boolean =
    const MappingFieldTypeEnum._('boolean');
const MappingFieldTypeEnum _$mappingFieldTypeEnum_unknownDefaultOpenApi =
    const MappingFieldTypeEnum._('unknownDefaultOpenApi');

MappingFieldTypeEnum _$mappingFieldTypeEnumValueOf(String name) {
  switch (name) {
    case 'number':
      return _$mappingFieldTypeEnum_number;
    case 'integer':
      return _$mappingFieldTypeEnum_integer;
    case 'string':
      return _$mappingFieldTypeEnum_string;
    case 'boolean':
      return _$mappingFieldTypeEnum_boolean;
    case 'unknownDefaultOpenApi':
      return _$mappingFieldTypeEnum_unknownDefaultOpenApi;
    default:
      return _$mappingFieldTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MappingFieldTypeEnum> _$mappingFieldTypeEnumValues =
    BuiltSet<MappingFieldTypeEnum>(const <MappingFieldTypeEnum>[
      _$mappingFieldTypeEnum_number,
      _$mappingFieldTypeEnum_integer,
      _$mappingFieldTypeEnum_string,
      _$mappingFieldTypeEnum_boolean,
      _$mappingFieldTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<MappingFieldTypeEnum> _$mappingFieldTypeEnumSerializer =
    _$MappingFieldTypeEnumSerializer();

class _$MappingFieldTypeEnumSerializer
    implements PrimitiveSerializer<MappingFieldTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number': 'number',
    'integer': 'integer',
    'string': 'string',
    'boolean': 'boolean',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'number': 'number',
    'integer': 'integer',
    'string': 'string',
    'boolean': 'boolean',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MappingFieldTypeEnum];
  @override
  final String wireName = 'MappingFieldTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    MappingFieldTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MappingFieldTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MappingFieldTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MappingField extends MappingField {
  @override
  final String name;
  @override
  final String path;
  @override
  final MappingFieldTypeEnum type;
  @override
  final MappingFieldUnit? unit;
  @override
  final num? scale;
  @override
  final num? offset;
  @override
  final JsonObject? default_;
  @override
  final BuiltList<JsonObject?>? sentinels;

  factory _$MappingField([void Function(MappingFieldBuilder)? updates]) =>
      (MappingFieldBuilder()..update(updates))._build();

  _$MappingField._({
    required this.name,
    required this.path,
    required this.type,
    this.unit,
    this.scale,
    this.offset,
    this.default_,
    this.sentinels,
  }) : super._();
  @override
  MappingField rebuild(void Function(MappingFieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MappingFieldBuilder toBuilder() => MappingFieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingField &&
        name == other.name &&
        path == other.path &&
        type == other.type &&
        unit == other.unit &&
        scale == other.scale &&
        offset == other.offset &&
        default_ == other.default_ &&
        sentinels == other.sentinels;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, scale.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jc(_$hash, sentinels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingField')
          ..add('name', name)
          ..add('path', path)
          ..add('type', type)
          ..add('unit', unit)
          ..add('scale', scale)
          ..add('offset', offset)
          ..add('default_', default_)
          ..add('sentinels', sentinels))
        .toString();
  }
}

class MappingFieldBuilder
    implements Builder<MappingField, MappingFieldBuilder> {
  _$MappingField? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  MappingFieldTypeEnum? _type;
  MappingFieldTypeEnum? get type => _$this._type;
  set type(MappingFieldTypeEnum? type) => _$this._type = type;

  MappingFieldUnitBuilder? _unit;
  MappingFieldUnitBuilder get unit =>
      _$this._unit ??= MappingFieldUnitBuilder();
  set unit(MappingFieldUnitBuilder? unit) => _$this._unit = unit;

  num? _scale;
  num? get scale => _$this._scale;
  set scale(num? scale) => _$this._scale = scale;

  num? _offset;
  num? get offset => _$this._offset;
  set offset(num? offset) => _$this._offset = offset;

  JsonObject? _default_;
  JsonObject? get default_ => _$this._default_;
  set default_(JsonObject? default_) => _$this._default_ = default_;

  ListBuilder<JsonObject?>? _sentinels;
  ListBuilder<JsonObject?> get sentinels =>
      _$this._sentinels ??= ListBuilder<JsonObject?>();
  set sentinels(ListBuilder<JsonObject?>? sentinels) =>
      _$this._sentinels = sentinels;

  MappingFieldBuilder() {
    MappingField._defaults(this);
  }

  MappingFieldBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _path = $v.path;
      _type = $v.type;
      _unit = $v.unit?.toBuilder();
      _scale = $v.scale;
      _offset = $v.offset;
      _default_ = $v.default_;
      _sentinels = $v.sentinels?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingField other) {
    _$v = other as _$MappingField;
  }

  @override
  void update(void Function(MappingFieldBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingField build() => _build();

  _$MappingField _build() {
    _$MappingField _$result;
    try {
      _$result =
          _$v ??
          _$MappingField._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'MappingField',
              'name',
            ),
            path: BuiltValueNullFieldError.checkNotNull(
              path,
              r'MappingField',
              'path',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'MappingField',
              'type',
            ),
            unit: _unit?.build(),
            scale: scale,
            offset: offset,
            default_: default_,
            sentinels: _sentinels?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unit';
        _unit?.build();

        _$failedField = 'sentinels';
        _sentinels?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MappingField',
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
