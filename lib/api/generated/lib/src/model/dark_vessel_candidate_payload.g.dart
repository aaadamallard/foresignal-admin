// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dark_vessel_candidate_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DarkVesselCandidatePayloadStatusEnum
_$darkVesselCandidatePayloadStatusEnum_ok =
    const DarkVesselCandidatePayloadStatusEnum._('ok');
const DarkVesselCandidatePayloadStatusEnum
_$darkVesselCandidatePayloadStatusEnum_insufficientData =
    const DarkVesselCandidatePayloadStatusEnum._('insufficientData');
const DarkVesselCandidatePayloadStatusEnum
_$darkVesselCandidatePayloadStatusEnum_noCoverage =
    const DarkVesselCandidatePayloadStatusEnum._('noCoverage');
const DarkVesselCandidatePayloadStatusEnum
_$darkVesselCandidatePayloadStatusEnum_degradedInput =
    const DarkVesselCandidatePayloadStatusEnum._('degradedInput');

DarkVesselCandidatePayloadStatusEnum
_$darkVesselCandidatePayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$darkVesselCandidatePayloadStatusEnum_ok;
    case 'insufficientData':
      return _$darkVesselCandidatePayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$darkVesselCandidatePayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$darkVesselCandidatePayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DarkVesselCandidatePayloadStatusEnum>
_$darkVesselCandidatePayloadStatusEnumValues =
    BuiltSet<DarkVesselCandidatePayloadStatusEnum>(
      const <DarkVesselCandidatePayloadStatusEnum>[
        _$darkVesselCandidatePayloadStatusEnum_ok,
        _$darkVesselCandidatePayloadStatusEnum_insufficientData,
        _$darkVesselCandidatePayloadStatusEnum_noCoverage,
        _$darkVesselCandidatePayloadStatusEnum_degradedInput,
      ],
    );

Serializer<DarkVesselCandidatePayloadStatusEnum>
_$darkVesselCandidatePayloadStatusEnumSerializer =
    _$DarkVesselCandidatePayloadStatusEnumSerializer();

