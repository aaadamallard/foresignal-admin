// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly_observation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnomalyObservationDirectionEnum _$anomalyObservationDirectionEnum_up =
    const AnomalyObservationDirectionEnum._('up');
const AnomalyObservationDirectionEnum _$anomalyObservationDirectionEnum_down =
    const AnomalyObservationDirectionEnum._('down');

AnomalyObservationDirectionEnum _$anomalyObservationDirectionEnumValueOf(
  String name,
) {
  switch (name) {
    case 'up':
      return _$anomalyObservationDirectionEnum_up;
    case 'down':
      return _$anomalyObservationDirectionEnum_down;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnomalyObservationDirectionEnum>
_$anomalyObservationDirectionEnumValues =
    BuiltSet<AnomalyObservationDirectionEnum>(
      const <AnomalyObservationDirectionEnum>[
        _$anomalyObservationDirectionEnum_up,
        _$anomalyObservationDirectionEnum_down,
      ],
    );

const AnomalyObservationClassificationEnum
_$anomalyObservationClassificationEnum_activityUp =
    const AnomalyObservationClassificationEnum._('activityUp');
const AnomalyObservationClassificationEnum
_$anomalyObservationClassificationEnum_activityDown =
    const AnomalyObservationClassificationEnum._('activityDown');
const AnomalyObservationClassificationEnum
_$anomalyObservationClassificationEnum_coverageDrop =
    const AnomalyObservationClassificationEnum._('coverageDrop');
const AnomalyObservationClassificationEnum
_$anomalyObservationClassificationEnum_insufficientCoverage =
    const AnomalyObservationClassificationEnum._('insufficientCoverage');
const AnomalyObservationClassificationEnum
_$anomalyObservationClassificationEnum_learning =
    const AnomalyObservationClassificationEnum._('learning');
const AnomalyObservationClassificationEnum
_$anomalyObservationClassificationEnum_normal =
    const AnomalyObservationClassificationEnum._('normal');

AnomalyObservationClassificationEnum
_$anomalyObservationClassificationEnumValueOf(String name) {
  switch (name) {
    case 'activityUp':
      return _$anomalyObservationClassificationEnum_activityUp;
    case 'activityDown':
      return _$anomalyObservationClassificationEnum_activityDown;
    case 'coverageDrop':
      return _$anomalyObservationClassificationEnum_coverageDrop;
    case 'insufficientCoverage':
      return _$anomalyObservationClassificationEnum_insufficientCoverage;
    case 'learning':
      return _$anomalyObservationClassificationEnum_learning;
    case 'normal':
      return _$anomalyObservationClassificationEnum_normal;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnomalyObservationClassificationEnum>
_$anomalyObservationClassificationEnumValues =
    BuiltSet<AnomalyObservationClassificationEnum>(
      const <AnomalyObservationClassificationEnum>[
        _$anomalyObservationClassificationEnum_activityUp,
        _$anomalyObservationClassificationEnum_activityDown,
        _$anomalyObservationClassificationEnum_coverageDrop,
        _$anomalyObservationClassificationEnum_insufficientCoverage,
        _$anomalyObservationClassificationEnum_learning,
        _$anomalyObservationClassificationEnum_normal,
      ],
    );

Serializer<AnomalyObservationDirectionEnum>
_$anomalyObservationDirectionEnumSerializer =
    _$AnomalyObservationDirectionEnumSerializer();
Serializer<AnomalyObservationClassificationEnum>
_$anomalyObservationClassificationEnumSerializer =
    _$AnomalyObservationClassificationEnumSerializer();

class _$AnomalyObservationDirectionEnumSerializer
    implements PrimitiveSerializer<AnomalyObservationDirectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'up': 'up',
    'down': 'down',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'up': 'up',
    'down': 'down',
  };

  @override
  final Iterable<Type> types = const <Type>[AnomalyObservationDirectionEnum];
  @override
  final String wireName = 'AnomalyObservationDirectionEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyObservationDirectionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyObservationDirectionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyObservationDirectionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyObservationClassificationEnumSerializer
    implements PrimitiveSerializer<AnomalyObservationClassificationEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'activityUp': 'activity-up',
    'activityDown': 'activity-down',
    'coverageDrop': 'coverage-drop',
    'insufficientCoverage': 'insufficient-coverage',
    'learning': 'learning',
    'normal': 'normal',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'activity-up': 'activityUp',
    'activity-down': 'activityDown',
    'coverage-drop': 'coverageDrop',
    'insufficient-coverage': 'insufficientCoverage',
    'learning': 'learning',
    'normal': 'normal',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AnomalyObservationClassificationEnum,
  ];
  @override
  final String wireName = 'AnomalyObservationClassificationEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyObservationClassificationEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyObservationClassificationEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyObservationClassificationEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyObservation extends AnomalyObservation {
  @override
  final int id;
  @override
  final String ruleId;
  @override
  final String groupKey;
  @override
  final DateTime bucketStart;
  @override
  final DateTime bucketEnd;
  @override
  final int observed;
  @override
  final num expected;
  @override
  final num? exposure;
  @override
  final num? pValue;
  @override
  final num? score;
  @override
  final AnomalyObservationDirectionEnum? direction;
  @override
  final AnomalyObservationClassificationEnum classification;
  @override
  final bool? lowConfidence;
  @override
  final AnomalyObservationBaseline baseline;
  @override
  final DetectorRef detector;
  @override
  final AnomalyObservationEvidence? evidence;
  @override
  final int watermarkSeq;
  @override
  final int? alertId;
  @override
  final String? manifestId;

  factory _$AnomalyObservation([
    void Function(AnomalyObservationBuilder)? updates,
  ]) => (AnomalyObservationBuilder()..update(updates))._build();

  _$AnomalyObservation._({
    required this.id,
    required this.ruleId,
    required this.groupKey,
    required this.bucketStart,
    required this.bucketEnd,
    required this.observed,
    required this.expected,
    this.exposure,
    this.pValue,
    this.score,
    this.direction,
    required this.classification,
    this.lowConfidence,
    required this.baseline,
    required this.detector,
    this.evidence,
    required this.watermarkSeq,
    this.alertId,
    this.manifestId,
  }) : super._();
  @override
  AnomalyObservation rebuild(
    void Function(AnomalyObservationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnomalyObservationBuilder toBuilder() =>
      AnomalyObservationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnomalyObservation &&
        id == other.id &&
        ruleId == other.ruleId &&
        groupKey == other.groupKey &&
        bucketStart == other.bucketStart &&
        bucketEnd == other.bucketEnd &&
        observed == other.observed &&
        expected == other.expected &&
        exposure == other.exposure &&
        pValue == other.pValue &&
        score == other.score &&
        direction == other.direction &&
        classification == other.classification &&
        lowConfidence == other.lowConfidence &&
        baseline == other.baseline &&
        detector == other.detector &&
        evidence == other.evidence &&
        watermarkSeq == other.watermarkSeq &&
        alertId == other.alertId &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, groupKey.hashCode);
    _$hash = $jc(_$hash, bucketStart.hashCode);
    _$hash = $jc(_$hash, bucketEnd.hashCode);
    _$hash = $jc(_$hash, observed.hashCode);
    _$hash = $jc(_$hash, expected.hashCode);
    _$hash = $jc(_$hash, exposure.hashCode);
    _$hash = $jc(_$hash, pValue.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, classification.hashCode);
    _$hash = $jc(_$hash, lowConfidence.hashCode);
    _$hash = $jc(_$hash, baseline.hashCode);
    _$hash = $jc(_$hash, detector.hashCode);
    _$hash = $jc(_$hash, evidence.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jc(_$hash, alertId.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnomalyObservation')
          ..add('id', id)
          ..add('ruleId', ruleId)
          ..add('groupKey', groupKey)
          ..add('bucketStart', bucketStart)
          ..add('bucketEnd', bucketEnd)
          ..add('observed', observed)
          ..add('expected', expected)
          ..add('exposure', exposure)
          ..add('pValue', pValue)
          ..add('score', score)
          ..add('direction', direction)
          ..add('classification', classification)
          ..add('lowConfidence', lowConfidence)
          ..add('baseline', baseline)
          ..add('detector', detector)
          ..add('evidence', evidence)
          ..add('watermarkSeq', watermarkSeq)
          ..add('alertId', alertId)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class AnomalyObservationBuilder
    implements Builder<AnomalyObservation, AnomalyObservationBuilder> {
  _$AnomalyObservation? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _groupKey;
  String? get groupKey => _$this._groupKey;
  set groupKey(String? groupKey) => _$this._groupKey = groupKey;

  DateTime? _bucketStart;
  DateTime? get bucketStart => _$this._bucketStart;
  set bucketStart(DateTime? bucketStart) => _$this._bucketStart = bucketStart;

  DateTime? _bucketEnd;
  DateTime? get bucketEnd => _$this._bucketEnd;
  set bucketEnd(DateTime? bucketEnd) => _$this._bucketEnd = bucketEnd;

  int? _observed;
  int? get observed => _$this._observed;
  set observed(int? observed) => _$this._observed = observed;

  num? _expected;
  num? get expected => _$this._expected;
  set expected(num? expected) => _$this._expected = expected;

  num? _exposure;
  num? get exposure => _$this._exposure;
  set exposure(num? exposure) => _$this._exposure = exposure;

  num? _pValue;
  num? get pValue => _$this._pValue;
  set pValue(num? pValue) => _$this._pValue = pValue;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  AnomalyObservationDirectionEnum? _direction;
  AnomalyObservationDirectionEnum? get direction => _$this._direction;
  set direction(AnomalyObservationDirectionEnum? direction) =>
      _$this._direction = direction;

  AnomalyObservationClassificationEnum? _classification;
  AnomalyObservationClassificationEnum? get classification =>
      _$this._classification;
  set classification(AnomalyObservationClassificationEnum? classification) =>
      _$this._classification = classification;

  bool? _lowConfidence;
  bool? get lowConfidence => _$this._lowConfidence;
  set lowConfidence(bool? lowConfidence) =>
      _$this._lowConfidence = lowConfidence;

  AnomalyObservationBaselineBuilder? _baseline;
  AnomalyObservationBaselineBuilder get baseline =>
      _$this._baseline ??= AnomalyObservationBaselineBuilder();
  set baseline(AnomalyObservationBaselineBuilder? baseline) =>
      _$this._baseline = baseline;

  DetectorRefBuilder? _detector;
  DetectorRefBuilder get detector => _$this._detector ??= DetectorRefBuilder();
  set detector(DetectorRefBuilder? detector) => _$this._detector = detector;

  AnomalyObservationEvidenceBuilder? _evidence;
  AnomalyObservationEvidenceBuilder get evidence =>
      _$this._evidence ??= AnomalyObservationEvidenceBuilder();
  set evidence(AnomalyObservationEvidenceBuilder? evidence) =>
      _$this._evidence = evidence;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  int? _alertId;
  int? get alertId => _$this._alertId;
  set alertId(int? alertId) => _$this._alertId = alertId;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  AnomalyObservationBuilder() {
    AnomalyObservation._defaults(this);
  }

  AnomalyObservationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ruleId = $v.ruleId;
      _groupKey = $v.groupKey;
      _bucketStart = $v.bucketStart;
      _bucketEnd = $v.bucketEnd;
      _observed = $v.observed;
      _expected = $v.expected;
      _exposure = $v.exposure;
      _pValue = $v.pValue;
      _score = $v.score;
      _direction = $v.direction;
      _classification = $v.classification;
      _lowConfidence = $v.lowConfidence;
      _baseline = $v.baseline.toBuilder();
      _detector = $v.detector.toBuilder();
      _evidence = $v.evidence?.toBuilder();
      _watermarkSeq = $v.watermarkSeq;
      _alertId = $v.alertId;
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnomalyObservation other) {
    _$v = other as _$AnomalyObservation;
  }

  @override
  void update(void Function(AnomalyObservationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnomalyObservation build() => _build();

  _$AnomalyObservation _build() {
    _$AnomalyObservation _$result;
    try {
      _$result =
          _$v ??
          _$AnomalyObservation._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'AnomalyObservation',
              'id',
            ),
            ruleId: BuiltValueNullFieldError.checkNotNull(
              ruleId,
              r'AnomalyObservation',
              'ruleId',
            ),
            groupKey: BuiltValueNullFieldError.checkNotNull(
              groupKey,
              r'AnomalyObservation',
              'groupKey',
            ),
            bucketStart: BuiltValueNullFieldError.checkNotNull(
              bucketStart,
              r'AnomalyObservation',
              'bucketStart',
            ),
            bucketEnd: BuiltValueNullFieldError.checkNotNull(
              bucketEnd,
              r'AnomalyObservation',
              'bucketEnd',
            ),
            observed: BuiltValueNullFieldError.checkNotNull(
              observed,
              r'AnomalyObservation',
              'observed',
            ),
            expected: BuiltValueNullFieldError.checkNotNull(
              expected,
              r'AnomalyObservation',
              'expected',
            ),
            exposure: exposure,
            pValue: pValue,
            score: score,
            direction: direction,
            classification: BuiltValueNullFieldError.checkNotNull(
              classification,
              r'AnomalyObservation',
              'classification',
            ),
            lowConfidence: lowConfidence,
            baseline: baseline.build(),
            detector: detector.build(),
            evidence: _evidence?.build(),
            watermarkSeq: BuiltValueNullFieldError.checkNotNull(
              watermarkSeq,
              r'AnomalyObservation',
              'watermarkSeq',
            ),
            alertId: alertId,
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'baseline';
        baseline.build();
        _$failedField = 'detector';
        detector.build();
        _$failedField = 'evidence';
        _evidence?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnomalyObservation',
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
