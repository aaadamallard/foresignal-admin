// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_payload_common.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DerivedPayloadCommonStatusEnum _$derivedPayloadCommonStatusEnum_ok =
    const DerivedPayloadCommonStatusEnum._('ok');
const DerivedPayloadCommonStatusEnum
_$derivedPayloadCommonStatusEnum_insufficientData =
    const DerivedPayloadCommonStatusEnum._('insufficientData');
const DerivedPayloadCommonStatusEnum
_$derivedPayloadCommonStatusEnum_noCoverage =
    const DerivedPayloadCommonStatusEnum._('noCoverage');
const DerivedPayloadCommonStatusEnum
_$derivedPayloadCommonStatusEnum_degradedInput =
    const DerivedPayloadCommonStatusEnum._('degradedInput');

DerivedPayloadCommonStatusEnum _$derivedPayloadCommonStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$derivedPayloadCommonStatusEnum_ok;
    case 'insufficientData':
      return _$derivedPayloadCommonStatusEnum_insufficientData;
    case 'noCoverage':
      return _$derivedPayloadCommonStatusEnum_noCoverage;
    case 'degradedInput':
      return _$derivedPayloadCommonStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DerivedPayloadCommonStatusEnum>
_$derivedPayloadCommonStatusEnumValues =
    BuiltSet<DerivedPayloadCommonStatusEnum>(
      const <DerivedPayloadCommonStatusEnum>[
        _$derivedPayloadCommonStatusEnum_ok,
        _$derivedPayloadCommonStatusEnum_insufficientData,
        _$derivedPayloadCommonStatusEnum_noCoverage,
        _$derivedPayloadCommonStatusEnum_degradedInput,
      ],
    );

Serializer<DerivedPayloadCommonStatusEnum>
_$derivedPayloadCommonStatusEnumSerializer =
    _$DerivedPayloadCommonStatusEnumSerializer();

class _$DerivedPayloadCommonStatusEnumSerializer
    implements PrimitiveSerializer<DerivedPayloadCommonStatusEnum> {
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
  final Iterable<Type> types = const <Type>[DerivedPayloadCommonStatusEnum];
  @override
  final String wireName = 'DerivedPayloadCommonStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    DerivedPayloadCommonStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DerivedPayloadCommonStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DerivedPayloadCommonStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DerivedPayloadCommon extends DerivedPayloadCommon {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final DerivedPayloadCommonStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;

  factory _$DerivedPayloadCommon([
    void Function(DerivedPayloadCommonBuilder)? updates,
  ]) => (DerivedPayloadCommonBuilder()..update(updates))._build();

  _$DerivedPayloadCommon._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
  }) : super._();
  @override
  DerivedPayloadCommon rebuild(
    void Function(DerivedPayloadCommonBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DerivedPayloadCommonBuilder toBuilder() =>
      DerivedPayloadCommonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DerivedPayloadCommon &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DerivedPayloadCommon')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence))
        .toString();
  }
}

class DerivedPayloadCommonBuilder
    implements Builder<DerivedPayloadCommon, DerivedPayloadCommonBuilder> {
  _$DerivedPayloadCommon? _$v;

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

  DerivedPayloadCommonStatusEnum? _status;
  DerivedPayloadCommonStatusEnum? get status => _$this._status;
  set status(DerivedPayloadCommonStatusEnum? status) => _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  DerivedPayloadCommonBuilder() {
    DerivedPayloadCommon._defaults(this);
  }

  DerivedPayloadCommonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DerivedPayloadCommon other) {
    _$v = other as _$DerivedPayloadCommon;
  }

  @override
  void update(void Function(DerivedPayloadCommonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DerivedPayloadCommon build() => _build();

  _$DerivedPayloadCommon _build() {
    _$DerivedPayloadCommon _$result;
    try {
      _$result =
          _$v ??
          _$DerivedPayloadCommon._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'DerivedPayloadCommon',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'DerivedPayloadCommon',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'DerivedPayloadCommon',
              'status',
            ),
            evidence: _evidence?.build(),
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
          r'DerivedPayloadCommon',
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
