// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_squawk_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EmergencySquawkPayloadStatusEnum _$emergencySquawkPayloadStatusEnum_ok =
    const EmergencySquawkPayloadStatusEnum._('ok');
const EmergencySquawkPayloadStatusEnum
_$emergencySquawkPayloadStatusEnum_insufficientData =
    const EmergencySquawkPayloadStatusEnum._('insufficientData');
const EmergencySquawkPayloadStatusEnum
_$emergencySquawkPayloadStatusEnum_noCoverage =
    const EmergencySquawkPayloadStatusEnum._('noCoverage');
const EmergencySquawkPayloadStatusEnum
_$emergencySquawkPayloadStatusEnum_degradedInput =
    const EmergencySquawkPayloadStatusEnum._('degradedInput');

EmergencySquawkPayloadStatusEnum _$emergencySquawkPayloadStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$emergencySquawkPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$emergencySquawkPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$emergencySquawkPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$emergencySquawkPayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EmergencySquawkPayloadStatusEnum>
_$emergencySquawkPayloadStatusEnumValues =
    BuiltSet<EmergencySquawkPayloadStatusEnum>(
      const <EmergencySquawkPayloadStatusEnum>[
        _$emergencySquawkPayloadStatusEnum_ok,
        _$emergencySquawkPayloadStatusEnum_insufficientData,
        _$emergencySquawkPayloadStatusEnum_noCoverage,
        _$emergencySquawkPayloadStatusEnum_degradedInput,
      ],
    );

const EmergencySquawkPayloadMeaningEnum
_$emergencySquawkPayloadMeaningEnum_unlawfulInterference =
    const EmergencySquawkPayloadMeaningEnum._('unlawfulInterference');
const EmergencySquawkPayloadMeaningEnum
_$emergencySquawkPayloadMeaningEnum_radioFailure =
    const EmergencySquawkPayloadMeaningEnum._('radioFailure');
const EmergencySquawkPayloadMeaningEnum
_$emergencySquawkPayloadMeaningEnum_emergency =
    const EmergencySquawkPayloadMeaningEnum._('emergency');

EmergencySquawkPayloadMeaningEnum _$emergencySquawkPayloadMeaningEnumValueOf(
  String name,
) {
  switch (name) {
    case 'unlawfulInterference':
      return _$emergencySquawkPayloadMeaningEnum_unlawfulInterference;
    case 'radioFailure':
      return _$emergencySquawkPayloadMeaningEnum_radioFailure;
    case 'emergency':
      return _$emergencySquawkPayloadMeaningEnum_emergency;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EmergencySquawkPayloadMeaningEnum>
_$emergencySquawkPayloadMeaningEnumValues =
    BuiltSet<EmergencySquawkPayloadMeaningEnum>(
      const <EmergencySquawkPayloadMeaningEnum>[
        _$emergencySquawkPayloadMeaningEnum_unlawfulInterference,
        _$emergencySquawkPayloadMeaningEnum_radioFailure,
        _$emergencySquawkPayloadMeaningEnum_emergency,
      ],
    );

Serializer<EmergencySquawkPayloadStatusEnum>
_$emergencySquawkPayloadStatusEnumSerializer =
    _$EmergencySquawkPayloadStatusEnumSerializer();
Serializer<EmergencySquawkPayloadMeaningEnum>
_$emergencySquawkPayloadMeaningEnumSerializer =
    _$EmergencySquawkPayloadMeaningEnumSerializer();

class _$EmergencySquawkPayloadStatusEnumSerializer
    implements PrimitiveSerializer<EmergencySquawkPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[EmergencySquawkPayloadStatusEnum];
  @override
  final String wireName = 'EmergencySquawkPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    EmergencySquawkPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EmergencySquawkPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EmergencySquawkPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EmergencySquawkPayloadMeaningEnumSerializer
    implements PrimitiveSerializer<EmergencySquawkPayloadMeaningEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unlawfulInterference': 'unlawful interference',
    'radioFailure': 'radio failure',
    'emergency': 'emergency',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unlawful interference': 'unlawfulInterference',
    'radio failure': 'radioFailure',
    'emergency': 'emergency',
  };

  @override
  final Iterable<Type> types = const <Type>[EmergencySquawkPayloadMeaningEnum];
  @override
  final String wireName = 'EmergencySquawkPayloadMeaningEnum';

  @override
  Object serialize(
    Serializers serializers,
    EmergencySquawkPayloadMeaningEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EmergencySquawkPayloadMeaningEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EmergencySquawkPayloadMeaningEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EmergencySquawkPayload extends EmergencySquawkPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final EmergencySquawkPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String hex;
  @override
  final String? squawk;
  @override
  final String? emergency;
  @override
  final EmergencySquawkPayloadMeaningEnum meaning;
  @override
  final bool unverified;

  factory _$EmergencySquawkPayload([
    void Function(EmergencySquawkPayloadBuilder)? updates,
  ]) => (EmergencySquawkPayloadBuilder()..update(updates))._build();

  _$EmergencySquawkPayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.hex,
    this.squawk,
    this.emergency,
    required this.meaning,
    required this.unverified,
  }) : super._();
  @override
  EmergencySquawkPayload rebuild(
    void Function(EmergencySquawkPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EmergencySquawkPayloadBuilder toBuilder() =>
      EmergencySquawkPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmergencySquawkPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        hex == other.hex &&
        squawk == other.squawk &&
        emergency == other.emergency &&
        meaning == other.meaning &&
        unverified == other.unverified;
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
    _$hash = $jc(_$hash, squawk.hashCode);
    _$hash = $jc(_$hash, emergency.hashCode);
    _$hash = $jc(_$hash, meaning.hashCode);
    _$hash = $jc(_$hash, unverified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmergencySquawkPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('hex', hex)
          ..add('squawk', squawk)
          ..add('emergency', emergency)
          ..add('meaning', meaning)
          ..add('unverified', unverified))
        .toString();
  }
}

