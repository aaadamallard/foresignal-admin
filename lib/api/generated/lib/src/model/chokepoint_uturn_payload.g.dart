// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chokepoint_uturn_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChokepointUturnPayloadStatusEnum _$chokepointUturnPayloadStatusEnum_ok =
    const ChokepointUturnPayloadStatusEnum._('ok');
const ChokepointUturnPayloadStatusEnum
_$chokepointUturnPayloadStatusEnum_insufficientData =
    const ChokepointUturnPayloadStatusEnum._('insufficientData');
const ChokepointUturnPayloadStatusEnum
_$chokepointUturnPayloadStatusEnum_noCoverage =
    const ChokepointUturnPayloadStatusEnum._('noCoverage');
const ChokepointUturnPayloadStatusEnum
_$chokepointUturnPayloadStatusEnum_degradedInput =
    const ChokepointUturnPayloadStatusEnum._('degradedInput');

ChokepointUturnPayloadStatusEnum _$chokepointUturnPayloadStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$chokepointUturnPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$chokepointUturnPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$chokepointUturnPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$chokepointUturnPayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChokepointUturnPayloadStatusEnum>
_$chokepointUturnPayloadStatusEnumValues =
    BuiltSet<ChokepointUturnPayloadStatusEnum>(
      const <ChokepointUturnPayloadStatusEnum>[
        _$chokepointUturnPayloadStatusEnum_ok,
        _$chokepointUturnPayloadStatusEnum_insufficientData,
        _$chokepointUturnPayloadStatusEnum_noCoverage,
        _$chokepointUturnPayloadStatusEnum_degradedInput,
      ],
    );

const ChokepointUturnPayloadManoeuvreEnum
_$chokepointUturnPayloadManoeuvreEnum_courseChange =
    const ChokepointUturnPayloadManoeuvreEnum._('courseChange');
const ChokepointUturnPayloadManoeuvreEnum
_$chokepointUturnPayloadManoeuvreEnum_uTurn =
    const ChokepointUturnPayloadManoeuvreEnum._('uTurn');
const ChokepointUturnPayloadManoeuvreEnum
_$chokepointUturnPayloadManoeuvreEnum_speedDrop =
    const ChokepointUturnPayloadManoeuvreEnum._('speedDrop');

ChokepointUturnPayloadManoeuvreEnum
_$chokepointUturnPayloadManoeuvreEnumValueOf(String name) {
  switch (name) {
    case 'courseChange':
      return _$chokepointUturnPayloadManoeuvreEnum_courseChange;
    case 'uTurn':
      return _$chokepointUturnPayloadManoeuvreEnum_uTurn;
    case 'speedDrop':
      return _$chokepointUturnPayloadManoeuvreEnum_speedDrop;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChokepointUturnPayloadManoeuvreEnum>
_$chokepointUturnPayloadManoeuvreEnumValues =
    BuiltSet<ChokepointUturnPayloadManoeuvreEnum>(
      const <ChokepointUturnPayloadManoeuvreEnum>[
        _$chokepointUturnPayloadManoeuvreEnum_courseChange,
        _$chokepointUturnPayloadManoeuvreEnum_uTurn,
        _$chokepointUturnPayloadManoeuvreEnum_speedDrop,
      ],
    );

Serializer<ChokepointUturnPayloadStatusEnum>
_$chokepointUturnPayloadStatusEnumSerializer =
    _$ChokepointUturnPayloadStatusEnumSerializer();
Serializer<ChokepointUturnPayloadManoeuvreEnum>
_$chokepointUturnPayloadManoeuvreEnumSerializer =
    _$ChokepointUturnPayloadManoeuvreEnumSerializer();

class _$ChokepointUturnPayloadStatusEnumSerializer
    implements PrimitiveSerializer<ChokepointUturnPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[ChokepointUturnPayloadStatusEnum];
  @override
  final String wireName = 'ChokepointUturnPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChokepointUturnPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChokepointUturnPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChokepointUturnPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChokepointUturnPayloadManoeuvreEnumSerializer
    implements PrimitiveSerializer<ChokepointUturnPayloadManoeuvreEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'courseChange': 'course-change',
    'uTurn': 'u-turn',
    'speedDrop': 'speed-drop',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'course-change': 'courseChange',
    'u-turn': 'uTurn',
    'speed-drop': 'speedDrop',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChokepointUturnPayloadManoeuvreEnum,
  ];
  @override
  final String wireName = 'ChokepointUturnPayloadManoeuvreEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChokepointUturnPayloadManoeuvreEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChokepointUturnPayloadManoeuvreEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChokepointUturnPayloadManoeuvreEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChokepointUturnPayload extends ChokepointUturnPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final ChokepointUturnPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String mmsi;
  @override
  final String chokepointId;
  @override
  final DateTime at;
  @override
  final ChokepointUturnPayloadManoeuvreEnum manoeuvre;
  @override
  final num? courseChangeDeg;
  @override
  final num? speedDropPct;

  factory _$ChokepointUturnPayload([
    void Function(ChokepointUturnPayloadBuilder)? updates,
  ]) => (ChokepointUturnPayloadBuilder()..update(updates))._build();

  _$ChokepointUturnPayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.mmsi,
    required this.chokepointId,
    required this.at,
    required this.manoeuvre,
    this.courseChangeDeg,
    this.speedDropPct,
  }) : super._();
  @override
  ChokepointUturnPayload rebuild(
    void Function(ChokepointUturnPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChokepointUturnPayloadBuilder toBuilder() =>
      ChokepointUturnPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChokepointUturnPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        mmsi == other.mmsi &&
        chokepointId == other.chokepointId &&
        at == other.at &&
        manoeuvre == other.manoeuvre &&
        courseChangeDeg == other.courseChangeDeg &&
        speedDropPct == other.speedDropPct;
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
    _$hash = $jc(_$hash, chokepointId.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, manoeuvre.hashCode);
    _$hash = $jc(_$hash, courseChangeDeg.hashCode);
    _$hash = $jc(_$hash, speedDropPct.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChokepointUturnPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('mmsi', mmsi)
          ..add('chokepointId', chokepointId)
          ..add('at', at)
          ..add('manoeuvre', manoeuvre)
          ..add('courseChangeDeg', courseChangeDeg)
          ..add('speedDropPct', speedDropPct))
        .toString();
  }
}

