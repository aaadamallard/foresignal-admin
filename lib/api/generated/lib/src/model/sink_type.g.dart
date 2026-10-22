// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SinkTypeIdEnum _$sinkTypeIdEnum_mqttState = const SinkTypeIdEnum._(
  'mqttState',
);
const SinkTypeIdEnum _$sinkTypeIdEnum_cot = const SinkTypeIdEnum._('cot');
const SinkTypeIdEnum _$sinkTypeIdEnum_readsbJson = const SinkTypeIdEnum._(
  'readsbJson',
);
const SinkTypeIdEnum _$sinkTypeIdEnum_sbs = const SinkTypeIdEnum._('sbs');
const SinkTypeIdEnum _$sinkTypeIdEnum_nmeaAivdm = const SinkTypeIdEnum._(
  'nmeaAivdm',
);
const SinkTypeIdEnum _$sinkTypeIdEnum_aprsIsServe = const SinkTypeIdEnum._(
  'aprsIsServe',
);
const SinkTypeIdEnum _$sinkTypeIdEnum_cloudevents = const SinkTypeIdEnum._(
  'cloudevents',
);
const SinkTypeIdEnum _$sinkTypeIdEnum_federationPush = const SinkTypeIdEnum._(
  'federationPush',
);

SinkTypeIdEnum _$sinkTypeIdEnumValueOf(String name) {
  switch (name) {
    case 'mqttState':
      return _$sinkTypeIdEnum_mqttState;
    case 'cot':
      return _$sinkTypeIdEnum_cot;
    case 'readsbJson':
      return _$sinkTypeIdEnum_readsbJson;
    case 'sbs':
      return _$sinkTypeIdEnum_sbs;
    case 'nmeaAivdm':
      return _$sinkTypeIdEnum_nmeaAivdm;
    case 'aprsIsServe':
      return _$sinkTypeIdEnum_aprsIsServe;
    case 'cloudevents':
      return _$sinkTypeIdEnum_cloudevents;
    case 'federationPush':
      return _$sinkTypeIdEnum_federationPush;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SinkTypeIdEnum> _$sinkTypeIdEnumValues =
    BuiltSet<SinkTypeIdEnum>(const <SinkTypeIdEnum>[
      _$sinkTypeIdEnum_mqttState,
      _$sinkTypeIdEnum_cot,
      _$sinkTypeIdEnum_readsbJson,
      _$sinkTypeIdEnum_sbs,
      _$sinkTypeIdEnum_nmeaAivdm,
      _$sinkTypeIdEnum_aprsIsServe,
      _$sinkTypeIdEnum_cloudevents,
      _$sinkTypeIdEnum_federationPush,
    ]);

const SinkTypeKindEnum _$sinkTypeKindEnum_CHANGE_FEED =
    const SinkTypeKindEnum._('CHANGE_FEED');
const SinkTypeKindEnum _$sinkTypeKindEnum_STATE_MIRROR =
    const SinkTypeKindEnum._('STATE_MIRROR');

SinkTypeKindEnum _$sinkTypeKindEnumValueOf(String name) {
  switch (name) {
    case 'CHANGE_FEED':
      return _$sinkTypeKindEnum_CHANGE_FEED;
    case 'STATE_MIRROR':
      return _$sinkTypeKindEnum_STATE_MIRROR;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SinkTypeKindEnum> _$sinkTypeKindEnumValues =
    BuiltSet<SinkTypeKindEnum>(const <SinkTypeKindEnum>[
      _$sinkTypeKindEnum_CHANGE_FEED,
      _$sinkTypeKindEnum_STATE_MIRROR,
    ]);

const SinkTypeModesEnum _$sinkTypeModesEnum_PUSH = const SinkTypeModesEnum._(
  'PUSH',
);
const SinkTypeModesEnum _$sinkTypeModesEnum_SERVE = const SinkTypeModesEnum._(
  'SERVE',
);

SinkTypeModesEnum _$sinkTypeModesEnumValueOf(String name) {
  switch (name) {
    case 'PUSH':
      return _$sinkTypeModesEnum_PUSH;
    case 'SERVE':
      return _$sinkTypeModesEnum_SERVE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SinkTypeModesEnum> _$sinkTypeModesEnumValues =
    BuiltSet<SinkTypeModesEnum>(const <SinkTypeModesEnum>[
      _$sinkTypeModesEnum_PUSH,
      _$sinkTypeModesEnum_SERVE,
    ]);

Serializer<SinkTypeIdEnum> _$sinkTypeIdEnumSerializer =
    _$SinkTypeIdEnumSerializer();
Serializer<SinkTypeKindEnum> _$sinkTypeKindEnumSerializer =
    _$SinkTypeKindEnumSerializer();
Serializer<SinkTypeModesEnum> _$sinkTypeModesEnumSerializer =
    _$SinkTypeModesEnumSerializer();

class _$SinkTypeIdEnumSerializer
    implements PrimitiveSerializer<SinkTypeIdEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mqttState': 'mqtt-state',
    'cot': 'cot',
    'readsbJson': 'readsb-json',
    'sbs': 'sbs',
    'nmeaAivdm': 'nmea-aivdm',
    'aprsIsServe': 'aprs-is-serve',
    'cloudevents': 'cloudevents',
    'federationPush': 'federation-push',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mqtt-state': 'mqttState',
    'cot': 'cot',
    'readsb-json': 'readsbJson',
    'sbs': 'sbs',
    'nmea-aivdm': 'nmeaAivdm',
    'aprs-is-serve': 'aprsIsServe',
    'cloudevents': 'cloudevents',
    'federation-push': 'federationPush',
  };

  @override
  final Iterable<Type> types = const <Type>[SinkTypeIdEnum];
  @override
  final String wireName = 'SinkTypeIdEnum';

  @override
  Object serialize(
    Serializers serializers,
    SinkTypeIdEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SinkTypeIdEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SinkTypeIdEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SinkTypeKindEnumSerializer
    implements PrimitiveSerializer<SinkTypeKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CHANGE_FEED': 'CHANGE_FEED',
    'STATE_MIRROR': 'STATE_MIRROR',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CHANGE_FEED': 'CHANGE_FEED',
    'STATE_MIRROR': 'STATE_MIRROR',
  };

  @override
  final Iterable<Type> types = const <Type>[SinkTypeKindEnum];
  @override
  final String wireName = 'SinkTypeKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    SinkTypeKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SinkTypeKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SinkTypeKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SinkTypeModesEnumSerializer
    implements PrimitiveSerializer<SinkTypeModesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PUSH': 'PUSH',
    'SERVE': 'SERVE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PUSH': 'PUSH',
    'SERVE': 'SERVE',
  };

  @override
  final Iterable<Type> types = const <Type>[SinkTypeModesEnum];
  @override
  final String wireName = 'SinkTypeModesEnum';

  @override
  Object serialize(
    Serializers serializers,
    SinkTypeModesEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SinkTypeModesEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SinkTypeModesEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SinkType extends SinkType {
  @override
  final SinkTypeIdEnum id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final SinkTypeKindEnum kind;
  @override
  final BuiltList<SinkTypeModesEnum> modes;
  @override
  final BuiltMap<String, JsonObject?> configSchema;
  @override
  final BuiltList<String> secretFields;
  @override
  final int? defaultMaxPerSecond;

  factory _$SinkType([void Function(SinkTypeBuilder)? updates]) =>
      (SinkTypeBuilder()..update(updates))._build();

  _$SinkType._({
    required this.id,
    required this.name,
    this.description,
    required this.kind,
    required this.modes,
    required this.configSchema,
    required this.secretFields,
    this.defaultMaxPerSecond,
  }) : super._();
  @override
  SinkType rebuild(void Function(SinkTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkTypeBuilder toBuilder() => SinkTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinkType &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        kind == other.kind &&
        modes == other.modes &&
        configSchema == other.configSchema &&
        secretFields == other.secretFields &&
        defaultMaxPerSecond == other.defaultMaxPerSecond;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, modes.hashCode);
    _$hash = $jc(_$hash, configSchema.hashCode);
    _$hash = $jc(_$hash, secretFields.hashCode);
    _$hash = $jc(_$hash, defaultMaxPerSecond.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SinkType')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('kind', kind)
          ..add('modes', modes)
          ..add('configSchema', configSchema)
          ..add('secretFields', secretFields)
          ..add('defaultMaxPerSecond', defaultMaxPerSecond))
        .toString();
  }
}

class SinkTypeBuilder implements Builder<SinkType, SinkTypeBuilder> {
  _$SinkType? _$v;

  SinkTypeIdEnum? _id;
  SinkTypeIdEnum? get id => _$this._id;
  set id(SinkTypeIdEnum? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  SinkTypeKindEnum? _kind;
  SinkTypeKindEnum? get kind => _$this._kind;
  set kind(SinkTypeKindEnum? kind) => _$this._kind = kind;

  ListBuilder<SinkTypeModesEnum>? _modes;
  ListBuilder<SinkTypeModesEnum> get modes =>
      _$this._modes ??= ListBuilder<SinkTypeModesEnum>();
  set modes(ListBuilder<SinkTypeModesEnum>? modes) => _$this._modes = modes;

  MapBuilder<String, JsonObject?>? _configSchema;
  MapBuilder<String, JsonObject?> get configSchema =>
      _$this._configSchema ??= MapBuilder<String, JsonObject?>();
  set configSchema(MapBuilder<String, JsonObject?>? configSchema) =>
      _$this._configSchema = configSchema;

  ListBuilder<String>? _secretFields;
  ListBuilder<String> get secretFields =>
      _$this._secretFields ??= ListBuilder<String>();
  set secretFields(ListBuilder<String>? secretFields) =>
      _$this._secretFields = secretFields;

  int? _defaultMaxPerSecond;
  int? get defaultMaxPerSecond => _$this._defaultMaxPerSecond;
  set defaultMaxPerSecond(int? defaultMaxPerSecond) =>
      _$this._defaultMaxPerSecond = defaultMaxPerSecond;

  SinkTypeBuilder() {
    SinkType._defaults(this);
  }

  SinkTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _kind = $v.kind;
      _modes = $v.modes.toBuilder();
      _configSchema = $v.configSchema.toBuilder();
      _secretFields = $v.secretFields.toBuilder();
      _defaultMaxPerSecond = $v.defaultMaxPerSecond;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SinkType other) {
    _$v = other as _$SinkType;
  }

  @override
  void update(void Function(SinkTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SinkType build() => _build();

  _$SinkType _build() {
    _$SinkType _$result;
    try {
      _$result =
          _$v ??
          _$SinkType._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'SinkType', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'SinkType',
              'name',
            ),
            description: description,
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'SinkType',
              'kind',
            ),
            modes: modes.build(),
            configSchema: configSchema.build(),
            secretFields: secretFields.build(),
            defaultMaxPerSecond: defaultMaxPerSecond,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'modes';
        modes.build();
        _$failedField = 'configSchema';
        configSchema.build();
        _$failedField = 'secretFields';
        secretFields.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SinkType',
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