class _$DarkVesselCandidatePayloadStatusEnumSerializer
    implements PrimitiveSerializer<DarkVesselCandidatePayloadStatusEnum> {
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
    DarkVesselCandidatePayloadStatusEnum,
  ];
  @override
  final String wireName = 'DarkVesselCandidatePayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    DarkVesselCandidatePayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DarkVesselCandidatePayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DarkVesselCandidatePayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DarkVesselCandidatePayload extends DarkVesselCandidatePayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final DarkVesselCandidatePayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String mmsi;
  @override
  final DateTime gapStart;
  @override
  final String detectionId;
  @override
  final num? distanceKm;
  @override
  final num? timeOffsetMin;
  @override
  final num? detectionLengthM;
  @override
  final num matchScore;
  @override
  final String? label;

  factory _$DarkVesselCandidatePayload([
    void Function(DarkVesselCandidatePayloadBuilder)? updates,
  ]) => (DarkVesselCandidatePayloadBuilder()..update(updates))._build();

  _$DarkVesselCandidatePayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.mmsi,
    required this.gapStart,
    required this.detectionId,
    this.distanceKm,
    this.timeOffsetMin,
    this.detectionLengthM,
    required this.matchScore,
    this.label,
  }) : super._();
  @override
  DarkVesselCandidatePayload rebuild(
    void Function(DarkVesselCandidatePayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DarkVesselCandidatePayloadBuilder toBuilder() =>
      DarkVesselCandidatePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DarkVesselCandidatePayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        mmsi == other.mmsi &&
        gapStart == other.gapStart &&
        detectionId == other.detectionId &&
        distanceKm == other.distanceKm &&
        timeOffsetMin == other.timeOffsetMin &&
        detectionLengthM == other.detectionLengthM &&
        matchScore == other.matchScore &&
        label == other.label;
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
    _$hash = $jc(_$hash, gapStart.hashCode);
    _$hash = $jc(_$hash, detectionId.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jc(_$hash, timeOffsetMin.hashCode);
    _$hash = $jc(_$hash, detectionLengthM.hashCode);
    _$hash = $jc(_$hash, matchScore.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DarkVesselCandidatePayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('mmsi', mmsi)
          ..add('gapStart', gapStart)
          ..add('detectionId', detectionId)
          ..add('distanceKm', distanceKm)
          ..add('timeOffsetMin', timeOffsetMin)
          ..add('detectionLengthM', detectionLengthM)
          ..add('matchScore', matchScore)
          ..add('label', label))
        .toString();
  }
}

class DarkVesselCandidatePayloadBuilder
    implements
        Builder<DarkVesselCandidatePayload, DarkVesselCandidatePayloadBuilder> {
  _$DarkVesselCandidatePayload? _$v;

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

  DarkVesselCandidatePayloadStatusEnum? _status;
  DarkVesselCandidatePayloadStatusEnum? get status => _$this._status;
  set status(DarkVesselCandidatePayloadStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _mmsi;
  String? get mmsi => _$this._mmsi;
  set mmsi(String? mmsi) => _$this._mmsi = mmsi;

  DateTime? _gapStart;
  DateTime? get gapStart => _$this._gapStart;
  set gapStart(DateTime? gapStart) => _$this._gapStart = gapStart;

  String? _detectionId;
  String? get detectionId => _$this._detectionId;
  set detectionId(String? detectionId) => _$this._detectionId = detectionId;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  num? _timeOffsetMin;
  num? get timeOffsetMin => _$this._timeOffsetMin;
  set timeOffsetMin(num? timeOffsetMin) =>
      _$this._timeOffsetMin = timeOffsetMin;

  num? _detectionLengthM;
  num? get detectionLengthM => _$this._detectionLengthM;
  set detectionLengthM(num? detectionLengthM) =>
      _$this._detectionLengthM = detectionLengthM;

  num? _matchScore;
  num? get matchScore => _$this._matchScore;
  set matchScore(num? matchScore) => _$this._matchScore = matchScore;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  DarkVesselCandidatePayloadBuilder() {
    DarkVesselCandidatePayload._defaults(this);
  }

  DarkVesselCandidatePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _mmsi = $v.mmsi;
      _gapStart = $v.gapStart;
      _detectionId = $v.detectionId;
      _distanceKm = $v.distanceKm;
      _timeOffsetMin = $v.timeOffsetMin;
      _detectionLengthM = $v.detectionLengthM;
      _matchScore = $v.matchScore;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DarkVesselCandidatePayload other) {
    _$v = other as _$DarkVesselCandidatePayload;
  }

  @override
  void update(void Function(DarkVesselCandidatePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DarkVesselCandidatePayload build() => _build();

  _$DarkVesselCandidatePayload _build() {
    _$DarkVesselCandidatePayload _$result;
    try {
      _$result =
          _$v ??
          _$DarkVesselCandidatePayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'DarkVesselCandidatePayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'DarkVesselCandidatePayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'DarkVesselCandidatePayload',
              'status',
            ),
            evidence: _evidence?.build(),
            mmsi: BuiltValueNullFieldError.checkNotNull(
              mmsi,
              r'DarkVesselCandidatePayload',
              'mmsi',
            ),
            gapStart: BuiltValueNullFieldError.checkNotNull(
              gapStart,
              r'DarkVesselCandidatePayload',
              'gapStart',
            ),
            detectionId: BuiltValueNullFieldError.checkNotNull(
              detectionId,
              r'DarkVesselCandidatePayload',
              'detectionId',
            ),
            distanceKm: distanceKm,
            timeOffsetMin: timeOffsetMin,
            detectionLengthM: detectionLengthM,
            matchScore: BuiltValueNullFieldError.checkNotNull(
              matchScore,
              r'DarkVesselCandidatePayload',
              'matchScore',
            ),
            label: label,
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
          r'DarkVesselCandidatePayload',
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
