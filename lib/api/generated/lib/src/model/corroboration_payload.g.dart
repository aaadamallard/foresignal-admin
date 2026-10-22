// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corroboration_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CorroborationPayloadStatusEnum _$corroborationPayloadStatusEnum_ok =
    const CorroborationPayloadStatusEnum._('ok');
const CorroborationPayloadStatusEnum
_$corroborationPayloadStatusEnum_insufficientData =
    const CorroborationPayloadStatusEnum._('insufficientData');
const CorroborationPayloadStatusEnum
_$corroborationPayloadStatusEnum_noCoverage =
    const CorroborationPayloadStatusEnum._('noCoverage');
const CorroborationPayloadStatusEnum
_$corroborationPayloadStatusEnum_degradedInput =
    const CorroborationPayloadStatusEnum._('degradedInput');

CorroborationPayloadStatusEnum _$corroborationPayloadStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$corroborationPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$corroborationPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$corroborationPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$corroborationPayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CorroborationPayloadStatusEnum>
_$corroborationPayloadStatusEnumValues =
    BuiltSet<CorroborationPayloadStatusEnum>(
      const <CorroborationPayloadStatusEnum>[
        _$corroborationPayloadStatusEnum_ok,
        _$corroborationPayloadStatusEnum_insufficientData,
        _$corroborationPayloadStatusEnum_noCoverage,
        _$corroborationPayloadStatusEnum_degradedInput,
      ],
    );

const CorroborationPayloadKindFamilyEnum
_$corroborationPayloadKindFamilyEnum_earthquake =
    const CorroborationPayloadKindFamilyEnum._('earthquake');
const CorroborationPayloadKindFamilyEnum
_$corroborationPayloadKindFamilyEnum_fire =
    const CorroborationPayloadKindFamilyEnum._('fire');
const CorroborationPayloadKindFamilyEnum
_$corroborationPayloadKindFamilyEnum_conflict =
    const CorroborationPayloadKindFamilyEnum._('conflict');
const CorroborationPayloadKindFamilyEnum
_$corroborationPayloadKindFamilyEnum_outage =
    const CorroborationPayloadKindFamilyEnum._('outage');