class ChokepointUturnPayloadBuilder
    implements Builder<ChokepointUturnPayload, ChokepointUturnPayloadBuilder> {
  _$ChokepointUturnPayload? _$v;

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

  ChokepointUturnPayloadStatusEnum? _status;
  ChokepointUturnPayloadStatusEnum? get status => _$this._status;
  set status(ChokepointUturnPayloadStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _mmsi;
  String? get mmsi => _$this._mmsi;
  set mmsi(String? mmsi) => _$this._mmsi = mmsi;

  String? _chokepointId;
  String? get chokepointId => _$this._chokepointId;
  set chokepointId(String? chokepointId) => _$this._chokepointId = chokepointId;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ChokepointUturnPayloadManoeuvreEnum? _manoeuvre;
  ChokepointUturnPayloadManoeuvreEnum? get manoeuvre => _$this._manoeuvre;
  set manoeuvre(ChokepointUturnPayloadManoeuvreEnum? manoeuvre) =>
      _$this._manoeuvre = manoeuvre;

  num? _courseChangeDeg;
  num? get courseChangeDeg => _$this._courseChangeDeg;
  set courseChangeDeg(num? courseChangeDeg) =>
      _$this._courseChangeDeg = courseChangeDeg;

  num? _speedDropPct;
  num? get speedDropPct => _$this._speedDropPct;
  set speedDropPct(num? speedDropPct) => _$this._speedDropPct = speedDropPct;

  ChokepointUturnPayloadBuilder() {
    ChokepointUturnPayload._defaults(this);
  }

  ChokepointUturnPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _mmsi = $v.mmsi;
      _chokepointId = $v.chokepointId;
      _at = $v.at;
      _manoeuvre = $v.manoeuvre;
      _courseChangeDeg = $v.courseChangeDeg;
      _speedDropPct = $v.speedDropPct;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChokepointUturnPayload other) {
    _$v = other as _$ChokepointUturnPayload;
  }

  @override
  void update(void Function(ChokepointUturnPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChokepointUturnPayload build() => _build();

  _$ChokepointUturnPayload _build() {
    _$ChokepointUturnPayload _$result;
    try {
      _$result =
          _$v ??
          _$ChokepointUturnPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'ChokepointUturnPayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'ChokepointUturnPayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ChokepointUturnPayload',
              'status',
            ),
            evidence: _evidence?.build(),
            mmsi: BuiltValueNullFieldError.checkNotNull(
              mmsi,
              r'ChokepointUturnPayload',
              'mmsi',
            ),
            chokepointId: BuiltValueNullFieldError.checkNotNull(
              chokepointId,
              r'ChokepointUturnPayload',
              'chokepointId',
            ),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'ChokepointUturnPayload',
              'at',
            ),
            manoeuvre: BuiltValueNullFieldError.checkNotNull(
              manoeuvre,
              r'ChokepointUturnPayload',
              'manoeuvre',
            ),
            courseChangeDeg: courseChangeDeg,
            speedDropPct: speedDropPct,
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
          r'ChokepointUturnPayload',
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
