// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SinkCreateTypeEnum _$sinkCreateTypeEnum_mqttState =
    const SinkCreateTypeEnum._('mqttState');
const SinkCreateTypeEnum _$sinkCreateTypeEnum_cot =
    const SinkCreateTypeEnum._('cot');
const SinkCreateTypeEnum _$sinkCreateTypeEnum_readsbJson =
    const SinkCreateTypeEnum._('readsbJson');
const SinkCreateTypeEnum _$sinkCreateTypeEnum_sbs =
    const SinkCreateTypeEnum._('sbs');
const SinkCreateTypeEnum _$sinkCreateTypeEnum_nmeaAivdm =
    const SinkCreateTypeEnum._('nmeaAivdm');
const SinkCreateTypeEnum _$sinkCreateTypeEnum_aprsIsServe =
    const SinkCreateTypeEnum._('aprsIsServe');
const SinkCreateTypeEnum _$sinkCreateTypeEnum_cloudevents =
    const SinkCreateTypeEnum._('cloudevents');
const SinkCreateTypeEnum _$sinkCreateTypeEnum_federationPush =
    const SinkCreateTypeEnum._('federationPush');

SinkCreateTypeEnum _$sinkCreateTypeEnumValueOf(String name) {
  switch (name) {
    case 'mqttState':
      return _$sinkCreateTypeEnum_mqttState;
    case 'cot':
      return _$sinkCreateTypeEnum_cot;
    case 'readsbJson':
      return _$sinkCreateTypeEnum_readsbJson;
    case 'sbs':
      return _$sinkCreateTypeEnum_sbs;
    case 'nmeaAivdm':
      return _$sinkCreateTypeEnum_nmeaAivdm;
    case 'aprsIsServe':
      return _$sinkCreateTypeEnum_aprsIsServe;
    case 'cloudevents':
      return _$sinkCreateTypeEnum_cloudevents;
    case 'federationPush':
      return _$sinkCreateTypeEnum_federationPush;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SinkCreateTypeEnum> _$sinkCreateTypeEnumValues =
    BuiltSet<SinkCreateTypeEnum>(const <SinkCreateTypeEnum>[
  _$sinkCreateTypeEnum_mqttState,
  _$sinkCreateTypeEnum_cot,
  _$sinkCreateTypeEnum_readsbJson,
  _$sinkCreateTypeEnum_sbs,
  _$sinkCreateTypeEnum_nmeaAivdm,
  _$sinkCreateTypeEnum_aprsIsServe,
  _$sinkCreateTypeEnum_cloudevents,
  _$sinkCreateTypeEnum_federationPush,
]);

Serializer<SinkCreateTypeEnum> _$sinkCreateTypeEnumSerializer =
    _$SinkCreateTypeEnumSerializer();

class _$SinkCreateTypeEnumSerializer
    implements PrimitiveSerializer<SinkCreateTypeEnum> {
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
  final Iterable<Type> types = const <Type>[SinkCreateTypeEnum];
  @override
  final String wireName = 'SinkCreateTypeEnum';

  @override
  Object serialize(Serializers serializers, SinkCreateTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SinkCreateTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SinkCreateTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SinkCreate extends SinkCreate {
  @override
  final String id;
  @override
  final SinkCreateTypeEnum type;
  @override
  final String name;
  @override
  final bool? enabled;
  @override
  final BuiltMap<String, JsonObject?> config;
  @override
  final BuiltMap<String, String>? secrets;
  @override
  final SinkFilter? filter;

  factory _$SinkCreate([void Function(SinkCreateBuilder)? updates]) =>
      (SinkCreateBuilder()..update(updates))._build();

  _$SinkCreate._(
      {required this.id,
      required this.type,
      required this.name,
      this.enabled,
      required this.config,
      this.secrets,
      this.filter})
      : super._();
  @override
  SinkCreate rebuild(void Function(SinkCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkCreateBuilder toBuilder() => SinkCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinkCreate &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        enabled == other.enabled &&
        config == other.config &&
        secrets == other.secrets &&
        filter == other.filter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, secrets.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SinkCreate')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('config', config)
          ..add('secrets', secrets)
          ..add('filter', filter))
        .toString();
  }
}

class SinkCreateBuilder implements Builder<SinkCreate, SinkCreateBuilder> {
  _$SinkCreate? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  SinkCreateTypeEnum? _type;
  SinkCreateTypeEnum? get type => _$this._type;
  set type(SinkCreateTypeEnum? type) => _$this._type = type;

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

  MapBuilder<String, String>? _secrets;
  MapBuilder<String, String> get secrets =>
      _$this._secrets ??= MapBuilder<String, String>();
  set secrets(MapBuilder<String, String>? secrets) => _$this._secrets = secrets;

  SinkFilterBuilder? _filter;
  SinkFilterBuilder get filter => _$this._filter ??= SinkFilterBuilder();
  set filter(SinkFilterBuilder? filter) => _$this._filter = filter;

  SinkCreateBuilder() {
    SinkCreate._defaults(this);
  }

  SinkCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _name = $v.name;
      _enabled = $v.enabled;
      _config = $v.config.toBuilder();
      _secrets = $v.secrets?.toBuilder();
      _filter = $v.filter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SinkCreate other) {
    _$v = other as _$SinkCreate;
  }

  @override
  void update(void Function(SinkCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SinkCreate build() => _build();

  _$SinkCreate _build() {
    _$SinkCreate _$result;
    try {
      _$result = _$v ??
          _$SinkCreate._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'SinkCreate', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'SinkCreate', 'type'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'SinkCreate', 'name'),
            enabled: enabled,
            config: config.build(),
            secrets: _secrets?.build(),
            filter: _filter?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        config.build();
        _$failedField = 'secrets';
        _secrets?.build();
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SinkCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
