// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loiter_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LoiterPayloadStatusEnum _$loiterPayloadStatusEnum_ok =
    const LoiterPayloadStatusEnum._('ok');
const LoiterPayloadStatusEnum _$loiterPayloadStatusEnum_insufficientData =
    const LoiterPayloadStatusEnum._('insufficientData');
const LoiterPayloadStatusEnum _$loiterPayloadStatusEnum_noCoverage =
    const LoiterPayloadStatusEnum._('noCoverage');
const LoiterPayloadStatusEnum _$loiterPayloadStatusEnum_degradedInput =
    const LoiterPayloadStatusEnum._('degradedInput');
const LoiterPayloadStatusEnum _$loiterPayloadStatusEnum_unknownDefaultOpenApi =
    const LoiterPayloadStatusEnum._('unknownDefaultOpenApi');

LoiterPayloadStatusEnum _$loiterPayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$loiterPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$loiterPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$loiterPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$loiterPayloadStatusEnum_degradedInput;
    case 'unknownDefaultOpenApi':
      return _$loiterPayloadStatusEnum_unknownDefaultOpenApi;
    default:
      return _$loiterPayloadStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<LoiterPayloadStatusEnum> _$loiterPayloadStatusEnumValues =
    BuiltSet<LoiterPayloadStatusEnum>(const <LoiterPayloadStatusEnum>[
      _$loiterPayloadStatusEnum_ok,
      _$loiterPayloadStatusEnum_insufficientData,
      _$loiterPayloadStatusEnum_noCoverage,
      _$loiterPayloadStatusEnum_degradedInput,
      _$loiterPayloadStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<LoiterPayloadStatusEnum> _$loiterPayloadStatusEnumSerializer =
    _$LoiterPayloadStatusEnumSerializer();

class _$LoiterPayloadStatusEnumSerializer
    implements PrimitiveSerializer<LoiterPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[LoiterPayloadStatusEnum];
  @override
  final String wireName = 'LoiterPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    LoiterPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LoiterPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LoiterPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LoiterPayload extends LoiterPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final LoiterPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String entity;
  @override
  final int? fixes;
  @override
  final DateTime startedAt;
  @override
  final num? durationMin;
  @override
  final num? radiusNm;

  factory _$LoiterPayload([void Function(LoiterPayloadBuilder)? updates]) =>
      (LoiterPayloadBuilder()..update(updates))._build();

  _$LoiterPayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.entity,
    this.fixes,
    required this.startedAt,
    this.durationMin,
    this.radiusNm,
  }) : super._();
  @override
  LoiterPayload rebuild(void Function(LoiterPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoiterPayloadBuilder toBuilder() => LoiterPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoiterPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        entity == other.entity &&
        fixes == other.fixes &&
        startedAt == other.startedAt &&
        durationMin == other.durationMin &&
        radiusNm == other.radiusNm;
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
    _$hash = $jc(_$hash, entity.hashCode);
    _$hash = $jc(_$hash, fixes.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, durationMin.hashCode);
    _$hash = $jc(_$hash, radiusNm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoiterPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('entity', entity)
          ..add('fixes', fixes)
          ..add('startedAt', startedAt)
          ..add('durationMin', durationMin)
          ..add('radiusNm', radiusNm))
        .toString();
  }
}

class LoiterPayloadBuilder
    implements Builder<LoiterPayload, LoiterPayloadBuilder> {
  _$LoiterPayload? _$v;

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

  LoiterPayloadStatusEnum? _status;
  LoiterPayloadStatusEnum? get status => _$this._status;
  set status(LoiterPayloadStatusEnum? status) => _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _entity;
  String? get entity => _$this._entity;
  set entity(String? entity) => _$this._entity = entity;

  int? _fixes;
  int? get fixes => _$this._fixes;
  set fixes(int? fixes) => _$this._fixes = fixes;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  num? _durationMin;
  num? get durationMin => _$this._durationMin;
  set durationMin(num? durationMin) => _$this._durationMin = durationMin;

  num? _radiusNm;
  num? get radiusNm => _$this._radiusNm;
  set radiusNm(num? radiusNm) => _$this._radiusNm = radiusNm;

  LoiterPayloadBuilder() {
    LoiterPayload._defaults(this);
  }

  LoiterPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _entity = $v.entity;
      _fixes = $v.fixes;
      _startedAt = $v.startedAt;
      _durationMin = $v.durationMin;
      _radiusNm = $v.radiusNm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoiterPayload other) {
    _$v = other as _$LoiterPayload;
  }

  @override
  void update(void Function(LoiterPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoiterPayload build() => _build();

  _$LoiterPayload _build() {
    _$LoiterPayload _$result;
    try {
      _$result =
          _$v ??
          _$LoiterPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'LoiterPayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'LoiterPayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'LoiterPayload',
              'status',
            ),
            evidence: _evidence?.build(),
            entity: BuiltValueNullFieldError.checkNotNull(
              entity,
              r'LoiterPayload',
              'entity',
            ),
            fixes: fixes,
            startedAt: BuiltValueNullFieldError.checkNotNull(
              startedAt,
              r'LoiterPayload',
              'startedAt',
            ),
            durationMin: durationMin,
            radiusNm: radiusNm,
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
          r'LoiterPayload',
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
