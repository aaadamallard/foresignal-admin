// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holdover_fire_risk_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HoldoverFireRiskPayloadStatusEnum _$holdoverFireRiskPayloadStatusEnum_ok =
    const HoldoverFireRiskPayloadStatusEnum._('ok');
const HoldoverFireRiskPayloadStatusEnum
    _$holdoverFireRiskPayloadStatusEnum_insufficientData =
    const HoldoverFireRiskPayloadStatusEnum._('insufficientData');
const HoldoverFireRiskPayloadStatusEnum
    _$holdoverFireRiskPayloadStatusEnum_noCoverage =
    const HoldoverFireRiskPayloadStatusEnum._('noCoverage');
const HoldoverFireRiskPayloadStatusEnum
    _$holdoverFireRiskPayloadStatusEnum_degradedInput =
    const HoldoverFireRiskPayloadStatusEnum._('degradedInput');

HoldoverFireRiskPayloadStatusEnum _$holdoverFireRiskPayloadStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$holdoverFireRiskPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$holdoverFireRiskPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$holdoverFireRiskPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$holdoverFireRiskPayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HoldoverFireRiskPayloadStatusEnum>
    _$holdoverFireRiskPayloadStatusEnumValues = BuiltSet<
        HoldoverFireRiskPayloadStatusEnum>(const <HoldoverFireRiskPayloadStatusEnum>[
  _$holdoverFireRiskPayloadStatusEnum_ok,
  _$holdoverFireRiskPayloadStatusEnum_insufficientData,
  _$holdoverFireRiskPayloadStatusEnum_noCoverage,
  _$holdoverFireRiskPayloadStatusEnum_degradedInput,
]);

const HoldoverFireRiskPayloadPrecipSourceEnum
    _$holdoverFireRiskPayloadPrecipSourceEnum_mrms =
    const HoldoverFireRiskPayloadPrecipSourceEnum._('mrms');
const HoldoverFireRiskPayloadPrecipSourceEnum
    _$holdoverFireRiskPayloadPrecipSourceEnum_model =
    const HoldoverFireRiskPayloadPrecipSourceEnum._('model');

