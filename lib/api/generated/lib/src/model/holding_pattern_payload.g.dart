// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_pattern_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HoldingPatternPayloadStatusEnum _$holdingPatternPayloadStatusEnum_ok =
    const HoldingPatternPayloadStatusEnum._('ok');
const HoldingPatternPayloadStatusEnum
_$holdingPatternPayloadStatusEnum_insufficientData =
    const HoldingPatternPayloadStatusEnum._('insufficientData');
const HoldingPatternPayloadStatusEnum
_$holdingPatternPayloadStatusEnum_noCoverage =
    const HoldingPatternPayloadStatusEnum._('noCoverage');
const HoldingPatternPayloadStatusEnum
_$holdingPatternPayloadStatusEnum_degradedInput =
    const HoldingPatternPayloadStatusEnum._('degradedInput');

HoldingPatternPayloadStatusEnum _$holdingPatternPayloadStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$holdingPatternPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$holdingPatternPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$holdingPatternPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$holdingPatternPayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HoldingPatternPayloadStatusEnum>
_$holdingPatternPayloadStatusEnumValues =
    BuiltSet<HoldingPatternPayloadStatusEnum>(
      const <HoldingPatternPayloadStatusEnum>[
        _$holdingPatternPayloadStatusEnum_ok,
        _$holdingPatternPayloadStatusEnum_insufficientData,
        _$holdingPatternPayloadStatusEnum_noCoverage,
        _$holdingPatternPayloadStatusEnum_degradedInput,
      ],
    );

Serializer<HoldingPatternPayloadStatusEnum>
_$holdingPatternPayloadStatusEnumSerializer =
    _$HoldingPatternPayloadStatusEnumSerializer();

class _$HoldingPatternPayloadStatusEnumSerializer
    implements PrimitiveSerializer<HoldingPatternPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[HoldingPatternPayloadStatusEnum];
  @override
  final String wireName = 'HoldingPatternPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    HoldingPatternPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HoldingPatternPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HoldingPatternPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HoldingPatternPayload extends HoldingPatternPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final HoldingPatternPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String hex;
  @override
  final num turnsDeg;
  @override
  final num? durationMin;
  @override
  final num? altitudeFt;
  @override
  final HoldingPatternPayloadNearestAirport? nearestAirport;

  factory _$HoldingPatternPayload([
    void Function(HoldingPatternPayloadBuilder)? updates,
  ]) => (HoldingPatternPayloadBuilder()..update(updates))._build();

  _$HoldingPatternPayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.hex,
    required this.turnsDeg,
    this.durationMin,
    this.altitudeFt,
    this.nearestAirport,
  }) : super._();
  @override
  HoldingPatternPayload rebuild(
    void Function(HoldingPatternPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HoldingPatternPayloadBuilder toBuilder() =>
      HoldingPatternPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingPatternPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        hex == other.hex &&
        turnsDeg == other.turnsDeg &&
        durationMin == other.durationMin &&
        altitudeFt == other.altitudeFt &&
        nearestAirport == other.nearestAirport;
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
    _$hash = $jc(_$hash, hex.hashCode);
    _$hash = $jc(_$hash, turnsDeg.hashCode);
    _$hash = $jc(_$hash, durationMin.hashCode);
    _$hash = $jc(_$hash, altitudeFt.hashCode);
    _$hash = $jc(_$hash, nearestAirport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoldingPatternPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('hex', hex)
          ..add('turnsDeg', turnsDeg)
          ..add('durationMin', durationMin)
          ..add('altitudeFt', altitudeFt)
          ..add('nearestAirport', nearestAirport))
        .toString();
  }
}

class HoldingPatternPayloadBuilder
    implements Builder<HoldingPatternPayload, HoldingPatternPayloadBuilder> {
  _$HoldingPatternPayload? _$v;

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

  HoldingPatternPayloadStatusEnum? _status;
  HoldingPatternPayloadStatusEnum? get status => _$this._status;
  set status(HoldingPatternPayloadStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _hex;
  String? get hex => _$this._hex;
  set hex(String? hex) => _$this._hex = hex;

  num? _turnsDeg;
  num? get turnsDeg => _$this._turnsDeg;
  set turnsDeg(num? turnsDeg) => _$this._turnsDeg = turnsDeg;

  num? _durationMin;
  num? get durationMin => _$this._durationMin;
  set durationMin(num? durationMin) => _$this._durationMin = durationMin;

  num? _altitudeFt;
  num? get altitudeFt => _$this._altitudeFt;
  set altitudeFt(num? altitudeFt) => _$this._altitudeFt = altitudeFt;

  HoldingPatternPayloadNearestAirportBuilder? _nearestAirport;
  HoldingPatternPayloadNearestAirportBuilder get nearestAirport =>
      _$this._nearestAirport ??= HoldingPatternPayloadNearestAirportBuilder();
  set nearestAirport(
    HoldingPatternPayloadNearestAirportBuilder? nearestAirport,
  ) => _$this._nearestAirport = nearestAirport;

  HoldingPatternPayloadBuilder() {
    HoldingPatternPayload._defaults(this);
  }

  HoldingPatternPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _hex = $v.hex;
      _turnsDeg = $v.turnsDeg;
      _durationMin = $v.durationMin;
      _altitudeFt = $v.altitudeFt;
      _nearestAirport = $v.nearestAirport?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoldingPatternPayload other) {
    _$v = other as _$HoldingPatternPayload;
  }

  @override
  void update(void Function(HoldingPatternPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingPatternPayload build() => _build();

  _$HoldingPatternPayload _build() {
    _$HoldingPatternPayload _$result;
    try {
      _$result =
          _$v ??
          _$HoldingPatternPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'HoldingPatternPayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'HoldingPatternPayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'HoldingPatternPayload',
              'status',
            ),
            evidence: _evidence?.build(),
            hex: BuiltValueNullFieldError.checkNotNull(
              hex,
              r'HoldingPatternPayload',
              'hex',
            ),
            turnsDeg: BuiltValueNullFieldError.checkNotNull(
              turnsDeg,
              r'HoldingPatternPayload',
              'turnsDeg',
            ),
            durationMin: durationMin,
            altitudeFt: altitudeFt,
            nearestAirport: _nearestAirport?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detector';
        detector.build();

        _$failedField = 'evidence';
        _evidence?.build();

        _$failedField = 'nearestAirport';
        _nearestAirport?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HoldingPatternPayload',
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
