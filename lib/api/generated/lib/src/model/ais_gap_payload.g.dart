// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ais_gap_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AisGapPayloadStatusEnum _$aisGapPayloadStatusEnum_ok =
    const AisGapPayloadStatusEnum._('ok');
const AisGapPayloadStatusEnum _$aisGapPayloadStatusEnum_insufficientData =
    const AisGapPayloadStatusEnum._('insufficientData');
const AisGapPayloadStatusEnum _$aisGapPayloadStatusEnum_noCoverage =
    const AisGapPayloadStatusEnum._('noCoverage');
const AisGapPayloadStatusEnum _$aisGapPayloadStatusEnum_degradedInput =
    const AisGapPayloadStatusEnum._('degradedInput');
const AisGapPayloadStatusEnum _$aisGapPayloadStatusEnum_unknownDefaultOpenApi =
    const AisGapPayloadStatusEnum._('unknownDefaultOpenApi');

AisGapPayloadStatusEnum _$aisGapPayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$aisGapPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$aisGapPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$aisGapPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$aisGapPayloadStatusEnum_degradedInput;
    case 'unknownDefaultOpenApi':
      return _$aisGapPayloadStatusEnum_unknownDefaultOpenApi;
    default:
      return _$aisGapPayloadStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AisGapPayloadStatusEnum> _$aisGapPayloadStatusEnumValues =
    BuiltSet<AisGapPayloadStatusEnum>(const <AisGapPayloadStatusEnum>[
      _$aisGapPayloadStatusEnum_ok,
      _$aisGapPayloadStatusEnum_insufficientData,
      _$aisGapPayloadStatusEnum_noCoverage,
      _$aisGapPayloadStatusEnum_degradedInput,
      _$aisGapPayloadStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<AisGapPayloadStatusEnum> _$aisGapPayloadStatusEnumSerializer =
    _$AisGapPayloadStatusEnumSerializer();

class _$AisGapPayloadStatusEnumSerializer
    implements PrimitiveSerializer<AisGapPayloadStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'insufficientData': 'insufficient-data',
    'noCoverage': 'no-coverage',
    'degradedInput': 'degraded-input',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'insufficient-data': 'insufficientData',
    'no-coverage': 'noCoverage',
    'degraded-input': 'degradedInput',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AisGapPayloadStatusEnum];
  @override
  final String wireName = 'AisGapPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    AisGapPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AisGapPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AisGapPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AisGapPayload extends AisGapPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final AisGapPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String mmsi;
  @override
  final String? entityId;
  @override
  final DateTime gapStart;
  @override
  final num? lastSog;
  @override
  final num? lastCog;
  @override
  final bool open;
  @override
  final DateTime? gapEnd;
  @override
  final num? gapMinutes;
  @override
  final num? displacementKm;
  @override
  final num? impliedKn;

  factory _$AisGapPayload([void Function(AisGapPayloadBuilder)? updates]) =>
      (AisGapPayloadBuilder()..update(updates))._build();

  _$AisGapPayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.mmsi,
    this.entityId,
    required this.gapStart,
    this.lastSog,
    this.lastCog,
    required this.open,
    this.gapEnd,
    this.gapMinutes,
    this.displacementKm,
    this.impliedKn,
  }) : super._();
  @override
  AisGapPayload rebuild(void Function(AisGapPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AisGapPayloadBuilder toBuilder() => AisGapPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AisGapPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        mmsi == other.mmsi &&
        entityId == other.entityId &&
        gapStart == other.gapStart &&
        lastSog == other.lastSog &&
        lastCog == other.lastCog &&
        open == other.open &&
        gapEnd == other.gapEnd &&
        gapMinutes == other.gapMinutes &&
        displacementKm == other.displacementKm &&
        impliedKn == other.impliedKn;
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
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, gapStart.hashCode);
    _$hash = $jc(_$hash, lastSog.hashCode);
    _$hash = $jc(_$hash, lastCog.hashCode);
    _$hash = $jc(_$hash, open.hashCode);
    _$hash = $jc(_$hash, gapEnd.hashCode);
    _$hash = $jc(_$hash, gapMinutes.hashCode);
    _$hash = $jc(_$hash, displacementKm.hashCode);
    _$hash = $jc(_$hash, impliedKn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AisGapPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('mmsi', mmsi)
          ..add('entityId', entityId)
          ..add('gapStart', gapStart)
          ..add('lastSog', lastSog)
          ..add('lastCog', lastCog)
          ..add('open', open)
          ..add('gapEnd', gapEnd)
          ..add('gapMinutes', gapMinutes)
          ..add('displacementKm', displacementKm)
          ..add('impliedKn', impliedKn))
        .toString();
  }
}

