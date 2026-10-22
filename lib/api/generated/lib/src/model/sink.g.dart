// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SinkTypeEnum _$sinkTypeEnum_mqttState = const SinkTypeEnum._('mqttState');
const SinkTypeEnum _$sinkTypeEnum_cot = const SinkTypeEnum._('cot');
const SinkTypeEnum _$sinkTypeEnum_readsbJson = const SinkTypeEnum._(
  'readsbJson',
);
const SinkTypeEnum _$sinkTypeEnum_sbs = const SinkTypeEnum._('sbs');
const SinkTypeEnum _$sinkTypeEnum_nmeaAivdm = const SinkTypeEnum._('nmeaAivdm');
const SinkTypeEnum _$sinkTypeEnum_aprsIsServe = const SinkTypeEnum._(
  'aprsIsServe',
);
const SinkTypeEnum _$sinkTypeEnum_cloudevents = const SinkTypeEnum._(
  'cloudevents',
);
const SinkTypeEnum _$sinkTypeEnum_federationPush = const SinkTypeEnum._(
  'federationPush',
);

SinkTypeEnum _$sinkTypeEnumValueOf(String name) {
  switch (name) {
    case 'mqttState':
      return _$sinkTypeEnum_mqttState;
    case 'cot':
      return _$sinkTypeEnum_cot;
    case 'readsbJson':
      return _$sinkTypeEnum_readsbJson;
    case 'sbs':
      return _$sinkTypeEnum_sbs;
    case 'nmeaAivdm':
      return _$sinkTypeEnum_nmeaAivdm;
    case 'aprsIsServe':
      return _$sinkTypeEnum_aprsIsServe;
    case 'cloudevents':
      return _$sinkTypeEnum_cloudevents;
    case 'federationPush':
      return _$sinkTypeEnum_federationPush;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SinkTypeEnum> _$sinkTypeEnumValues =
    BuiltSet<SinkTypeEnum>(const <SinkTypeEnum>[
      _$sinkTypeEnum_mqttState,
      _$sinkTypeEnum_cot,
      _$sinkTypeEnum_readsbJson,
      _$sinkTypeEnum_sbs,
      _$sinkTypeEnum_nmeaAivdm,
      _$sinkTypeEnum_aprsIsServe,
      _$sinkTypeEnum_cloudevents,
      _$sinkTypeEnum_federationPush,
    ]);

const SinkKindEnum _$sinkKindEnum_CHANGE_FEED = const SinkKindEnum._(
  'CHANGE_FEED',
);
const SinkKindEnum _$sinkKindEnum_STATE_MIRROR = const SinkKindEnum._(
  'STATE_MIRROR',
);

SinkKindEnum _$sinkKindEnumValueOf(String name) {
  switch (name) {
    case 'CHANGE_FEED':
      return _$sinkKindEnum_CHANGE_FEED;
    case 'STATE_MIRROR':
      return _$sinkKindEnum_STATE_MIRROR;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SinkKindEnum> _$sinkKindEnumValues = BuiltSet<SinkKindEnum>(
  const <SinkKindEnum>[_$sinkKindEnum_CHANGE_FEED, _$sinkKindEnum_STATE_MIRROR],
);

const SinkModeEnum _$sinkModeEnum_PUSH = const SinkModeEnum._('PUSH');
const SinkModeEnum _$sinkModeEnum_SERVE = const SinkModeEnum._('SERVE');

SinkModeEnum _$sinkModeEnumValueOf(String name) {
  switch (name) {
    case 'PUSH':
      return _$sinkModeEnum_PUSH;
    case 'SERVE':
      return _$sinkModeEnum_SERVE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SinkModeEnum> _$sinkModeEnumValues = BuiltSet<SinkModeEnum>(
  const <SinkModeEnum>[_$sinkModeEnum_PUSH, _$sinkModeEnum_SERVE],
);

const SinkStateEnum _$sinkStateEnum_RUNNING = const SinkStateEnum._('RUNNING');
const SinkStateEnum _$sinkStateEnum_RESYNCING = const SinkStateEnum._(
  'RESYNCING',
);
const SinkStateEnum _$sinkStateEnum_FAILING = const SinkStateEnum._('FAILING');
const SinkStateEnum _$sinkStateEnum_STOPPED = const SinkStateEnum._('STOPPED');

SinkStateEnum _$sinkStateEnumValueOf(String name) {
  switch (name) {
    case 'RUNNING':
      return _$sinkStateEnum_RUNNING;
    case 'RESYNCING':
      return _$sinkStateEnum_RESYNCING;
    case 'FAILING':
      return _$sinkStateEnum_FAILING;
    case 'STOPPED':
      return _$sinkStateEnum_STOPPED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SinkStateEnum> _$sinkStateEnumValues =
    BuiltSet<SinkStateEnum>(const <SinkStateEnum>[
      _$sinkStateEnum_RUNNING,
      _$sinkStateEnum_RESYNCING,
      _$sinkStateEnum_FAILING,
      _$sinkStateEnum_STOPPED,
    ]);

Serializer<SinkTypeEnum> _$sinkTypeEnumSerializer = _$SinkTypeEnumSerializer();
Serializer<SinkKindEnum> _$sinkKindEnumSerializer = _$SinkKindEnumSerializer();
Serializer<SinkModeEnum> _$sinkModeEnumSerializer = _$SinkModeEnumSerializer();
Serializer<SinkStateEnum> _$sinkStateEnumSerializer =
    _$SinkStateEnumSerializer();

class _$SinkTypeEnumSerializer implements PrimitiveSerializer<SinkTypeEnum> {
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
  final Iterable<Type> types = const <Type>[SinkTypeEnum];
  @override
  final String wireName = 'SinkTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SinkTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SinkTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SinkTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SinkKindEnumSerializer implements PrimitiveSerializer<SinkKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CHANGE_FEED': 'CHANGE_FEED',
    'STATE_MIRROR': 'STATE_MIRROR',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CHANGE_FEED': 'CHANGE_FEED',
    'STATE_MIRROR': 'STATE_MIRROR',
  };

  @override
  final Iterable<Type> types = const <Type>[SinkKindEnum];
  @override
  final String wireName = 'SinkKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    SinkKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SinkKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SinkKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SinkModeEnumSerializer implements PrimitiveSerializer<SinkModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PUSH': 'PUSH',
    'SERVE': 'SERVE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PUSH': 'PUSH',
    'SERVE': 'SERVE',
  };

  @override
  final Iterable<Type> types = const <Type>[SinkModeEnum];
  @override
  final String wireName = 'SinkModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SinkModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SinkModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SinkModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SinkStateEnumSerializer implements PrimitiveSerializer<SinkStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'RUNNING': 'RUNNING',
    'RESYNCING': 'RESYNCING',
    'FAILING': 'FAILING',
    'STOPPED': 'STOPPED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RUNNING': 'RUNNING',
    'RESYNCING': 'RESYNCING',
    'FAILING': 'FAILING',
    'STOPPED': 'STOPPED',
  };

  @override
  final Iterable<Type> types = const <Type>[SinkStateEnum];
  @override
  final String wireName = 'SinkStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    SinkStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SinkStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SinkStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Sink extends Sink {
  @override
  final String id;
  @override
  final SinkTypeEnum type;
  @override
  final SinkKindEnum kind;
  @override
  final SinkModeEnum mode;
  @override
  final String name;
  @override
  final bool enabled;
  @override
  final BuiltMap<String, JsonObject?> config;
  @override
  final BuiltList<String>? secretsSet;
  @override
  final SinkFilter filter;
  @override
  final SinkStateEnum? state;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Sink([void Function(SinkBuilder)? updates]) =>
      (SinkBuilder()..update(updates))._build();

  _$Sink._({
    required this.id,
    required this.type,
    required this.kind,
    required this.mode,
    required this.name,
    required this.enabled,
    required this.config,
    this.secretsSet,
    required this.filter,
    this.state,
    required this.createdAt,
    required this.updatedAt,
  }) : super._();
  @override
  Sink rebuild(void Function(SinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkBuilder toBuilder() => SinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sink &&
        id == other.id &&
        type == other.type &&
        kind == other.kind &&
        mode == other.mode &&
        name == other.name &&
        enabled == other.enabled &&
        config == other.config &&
        secretsSet == other.secretsSet &&
        filter == other.filter &&
        state == other.state &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, secretsSet.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Sink')
          ..add('id', id)
          ..add('type', type)
          ..add('kind', kind)
          ..add('mode', mode)
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('config', config)
          ..add('secretsSet', secretsSet)
          ..add('filter', filter)
          ..add('state', state)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SinkBuilder implements Builder<Sink, SinkBuilder> {
  _$Sink? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  SinkTypeEnum? _type;
  SinkTypeEnum? get type => _$this._type;
  set type(SinkTypeEnum? type) => _$this._type = type;

  SinkKindEnum? _kind;
  SinkKindEnum? get kind => _$this._kind;
  set kind(SinkKindEnum? kind) => _$this._kind = kind;

  SinkModeEnum? _mode;
  SinkModeEnum? get mode => _$this._mode;
  set mode(SinkModeEnum? mode) => _$this._mode = mode;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  ListBuilder<String>? _secretsSet;
  ListBuilder<String> get secretsSet =>
      _$this._secretsSet ??= ListBuilder<String>();
  set secretsSet(ListBuilder<String>? secretsSet) =>
      _$this._secretsSet = secretsSet;

  SinkFilterBuilder? _filter;
  SinkFilterBuilder get filter => _$this._filter ??= SinkFilterBuilder();
  set filter(SinkFilterBuilder? filter) => _$this._filter = filter;

  SinkStateEnum? _state;
  SinkStateEnum? get state => _$this._state;
  set state(SinkStateEnum? state) => _$this._state = state;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  SinkBuilder() {
    Sink._defaults(this);
  }

  SinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _kind = $v.kind;
      _mode = $v.mode;
      _name = $v.name;
      _enabled = $v.enabled;
      _config = $v.config.toBuilder();
      _secretsSet = $v.secretsSet?.toBuilder();
      _filter = $v.filter.toBuilder();
      _state = $v.state;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sink other) {
    _$v = other as _$Sink;
  }

  @override
  void update(void Function(SinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Sink build() => _build();

  _$Sink _build() {
    _$Sink _$result;
    try {
      _$result =
          _$v ??
          _$Sink._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Sink', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(type, r'Sink', 'type'),
            kind: BuiltValueNullFieldError.checkNotNull(kind, r'Sink', 'kind'),
            mode: BuiltValueNullFieldError.checkNotNull(mode, r'Sink', 'mode'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Sink', 'name'),
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'Sink',
              'enabled',
            ),
            config: config.build(),
            secretsSet: _secretsSet?.build(),
            filter: filter.build(),
            state: state,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Sink',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'Sink',
              'updatedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        config.build();
        _$failedField = 'secretsSet';
        _secretsSet?.build();
        _$failedField = 'filter';
        filter.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Sink', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