CorroborationPayloadKindFamilyEnum _$corroborationPayloadKindFamilyEnumValueOf(
  String name,
) {
  switch (name) {
    case 'earthquake':
      return _$corroborationPayloadKindFamilyEnum_earthquake;
    case 'fire':
      return _$corroborationPayloadKindFamilyEnum_fire;
    case 'conflict':
      return _$corroborationPayloadKindFamilyEnum_conflict;
    case 'outage':
      return _$corroborationPayloadKindFamilyEnum_outage;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CorroborationPayloadKindFamilyEnum>
_$corroborationPayloadKindFamilyEnumValues =
    BuiltSet<CorroborationPayloadKindFamilyEnum>(
      const <CorroborationPayloadKindFamilyEnum>[
        _$corroborationPayloadKindFamilyEnum_earthquake,
        _$corroborationPayloadKindFamilyEnum_fire,
        _$corroborationPayloadKindFamilyEnum_conflict,
        _$corroborationPayloadKindFamilyEnum_outage,
      ],
    );

const CorroborationPayloadReliabilityEnum
_$corroborationPayloadReliabilityEnum_A =
    const CorroborationPayloadReliabilityEnum._('A');
const CorroborationPayloadReliabilityEnum
_$corroborationPayloadReliabilityEnum_B =
    const CorroborationPayloadReliabilityEnum._('B');
const CorroborationPayloadReliabilityEnum
_$corroborationPayloadReliabilityEnum_C =
    const CorroborationPayloadReliabilityEnum._('C');
const CorroborationPayloadReliabilityEnum
_$corroborationPayloadReliabilityEnum_D =
    const CorroborationPayloadReliabilityEnum._('D');
const CorroborationPayloadReliabilityEnum
_$corroborationPayloadReliabilityEnum_E =
    const CorroborationPayloadReliabilityEnum._('E');
const CorroborationPayloadReliabilityEnum
_$corroborationPayloadReliabilityEnum_F =
    const CorroborationPayloadReliabilityEnum._('F');

CorroborationPayloadReliabilityEnum
_$corroborationPayloadReliabilityEnumValueOf(String name) {
  switch (name) {
    case 'A':
      return _$corroborationPayloadReliabilityEnum_A;
    case 'B':
      return _$corroborationPayloadReliabilityEnum_B;
    case 'C':
      return _$corroborationPayloadReliabilityEnum_C;
    case 'D':
      return _$corroborationPayloadReliabilityEnum_D;
    case 'E':
      return _$corroborationPayloadReliabilityEnum_E;
    case 'F':
      return _$corroborationPayloadReliabilityEnum_F;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CorroborationPayloadReliabilityEnum>
_$corroborationPayloadReliabilityEnumValues =
    BuiltSet<CorroborationPayloadReliabilityEnum>(
      const <CorroborationPayloadReliabilityEnum>[
        _$corroborationPayloadReliabilityEnum_A,
        _$corroborationPayloadReliabilityEnum_B,
        _$corroborationPayloadReliabilityEnum_C,
        _$corroborationPayloadReliabilityEnum_D,
        _$corroborationPayloadReliabilityEnum_E,
        _$corroborationPayloadReliabilityEnum_F,
      ],
    );

Serializer<CorroborationPayloadStatusEnum>
_$corroborationPayloadStatusEnumSerializer =
    _$CorroborationPayloadStatusEnumSerializer();
Serializer<CorroborationPayloadKindFamilyEnum>
_$corroborationPayloadKindFamilyEnumSerializer =
    _$CorroborationPayloadKindFamilyEnumSerializer();
Serializer<CorroborationPayloadReliabilityEnum>
_$corroborationPayloadReliabilityEnumSerializer =
    _$CorroborationPayloadReliabilityEnumSerializer();

class _$CorroborationPayloadStatusEnumSerializer
    implements PrimitiveSerializer<CorroborationPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[CorroborationPayloadStatusEnum];
  @override
  final String wireName = 'CorroborationPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    CorroborationPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CorroborationPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CorroborationPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CorroborationPayloadKindFamilyEnumSerializer
    implements PrimitiveSerializer<CorroborationPayloadKindFamilyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'earthquake': 'earthquake',
    'fire': 'fire',
    'conflict': 'conflict',
    'outage': 'outage',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'earthquake': 'earthquake',
    'fire': 'fire',
    'conflict': 'conflict',
    'outage': 'outage',
  };

  @override
  final Iterable<Type> types = const <Type>[CorroborationPayloadKindFamilyEnum];
  @override
  final String wireName = 'CorroborationPayloadKindFamilyEnum';

  @override
  Object serialize(
    Serializers serializers,
    CorroborationPayloadKindFamilyEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CorroborationPayloadKindFamilyEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CorroborationPayloadKindFamilyEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CorroborationPayloadReliabilityEnumSerializer
    implements PrimitiveSerializer<CorroborationPayloadReliabilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CorroborationPayloadReliabilityEnum,
  ];
  @override
  final String wireName = 'CorroborationPayloadReliabilityEnum';

  @override
  Object serialize(
    Serializers serializers,
    CorroborationPayloadReliabilityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CorroborationPayloadReliabilityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CorroborationPayloadReliabilityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CorroborationPayload extends CorroborationPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final CorroborationPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final CorroborationPayloadKindFamilyEnum kindFamily;
  @override
  final BuiltList<DerivedEvidenceRef> members;
  @override
  final int independentSources;
  @override
  final int credibility;
  @override
  final CorroborationPayloadReliabilityEnum? reliability;

  factory _$CorroborationPayload([
    void Function(CorroborationPayloadBuilder)? updates,
  ]) => (CorroborationPayloadBuilder()..update(updates))._build();

  _$CorroborationPayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.kindFamily,
    required this.members,
    required this.independentSources,
    required this.credibility,
    this.reliability,
  }) : super._();
  @override
  CorroborationPayload rebuild(
    void Function(CorroborationPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CorroborationPayloadBuilder toBuilder() =>
      CorroborationPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorroborationPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        kindFamily == other.kindFamily &&
        members == other.members &&
        independentSources == other.independentSources &&
        credibility == other.credibility &&
        reliability == other.reliability;
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
    _$hash = $jc(_$hash, kindFamily.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, independentSources.hashCode);
    _$hash = $jc(_$hash, credibility.hashCode);
    _$hash = $jc(_$hash, reliability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorroborationPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('kindFamily', kindFamily)
          ..add('members', members)
          ..add('independentSources', independentSources)
          ..add('credibility', credibility)
          ..add('reliability', reliability))
        .toString();
  }
}

class CorroborationPayloadBuilder
    implements Builder<CorroborationPayload, CorroborationPayloadBuilder> {
  _$CorroborationPayload? _$v;

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

  CorroborationPayloadStatusEnum? _status;
  CorroborationPayloadStatusEnum? get status => _$this._status;
  set status(CorroborationPayloadStatusEnum? status) => _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  CorroborationPayloadKindFamilyEnum? _kindFamily;
  CorroborationPayloadKindFamilyEnum? get kindFamily => _$this._kindFamily;
  set kindFamily(CorroborationPayloadKindFamilyEnum? kindFamily) =>
      _$this._kindFamily = kindFamily;

  ListBuilder<DerivedEvidenceRef>? _members;
  ListBuilder<DerivedEvidenceRef> get members =>
      _$this._members ??= ListBuilder<DerivedEvidenceRef>();
  set members(ListBuilder<DerivedEvidenceRef>? members) =>
      _$this._members = members;

  int? _independentSources;
  int? get independentSources => _$this._independentSources;
  set independentSources(int? independentSources) =>
      _$this._independentSources = independentSources;

  int? _credibility;
  int? get credibility => _$this._credibility;
  set credibility(int? credibility) => _$this._credibility = credibility;

  CorroborationPayloadReliabilityEnum? _reliability;
  CorroborationPayloadReliabilityEnum? get reliability => _$this._reliability;
  set reliability(CorroborationPayloadReliabilityEnum? reliability) =>
      _$this._reliability = reliability;

  CorroborationPayloadBuilder() {
    CorroborationPayload._defaults(this);
  }

  CorroborationPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _kindFamily = $v.kindFamily;
      _members = $v.members.toBuilder();
      _independentSources = $v.independentSources;
      _credibility = $v.credibility;
      _reliability = $v.reliability;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorroborationPayload other) {
    _$v = other as _$CorroborationPayload;
  }

  @override
  void update(void Function(CorroborationPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorroborationPayload build() => _build();

  _$CorroborationPayload _build() {
    _$CorroborationPayload _$result;
    try {
      _$result =
          _$v ??
          _$CorroborationPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'CorroborationPayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'CorroborationPayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'CorroborationPayload',
              'status',
            ),
            evidence: _evidence?.build(),
            kindFamily: BuiltValueNullFieldError.checkNotNull(
              kindFamily,
              r'CorroborationPayload',
              'kindFamily',
            ),
            members: members.build(),
            independentSources: BuiltValueNullFieldError.checkNotNull(
              independentSources,
              r'CorroborationPayload',
              'independentSources',
            ),
            credibility: BuiltValueNullFieldError.checkNotNull(
              credibility,
              r'CorroborationPayload',
              'credibility',
            ),
            reliability: reliability,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detector';
        detector.build();

        _$failedField = 'evidence';
        _evidence?.build();

        _$failedField = 'members';
        members.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CorroborationPayload',
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
