// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mil_naval_cooccurrence_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MilNavalCooccurrencePayloadStatusEnum
_$milNavalCooccurrencePayloadStatusEnum_ok =
    const MilNavalCooccurrencePayloadStatusEnum._('ok');
const MilNavalCooccurrencePayloadStatusEnum
_$milNavalCooccurrencePayloadStatusEnum_insufficientData =
    const MilNavalCooccurrencePayloadStatusEnum._('insufficientData');
const MilNavalCooccurrencePayloadStatusEnum
_$milNavalCooccurrencePayloadStatusEnum_noCoverage =
    const MilNavalCooccurrencePayloadStatusEnum._('noCoverage');
const MilNavalCooccurrencePayloadStatusEnum
_$milNavalCooccurrencePayloadStatusEnum_degradedInput =
    const MilNavalCooccurrencePayloadStatusEnum._('degradedInput');
const MilNavalCooccurrencePayloadStatusEnum
_$milNavalCooccurrencePayloadStatusEnum_unknownDefaultOpenApi =
    const MilNavalCooccurrencePayloadStatusEnum._('unknownDefaultOpenApi');

MilNavalCooccurrencePayloadStatusEnum
_$milNavalCooccurrencePayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$milNavalCooccurrencePayloadStatusEnum_ok;
    case 'insufficientData':
      return _$milNavalCooccurrencePayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$milNavalCooccurrencePayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$milNavalCooccurrencePayloadStatusEnum_degradedInput;
    case 'unknownDefaultOpenApi':
      return _$milNavalCooccurrencePayloadStatusEnum_unknownDefaultOpenApi;
    default:
      return _$milNavalCooccurrencePayloadStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MilNavalCooccurrencePayloadStatusEnum>
_$milNavalCooccurrencePayloadStatusEnumValues =
    BuiltSet<MilNavalCooccurrencePayloadStatusEnum>(
      const <MilNavalCooccurrencePayloadStatusEnum>[
        _$milNavalCooccurrencePayloadStatusEnum_ok,
        _$milNavalCooccurrencePayloadStatusEnum_insufficientData,
        _$milNavalCooccurrencePayloadStatusEnum_noCoverage,
        _$milNavalCooccurrencePayloadStatusEnum_degradedInput,
        _$milNavalCooccurrencePayloadStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<MilNavalCooccurrencePayloadStatusEnum>
_$milNavalCooccurrencePayloadStatusEnumSerializer =
    _$MilNavalCooccurrencePayloadStatusEnumSerializer();

class _$MilNavalCooccurrencePayloadStatusEnumSerializer
    implements PrimitiveSerializer<MilNavalCooccurrencePayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[
    MilNavalCooccurrencePayloadStatusEnum,
  ];
  @override
  final String wireName = 'MilNavalCooccurrencePayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    MilNavalCooccurrencePayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MilNavalCooccurrencePayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MilNavalCooccurrencePayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MilNavalCooccurrencePayload extends MilNavalCooccurrencePayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final MilNavalCooccurrencePayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String cell;
  @override
  final int aircraftCount;
  @override
  final int vesselCount;
  @override
  final BuiltList<String>? aircraft;
  @override
  final BuiltList<String>? vessels;

  factory _$MilNavalCooccurrencePayload([
    void Function(MilNavalCooccurrencePayloadBuilder)? updates,
  ]) => (MilNavalCooccurrencePayloadBuilder()..update(updates))._build();

  _$MilNavalCooccurrencePayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.cell,
    required this.aircraftCount,
    required this.vesselCount,
    this.aircraft,
    this.vessels,
  }) : super._();
  @override
  MilNavalCooccurrencePayload rebuild(
    void Function(MilNavalCooccurrencePayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MilNavalCooccurrencePayloadBuilder toBuilder() =>
      MilNavalCooccurrencePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MilNavalCooccurrencePayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        cell == other.cell &&
        aircraftCount == other.aircraftCount &&
        vesselCount == other.vesselCount &&
        aircraft == other.aircraft &&
        vessels == other.vessels;
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
    _$hash = $jc(_$hash, cell.hashCode);
    _$hash = $jc(_$hash, aircraftCount.hashCode);
    _$hash = $jc(_$hash, vesselCount.hashCode);
    _$hash = $jc(_$hash, aircraft.hashCode);
    _$hash = $jc(_$hash, vessels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MilNavalCooccurrencePayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('cell', cell)
          ..add('aircraftCount', aircraftCount)
          ..add('vesselCount', vesselCount)
          ..add('aircraft', aircraft)
          ..add('vessels', vessels))
        .toString();
  }
}

