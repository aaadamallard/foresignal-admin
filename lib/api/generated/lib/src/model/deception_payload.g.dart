// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deception_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeceptionPayloadStatusEnum _$deceptionPayloadStatusEnum_ok =
    const DeceptionPayloadStatusEnum._('ok');
const DeceptionPayloadStatusEnum _$deceptionPayloadStatusEnum_insufficientData =
    const DeceptionPayloadStatusEnum._('insufficientData');
const DeceptionPayloadStatusEnum _$deceptionPayloadStatusEnum_noCoverage =
    const DeceptionPayloadStatusEnum._('noCoverage');
const DeceptionPayloadStatusEnum _$deceptionPayloadStatusEnum_degradedInput =
    const DeceptionPayloadStatusEnum._('degradedInput');
const DeceptionPayloadStatusEnum
_$deceptionPayloadStatusEnum_unknownDefaultOpenApi =
    const DeceptionPayloadStatusEnum._('unknownDefaultOpenApi');

DeceptionPayloadStatusEnum _$deceptionPayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$deceptionPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$deceptionPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$deceptionPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$deceptionPayloadStatusEnum_degradedInput;
    case 'unknownDefaultOpenApi':
      return _$deceptionPayloadStatusEnum_unknownDefaultOpenApi;
    default:
      return _$deceptionPayloadStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DeceptionPayloadStatusEnum> _$deceptionPayloadStatusEnumValues =
    BuiltSet<DeceptionPayloadStatusEnum>(const <DeceptionPayloadStatusEnum>[
      _$deceptionPayloadStatusEnum_ok,
      _$deceptionPayloadStatusEnum_insufficientData,
      _$deceptionPayloadStatusEnum_noCoverage,
      _$deceptionPayloadStatusEnum_degradedInput,
      _$deceptionPayloadStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<DeceptionPayloadStatusEnum> _$deceptionPayloadStatusEnumSerializer =
    _$DeceptionPayloadStatusEnumSerializer();

class _$DeceptionPayloadStatusEnumSerializer
    implements PrimitiveSerializer<DeceptionPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[DeceptionPayloadStatusEnum];
  @override
  final String wireName = 'DeceptionPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    DeceptionPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeceptionPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeceptionPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DeceptionPayload extends DeceptionPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final DeceptionPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String entity;
  @override
  final BuiltList<DeceptionPayloadChecksInner> checks;

  factory _$DeceptionPayload([
    void Function(DeceptionPayloadBuilder)? updates,
  ]) => (DeceptionPayloadBuilder()..update(updates))._build();

  _$DeceptionPayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.entity,
    required this.checks,
  }) : super._();
  @override
  DeceptionPayload rebuild(void Function(DeceptionPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeceptionPayloadBuilder toBuilder() =>
      DeceptionPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeceptionPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        entity == other.entity &&
        checks == other.checks;
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
    _$hash = $jc(_$hash, checks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeceptionPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('entity', entity)
          ..add('checks', checks))
        .toString();
  }
}

class DeceptionPayloadBuilder
    implements Builder<DeceptionPayload, DeceptionPayloadBuilder> {
  _$DeceptionPayload? _$v;

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

  DeceptionPayloadStatusEnum? _status;
  DeceptionPayloadStatusEnum? get status => _$this._status;
  set status(DeceptionPayloadStatusEnum? status) => _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _entity;
  String? get entity => _$this._entity;
  set entity(String? entity) => _$this._entity = entity;

  ListBuilder<DeceptionPayloadChecksInner>? _checks;
  ListBuilder<DeceptionPayloadChecksInner> get checks =>
      _$this._checks ??= ListBuilder<DeceptionPayloadChecksInner>();
  set checks(ListBuilder<DeceptionPayloadChecksInner>? checks) =>
      _$this._checks = checks;

  DeceptionPayloadBuilder() {
    DeceptionPayload._defaults(this);
  }

  DeceptionPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _entity = $v.entity;
      _checks = $v.checks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeceptionPayload other) {
    _$v = other as _$DeceptionPayload;
  }

  @override
  void update(void Function(DeceptionPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeceptionPayload build() => _build();

  _$DeceptionPayload _build() {
    _$DeceptionPayload _$result;
    try {
      _$result =
          _$v ??
          _$DeceptionPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'DeceptionPayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'DeceptionPayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'DeceptionPayload',
              'status',
            ),
            evidence: _evidence?.build(),
            entity: BuiltValueNullFieldError.checkNotNull(
              entity,
              r'DeceptionPayload',
              'entity',
            ),
            checks: checks.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detector';
        detector.build();

        _$failedField = 'evidence';
        _evidence?.build();

        _$failedField = 'checks';
        checks.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeceptionPayload',
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