class AisGapPayloadBuilder
    implements Builder<AisGapPayload, AisGapPayloadBuilder> {
  _$AisGapPayload? _$v;

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

  AisGapPayloadStatusEnum? _status;
  AisGapPayloadStatusEnum? get status => _$this._status;
  set status(AisGapPayloadStatusEnum? status) => _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _mmsi;
  String? get mmsi => _$this._mmsi;
  set mmsi(String? mmsi) => _$this._mmsi = mmsi;

  String? _entityId;
  String? get entityId => _$this._entityId;
  set entityId(String? entityId) => _$this._entityId = entityId;

  DateTime? _gapStart;
  DateTime? get gapStart => _$this._gapStart;
  set gapStart(DateTime? gapStart) => _$this._gapStart = gapStart;

  num? _lastSog;
  num? get lastSog => _$this._lastSog;
  set lastSog(num? lastSog) => _$this._lastSog = lastSog;

  num? _lastCog;
  num? get lastCog => _$this._lastCog;
  set lastCog(num? lastCog) => _$this._lastCog = lastCog;

  bool? _open;
  bool? get open => _$this._open;
  set open(bool? open) => _$this._open = open;

  DateTime? _gapEnd;
  DateTime? get gapEnd => _$this._gapEnd;
  set gapEnd(DateTime? gapEnd) => _$this._gapEnd = gapEnd;

  num? _gapMinutes;
  num? get gapMinutes => _$this._gapMinutes;
  set gapMinutes(num? gapMinutes) => _$this._gapMinutes = gapMinutes;

  num? _displacementKm;
  num? get displacementKm => _$this._displacementKm;
  set displacementKm(num? displacementKm) =>
      _$this._displacementKm = displacementKm;

  num? _impliedKn;
  num? get impliedKn => _$this._impliedKn;
  set impliedKn(num? impliedKn) => _$this._impliedKn = impliedKn;

  AisGapPayloadBuilder() {
    AisGapPayload._defaults(this);
  }

  AisGapPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _mmsi = $v.mmsi;
      _entityId = $v.entityId;
      _gapStart = $v.gapStart;
      _lastSog = $v.lastSog;
      _lastCog = $v.lastCog;
      _open = $v.open;
      _gapEnd = $v.gapEnd;
      _gapMinutes = $v.gapMinutes;
      _displacementKm = $v.displacementKm;
      _impliedKn = $v.impliedKn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AisGapPayload other) {
    _$v = other as _$AisGapPayload;
  }

  @override
  void update(void Function(AisGapPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AisGapPayload build() => _build();

  _$AisGapPayload _build() {
    _$AisGapPayload _$result;
    try {
      _$result =
          _$v ??
          _$AisGapPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'AisGapPayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'AisGapPayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'AisGapPayload',
              'status',
            ),
            evidence: _evidence?.build(),
            mmsi: BuiltValueNullFieldError.checkNotNull(
              mmsi,
              r'AisGapPayload',
              'mmsi',
            ),
            entityId: entityId,
            gapStart: BuiltValueNullFieldError.checkNotNull(
              gapStart,
              r'AisGapPayload',
              'gapStart',
            ),
            lastSog: lastSog,
            lastCog: lastCog,
            open: BuiltValueNullFieldError.checkNotNull(
              open,
              r'AisGapPayload',
              'open',
            ),
            gapEnd: gapEnd,
            gapMinutes: gapMinutes,
            displacementKm: displacementKm,
            impliedKn: impliedKn,
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
          r'AisGapPayload',
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
