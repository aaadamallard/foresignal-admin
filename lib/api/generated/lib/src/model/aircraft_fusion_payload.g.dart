// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aircraft_fusion_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AircraftFusionPayloadStatusEnum _$aircraftFusionPayloadStatusEnum_ok =
    const AircraftFusionPayloadStatusEnum._('ok');
const AircraftFusionPayloadStatusEnum
_$aircraftFusionPayloadStatusEnum_insufficientData =
    const AircraftFusionPayloadStatusEnum._('insufficientData');
const AircraftFusionPayloadStatusEnum
_$aircraftFusionPayloadStatusEnum_noCoverage =
    const AircraftFusionPayloadStatusEnum._('noCoverage');
const AircraftFusionPayloadStatusEnum
_$aircraftFusionPayloadStatusEnum_degradedInput =
    const AircraftFusionPayloadStatusEnum._('degradedInput');
const AircraftFusionPayloadStatusEnum
_$aircraftFusionPayloadStatusEnum_unknownDefaultOpenApi =
    const AircraftFusionPayloadStatusEnum._('unknownDefaultOpenApi');

AircraftFusionPayloadStatusEnum _$aircraftFusionPayloadStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$aircraftFusionPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$aircraftFusionPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$aircraftFusionPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$aircraftFusionPayloadStatusEnum_degradedInput;
    case 'unknownDefaultOpenApi':
      return _$aircraftFusionPayloadStatusEnum_unknownDefaultOpenApi;
    default:
      return _$aircraftFusionPayloadStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AircraftFusionPayloadStatusEnum>
_$aircraftFusionPayloadStatusEnumValues =
    BuiltSet<AircraftFusionPayloadStatusEnum>(
      const <AircraftFusionPayloadStatusEnum>[
        _$aircraftFusionPayloadStatusEnum_ok,
        _$aircraftFusionPayloadStatusEnum_insufficientData,
        _$aircraftFusionPayloadStatusEnum_noCoverage,
        _$aircraftFusionPayloadStatusEnum_degradedInput,
        _$aircraftFusionPayloadStatusEnum_unknownDefaultOpenApi,
      ],
    );

const AircraftFusionPayloadPositionSourceEnum
_$aircraftFusionPayloadPositionSourceEnum_adsb =
    const AircraftFusionPayloadPositionSourceEnum._('adsb');
const AircraftFusionPayloadPositionSourceEnum
_$aircraftFusionPayloadPositionSourceEnum_mlat =
    const AircraftFusionPayloadPositionSourceEnum._('mlat');
const AircraftFusionPayloadPositionSourceEnum
_$aircraftFusionPayloadPositionSourceEnum_tisb =
    const AircraftFusionPayloadPositionSourceEnum._('tisb');
const AircraftFusionPayloadPositionSourceEnum
_$aircraftFusionPayloadPositionSourceEnum_other =
    const AircraftFusionPayloadPositionSourceEnum._('other');
const AircraftFusionPayloadPositionSourceEnum
_$aircraftFusionPayloadPositionSourceEnum_unknownDefaultOpenApi =
    const AircraftFusionPayloadPositionSourceEnum._('unknownDefaultOpenApi');

