// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cable_proximity_risk_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CableProximityRiskPayloadStatusEnum
    _$cableProximityRiskPayloadStatusEnum_ok =
    const CableProximityRiskPayloadStatusEnum._('ok');
const CableProximityRiskPayloadStatusEnum
    _$cableProximityRiskPayloadStatusEnum_insufficientData =
    const CableProximityRiskPayloadStatusEnum._('insufficientData');
const CableProximityRiskPayloadStatusEnum
    _$cableProximityRiskPayloadStatusEnum_noCoverage =
    const CableProximityRiskPayloadStatusEnum._('noCoverage');
const CableProximityRiskPayloadStatusEnum
    _$cableProximityRiskPayloadStatusEnum_degradedInput =
    const CableProximityRiskPayloadStatusEnum._('degradedInput');

CableProximityRiskPayloadStatusEnum
    _$cableProximityRiskPayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$cableProximityRiskPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$cableProximityRiskPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$cableProximityRiskPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$cableProximityRiskPayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CableProximityRiskPayloadStatusEnum>
    _$cableProximityRiskPayloadStatusEnumValues = BuiltSet<
        CableProximityRiskPayloadStatusEnum>(const <CableProximityRiskPayloadStatusEnum>[
  _$cableProximityRiskPayloadStatusEnum_ok,
  _$cableProximityRiskPayloadStatusEnum_insufficientData,
  _$cableProximityRiskPayloadStatusEnum_noCoverage,
  _$cableProximityRiskPayloadStatusEnum_degradedInput,
]);

Serializer<CableProximityRiskPayloadStatusEnum>
    _$cableProximityRiskPayloadStatusEnumSerializer =
    _$CableProximityRiskPayloadStatusEnumSerializer();

