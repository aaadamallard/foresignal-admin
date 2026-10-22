// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hf_propagation_anomaly_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HfPropagationAnomalyPayloadStatusEnum
_$hfPropagationAnomalyPayloadStatusEnum_ok =
    const HfPropagationAnomalyPayloadStatusEnum._('ok');
const HfPropagationAnomalyPayloadStatusEnum
_$hfPropagationAnomalyPayloadStatusEnum_insufficientData =
    const HfPropagationAnomalyPayloadStatusEnum._('insufficientData');
const HfPropagationAnomalyPayloadStatusEnum
_$hfPropagationAnomalyPayloadStatusEnum_noCoverage =
    const HfPropagationAnomalyPayloadStatusEnum._('noCoverage');
const HfPropagationAnomalyPayloadStatusEnum
_$hfPropagationAnomalyPayloadStatusEnum_degradedInput =
    const HfPropagationAnomalyPayloadStatusEnum._('degradedInput');

HfPropagationAnomalyPayloadStatusEnum
_$hfPropagationAnomalyPayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$hfPropagationAnomalyPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$hfPropagationAnomalyPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$hfPropagationAnomalyPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$hfPropagationAnomalyPayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HfPropagationAnomalyPayloadStatusEnum>
_$hfPropagationAnomalyPayloadStatusEnumValues =
    BuiltSet<HfPropagationAnomalyPayloadStatusEnum>(
      const <HfPropagationAnomalyPayloadStatusEnum>[
        _$hfPropagationAnomalyPayloadStatusEnum_ok,
        _$hfPropagationAnomalyPayloadStatusEnum_insufficientData,
        _$hfPropagationAnomalyPayloadStatusEnum_noCoverage,
        _$hfPropagationAnomalyPayloadStatusEnum_degradedInput,
      ],
    );

Serializer<HfPropagationAnomalyPayloadStatusEnum>
_$hfPropagationAnomalyPayloadStatusEnumSerializer =
    _$HfPropagationAnomalyPayloadStatusEnumSerializer();

class _$HfPropagationAnomalyPayloadStatusEnumSerializer
    implements PrimitiveSerializer<HfPropagationAnomalyPayloadStatusEnum> {
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
    HfPropagationAnomalyPayloadStatusEnum,
  ];
  @override
  final String wireName = 'HfPropagationAnomalyPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    HfPropagationAnomalyPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HfPropagationAnomalyPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HfPropagationAnomalyPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HfPropagationAnomalyPayload extends HfPropagationAnomalyPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final HfPropagationAnomalyPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String band;
  @override
  final String pathClass;
  @override
  final DateTime utcHour;
  @override
  final int? spotCount;
  @override
  final num? baselineSpotCount;
  @override
  final num? spotDropPct;
  @override
  final num? medianSnrDb;
  @override
  final num? baselineMedianSnrDb;
  @override
  final num? snrDropDb;
  @override
  final bool? sunlit;
  @override
  final String? flareConcurrent;

  factory _$HfPropagationAnomalyPayload([
    void Function(HfPropagationAnomalyPayloadBuilder)? updates,
  ]) => (HfPropagationAnomalyPayloadBuilder()..update(updates))._build();

  _$HfPropagationAnomalyPayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.band,
    required this.pathClass,
    required this.utcHour,
    this.spotCount,
    this.baselineSpotCount,
    this.spotDropPct,
    this.medianSnrDb,
    this.baselineMedianSnrDb,
    this.snrDropDb,
    this.sunlit,
    this.flareConcurrent,
  }) : super._();
  @override
  HfPropagationAnomalyPayload rebuild(
    void Function(HfPropagationAnomalyPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HfPropagationAnomalyPayloadBuilder toBuilder() =>
      HfPropagationAnomalyPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HfPropagationAnomalyPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        band == other.band &&
        pathClass == other.pathClass &&
        utcHour == other.utcHour &&
        spotCount == other.spotCount &&
        baselineSpotCount == other.baselineSpotCount &&
        spotDropPct == other.spotDropPct &&
        medianSnrDb == other.medianSnrDb &&
        baselineMedianSnrDb == other.baselineMedianSnrDb &&
        snrDropDb == other.snrDropDb &&
        sunlit == other.sunlit &&
        flareConcurrent == other.flareConcurrent;
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
    _$hash = $jc(_$hash, band.hashCode);
    _$hash = $jc(_$hash, pathClass.hashCode);
    _$hash = $jc(_$hash, utcHour.hashCode);
    _$hash = $jc(_$hash, spotCount.hashCode);
    _$hash = $jc(_$hash, baselineSpotCount.hashCode);
    _$hash = $jc(_$hash, spotDropPct.hashCode);
    _$hash = $jc(_$hash, medianSnrDb.hashCode);
    _$hash = $jc(_$hash, baselineMedianSnrDb.hashCode);
    _$hash = $jc(_$hash, snrDropDb.hashCode);
    _$hash = $jc(_$hash, sunlit.hashCode);
    _$hash = $jc(_$hash, flareConcurrent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HfPropagationAnomalyPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('band', band)
          ..add('pathClass', pathClass)
          ..add('utcHour', utcHour)
          ..add('spotCount', spotCount)
          ..add('baselineSpotCount', baselineSpotCount)
          ..add('spotDropPct', spotDropPct)
          ..add('medianSnrDb', medianSnrDb)
          ..add('baselineMedianSnrDb', baselineMedianSnrDb)
          ..add('snrDropDb', snrDropDb)
          ..add('sunlit', sunlit)
          ..add('flareConcurrent', flareConcurrent))
        .toString();
  }
}

