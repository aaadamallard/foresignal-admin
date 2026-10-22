// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecaster.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecasterTypeEnum _$forecasterTypeEnum_baseRate =
    const ForecasterTypeEnum._('baseRate');
const ForecasterTypeEnum _$forecasterTypeEnum_climatology =
    const ForecasterTypeEnum._('climatology');
const ForecasterTypeEnum _$forecasterTypeEnum_persistence =
    const ForecasterTypeEnum._('persistence');
const ForecasterTypeEnum _$forecasterTypeEnum_statistical =
    const ForecasterTypeEnum._('statistical');
const ForecasterTypeEnum _$forecasterTypeEnum_precursor =
    const ForecasterTypeEnum._('precursor');
const ForecasterTypeEnum _$forecasterTypeEnum_analog =
    const ForecasterTypeEnum._('analog');
const ForecasterTypeEnum _$forecasterTypeEnum_threshold =
    const ForecasterTypeEnum._('threshold');
const ForecasterTypeEnum _$forecasterTypeEnum_impact =
    const ForecasterTypeEnum._('impact');
const ForecasterTypeEnum _$forecasterTypeEnum_indicatorBayes =
    const ForecasterTypeEnum._('indicatorBayes');
const ForecasterTypeEnum _$forecasterTypeEnum_llm = const ForecasterTypeEnum._(
  'llm',
);
const ForecasterTypeEnum _$forecasterTypeEnum_operator_ =
    const ForecasterTypeEnum._('operator_');
const ForecasterTypeEnum _$forecasterTypeEnum_external_ =
    const ForecasterTypeEnum._('external_');
const ForecasterTypeEnum _$forecasterTypeEnum_ensemble =
    const ForecasterTypeEnum._('ensemble');

ForecasterTypeEnum _$forecasterTypeEnumValueOf(String name) {
  switch (name) {
    case 'baseRate':
      return _$forecasterTypeEnum_baseRate;
    case 'climatology':
      return _$forecasterTypeEnum_climatology;
    case 'persistence':
      return _$forecasterTypeEnum_persistence;
    case 'statistical':
      return _$forecasterTypeEnum_statistical;
    case 'precursor':
      return _$forecasterTypeEnum_precursor;
    case 'analog':
      return _$forecasterTypeEnum_analog;
    case 'threshold':
      return _$forecasterTypeEnum_threshold;
    case 'impact':
      return _$forecasterTypeEnum_impact;
    case 'indicatorBayes':
      return _$forecasterTypeEnum_indicatorBayes;
    case 'llm':
      return _$forecasterTypeEnum_llm;
    case 'operator_':
      return _$forecasterTypeEnum_operator_;
    case 'external_':
      return _$forecasterTypeEnum_external_;
    case 'ensemble':
      return _$forecasterTypeEnum_ensemble;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecasterTypeEnum> _$forecasterTypeEnumValues =
    BuiltSet<ForecasterTypeEnum>(const <ForecasterTypeEnum>[
      _$forecasterTypeEnum_baseRate,
      _$forecasterTypeEnum_climatology,
      _$forecasterTypeEnum_persistence,
      _$forecasterTypeEnum_statistical,
      _$forecasterTypeEnum_precursor,
      _$forecasterTypeEnum_analog,
      _$forecasterTypeEnum_threshold,
      _$forecasterTypeEnum_impact,
      _$forecasterTypeEnum_indicatorBayes,
      _$forecasterTypeEnum_llm,
      _$forecasterTypeEnum_operator_,
      _$forecasterTypeEnum_external_,
      _$forecasterTypeEnum_ensemble,
    ]);

Serializer<ForecasterTypeEnum> _$forecasterTypeEnumSerializer =
    _$ForecasterTypeEnumSerializer();

class _$ForecasterTypeEnumSerializer
    implements PrimitiveSerializer<ForecasterTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'baseRate': 'base-rate',
    'climatology': 'climatology',
    'persistence': 'persistence',
    'statistical': 'statistical',
    'precursor': 'precursor',
    'analog': 'analog',
    'threshold': 'threshold',
    'impact': 'impact',
    'indicatorBayes': 'indicator-bayes',
    'llm': 'llm',
    'operator_': 'operator',
    'external_': 'external',
    'ensemble': 'ensemble',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'base-rate': 'baseRate',
    'climatology': 'climatology',
    'persistence': 'persistence',
    'statistical': 'statistical',
    'precursor': 'precursor',
    'analog': 'analog',
    'threshold': 'threshold',
    'impact': 'impact',
    'indicator-bayes': 'indicatorBayes',
    'llm': 'llm',
    'operator': 'operator_',
    'external': 'external_',
    'ensemble': 'ensemble',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecasterTypeEnum];
  @override
  final String wireName = 'ForecasterTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ForecasterTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ForecasterTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ForecasterTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Forecaster extends Forecaster {
  @override
  final String id;
  @override
  final ForecasterTypeEnum type;
  @override
  final String name;
  @override
  final BuiltMap<String, JsonObject?>? config;
  @override
  final String version;
  @override
  final bool active;
  @override
  final ForecasterTrackRecord? trackRecord;
  @override
  final DateTime createdAt;

  factory _$Forecaster([void Function(ForecasterBuilder)? updates]) =>
      (ForecasterBuilder()..update(updates))._build();

  _$Forecaster._({
    required this.id,
    required this.type,
    required this.name,
    this.config,
    required this.version,
    required this.active,
    this.trackRecord,
    required this.createdAt,
  }) : super._();
  @override
  Forecaster rebuild(void Function(ForecasterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecasterBuilder toBuilder() => ForecasterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Forecaster &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        config == other.config &&
        version == other.version &&
        active == other.active &&
        trackRecord == other.trackRecord &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, trackRecord.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Forecaster')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('config', config)
          ..add('version', version)
          ..add('active', active)
          ..add('trackRecord', trackRecord)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ForecasterBuilder implements Builder<Forecaster, ForecasterBuilder> {
  _$Forecaster? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ForecasterTypeEnum? _type;
  ForecasterTypeEnum? get type => _$this._type;
  set type(ForecasterTypeEnum? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  ForecasterTrackRecordBuilder? _trackRecord;
  ForecasterTrackRecordBuilder get trackRecord =>
      _$this._trackRecord ??= ForecasterTrackRecordBuilder();
  set trackRecord(ForecasterTrackRecordBuilder? trackRecord) =>
      _$this._trackRecord = trackRecord;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ForecasterBuilder() {
    Forecaster._defaults(this);
  }

  ForecasterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _name = $v.name;
      _config = $v.config?.toBuilder();
      _version = $v.version;
      _active = $v.active;
      _trackRecord = $v.trackRecord?.toBuilder();
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Forecaster other) {
    _$v = other as _$Forecaster;
  }

  @override
  void update(void Function(ForecasterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Forecaster build() => _build();

  _$Forecaster _build() {
    _$Forecaster _$result;
    try {
      _$result =
          _$v ??
          _$Forecaster._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Forecaster', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'Forecaster',
              'type',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'Forecaster',
              'name',
            ),
            config: _config?.build(),
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'Forecaster',
              'version',
            ),
            active: BuiltValueNullFieldError.checkNotNull(
              active,
              r'Forecaster',
              'active',
            ),
            trackRecord: _trackRecord?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Forecaster',
              'createdAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();

        _$failedField = 'trackRecord';
        _trackRecord?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Forecaster',
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
