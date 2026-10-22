// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chokepoint_activity_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChokepointActivityPayloadStatusEnum
    _$chokepointActivityPayloadStatusEnum_ok =
    const ChokepointActivityPayloadStatusEnum._('ok');
const ChokepointActivityPayloadStatusEnum
    _$chokepointActivityPayloadStatusEnum_insufficientData =
    const ChokepointActivityPayloadStatusEnum._('insufficientData');
const ChokepointActivityPayloadStatusEnum
    _$chokepointActivityPayloadStatusEnum_noCoverage =
    const ChokepointActivityPayloadStatusEnum._('noCoverage');
const ChokepointActivityPayloadStatusEnum
    _$chokepointActivityPayloadStatusEnum_degradedInput =
    const ChokepointActivityPayloadStatusEnum._('degradedInput');

ChokepointActivityPayloadStatusEnum
    _$chokepointActivityPayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$chokepointActivityPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$chokepointActivityPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$chokepointActivityPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$chokepointActivityPayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChokepointActivityPayloadStatusEnum>
    _$chokepointActivityPayloadStatusEnumValues = BuiltSet<
        ChokepointActivityPayloadStatusEnum>(const <ChokepointActivityPayloadStatusEnum>[
  _$chokepointActivityPayloadStatusEnum_ok,
  _$chokepointActivityPayloadStatusEnum_insufficientData,
  _$chokepointActivityPayloadStatusEnum_noCoverage,
  _$chokepointActivityPayloadStatusEnum_degradedInput,
]);

const ChokepointActivityPayloadCoverageStatusEnum
    _$chokepointActivityPayloadCoverageStatusEnum_ok =
    const ChokepointActivityPayloadCoverageStatusEnum._('ok');
const ChokepointActivityPayloadCoverageStatusEnum
    _$chokepointActivityPayloadCoverageStatusEnum_insufficientData =
    const ChokepointActivityPayloadCoverageStatusEnum._('insufficientData');
const ChokepointActivityPayloadCoverageStatusEnum
    _$chokepointActivityPayloadCoverageStatusEnum_noCoverage =
    const ChokepointActivityPayloadCoverageStatusEnum._('noCoverage');
const ChokepointActivityPayloadCoverageStatusEnum
    _$chokepointActivityPayloadCoverageStatusEnum_degradedInput =
    const ChokepointActivityPayloadCoverageStatusEnum._('degradedInput');

ChokepointActivityPayloadCoverageStatusEnum
    _$chokepointActivityPayloadCoverageStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$chokepointActivityPayloadCoverageStatusEnum_ok;
    case 'insufficientData':
      return _$chokepointActivityPayloadCoverageStatusEnum_insufficientData;
    case 'noCoverage':
      return _$chokepointActivityPayloadCoverageStatusEnum_noCoverage;
    case 'degradedInput':
      return _$chokepointActivityPayloadCoverageStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChokepointActivityPayloadCoverageStatusEnum>
    _$chokepointActivityPayloadCoverageStatusEnumValues = BuiltSet<
        ChokepointActivityPayloadCoverageStatusEnum>(const <ChokepointActivityPayloadCoverageStatusEnum>[
  _$chokepointActivityPayloadCoverageStatusEnum_ok,
  _$chokepointActivityPayloadCoverageStatusEnum_insufficientData,
  _$chokepointActivityPayloadCoverageStatusEnum_noCoverage,
  _$chokepointActivityPayloadCoverageStatusEnum_degradedInput,
]);

Serializer<ChokepointActivityPayloadStatusEnum>
    _$chokepointActivityPayloadStatusEnumSerializer =
    _$ChokepointActivityPayloadStatusEnumSerializer();
Serializer<ChokepointActivityPayloadCoverageStatusEnum>
    _$chokepointActivityPayloadCoverageStatusEnumSerializer =
    _$ChokepointActivityPayloadCoverageStatusEnumSerializer();