class _$CableProximityRiskPayloadStatusEnumSerializer
    implements PrimitiveSerializer<CableProximityRiskPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[
    CableProximityRiskPayloadStatusEnum
  ];
  @override
  final String wireName = 'CableProximityRiskPayloadStatusEnum';

  @override
  Object serialize(
          Serializers serializers, CableProximityRiskPayloadStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CableProximityRiskPayloadStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CableProximityRiskPayloadStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CableProximityRiskPayload extends CableProximityRiskPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final CableProximityRiskPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String mmsi;
  @override
  final String cableId;
  @override
  final String? cableName;
  @override
  final DateTime startedAt;
  @override
  final num? durationMin;
  @override
  final int? cablesWithin2Km;
  @override
  final bool? possibleAnchorDrag;
  @override
  final bool? aisGapNearCable;
  @override
  final Severity? severity;

  factory _$CableProximityRiskPayload(
          [void Function(CableProximityRiskPayloadBuilder)? updates]) =>
      (CableProximityRiskPayloadBuilder()..update(updates))._build();

  _$CableProximityRiskPayload._(
      {required this.automated,
      required this.notAWarning,
      required this.detector,
      this.confidence,
      required this.status,
      this.evidence,
      required this.mmsi,
      required this.cableId,
      this.cableName,
      required this.startedAt,
      this.durationMin,
      this.cablesWithin2Km,
      this.possibleAnchorDrag,
      this.aisGapNearCable,
      this.severity})
      : super._();
  @override
  CableProximityRiskPayload rebuild(
          void Function(CableProximityRiskPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CableProximityRiskPayloadBuilder toBuilder() =>
      CableProximityRiskPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CableProximityRiskPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        mmsi == other.mmsi &&
        cableId == other.cableId &&
        cableName == other.cableName &&
        startedAt == other.startedAt &&
        durationMin == other.durationMin &&
        cablesWithin2Km == other.cablesWithin2Km &&
        possibleAnchorDrag == other.possibleAnchorDrag &&
        aisGapNearCable == other.aisGapNearCable &&
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
    _$hash = $jc(_$hash, mmsi.hashCode);
    _$hash = $jc(_$hash, cableId.hashCode);
    _$hash = $jc(_$hash, cableName.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, durationMin.hashCode);
    _$hash = $jc(_$hash, cablesWithin2Km.hashCode);
    _$hash = $jc(_$hash, possibleAnchorDrag.hashCode);
    _$hash = $jc(_$hash, aisGapNearCable.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CableProximityRiskPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('mmsi', mmsi)
          ..add('cableId', cableId)
          ..add('cableName', cableName)
          ..add('startedAt', startedAt)
          ..add('durationMin', durationMin)
          ..add('cablesWithin2Km', cablesWithin2Km)
          ..add('possibleAnchorDrag', possibleAnchorDrag)
          ..add('aisGapNearCable', aisGapNearCable)
          ..add('severity', severity))
        .toString();
  }
}

class CableProximityRiskPayloadBuilder
    implements
        Builder<CableProximityRiskPayload, CableProximityRiskPayloadBuilder> {
  _$CableProximityRiskPayload? _$v;

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

  CableProximityRiskPayloadStatusEnum? _status;
  CableProximityRiskPayloadStatusEnum? get status => _$this._status;
  set status(CableProximityRiskPayloadStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _mmsi;
  String? get mmsi => _$this._mmsi;
  set mmsi(String? mmsi) => _$this._mmsi = mmsi;

  String? _cableId;
  String? get cableId => _$this._cableId;
  set cableId(String? cableId) => _$this._cableId = cableId;

  String? _cableName;
  String? get cableName => _$this._cableName;
  set cableName(String? cableName) => _$this._cableName = cableName;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  num? _durationMin;
  num? get durationMin => _$this._durationMin;
  set durationMin(num? durationMin) => _$this._durationMin = durationMin;

  int? _cablesWithin2Km;
  int? get cablesWithin2Km => _$this._cablesWithin2Km;
  set cablesWithin2Km(int? cablesWithin2Km) =>
      _$this._cablesWithin2Km = cablesWithin2Km;

  bool? _possibleAnchorDrag;
  bool? get possibleAnchorDrag => _$this._possibleAnchorDrag;
  set possibleAnchorDrag(bool? possibleAnchorDrag) =>
      _$this._possibleAnchorDrag = possibleAnchorDrag;

  bool? _aisGapNearCable;
  bool? get aisGapNearCable => _$this._aisGapNearCable;
  set aisGapNearCable(bool? aisGapNearCable) =>
      _$this._aisGapNearCable = aisGapNearCable;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  CableProximityRiskPayloadBuilder() {
    CableProximityRiskPayload._defaults(this);
  }

  CableProximityRiskPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _mmsi = $v.mmsi;
      _cableId = $v.cableId;
      _cableName = $v.cableName;
      _startedAt = $v.startedAt;
      _durationMin = $v.durationMin;
      _cablesWithin2Km = $v.cablesWithin2Km;
      _possibleAnchorDrag = $v.possibleAnchorDrag;
      _aisGapNearCable = $v.aisGapNearCable;
      _severity = $v.severity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CableProximityRiskPayload other) {
    _$v = other as _$CableProximityRiskPayload;
  }

  @override
  void update(void Function(CableProximityRiskPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CableProximityRiskPayload build() => _build();

  _$CableProximityRiskPayload _build() {
    _$CableProximityRiskPayload _$result;
    try {
      _$result = _$v ??
          _$CableProximityRiskPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
                automated, r'CableProximityRiskPayload', 'automated'),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
                notAWarning, r'CableProximityRiskPayload', 'notAWarning'),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'CableProximityRiskPayload', 'status'),
            evidence: _evidence?.build(),
            mmsi: BuiltValueNullFieldError.checkNotNull(
                mmsi, r'CableProximityRiskPayload', 'mmsi'),
            cableId: BuiltValueNullFieldError.checkNotNull(
                cableId, r'CableProximityRiskPayload', 'cableId'),
            cableName: cableName,
            startedAt: BuiltValueNullFieldError.checkNotNull(
                startedAt, r'CableProximityRiskPayload', 'startedAt'),
            durationMin: durationMin,
            cablesWithin2Km: cablesWithin2Km,
            possibleAnchorDrag: possibleAnchorDrag,
            aisGapNearCable: aisGapNearCable,
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
            r'CableProximityRiskPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