class MilNavalCooccurrencePayloadBuilder
    implements
        Builder<
          MilNavalCooccurrencePayload,
          MilNavalCooccurrencePayloadBuilder
        > {
  _$MilNavalCooccurrencePayload? _$v;

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

  MilNavalCooccurrencePayloadStatusEnum? _status;
  MilNavalCooccurrencePayloadStatusEnum? get status => _$this._status;
  set status(MilNavalCooccurrencePayloadStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _cell;
  String? get cell => _$this._cell;
  set cell(String? cell) => _$this._cell = cell;

  int? _aircraftCount;
  int? get aircraftCount => _$this._aircraftCount;
  set aircraftCount(int? aircraftCount) =>
      _$this._aircraftCount = aircraftCount;

  int? _vesselCount;
  int? get vesselCount => _$this._vesselCount;
  set vesselCount(int? vesselCount) => _$this._vesselCount = vesselCount;

  ListBuilder<String>? _aircraft;
  ListBuilder<String> get aircraft =>
      _$this._aircraft ??= ListBuilder<String>();
  set aircraft(ListBuilder<String>? aircraft) => _$this._aircraft = aircraft;

  ListBuilder<String>? _vessels;
  ListBuilder<String> get vessels => _$this._vessels ??= ListBuilder<String>();
  set vessels(ListBuilder<String>? vessels) => _$this._vessels = vessels;

  MilNavalCooccurrencePayloadBuilder() {
    MilNavalCooccurrencePayload._defaults(this);
  }

  MilNavalCooccurrencePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _cell = $v.cell;
      _aircraftCount = $v.aircraftCount;
      _vesselCount = $v.vesselCount;
      _aircraft = $v.aircraft?.toBuilder();
      _vessels = $v.vessels?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MilNavalCooccurrencePayload other) {
    _$v = other as _$MilNavalCooccurrencePayload;
  }

  @override
  void update(void Function(MilNavalCooccurrencePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MilNavalCooccurrencePayload build() => _build();

  _$MilNavalCooccurrencePayload _build() {
    _$MilNavalCooccurrencePayload _$result;
    try {
      _$result =
          _$v ??
          _$MilNavalCooccurrencePayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'MilNavalCooccurrencePayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'MilNavalCooccurrencePayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'MilNavalCooccurrencePayload',
              'status',
            ),
            evidence: _evidence?.build(),
            cell: BuiltValueNullFieldError.checkNotNull(
              cell,
              r'MilNavalCooccurrencePayload',
              'cell',
            ),
            aircraftCount: BuiltValueNullFieldError.checkNotNull(
              aircraftCount,
              r'MilNavalCooccurrencePayload',
              'aircraftCount',
            ),
            vesselCount: BuiltValueNullFieldError.checkNotNull(
              vesselCount,
              r'MilNavalCooccurrencePayload',
              'vesselCount',
            ),
            aircraft: _aircraft?.build(),
            vessels: _vessels?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detector';
        detector.build();

        _$failedField = 'evidence';
        _evidence?.build();

        _$failedField = 'aircraft';
        _aircraft?.build();
        _$failedField = 'vessels';
        _vessels?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MilNavalCooccurrencePayload',
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