class HfPropagationAnomalyPayloadBuilder
    implements
        Builder<
          HfPropagationAnomalyPayload,
          HfPropagationAnomalyPayloadBuilder
        > {
  _$HfPropagationAnomalyPayload? _$v;

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

  HfPropagationAnomalyPayloadStatusEnum? _status;
  HfPropagationAnomalyPayloadStatusEnum? get status => _$this._status;
  set status(HfPropagationAnomalyPayloadStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _band;
  String? get band => _$this._band;
  set band(String? band) => _$this._band = band;

  String? _pathClass;
  String? get pathClass => _$this._pathClass;
  set pathClass(String? pathClass) => _$this._pathClass = pathClass;

  DateTime? _utcHour;
  DateTime? get utcHour => _$this._utcHour;
  set utcHour(DateTime? utcHour) => _$this._utcHour = utcHour;

  int? _spotCount;
  int? get spotCount => _$this._spotCount;
  set spotCount(int? spotCount) => _$this._spotCount = spotCount;

  num? _baselineSpotCount;
  num? get baselineSpotCount => _$this._baselineSpotCount;
  set baselineSpotCount(num? baselineSpotCount) =>
      _$this._baselineSpotCount = baselineSpotCount;

  num? _spotDropPct;
  num? get spotDropPct => _$this._spotDropPct;
  set spotDropPct(num? spotDropPct) => _$this._spotDropPct = spotDropPct;

  num? _medianSnrDb;
  num? get medianSnrDb => _$this._medianSnrDb;
  set medianSnrDb(num? medianSnrDb) => _$this._medianSnrDb = medianSnrDb;

  num? _baselineMedianSnrDb;
  num? get baselineMedianSnrDb => _$this._baselineMedianSnrDb;
  set baselineMedianSnrDb(num? baselineMedianSnrDb) =>
      _$this._baselineMedianSnrDb = baselineMedianSnrDb;

  num? _snrDropDb;
  num? get snrDropDb => _$this._snrDropDb;
  set snrDropDb(num? snrDropDb) => _$this._snrDropDb = snrDropDb;

  bool? _sunlit;
  bool? get sunlit => _$this._sunlit;
  set sunlit(bool? sunlit) => _$this._sunlit = sunlit;

  String? _flareConcurrent;
  String? get flareConcurrent => _$this._flareConcurrent;
  set flareConcurrent(String? flareConcurrent) =>
      _$this._flareConcurrent = flareConcurrent;

  HfPropagationAnomalyPayloadBuilder() {
    HfPropagationAnomalyPayload._defaults(this);
  }

  HfPropagationAnomalyPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _band = $v.band;
      _pathClass = $v.pathClass;
      _utcHour = $v.utcHour;
      _spotCount = $v.spotCount;
      _baselineSpotCount = $v.baselineSpotCount;
      _spotDropPct = $v.spotDropPct;
      _medianSnrDb = $v.medianSnrDb;
      _baselineMedianSnrDb = $v.baselineMedianSnrDb;
      _snrDropDb = $v.snrDropDb;
      _sunlit = $v.sunlit;
      _flareConcurrent = $v.flareConcurrent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HfPropagationAnomalyPayload other) {
    _$v = other as _$HfPropagationAnomalyPayload;
  }

  @override
  void update(void Function(HfPropagationAnomalyPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HfPropagationAnomalyPayload build() => _build();

  _$HfPropagationAnomalyPayload _build() {
    _$HfPropagationAnomalyPayload _$result;
    try {
      _$result =
          _$v ??
          _$HfPropagationAnomalyPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'HfPropagationAnomalyPayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'HfPropagationAnomalyPayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'HfPropagationAnomalyPayload',
              'status',
            ),
            evidence: _evidence?.build(),
            band: BuiltValueNullFieldError.checkNotNull(
              band,
              r'HfPropagationAnomalyPayload',
              'band',
            ),
            pathClass: BuiltValueNullFieldError.checkNotNull(
              pathClass,
              r'HfPropagationAnomalyPayload',
              'pathClass',
            ),
            utcHour: BuiltValueNullFieldError.checkNotNull(
              utcHour,
              r'HfPropagationAnomalyPayload',
              'utcHour',
            ),
            spotCount: spotCount,
            baselineSpotCount: baselineSpotCount,
            spotDropPct: spotDropPct,
            medianSnrDb: medianSnrDb,
            baselineMedianSnrDb: baselineMedianSnrDb,
            snrDropDb: snrDropDb,
            sunlit: sunlit,
            flareConcurrent: flareConcurrent,
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
          r'HfPropagationAnomalyPayload',
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
