// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndicatorCredibilityEnum _$indicatorCredibilityEnum_H =
    const IndicatorCredibilityEnum._('H');
const IndicatorCredibilityEnum _$indicatorCredibilityEnum_M =
    const IndicatorCredibilityEnum._('M');
const IndicatorCredibilityEnum _$indicatorCredibilityEnum_L =
    const IndicatorCredibilityEnum._('L');

IndicatorCredibilityEnum _$indicatorCredibilityEnumValueOf(String name) {
  switch (name) {
    case 'H':
      return _$indicatorCredibilityEnum_H;
    case 'M':
      return _$indicatorCredibilityEnum_M;
    case 'L':
      return _$indicatorCredibilityEnum_L;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndicatorCredibilityEnum> _$indicatorCredibilityEnumValues =
    BuiltSet<IndicatorCredibilityEnum>(const <IndicatorCredibilityEnum>[
  _$indicatorCredibilityEnum_H,
  _$indicatorCredibilityEnum_M,
  _$indicatorCredibilityEnum_L,
]);

const IndicatorRelevanceEnum _$indicatorRelevanceEnum_H =
    const IndicatorRelevanceEnum._('H');
const IndicatorRelevanceEnum _$indicatorRelevanceEnum_M =
    const IndicatorRelevanceEnum._('M');
const IndicatorRelevanceEnum _$indicatorRelevanceEnum_L =
    const IndicatorRelevanceEnum._('L');

IndicatorRelevanceEnum _$indicatorRelevanceEnumValueOf(String name) {
  switch (name) {
    case 'H':
      return _$indicatorRelevanceEnum_H;
    case 'M':
      return _$indicatorRelevanceEnum_M;
    case 'L':
      return _$indicatorRelevanceEnum_L;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndicatorRelevanceEnum> _$indicatorRelevanceEnumValues =
    BuiltSet<IndicatorRelevanceEnum>(const <IndicatorRelevanceEnum>[
  _$indicatorRelevanceEnum_H,
  _$indicatorRelevanceEnum_M,
  _$indicatorRelevanceEnum_L,
]);

const IndicatorStateEnum _$indicatorStateEnum_pending =
    const IndicatorStateEnum._('pending');
const IndicatorStateEnum _$indicatorStateEnum_emerging =
    const IndicatorStateEnum._('emerging');
const IndicatorStateEnum _$indicatorStateEnum_observed =
    const IndicatorStateEnum._('observed');
const IndicatorStateEnum _$indicatorStateEnum_absent =
    const IndicatorStateEnum._('absent');
const IndicatorStateEnum _$indicatorStateEnum_unknownCoverage =
    const IndicatorStateEnum._('unknownCoverage');
const IndicatorStateEnum _$indicatorStateEnum_retired =
    const IndicatorStateEnum._('retired');
const IndicatorStateEnum _$indicatorStateEnum_reported =
    const IndicatorStateEnum._('reported');

IndicatorStateEnum _$indicatorStateEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$indicatorStateEnum_pending;
    case 'emerging':
      return _$indicatorStateEnum_emerging;
    case 'observed':
      return _$indicatorStateEnum_observed;
    case 'absent':
      return _$indicatorStateEnum_absent;
    case 'unknownCoverage':
      return _$indicatorStateEnum_unknownCoverage;
    case 'retired':
      return _$indicatorStateEnum_retired;
    case 'reported':
      return _$indicatorStateEnum_reported;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndicatorStateEnum> _$indicatorStateEnumValues =
    BuiltSet<IndicatorStateEnum>(const <IndicatorStateEnum>[
  _$indicatorStateEnum_pending,
  _$indicatorStateEnum_emerging,
  _$indicatorStateEnum_observed,
  _$indicatorStateEnum_absent,
  _$indicatorStateEnum_unknownCoverage,
  _$indicatorStateEnum_retired,
  _$indicatorStateEnum_reported,
]);

const IndicatorOriginEnum _$indicatorOriginEnum_operator_ =
    const IndicatorOriginEnum._('operator_');
const IndicatorOriginEnum _$indicatorOriginEnum_agent =
    const IndicatorOriginEnum._('agent');
const IndicatorOriginEnum _$indicatorOriginEnum_analyst =
    const IndicatorOriginEnum._('analyst');

IndicatorOriginEnum _$indicatorOriginEnumValueOf(String name) {
  switch (name) {
    case 'operator_':
      return _$indicatorOriginEnum_operator_;
    case 'agent':
      return _$indicatorOriginEnum_agent;
    case 'analyst':
      return _$indicatorOriginEnum_analyst;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndicatorOriginEnum> _$indicatorOriginEnumValues =
    BuiltSet<IndicatorOriginEnum>(const <IndicatorOriginEnum>[
  _$indicatorOriginEnum_operator_,
  _$indicatorOriginEnum_agent,
  _$indicatorOriginEnum_analyst,
]);

Serializer<IndicatorCredibilityEnum> _$indicatorCredibilityEnumSerializer =
    _$IndicatorCredibilityEnumSerializer();
Serializer<IndicatorRelevanceEnum> _$indicatorRelevanceEnumSerializer =
    _$IndicatorRelevanceEnumSerializer();
Serializer<IndicatorStateEnum> _$indicatorStateEnumSerializer =
    _$IndicatorStateEnumSerializer();
Serializer<IndicatorOriginEnum> _$indicatorOriginEnumSerializer =
    _$IndicatorOriginEnumSerializer();

class _$IndicatorCredibilityEnumSerializer
    implements PrimitiveSerializer<IndicatorCredibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'H': 'H',
    'M': 'M',
    'L': 'L',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'H': 'H',
    'M': 'M',
    'L': 'L',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorCredibilityEnum];
  @override
  final String wireName = 'IndicatorCredibilityEnum';

  @override
  Object serialize(Serializers serializers, IndicatorCredibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IndicatorCredibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IndicatorCredibilityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IndicatorRelevanceEnumSerializer
    implements PrimitiveSerializer<IndicatorRelevanceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'H': 'H',
    'M': 'M',
    'L': 'L',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'H': 'H',
    'M': 'M',
    'L': 'L',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorRelevanceEnum];
  @override
  final String wireName = 'IndicatorRelevanceEnum';

  @override
  Object serialize(Serializers serializers, IndicatorRelevanceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IndicatorRelevanceEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IndicatorRelevanceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IndicatorStateEnumSerializer
    implements PrimitiveSerializer<IndicatorStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'emerging': 'emerging',
    'observed': 'observed',
    'absent': 'absent',
    'unknownCoverage': 'unknown-coverage',
    'retired': 'retired',
    'reported': 'reported',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'emerging': 'emerging',
    'observed': 'observed',
    'absent': 'absent',
    'unknown-coverage': 'unknownCoverage',
    'retired': 'retired',
    'reported': 'reported',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorStateEnum];
  @override
  final String wireName = 'IndicatorStateEnum';

  @override
  Object serialize(Serializers serializers, IndicatorStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IndicatorStateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IndicatorStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IndicatorOriginEnumSerializer
    implements PrimitiveSerializer<IndicatorOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'operator_': 'operator',
    'agent': 'agent',
    'analyst': 'analyst',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'operator': 'operator_',
    'agent': 'agent',
    'analyst': 'analyst',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorOriginEnum];
  @override
  final String wireName = 'IndicatorOriginEnum';

  @override
  Object serialize(Serializers serializers, IndicatorOriginEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IndicatorOriginEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IndicatorOriginEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Indicator extends Indicator {
  @override
  final String id;
  @override
  final String setId;
  @override
  final String description;
  @override
  final IndicatorSignal signal;
  @override
  final String signalFamily;
  @override
  final IndicatorCredibilityEnum credibility;
  @override
  final IndicatorRelevanceEnum relevance;
  @override
  final DateTime? expectedBy;
  @override
  final BuiltMap<String, IndicatorLikelihood> lr;
  @override
  final BuiltMap<String, num>? absenceLr;
  @override
  final IndicatorStateEnum state;
  @override
  final String? watchRuleId;
  @override
  final num? pDetect;
  @override
  final JsonObject? observedEvidence;
  @override
  final DateTime? lastStateChangeAt;
  @override
  final IndicatorOriginEnum origin;
  @override
  final int? version;

  factory _$Indicator([void Function(IndicatorBuilder)? updates]) =>
      (IndicatorBuilder()..update(updates))._build();

  _$Indicator._(
      {required this.id,
      required this.setId,
      required this.description,
      required this.signal,
      required this.signalFamily,
      required this.credibility,
      required this.relevance,
      this.expectedBy,
      required this.lr,
      this.absenceLr,
      required this.state,
      this.watchRuleId,
      this.pDetect,
      this.observedEvidence,
      this.lastStateChangeAt,
      required this.origin,
      this.version})
      : super._();
  @override
  Indicator rebuild(void Function(IndicatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndicatorBuilder toBuilder() => IndicatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Indicator &&
        id == other.id &&
        setId == other.setId &&
        description == other.description &&
        signal == other.signal &&
        signalFamily == other.signalFamily &&
        credibility == other.credibility &&
        relevance == other.relevance &&
        expectedBy == other.expectedBy &&
        lr == other.lr &&
        absenceLr == other.absenceLr &&
        state == other.state &&
        watchRuleId == other.watchRuleId &&
        pDetect == other.pDetect &&
        observedEvidence == other.observedEvidence &&
        lastStateChangeAt == other.lastStateChangeAt &&
        origin == other.origin &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, signal.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jc(_$hash, credibility.hashCode);
    _$hash = $jc(_$hash, relevance.hashCode);
    _$hash = $jc(_$hash, expectedBy.hashCode);
    _$hash = $jc(_$hash, lr.hashCode);
    _$hash = $jc(_$hash, absenceLr.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, watchRuleId.hashCode);
    _$hash = $jc(_$hash, pDetect.hashCode);
    _$hash = $jc(_$hash, observedEvidence.hashCode);
    _$hash = $jc(_$hash, lastStateChangeAt.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Indicator')
          ..add('id', id)
          ..add('setId', setId)
          ..add('description', description)
          ..add('signal', signal)
          ..add('signalFamily', signalFamily)
          ..add('credibility', credibility)
          ..add('relevance', relevance)
          ..add('expectedBy', expectedBy)
          ..add('lr', lr)
          ..add('absenceLr', absenceLr)
          ..add('state', state)
          ..add('watchRuleId', watchRuleId)
          ..add('pDetect', pDetect)
          ..add('observedEvidence', observedEvidence)
          ..add('lastStateChangeAt', lastStateChangeAt)
          ..add('origin', origin)
          ..add('version', version))
        .toString();
  }
}

class IndicatorBuilder implements Builder<Indicator, IndicatorBuilder> {
  _$Indicator? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  IndicatorSignalBuilder? _signal;
  IndicatorSignalBuilder get signal =>
      _$this._signal ??= IndicatorSignalBuilder();
  set signal(IndicatorSignalBuilder? signal) => _$this._signal = signal;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  IndicatorCredibilityEnum? _credibility;
  IndicatorCredibilityEnum? get credibility => _$this._credibility;
  set credibility(IndicatorCredibilityEnum? credibility) =>
      _$this._credibility = credibility;

  IndicatorRelevanceEnum? _relevance;
  IndicatorRelevanceEnum? get relevance => _$this._relevance;
  set relevance(IndicatorRelevanceEnum? relevance) =>
      _$this._relevance = relevance;

  DateTime? _expectedBy;
  DateTime? get expectedBy => _$this._expectedBy;
  set expectedBy(DateTime? expectedBy) => _$this._expectedBy = expectedBy;

  MapBuilder<String, IndicatorLikelihood>? _lr;
  MapBuilder<String, IndicatorLikelihood> get lr =>
      _$this._lr ??= MapBuilder<String, IndicatorLikelihood>();
  set lr(MapBuilder<String, IndicatorLikelihood>? lr) => _$this._lr = lr;

  MapBuilder<String, num>? _absenceLr;
  MapBuilder<String, num> get absenceLr =>
      _$this._absenceLr ??= MapBuilder<String, num>();
  set absenceLr(MapBuilder<String, num>? absenceLr) =>
      _$this._absenceLr = absenceLr;

  IndicatorStateEnum? _state;
  IndicatorStateEnum? get state => _$this._state;
  set state(IndicatorStateEnum? state) => _$this._state = state;

  String? _watchRuleId;
  String? get watchRuleId => _$this._watchRuleId;
  set watchRuleId(String? watchRuleId) => _$this._watchRuleId = watchRuleId;

  num? _pDetect;
  num? get pDetect => _$this._pDetect;
  set pDetect(num? pDetect) => _$this._pDetect = pDetect;

  JsonObject? _observedEvidence;
  JsonObject? get observedEvidence => _$this._observedEvidence;
  set observedEvidence(JsonObject? observedEvidence) =>
      _$this._observedEvidence = observedEvidence;

  DateTime? _lastStateChangeAt;
  DateTime? get lastStateChangeAt => _$this._lastStateChangeAt;
  set lastStateChangeAt(DateTime? lastStateChangeAt) =>
      _$this._lastStateChangeAt = lastStateChangeAt;

  IndicatorOriginEnum? _origin;
  IndicatorOriginEnum? get origin => _$this._origin;
  set origin(IndicatorOriginEnum? origin) => _$this._origin = origin;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  IndicatorBuilder() {
    Indicator._defaults(this);
  }

  IndicatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _setId = $v.setId;
      _description = $v.description;
      _signal = $v.signal.toBuilder();
      _signalFamily = $v.signalFamily;
      _credibility = $v.credibility;
      _relevance = $v.relevance;
      _expectedBy = $v.expectedBy;
      _lr = $v.lr.toBuilder();
      _absenceLr = $v.absenceLr?.toBuilder();
      _state = $v.state;
      _watchRuleId = $v.watchRuleId;
      _pDetect = $v.pDetect;
      _observedEvidence = $v.observedEvidence;
      _lastStateChangeAt = $v.lastStateChangeAt;
      _origin = $v.origin;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Indicator other) {
    _$v = other as _$Indicator;
  }

  @override
  void update(void Function(IndicatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Indicator build() => _build();

  _$Indicator _build() {
    _$Indicator _$result;
    try {
      _$result = _$v ??
          _$Indicator._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Indicator', 'id'),
            setId: BuiltValueNullFieldError.checkNotNull(
                setId, r'Indicator', 'setId'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'Indicator', 'description'),
            signal: signal.build(),
            signalFamily: BuiltValueNullFieldError.checkNotNull(
                signalFamily, r'Indicator', 'signalFamily'),
            credibility: BuiltValueNullFieldError.checkNotNull(
                credibility, r'Indicator', 'credibility'),
            relevance: BuiltValueNullFieldError.checkNotNull(
                relevance, r'Indicator', 'relevance'),
            expectedBy: expectedBy,
            lr: lr.build(),
            absenceLr: _absenceLr?.build(),
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'Indicator', 'state'),
            watchRuleId: watchRuleId,
            pDetect: pDetect,
            observedEvidence: observedEvidence,
            lastStateChangeAt: lastStateChangeAt,
            origin: BuiltValueNullFieldError.checkNotNull(
                origin, r'Indicator', 'origin'),
            version: version,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signal';
        signal.build();

        _$failedField = 'lr';
        lr.build();
        _$failedField = 'absenceLr';
        _absenceLr?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Indicator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