HoldoverFireRiskPayloadPrecipSourceEnum
    _$holdoverFireRiskPayloadPrecipSourceEnumValueOf(String name) {
  switch (name) {
    case 'mrms':
      return _$holdoverFireRiskPayloadPrecipSourceEnum_mrms;
    case 'model':
      return _$holdoverFireRiskPayloadPrecipSourceEnum_model;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HoldoverFireRiskPayloadPrecipSourceEnum>
    _$holdoverFireRiskPayloadPrecipSourceEnumValues = BuiltSet<
        HoldoverFireRiskPayloadPrecipSourceEnum>(const <HoldoverFireRiskPayloadPrecipSourceEnum>[
  _$holdoverFireRiskPayloadPrecipSourceEnum_mrms,
  _$holdoverFireRiskPayloadPrecipSourceEnum_model,
]);

Serializer<HoldoverFireRiskPayloadStatusEnum>
    _$holdoverFireRiskPayloadStatusEnumSerializer =
    _$HoldoverFireRiskPayloadStatusEnumSerializer();
Serializer<HoldoverFireRiskPayloadPrecipSourceEnum>
    _$holdoverFireRiskPayloadPrecipSourceEnumSerializer =
    _$HoldoverFireRiskPayloadPrecipSourceEnumSerializer();

class _$HoldoverFireRiskPayloadStatusEnumSerializer
    implements PrimitiveSerializer<HoldoverFireRiskPayloadStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'insufficientData': 'insufficient-data',
    'noCoverage': 'no-coverage',
    'degradedInput': 'degraded-input',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'insufficient-data': 'insufficientData',
    'no-coverage': 'noCoverage',
    'degraded-input': 'degradedInput',
  };

  @override
  final Iterable<Type> types = const <Type>[HoldoverFireRiskPayloadStatusEnum];
  @override
  final String wireName = 'HoldoverFireRiskPayloadStatusEnum';

  @override
  Object serialize(
          Serializers serializers, HoldoverFireRiskPayloadStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HoldoverFireRiskPayloadStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HoldoverFireRiskPayloadStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HoldoverFireRiskPayloadPrecipSourceEnumSerializer
    implements PrimitiveSerializer<HoldoverFireRiskPayloadPrecipSourceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mrms': 'mrms',
    'model': 'model',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mrms': 'mrms',
    'model': 'model',
  };

  @override
  final Iterable<Type> types = const <Type>[
    HoldoverFireRiskPayloadPrecipSourceEnum
  ];
  @override
  final String wireName = 'HoldoverFireRiskPayloadPrecipSourceEnum';

  @override
  Object serialize(Serializers serializers,
          HoldoverFireRiskPayloadPrecipSourceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HoldoverFireRiskPayloadPrecipSourceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HoldoverFireRiskPayloadPrecipSourceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HoldoverFireRiskPayload extends HoldoverFireRiskPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final HoldoverFireRiskPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String cell;
  @override
  final Date utcDay;
  @override
  final int flashCount;
  @override
  final num? qpe72hMm;
  @override
  final HoldoverFireRiskPayloadPrecipSourceEnum? precipSource;
  @override
  final num? relativeHumidityPct;
  @override
  final bool ignitionConfirmed;
  @override
  final num? ignitionDelayH;
  @override
  final DateTime? watchUntil;
  @override
  final Severity? severity;

  factory _$HoldoverFireRiskPayload(
          [void Function(HoldoverFireRiskPayloadBuilder)? updates]) =>
      (HoldoverFireRiskPayloadBuilder()..update(updates))._build();

  _$HoldoverFireRiskPayload._(
      {required this.automated,
      required this.notAWarning,
      required this.detector,
      this.confidence,
      required this.status,
      this.evidence,
      required this.cell,
      required this.utcDay,
      required this.flashCount,
      this.qpe72hMm,
      this.precipSource,
      this.relativeHumidityPct,
      required this.ignitionConfirmed,
      this.ignitionDelayH,
      this.watchUntil,
      this.severity})
      : super._();
  @override
  HoldoverFireRiskPayload rebuild(
          void Function(HoldoverFireRiskPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldoverFireRiskPayloadBuilder toBuilder() =>
      HoldoverFireRiskPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldoverFireRiskPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        cell == other.cell &&
        utcDay == other.utcDay &&
        flashCount == other.flashCount &&
        qpe72hMm == other.qpe72hMm &&
        precipSource == other.precipSource &&
        relativeHumidityPct == other.relativeHumidityPct &&
        ignitionConfirmed == other.ignitionConfirmed &&
        ignitionDelayH == other.ignitionDelayH &&
        watchUntil == other.watchUntil &&
        severity == other.severity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, automated.hashCode);
    _$hash = $jc(_$hash, notAWarning.hashCode);
    _$hash = $jc(_$hash, detector.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, evidence.hashCode);
    _$hash = $jc(_$hash, cell.hashCode);
    _$hash = $jc(_$hash, utcDay.hashCode);
    _$hash = $jc(_$hash, flashCount.hashCode);
    _$hash = $jc(_$hash, qpe72hMm.hashCode);
    _$hash = $jc(_$hash, precipSource.hashCode);
    _$hash = $jc(_$hash, relativeHumidityPct.hashCode);
    _$hash = $jc(_$hash, ignitionConfirmed.hashCode);
    _$hash = $jc(_$hash, ignitionDelayH.hashCode);
    _$hash = $jc(_$hash, watchUntil.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoldoverFireRiskPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('cell', cell)
          ..add('utcDay', utcDay)
          ..add('flashCount', flashCount)
          ..add('qpe72hMm', qpe72hMm)
          ..add('precipSource', precipSource)
          ..add('relativeHumidityPct', relativeHumidityPct)
          ..add('ignitionConfirmed', ignitionConfirmed)
          ..add('ignitionDelayH', ignitionDelayH)
          ..add('watchUntil', watchUntil)
          ..add('severity', severity))
        .toString();
  }
}

class HoldoverFireRiskPayloadBuilder
    implements
        Builder<HoldoverFireRiskPayload, HoldoverFireRiskPayloadBuilder> {
  _$HoldoverFireRiskPayload? _$v;

  bool? _automated;
  bool? get automated => _$this._automated;
  set automated(bool? automated) => _$this._automated = automated;

  bool? _notAWarning;
  bool? get notAWarning => _$this._notAWarning;
  set notAWarning(bool? notAWarning) => _$this._notAWarning = notAWarning;

  AircraftFusionPayloadDetectorBuilder? _detector;
  AircraftFusionPayloadDetectorBuilder get detector =>
      _$this._detector ??= AircraftFusionPayloadDetectorBuilder();
  set detector(AircraftFusionPayloadDetectorBuilder? detector) =>
      _$this._detector = detector;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  HoldoverFireRiskPayloadStatusEnum? _status;
  HoldoverFireRiskPayloadStatusEnum? get status => _$this._status;
  set status(HoldoverFireRiskPayloadStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _cell;
  String? get cell => _$this._cell;
  set cell(String? cell) => _$this._cell = cell;

  Date? _utcDay;
  Date? get utcDay => _$this._utcDay;
  set utcDay(Date? utcDay) => _$this._utcDay = utcDay;

  int? _flashCount;
  int? get flashCount => _$this._flashCount;
  set flashCount(int? flashCount) => _$this._flashCount = flashCount;

  num? _qpe72hMm;
  num? get qpe72hMm => _$this._qpe72hMm;
  set qpe72hMm(num? qpe72hMm) => _$this._qpe72hMm = qpe72hMm;

  HoldoverFireRiskPayloadPrecipSourceEnum? _precipSource;
  HoldoverFireRiskPayloadPrecipSourceEnum? get precipSource =>
      _$this._precipSource;
  set precipSource(HoldoverFireRiskPayloadPrecipSourceEnum? precipSource) =>
      _$this._precipSource = precipSource;

  num? _relativeHumidityPct;
  num? get relativeHumidityPct => _$this._relativeHumidityPct;
  set relativeHumidityPct(num? relativeHumidityPct) =>
      _$this._relativeHumidityPct = relativeHumidityPct;

  bool? _ignitionConfirmed;
  bool? get ignitionConfirmed => _$this._ignitionConfirmed;
  set ignitionConfirmed(bool? ignitionConfirmed) =>
      _$this._ignitionConfirmed = ignitionConfirmed;

  num? _ignitionDelayH;
  num? get ignitionDelayH => _$this._ignitionDelayH;
  set ignitionDelayH(num? ignitionDelayH) =>
      _$this._ignitionDelayH = ignitionDelayH;

  DateTime? _watchUntil;
  DateTime? get watchUntil => _$this._watchUntil;
  set watchUntil(DateTime? watchUntil) => _$this._watchUntil = watchUntil;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  HoldoverFireRiskPayloadBuilder() {
    HoldoverFireRiskPayload._defaults(this);
  }

  HoldoverFireRiskPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _cell = $v.cell;
      _utcDay = $v.utcDay;
      _flashCount = $v.flashCount;
      _qpe72hMm = $v.qpe72hMm;
      _precipSource = $v.precipSource;
      _relativeHumidityPct = $v.relativeHumidityPct;
      _ignitionConfirmed = $v.ignitionConfirmed;
      _ignitionDelayH = $v.ignitionDelayH;
      _watchUntil = $v.watchUntil;
      _severity = $v.severity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoldoverFireRiskPayload other) {
    _$v = other as _$HoldoverFireRiskPayload;
  }

  @override
  void update(void Function(HoldoverFireRiskPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldoverFireRiskPayload build() => _build();

  _$HoldoverFireRiskPayload _build() {
    _$HoldoverFireRiskPayload _$result;
    try {
      _$result = _$v ??
          _$HoldoverFireRiskPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
                automated, r'HoldoverFireRiskPayload', 'automated'),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
                notAWarning, r'HoldoverFireRiskPayload', 'notAWarning'),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'HoldoverFireRiskPayload', 'status'),
            evidence: _evidence?.build(),
            cell: BuiltValueNullFieldError.checkNotNull(
                cell, r'HoldoverFireRiskPayload', 'cell'),
            utcDay: BuiltValueNullFieldError.checkNotNull(
                utcDay, r'HoldoverFireRiskPayload', 'utcDay'),
            flashCount: BuiltValueNullFieldError.checkNotNull(
                flashCount, r'HoldoverFireRiskPayload', 'flashCount'),
            qpe72hMm: qpe72hMm,
            precipSource: precipSource,
            relativeHumidityPct: relativeHumidityPct,
            ignitionConfirmed: BuiltValueNullFieldError.checkNotNull(
                ignitionConfirmed,
                r'HoldoverFireRiskPayload',
                'ignitionConfirmed'),
            ignitionDelayH: ignitionDelayH,
            watchUntil: watchUntil,
            severity: severity,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detector';
        detector.build();

        _$failedField = 'evidence';
        _evidence?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HoldoverFireRiskPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