class _$ChokepointActivityPayloadStatusEnumSerializer
    implements PrimitiveSerializer<ChokepointActivityPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[
    ChokepointActivityPayloadStatusEnum
  ];
  @override
  final String wireName = 'ChokepointActivityPayloadStatusEnum';

  @override
  Object serialize(
          Serializers serializers, ChokepointActivityPayloadStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChokepointActivityPayloadStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChokepointActivityPayloadStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChokepointActivityPayloadCoverageStatusEnumSerializer
    implements
        PrimitiveSerializer<ChokepointActivityPayloadCoverageStatusEnum> {
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
  final Iterable<Type> types = const <Type>[
    ChokepointActivityPayloadCoverageStatusEnum
  ];
  @override
  final String wireName = 'ChokepointActivityPayloadCoverageStatusEnum';

  @override
  Object serialize(Serializers serializers,
          ChokepointActivityPayloadCoverageStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChokepointActivityPayloadCoverageStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChokepointActivityPayloadCoverageStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChokepointActivityPayload extends ChokepointActivityPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final ChokepointActivityPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String chokepointId;
  @override
  final String? name;
  @override
  final DateTime hourStart;
  @override
  final int? transits;
  @override
  final int? uTurns;
  @override
  final int? stopped;
  @override
  final ChokepointActivityPayloadCoverageStatusEnum? coverageStatus;

  factory _$ChokepointActivityPayload(
          [void Function(ChokepointActivityPayloadBuilder)? updates]) =>
      (ChokepointActivityPayloadBuilder()..update(updates))._build();

  _$ChokepointActivityPayload._(
      {required this.automated,
      required this.notAWarning,
      required this.detector,
      this.confidence,
      required this.status,
      this.evidence,
      required this.chokepointId,
      this.name,
      required this.hourStart,
      this.transits,
      this.uTurns,
      this.stopped,
      this.coverageStatus})
      : super._();
  @override
  ChokepointActivityPayload rebuild(
          void Function(ChokepointActivityPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChokepointActivityPayloadBuilder toBuilder() =>
      ChokepointActivityPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChokepointActivityPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        chokepointId == other.chokepointId &&
        name == other.name &&
        hourStart == other.hourStart &&
        transits == other.transits &&
        uTurns == other.uTurns &&
        stopped == other.stopped &&
        coverageStatus == other.coverageStatus;
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
    _$hash = $jc(_$hash, chokepointId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, hourStart.hashCode);
    _$hash = $jc(_$hash, transits.hashCode);
    _$hash = $jc(_$hash, uTurns.hashCode);
    _$hash = $jc(_$hash, stopped.hashCode);
    _$hash = $jc(_$hash, coverageStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChokepointActivityPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('chokepointId', chokepointId)
          ..add('name', name)
          ..add('hourStart', hourStart)
          ..add('transits', transits)
          ..add('uTurns', uTurns)
          ..add('stopped', stopped)
          ..add('coverageStatus', coverageStatus))
        .toString();
  }
}

class ChokepointActivityPayloadBuilder
    implements
        Builder<ChokepointActivityPayload, ChokepointActivityPayloadBuilder> {
  _$ChokepointActivityPayload? _$v;

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

  ChokepointActivityPayloadStatusEnum? _status;
  ChokepointActivityPayloadStatusEnum? get status => _$this._status;
  set status(ChokepointActivityPayloadStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _chokepointId;
  String? get chokepointId => _$this._chokepointId;
  set chokepointId(String? chokepointId) => _$this._chokepointId = chokepointId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _hourStart;
  DateTime? get hourStart => _$this._hourStart;
  set hourStart(DateTime? hourStart) => _$this._hourStart = hourStart;

  int? _transits;
  int? get transits => _$this._transits;
  set transits(int? transits) => _$this._transits = transits;

  int? _uTurns;
  int? get uTurns => _$this._uTurns;
  set uTurns(int? uTurns) => _$this._uTurns = uTurns;

  int? _stopped;
  int? get stopped => _$this._stopped;
  set stopped(int? stopped) => _$this._stopped = stopped;

  ChokepointActivityPayloadCoverageStatusEnum? _coverageStatus;
  ChokepointActivityPayloadCoverageStatusEnum? get coverageStatus =>
      _$this._coverageStatus;
  set coverageStatus(
          ChokepointActivityPayloadCoverageStatusEnum? coverageStatus) =>
      _$this._coverageStatus = coverageStatus;

  ChokepointActivityPayloadBuilder() {
    ChokepointActivityPayload._defaults(this);
  }

  ChokepointActivityPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _chokepointId = $v.chokepointId;
      _name = $v.name;
      _hourStart = $v.hourStart;
      _transits = $v.transits;
      _uTurns = $v.uTurns;
      _stopped = $v.stopped;
      _coverageStatus = $v.coverageStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChokepointActivityPayload other) {
    _$v = other as _$ChokepointActivityPayload;
  }

  @override
  void update(void Function(ChokepointActivityPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChokepointActivityPayload build() => _build();

  _$ChokepointActivityPayload _build() {
    _$ChokepointActivityPayload _$result;
    try {
      _$result = _$v ??
          _$ChokepointActivityPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
                automated, r'ChokepointActivityPayload', 'automated'),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
                notAWarning, r'ChokepointActivityPayload', 'notAWarning'),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ChokepointActivityPayload', 'status'),
            evidence: _evidence?.build(),
            chokepointId: BuiltValueNullFieldError.checkNotNull(
                chokepointId, r'ChokepointActivityPayload', 'chokepointId'),
            name: name,
            hourStart: BuiltValueNullFieldError.checkNotNull(
                hourStart, r'ChokepointActivityPayload', 'hourStart'),
            transits: transits,
            uTurns: uTurns,
            stopped: stopped,
            coverageStatus: coverageStatus,
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
            r'ChokepointActivityPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
