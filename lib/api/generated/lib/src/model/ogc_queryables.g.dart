// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_queryables.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OgcQueryablesTypeEnum _$ogcQueryablesTypeEnum_object =
    const OgcQueryablesTypeEnum._('object');
const OgcQueryablesTypeEnum _$ogcQueryablesTypeEnum_unknownDefaultOpenApi =
    const OgcQueryablesTypeEnum._('unknownDefaultOpenApi');

OgcQueryablesTypeEnum _$ogcQueryablesTypeEnumValueOf(String name) {
  switch (name) {
    case 'object':
      return _$ogcQueryablesTypeEnum_object;
    case 'unknownDefaultOpenApi':
      return _$ogcQueryablesTypeEnum_unknownDefaultOpenApi;
    default:
      return _$ogcQueryablesTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OgcQueryablesTypeEnum> _$ogcQueryablesTypeEnumValues =
    BuiltSet<OgcQueryablesTypeEnum>(const <OgcQueryablesTypeEnum>[
      _$ogcQueryablesTypeEnum_object,
      _$ogcQueryablesTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<OgcQueryablesTypeEnum> _$ogcQueryablesTypeEnumSerializer =
    _$OgcQueryablesTypeEnumSerializer();

class _$OgcQueryablesTypeEnumSerializer
    implements PrimitiveSerializer<OgcQueryablesTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'object': 'object',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'object': 'object',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OgcQueryablesTypeEnum];
  @override
  final String wireName = 'OgcQueryablesTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    OgcQueryablesTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OgcQueryablesTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OgcQueryablesTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OgcQueryables extends OgcQueryables {
  @override
  final String? dollarSchema;
  @override
  final String? dollarId;
  @override
  final OgcQueryablesTypeEnum type;
  @override
  final String? title;
  @override
  final BuiltMap<String, BuiltMap<String, JsonObject?>> properties;
  @override
  final bool? additionalProperties;

  factory _$OgcQueryables([void Function(OgcQueryablesBuilder)? updates]) =>
      (OgcQueryablesBuilder()..update(updates))._build();

  _$OgcQueryables._({
    this.dollarSchema,
    this.dollarId,
    required this.type,
    this.title,
    required this.properties,
    this.additionalProperties,
  }) : super._();
  @override
  OgcQueryables rebuild(void Function(OgcQueryablesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcQueryablesBuilder toBuilder() => OgcQueryablesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcQueryables &&
        dollarSchema == other.dollarSchema &&
        dollarId == other.dollarId &&
        type == other.type &&
        title == other.title &&
        properties == other.properties &&
        additionalProperties == other.additionalProperties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dollarSchema.hashCode);
    _$hash = $jc(_$hash, dollarId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jc(_$hash, additionalProperties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcQueryables')
          ..add('dollarSchema', dollarSchema)
          ..add('dollarId', dollarId)
          ..add('type', type)
          ..add('title', title)
          ..add('properties', properties)
          ..add('additionalProperties', additionalProperties))
        .toString();
  }
}

class OgcQueryablesBuilder
    implements Builder<OgcQueryables, OgcQueryablesBuilder> {
  _$OgcQueryables? _$v;

  String? _dollarSchema;
  String? get dollarSchema => _$this._dollarSchema;
  set dollarSchema(String? dollarSchema) => _$this._dollarSchema = dollarSchema;

  String? _dollarId;
  String? get dollarId => _$this._dollarId;
  set dollarId(String? dollarId) => _$this._dollarId = dollarId;

  OgcQueryablesTypeEnum? _type;
  OgcQueryablesTypeEnum? get type => _$this._type;
  set type(OgcQueryablesTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  MapBuilder<String, BuiltMap<String, JsonObject?>>? _properties;
  MapBuilder<String, BuiltMap<String, JsonObject?>> get properties =>
      _$this._properties ??=
          MapBuilder<String, BuiltMap<String, JsonObject?>>();
  set properties(
    MapBuilder<String, BuiltMap<String, JsonObject?>>? properties,
  ) => _$this._properties = properties;

  bool? _additionalProperties;
  bool? get additionalProperties => _$this._additionalProperties;
  set additionalProperties(bool? additionalProperties) =>
      _$this._additionalProperties = additionalProperties;

  OgcQueryablesBuilder() {
    OgcQueryables._defaults(this);
  }

  OgcQueryablesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dollarSchema = $v.dollarSchema;
      _dollarId = $v.dollarId;
      _type = $v.type;
      _title = $v.title;
      _properties = $v.properties.toBuilder();
      _additionalProperties = $v.additionalProperties;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcQueryables other) {
    _$v = other as _$OgcQueryables;
  }

  @override
  void update(void Function(OgcQueryablesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcQueryables build() => _build();

  _$OgcQueryables _build() {
    _$OgcQueryables _$result;
    try {
      _$result =
          _$v ??
          _$OgcQueryables._(
            dollarSchema: dollarSchema,
            dollarId: dollarId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'OgcQueryables',
              'type',
            ),
            title: title,
            properties: properties.build(),
            additionalProperties: additionalProperties,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        properties.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OgcQueryables',
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