AircraftFusionPayloadPositionSourceEnum
_$aircraftFusionPayloadPositionSourceEnumValueOf(String name) {
  switch (name) {
    case 'adsb':
      return _$aircraftFusionPayloadPositionSourceEnum_adsb;
    case 'mlat':
      return _$aircraftFusionPayloadPositionSourceEnum_mlat;
    case 'tisb':
      return _$aircraftFusionPayloadPositionSourceEnum_tisb;
    case 'other':
      return _$aircraftFusionPayloadPositionSourceEnum_other;
    case 'unknownDefaultOpenApi':
      return _$aircraftFusionPayloadPositionSourceEnum_unknownDefaultOpenApi;
    default:
      return _$aircraftFusionPayloadPositionSourceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AircraftFusionPayloadPositionSourceEnum>
_$aircraftFusionPayloadPositionSourceEnumValues =
    BuiltSet<AircraftFusionPayloadPositionSourceEnum>(
      const <AircraftFusionPayloadPositionSourceEnum>[
        _$aircraftFusionPayloadPositionSourceEnum_adsb,
        _$aircraftFusionPayloadPositionSourceEnum_mlat,
        _$aircraftFusionPayloadPositionSourceEnum_tisb,
        _$aircraftFusionPayloadPositionSourceEnum_other,
        _$aircraftFusionPayloadPositionSourceEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<AircraftFusionPayloadStatusEnum>
_$aircraftFusionPayloadStatusEnumSerializer =
    _$AircraftFusionPayloadStatusEnumSerializer();
Serializer<AircraftFusionPayloadPositionSourceEnum>
_$aircraftFusionPayloadPositionSourceEnumSerializer =
    _$AircraftFusionPayloadPositionSourceEnumSerializer();

class _$AircraftFusionPayloadStatusEnumSerializer
    implements PrimitiveSerializer<AircraftFusionPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[AircraftFusionPayloadStatusEnum];
  @override
  final String wireName = 'AircraftFusionPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    AircraftFusionPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AircraftFusionPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AircraftFusionPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AircraftFusionPayloadPositionSourceEnumSerializer
    implements PrimitiveSerializer<AircraftFusionPayloadPositionSourceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'adsb': 'adsb',
    'mlat': 'mlat',
    'tisb': 'tisb',
    'other': 'other',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'adsb': 'adsb',
    'mlat': 'mlat',
    'tisb': 'tisb',
    'other': 'other',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AircraftFusionPayloadPositionSourceEnum,
  ];
  @override
  final String wireName = 'AircraftFusionPayloadPositionSourceEnum';

  @override
  Object serialize(
    Serializers serializers,
    AircraftFusionPayloadPositionSourceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AircraftFusionPayloadPositionSourceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AircraftFusionPayloadPositionSourceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AircraftFusionPayload extends AircraftFusionPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final AircraftFusionPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String hex;
  @override
  final BuiltList<String> sources;
  @override
  final String primarySource;
  @override
  final AircraftFusionPayloadPositionSourceEnum? positionSource;

  factory _$AircraftFusionPayload([
    void Function(AircraftFusionPayloadBuilder)? updates,
  ]) => (AircraftFusionPayloadBuilder()..update(updates))._build();

  _$AircraftFusionPayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.hex,
    required this.sources,
    required this.primarySource,
    this.positionSource,
  }) : super._();
  @override
  AircraftFusionPayload rebuild(
    void Function(AircraftFusionPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AircraftFusionPayloadBuilder toBuilder() =>
      AircraftFusionPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AircraftFusionPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        hex == other.hex &&
        sources == other.sources &&
        primarySource == other.primarySource &&
        positionSource == other.positionSource;
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
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, primarySource.hashCode);
    _$hash = $jc(_$hash, positionSource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AircraftFusionPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('hex', hex)
          ..add('sources', sources)
          ..add('primarySource', primarySource)
          ..add('positionSource', positionSource))
        .toString();
  }
}

class AircraftFusionPayloadBuilder
    implements Builder<AircraftFusionPayload, AircraftFusionPayloadBuilder> {
  _$AircraftFusionPayload? _$v;

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

  AircraftFusionPayloadStatusEnum? _status;
  AircraftFusionPayloadStatusEnum? get status => _$this._status;
  set status(AircraftFusionPayloadStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _hex;
  String? get hex => _$this._hex;
  set hex(String? hex) => _$this._hex = hex;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  String? _primarySource;
  String? get primarySource => _$this._primarySource;
  set primarySource(String? primarySource) =>
      _$this._primarySource = primarySource;

  AircraftFusionPayloadPositionSourceEnum? _positionSource;
  AircraftFusionPayloadPositionSourceEnum? get positionSource =>
      _$this._positionSource;
  set positionSource(AircraftFusionPayloadPositionSourceEnum? positionSource) =>
      _$this._positionSource = positionSource;

  AircraftFusionPayloadBuilder() {
    AircraftFusionPayload._defaults(this);
  }

  AircraftFusionPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _hex = $v.hex;
      _sources = $v.sources.toBuilder();
      _primarySource = $v.primarySource;
      _positionSource = $v.positionSource;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AircraftFusionPayload other) {
    _$v = other as _$AircraftFusionPayload;
  }

  @override
  void update(void Function(AircraftFusionPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AircraftFusionPayload build() => _build();

  _$AircraftFusionPayload _build() {
    _$AircraftFusionPayload _$result;
    try {
      _$result =
          _$v ??
          _$AircraftFusionPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'AircraftFusionPayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'AircraftFusionPayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'AircraftFusionPayload',
              'status',
            ),
            evidence: _evidence?.build(),
            hex: BuiltValueNullFieldError.checkNotNull(
              hex,
              r'AircraftFusionPayload',
              'hex',
            ),
            sources: sources.build(),
            primarySource: BuiltValueNullFieldError.checkNotNull(
              primarySource,
              r'AircraftFusionPayload',
              'primarySource',
            ),
            positionSource: positionSource,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detector';
        detector.build();

        _$failedField = 'evidence';
        _evidence?.build();

        _$failedField = 'sources';
        sources.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AircraftFusionPayload',
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
