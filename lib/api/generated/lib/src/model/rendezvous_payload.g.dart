// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rendezvous_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RendezvousPayloadStatusEnum _$rendezvousPayloadStatusEnum_ok =
    const RendezvousPayloadStatusEnum._('ok');
const RendezvousPayloadStatusEnum
_$rendezvousPayloadStatusEnum_insufficientData =
    const RendezvousPayloadStatusEnum._('insufficientData');
const RendezvousPayloadStatusEnum _$rendezvousPayloadStatusEnum_noCoverage =
    const RendezvousPayloadStatusEnum._('noCoverage');
const RendezvousPayloadStatusEnum _$rendezvousPayloadStatusEnum_degradedInput =
    const RendezvousPayloadStatusEnum._('degradedInput');

RendezvousPayloadStatusEnum _$rendezvousPayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$rendezvousPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$rendezvousPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$rendezvousPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$rendezvousPayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RendezvousPayloadStatusEnum>
_$rendezvousPayloadStatusEnumValues =
    BuiltSet<RendezvousPayloadStatusEnum>(const <RendezvousPayloadStatusEnum>[
      _$rendezvousPayloadStatusEnum_ok,
      _$rendezvousPayloadStatusEnum_insufficientData,
      _$rendezvousPayloadStatusEnum_noCoverage,
      _$rendezvousPayloadStatusEnum_degradedInput,
    ]);

Serializer<RendezvousPayloadStatusEnum>
_$rendezvousPayloadStatusEnumSerializer =
    _$RendezvousPayloadStatusEnumSerializer();

class _$RendezvousPayloadStatusEnumSerializer
    implements PrimitiveSerializer<RendezvousPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[RendezvousPayloadStatusEnum];
  @override
  final String wireName = 'RendezvousPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    RendezvousPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RendezvousPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RendezvousPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RendezvousPayload extends RendezvousPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final RendezvousPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final BuiltList<String> vessels;
  @override
  final num? distanceNm;
  @override
  final DateTime startedAt;
  @override
  final num? durationMin;
  @override
  final num? nearestPortKm;

  factory _$RendezvousPayload([
    void Function(RendezvousPayloadBuilder)? updates,
  ]) => (RendezvousPayloadBuilder()..update(updates))._build();

  _$RendezvousPayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.vessels,
    this.distanceNm,
    required this.startedAt,
    this.durationMin,
    this.nearestPortKm,
  }) : super._();
  @override
  RendezvousPayload rebuild(void Function(RendezvousPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RendezvousPayloadBuilder toBuilder() =>
      RendezvousPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RendezvousPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        vessels == other.vessels &&
        distanceNm == other.distanceNm &&
        startedAt == other.startedAt &&
        durationMin == other.durationMin &&
        nearestPortKm == other.nearestPortKm;
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
    _$hash = $jc(_$hash, distanceNm.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, durationMin.hashCode);
    _$hash = $jc(_$hash, nearestPortKm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RendezvousPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('vessels', vessels)
          ..add('distanceNm', distanceNm)
          ..add('startedAt', startedAt)
          ..add('durationMin', durationMin)
          ..add('nearestPortKm', nearestPortKm))
        .toString();
  }
}

class RendezvousPayloadBuilder
    implements Builder<RendezvousPayload, RendezvousPayloadBuilder> {
  _$RendezvousPayload? _$v;

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

  RendezvousPayloadStatusEnum? _status;
  RendezvousPayloadStatusEnum? get status => _$this._status;
  set status(RendezvousPayloadStatusEnum? status) => _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  ListBuilder<String>? _vessels;
  ListBuilder<String> get vessels => _$this._vessels ??= ListBuilder<String>();
  set vessels(ListBuilder<String>? vessels) => _$this._vessels = vessels;

  num? _distanceNm;
  num? get distanceNm => _$this._distanceNm;
  set distanceNm(num? distanceNm) => _$this._distanceNm = distanceNm;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  num? _durationMin;
  num? get durationMin => _$this._durationMin;
  set durationMin(num? durationMin) => _$this._durationMin = durationMin;

  num? _nearestPortKm;
  num? get nearestPortKm => _$this._nearestPortKm;
  set nearestPortKm(num? nearestPortKm) =>
      _$this._nearestPortKm = nearestPortKm;

  RendezvousPayloadBuilder() {
    RendezvousPayload._defaults(this);
  }

  RendezvousPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _vessels = $v.vessels.toBuilder();
      _distanceNm = $v.distanceNm;
      _startedAt = $v.startedAt;
      _durationMin = $v.durationMin;
      _nearestPortKm = $v.nearestPortKm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RendezvousPayload other) {
    _$v = other as _$RendezvousPayload;
  }

  @override
  void update(void Function(RendezvousPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RendezvousPayload build() => _build();

  _$RendezvousPayload _build() {
    _$RendezvousPayload _$result;
    try {
      _$result =
          _$v ??
          _$RendezvousPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'RendezvousPayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'RendezvousPayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'RendezvousPayload',
              'status',
            ),
            evidence: _evidence?.build(),
            vessels: vessels.build(),
            distanceNm: distanceNm,
            startedAt: BuiltValueNullFieldError.checkNotNull(
              startedAt,
              r'RendezvousPayload',
              'startedAt',
            ),
            durationMin: durationMin,
            nearestPortKm: nearestPortKm,
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
          r'RendezvousPayload',
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
