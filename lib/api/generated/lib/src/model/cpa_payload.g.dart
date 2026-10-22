// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpa_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CpaPayloadStatusEnum _$cpaPayloadStatusEnum_ok =
    const CpaPayloadStatusEnum._('ok');
const CpaPayloadStatusEnum _$cpaPayloadStatusEnum_insufficientData =
    const CpaPayloadStatusEnum._('insufficientData');
const CpaPayloadStatusEnum _$cpaPayloadStatusEnum_noCoverage =
    const CpaPayloadStatusEnum._('noCoverage');
const CpaPayloadStatusEnum _$cpaPayloadStatusEnum_degradedInput =
    const CpaPayloadStatusEnum._('degradedInput');

CpaPayloadStatusEnum _$cpaPayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$cpaPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$cpaPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$cpaPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$cpaPayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CpaPayloadStatusEnum> _$cpaPayloadStatusEnumValues =
    BuiltSet<CpaPayloadStatusEnum>(const <CpaPayloadStatusEnum>[
  _$cpaPayloadStatusEnum_ok,
  _$cpaPayloadStatusEnum_insufficientData,
  _$cpaPayloadStatusEnum_noCoverage,
  _$cpaPayloadStatusEnum_degradedInput,
]);

Serializer<CpaPayloadStatusEnum> _$cpaPayloadStatusEnumSerializer =
    _$CpaPayloadStatusEnumSerializer();

class _$CpaPayloadStatusEnumSerializer
    implements PrimitiveSerializer<CpaPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[CpaPayloadStatusEnum];
  @override
  final String wireName = 'CpaPayloadStatusEnum';

  @override
  Object serialize(Serializers serializers, CpaPayloadStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CpaPayloadStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CpaPayloadStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CpaPayload extends CpaPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final CpaPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final BuiltList<String> vessels;
  @override
  final num cpaNm;
  @override
  final num tcpaMin;

  factory _$CpaPayload([void Function(CpaPayloadBuilder)? updates]) =>
      (CpaPayloadBuilder()..update(updates))._build();

  _$CpaPayload._(
      {required this.automated,
      required this.notAWarning,
      required this.detector,
      this.confidence,
      required this.status,
      this.evidence,
      required this.vessels,
      required this.cpaNm,
      required this.tcpaMin})
      : super._();
  @override
  CpaPayload rebuild(void Function(CpaPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CpaPayloadBuilder toBuilder() => CpaPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpaPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        vessels == other.vessels &&
        cpaNm == other.cpaNm &&
        tcpaMin == other.tcpaMin;
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
    _$hash = $jc(_$hash, vessels.hashCode);
    _$hash = $jc(_$hash, cpaNm.hashCode);
    _$hash = $jc(_$hash, tcpaMin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CpaPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('vessels', vessels)
          ..add('cpaNm', cpaNm)
          ..add('tcpaMin', tcpaMin))
        .toString();
  }
}

class CpaPayloadBuilder implements Builder<CpaPayload, CpaPayloadBuilder> {
  _$CpaPayload? _$v;

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

  CpaPayloadStatusEnum? _status;
  CpaPayloadStatusEnum? get status => _$this._status;
  set status(CpaPayloadStatusEnum? status) => _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  ListBuilder<String>? _vessels;
  ListBuilder<String> get vessels => _$this._vessels ??= ListBuilder<String>();
  set vessels(ListBuilder<String>? vessels) => _$this._vessels = vessels;

  num? _cpaNm;
  num? get cpaNm => _$this._cpaNm;
  set cpaNm(num? cpaNm) => _$this._cpaNm = cpaNm;

  num? _tcpaMin;
  num? get tcpaMin => _$this._tcpaMin;
  set tcpaMin(num? tcpaMin) => _$this._tcpaMin = tcpaMin;

  CpaPayloadBuilder() {
    CpaPayload._defaults(this);
  }

  CpaPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _vessels = $v.vessels.toBuilder();
      _cpaNm = $v.cpaNm;
      _tcpaMin = $v.tcpaMin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CpaPayload other) {
    _$v = other as _$CpaPayload;
  }

  @override
  void update(void Function(CpaPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CpaPayload build() => _build();

  _$CpaPayload _build() {
    _$CpaPayload _$result;
    try {
      _$result = _$v ??
          _$CpaPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
                automated, r'CpaPayload', 'automated'),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
                notAWarning, r'CpaPayload', 'notAWarning'),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'CpaPayload', 'status'),
            evidence: _evidence?.build(),
            vessels: vessels.build(),
            cpaNm: BuiltValueNullFieldError.checkNotNull(
                cpaNm, r'CpaPayload', 'cpaNm'),
            tcpaMin: BuiltValueNullFieldError.checkNotNull(
                tcpaMin, r'CpaPayload', 'tcpaMin'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detector';
        detector.build();

        _$failedField = 'evidence';
        _evidence?.build();
        _$failedField = 'vessels';
        vessels.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CpaPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
