// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly_record_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnomalyRecordPayloadStateEnum _$anomalyRecordPayloadStateEnum_active =
    const AnomalyRecordPayloadStateEnum._('active');
const AnomalyRecordPayloadStateEnum _$anomalyRecordPayloadStateEnum_clear =
    const AnomalyRecordPayloadStateEnum._('clear');
const AnomalyRecordPayloadStateEnum _$anomalyRecordPayloadStateEnum_unknown =
    const AnomalyRecordPayloadStateEnum._('unknown');
const AnomalyRecordPayloadStateEnum _$anomalyRecordPayloadStateEnum_learning =
    const AnomalyRecordPayloadStateEnum._('learning');
const AnomalyRecordPayloadStateEnum
_$anomalyRecordPayloadStateEnum_unknownDefaultOpenApi =
    const AnomalyRecordPayloadStateEnum._('unknownDefaultOpenApi');

AnomalyRecordPayloadStateEnum _$anomalyRecordPayloadStateEnumValueOf(
  String name,
) {
  switch (name) {
    case 'active':
      return _$anomalyRecordPayloadStateEnum_active;
    case 'clear':
      return _$anomalyRecordPayloadStateEnum_clear;
    case 'unknown':
      return _$anomalyRecordPayloadStateEnum_unknown;
    case 'learning':
      return _$anomalyRecordPayloadStateEnum_learning;
    case 'unknownDefaultOpenApi':
      return _$anomalyRecordPayloadStateEnum_unknownDefaultOpenApi;
    default:
      return _$anomalyRecordPayloadStateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnomalyRecordPayloadStateEnum>
_$anomalyRecordPayloadStateEnumValues = BuiltSet<AnomalyRecordPayloadStateEnum>(
  const <AnomalyRecordPayloadStateEnum>[
    _$anomalyRecordPayloadStateEnum_active,
    _$anomalyRecordPayloadStateEnum_clear,
    _$anomalyRecordPayloadStateEnum_unknown,
    _$anomalyRecordPayloadStateEnum_learning,
    _$anomalyRecordPayloadStateEnum_unknownDefaultOpenApi,
  ],
);

const AnomalyRecordPayloadClassificationEnum
_$anomalyRecordPayloadClassificationEnum_activityUp =
    const AnomalyRecordPayloadClassificationEnum._('activityUp');
const AnomalyRecordPayloadClassificationEnum
_$anomalyRecordPayloadClassificationEnum_activityDown =
    const AnomalyRecordPayloadClassificationEnum._('activityDown');
const AnomalyRecordPayloadClassificationEnum
_$anomalyRecordPayloadClassificationEnum_coverageDrop =
    const AnomalyRecordPayloadClassificationEnum._('coverageDrop');
const AnomalyRecordPayloadClassificationEnum
_$anomalyRecordPayloadClassificationEnum_insufficientCoverage =
    const AnomalyRecordPayloadClassificationEnum._('insufficientCoverage');
const AnomalyRecordPayloadClassificationEnum
_$anomalyRecordPayloadClassificationEnum_learning =
    const AnomalyRecordPayloadClassificationEnum._('learning');
const AnomalyRecordPayloadClassificationEnum
_$anomalyRecordPayloadClassificationEnum_normal =
    const AnomalyRecordPayloadClassificationEnum._('normal');
const AnomalyRecordPayloadClassificationEnum
_$anomalyRecordPayloadClassificationEnum_unknownDefaultOpenApi =
    const AnomalyRecordPayloadClassificationEnum._('unknownDefaultOpenApi');

AnomalyRecordPayloadClassificationEnum
_$anomalyRecordPayloadClassificationEnumValueOf(String name) {
  switch (name) {
    case 'activityUp':
      return _$anomalyRecordPayloadClassificationEnum_activityUp;
    case 'activityDown':
      return _$anomalyRecordPayloadClassificationEnum_activityDown;
    case 'coverageDrop':
      return _$anomalyRecordPayloadClassificationEnum_coverageDrop;
    case 'insufficientCoverage':
      return _$anomalyRecordPayloadClassificationEnum_insufficientCoverage;
    case 'learning':
      return _$anomalyRecordPayloadClassificationEnum_learning;
    case 'normal':
      return _$anomalyRecordPayloadClassificationEnum_normal;
    case 'unknownDefaultOpenApi':
      return _$anomalyRecordPayloadClassificationEnum_unknownDefaultOpenApi;
    default:
      return _$anomalyRecordPayloadClassificationEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnomalyRecordPayloadClassificationEnum>
_$anomalyRecordPayloadClassificationEnumValues =
    BuiltSet<AnomalyRecordPayloadClassificationEnum>(
      const <AnomalyRecordPayloadClassificationEnum>[
        _$anomalyRecordPayloadClassificationEnum_activityUp,
        _$anomalyRecordPayloadClassificationEnum_activityDown,
        _$anomalyRecordPayloadClassificationEnum_coverageDrop,
        _$anomalyRecordPayloadClassificationEnum_insufficientCoverage,
        _$anomalyRecordPayloadClassificationEnum_learning,
        _$anomalyRecordPayloadClassificationEnum_normal,
        _$anomalyRecordPayloadClassificationEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<AnomalyRecordPayloadStateEnum>
_$anomalyRecordPayloadStateEnumSerializer =
    _$AnomalyRecordPayloadStateEnumSerializer();
Serializer<AnomalyRecordPayloadClassificationEnum>
_$anomalyRecordPayloadClassificationEnumSerializer =
    _$AnomalyRecordPayloadClassificationEnumSerializer();

class _$AnomalyRecordPayloadStateEnumSerializer
    implements PrimitiveSerializer<AnomalyRecordPayloadStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'clear': 'clear',
    'unknown': 'unknown',
    'learning': 'learning',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'clear': 'clear',
    'unknown': 'unknown',
    'learning': 'learning',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnomalyRecordPayloadStateEnum];
  @override
  final String wireName = 'AnomalyRecordPayloadStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyRecordPayloadStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyRecordPayloadStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyRecordPayloadStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyRecordPayloadClassificationEnumSerializer
    implements PrimitiveSerializer<AnomalyRecordPayloadClassificationEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'activityUp': 'activity-up',
    'activityDown': 'activity-down',
    'coverageDrop': 'coverage-drop',
    'insufficientCoverage': 'insufficient-coverage',
    'learning': 'learning',
    'normal': 'normal',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'activity-up': 'activityUp',
    'activity-down': 'activityDown',
    'coverage-drop': 'coverageDrop',
    'insufficient-coverage': 'insufficientCoverage',
    'learning': 'learning',
    'normal': 'normal',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AnomalyRecordPayloadClassificationEnum,
  ];
  @override
  final String wireName = 'AnomalyRecordPayloadClassificationEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyRecordPayloadClassificationEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyRecordPayloadClassificationEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyRecordPayloadClassificationEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyRecordPayload extends AnomalyRecordPayload {
  @override
  final String ruleId;
  @override
  final String? name;
  @override
  final String groupKey;
  @override
  final AnomalyRecordPayloadStateEnum? state;
  @override
  final int? observed;
  @override
  final num? expected;
  @override
  final num? pValue;
  @override
  final AnomalyRecordPayloadClassificationEnum classification;
  @override
  final DetectorRef? detector;
  @override
  final bool? automated;

  factory _$AnomalyRecordPayload([
    void Function(AnomalyRecordPayloadBuilder)? updates,
  ]) => (AnomalyRecordPayloadBuilder()..update(updates))._build();

  _$AnomalyRecordPayload._({
    required this.ruleId,
    this.name,
    required this.groupKey,
    this.state,
    this.observed,
    this.expected,
    this.pValue,
    required this.classification,
    this.detector,
    this.automated,
  }) : super._();
  @override
  AnomalyRecordPayload rebuild(
    void Function(AnomalyRecordPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnomalyRecordPayloadBuilder toBuilder() =>
      AnomalyRecordPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnomalyRecordPayload &&
        ruleId == other.ruleId &&
        name == other.name &&
        groupKey == other.groupKey &&
        state == other.state &&
        observed == other.observed &&
        expected == other.expected &&
        pValue == other.pValue &&
        classification == other.classification &&
        detector == other.detector &&
        automated == other.automated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, groupKey.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, observed.hashCode);
    _$hash = $jc(_$hash, expected.hashCode);
    _$hash = $jc(_$hash, pValue.hashCode);
    _$hash = $jc(_$hash, classification.hashCode);
    _$hash = $jc(_$hash, detector.hashCode);
    _$hash = $jc(_$hash, automated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnomalyRecordPayload')
          ..add('ruleId', ruleId)
          ..add('name', name)
          ..add('groupKey', groupKey)
          ..add('state', state)
          ..add('observed', observed)
          ..add('expected', expected)
          ..add('pValue', pValue)
          ..add('classification', classification)
          ..add('detector', detector)
          ..add('automated', automated))
        .toString();
  }
}

class AnomalyRecordPayloadBuilder
    implements Builder<AnomalyRecordPayload, AnomalyRecordPayloadBuilder> {
  _$AnomalyRecordPayload? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _groupKey;
  String? get groupKey => _$this._groupKey;
  set groupKey(String? groupKey) => _$this._groupKey = groupKey;

  AnomalyRecordPayloadStateEnum? _state;
  AnomalyRecordPayloadStateEnum? get state => _$this._state;
  set state(AnomalyRecordPayloadStateEnum? state) => _$this._state = state;

  int? _observed;
  int? get observed => _$this._observed;
  set observed(int? observed) => _$this._observed = observed;

  num? _expected;
  num? get expected => _$this._expected;
  set expected(num? expected) => _$this._expected = expected;

  num? _pValue;
  num? get pValue => _$this._pValue;
  set pValue(num? pValue) => _$this._pValue = pValue;

  AnomalyRecordPayloadClassificationEnum? _classification;
  AnomalyRecordPayloadClassificationEnum? get classification =>
      _$this._classification;
  set classification(AnomalyRecordPayloadClassificationEnum? classification) =>
      _$this._classification = classification;

  DetectorRefBuilder? _detector;
  DetectorRefBuilder get detector => _$this._detector ??= DetectorRefBuilder();
  set detector(DetectorRefBuilder? detector) => _$this._detector = detector;

  bool? _automated;
  bool? get automated => _$this._automated;
  set automated(bool? automated) => _$this._automated = automated;

  AnomalyRecordPayloadBuilder() {
    AnomalyRecordPayload._defaults(this);
  }

  AnomalyRecordPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _name = $v.name;
      _groupKey = $v.groupKey;
      _state = $v.state;
      _observed = $v.observed;
      _expected = $v.expected;
      _pValue = $v.pValue;
      _classification = $v.classification;
      _detector = $v.detector?.toBuilder();
      _automated = $v.automated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnomalyRecordPayload other) {
    _$v = other as _$AnomalyRecordPayload;
  }

  @override
  void update(void Function(AnomalyRecordPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnomalyRecordPayload build() => _build();

  _$AnomalyRecordPayload _build() {
    _$AnomalyRecordPayload _$result;
    try {
      _$result =
          _$v ??
          _$AnomalyRecordPayload._(
            ruleId: BuiltValueNullFieldError.checkNotNull(
              ruleId,
              r'AnomalyRecordPayload',
              'ruleId',
            ),
            name: name,
            groupKey: BuiltValueNullFieldError.checkNotNull(
              groupKey,
              r'AnomalyRecordPayload',
              'groupKey',
            ),
            state: state,
            observed: observed,
            expected: expected,
            pValue: pValue,
            classification: BuiltValueNullFieldError.checkNotNull(
              classification,
              r'AnomalyRecordPayload',
              'classification',
            ),
            detector: _detector?.build(),
            automated: automated,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detector';
        _detector?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnomalyRecordPayload',
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