class EmergencySquawkPayloadBuilder
    implements Builder<EmergencySquawkPayload, EmergencySquawkPayloadBuilder> {
  _$EmergencySquawkPayload? _$v;

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

  EmergencySquawkPayloadStatusEnum? _status;
  EmergencySquawkPayloadStatusEnum? get status => _$this._status;
  set status(EmergencySquawkPayloadStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _hex;
  String? get hex => _$this._hex;
  set hex(String? hex) => _$this._hex = hex;

  String? _squawk;
  String? get squawk => _$this._squawk;
  set squawk(String? squawk) => _$this._squawk = squawk;

  String? _emergency;
  String? get emergency => _$this._emergency;
  set emergency(String? emergency) => _$this._emergency = emergency;

  EmergencySquawkPayloadMeaningEnum? _meaning;
  EmergencySquawkPayloadMeaningEnum? get meaning => _$this._meaning;
  set meaning(EmergencySquawkPayloadMeaningEnum? meaning) =>
      _$this._meaning = meaning;

  bool? _unverified;
  bool? get unverified => _$this._unverified;
  set unverified(bool? unverified) => _$this._unverified = unverified;

  EmergencySquawkPayloadBuilder() {
    EmergencySquawkPayload._defaults(this);
  }

  EmergencySquawkPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _hex = $v.hex;
      _squawk = $v.squawk;
      _emergency = $v.emergency;
      _meaning = $v.meaning;
      _unverified = $v.unverified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmergencySquawkPayload other) {
    _$v = other as _$EmergencySquawkPayload;
  }

  @override
  void update(void Function(EmergencySquawkPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmergencySquawkPayload build() => _build();

  _$EmergencySquawkPayload _build() {
    _$EmergencySquawkPayload _$result;
    try {
      _$result =
          _$v ??
          _$EmergencySquawkPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'EmergencySquawkPayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'EmergencySquawkPayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'EmergencySquawkPayload',
              'status',
            ),
            evidence: _evidence?.build(),
            hex: BuiltValueNullFieldError.checkNotNull(
              hex,
              r'EmergencySquawkPayload',
              'hex',
            ),
            squawk: squawk,
            emergency: emergency,
            meaning: BuiltValueNullFieldError.checkNotNull(
              meaning,
              r'EmergencySquawkPayload',
              'meaning',
            ),
            unverified: BuiltValueNullFieldError.checkNotNull(
              unverified,
              r'EmergencySquawkPayload',
              'unverified',
            ),
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
          r'EmergencySquawkPayload',
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
