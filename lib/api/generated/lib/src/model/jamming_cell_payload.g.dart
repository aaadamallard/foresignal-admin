// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jamming_cell_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JammingCellPayloadStatusEnum _$jammingCellPayloadStatusEnum_ok =
    const JammingCellPayloadStatusEnum._('ok');
const JammingCellPayloadStatusEnum
    _$jammingCellPayloadStatusEnum_insufficientData =
    const JammingCellPayloadStatusEnum._('insufficientData');
const JammingCellPayloadStatusEnum _$jammingCellPayloadStatusEnum_noCoverage =
    const JammingCellPayloadStatusEnum._('noCoverage');
const JammingCellPayloadStatusEnum
    _$jammingCellPayloadStatusEnum_degradedInput =
    const JammingCellPayloadStatusEnum._('degradedInput');

JammingCellPayloadStatusEnum _$jammingCellPayloadStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$jammingCellPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$jammingCellPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$jammingCellPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$jammingCellPayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<JammingCellPayloadStatusEnum>
    _$jammingCellPayloadStatusEnumValues =
    BuiltSet<JammingCellPayloadStatusEnum>(const <JammingCellPayloadStatusEnum>[
  _$jammingCellPayloadStatusEnum_ok,
  _$jammingCellPayloadStatusEnum_insufficientData,
  _$jammingCellPayloadStatusEnum_noCoverage,
  _$jammingCellPayloadStatusEnum_degradedInput,
]);

const JammingCellPayloadLevelEnum _$jammingCellPayloadLevelEnum_medium =
    const JammingCellPayloadLevelEnum._('medium');
const JammingCellPayloadLevelEnum _$jammingCellPayloadLevelEnum_high =
    const JammingCellPayloadLevelEnum._('high');

JammingCellPayloadLevelEnum _$jammingCellPayloadLevelEnumValueOf(String name) {
  switch (name) {
    case 'medium':
      return _$jammingCellPayloadLevelEnum_medium;
    case 'high':
      return _$jammingCellPayloadLevelEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<JammingCellPayloadLevelEnum>
    _$jammingCellPayloadLevelEnumValues =
    BuiltSet<JammingCellPayloadLevelEnum>(const <JammingCellPayloadLevelEnum>[
  _$jammingCellPayloadLevelEnum_medium,
  _$jammingCellPayloadLevelEnum_high,
]);

const JammingCellPayloadGridEnum _$jammingCellPayloadGridEnum_h3 =
    const JammingCellPayloadGridEnum._('h3');
const JammingCellPayloadGridEnum _$jammingCellPayloadGridEnum_deg1 =
    const JammingCellPayloadGridEnum._('deg1');

JammingCellPayloadGridEnum _$jammingCellPayloadGridEnumValueOf(String name) {
  switch (name) {
    case 'h3':
      return _$jammingCellPayloadGridEnum_h3;
    case 'deg1':
      return _$jammingCellPayloadGridEnum_deg1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<JammingCellPayloadGridEnum> _$jammingCellPayloadGridEnumValues =
    BuiltSet<JammingCellPayloadGridEnum>(const <JammingCellPayloadGridEnum>[
  _$jammingCellPayloadGridEnum_h3,
  _$jammingCellPayloadGridEnum_deg1,
]);

Serializer<JammingCellPayloadStatusEnum>
    _$jammingCellPayloadStatusEnumSerializer =
    _$JammingCellPayloadStatusEnumSerializer();
Serializer<JammingCellPayloadLevelEnum>
    _$jammingCellPayloadLevelEnumSerializer =
    _$JammingCellPayloadLevelEnumSerializer();
Serializer<JammingCellPayloadGridEnum> _$jammingCellPayloadGridEnumSerializer =
    _$JammingCellPayloadGridEnumSerializer();

class _$JammingCellPayloadStatusEnumSerializer
    implements PrimitiveSerializer<JammingCellPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[JammingCellPayloadStatusEnum];
  @override
  final String wireName = 'JammingCellPayloadStatusEnum';

  @override
  Object serialize(Serializers serializers, JammingCellPayloadStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  JammingCellPayloadStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JammingCellPayloadStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$JammingCellPayloadLevelEnumSerializer
    implements PrimitiveSerializer<JammingCellPayloadLevelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'medium': 'medium',
    'high': 'high',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'medium': 'medium',
    'high': 'high',
  };

  @override
  final Iterable<Type> types = const <Type>[JammingCellPayloadLevelEnum];
  @override
  final String wireName = 'JammingCellPayloadLevelEnum';

  @override
  Object serialize(Serializers serializers, JammingCellPayloadLevelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  JammingCellPayloadLevelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JammingCellPayloadLevelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$JammingCellPayloadGridEnumSerializer
    implements PrimitiveSerializer<JammingCellPayloadGridEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'h3': 'h3',
    'deg1': 'deg1',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'h3': 'h3',
    'deg1': 'deg1',
  };

  @override
  final Iterable<Type> types = const <Type>[JammingCellPayloadGridEnum];
  @override
  final String wireName = 'JammingCellPayloadGridEnum';

  @override
  Object serialize(Serializers serializers, JammingCellPayloadGridEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  JammingCellPayloadGridEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JammingCellPayloadGridEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$JammingCellPayload extends JammingCellPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final JammingCellPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final JammingCellPayloadLevelEnum level;
  @override
  final JammingCellPayloadGridEnum? grid;
  @override
  final String cell;
  @override
  final int? aircraft;
  @override
  final int? badAircraft;
  @override
  final num? ratio;
  @override
  final int? windowMinutes;

  factory _$JammingCellPayload(
          [void Function(JammingCellPayloadBuilder)? updates]) =>
      (JammingCellPayloadBuilder()..update(updates))._build();

  _$JammingCellPayload._(
      {required this.automated,
      required this.notAWarning,
      required this.detector,
      this.confidence,
      required this.status,
      this.evidence,
      required this.level,
      this.grid,
      required this.cell,
      this.aircraft,
      this.badAircraft,
      this.ratio,
      this.windowMinutes})
      : super._();
  @override
  JammingCellPayload rebuild(
          void Function(JammingCellPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JammingCellPayloadBuilder toBuilder() =>
      JammingCellPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JammingCellPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        level == other.level &&
        grid == other.grid &&
        cell == other.cell &&
        aircraft == other.aircraft &&
        badAircraft == other.badAircraft &&
        ratio == other.ratio &&
        windowMinutes == other.windowMinutes;
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
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, grid.hashCode);
    _$hash = $jc(_$hash, cell.hashCode);
    _$hash = $jc(_$hash, aircraft.hashCode);
    _$hash = $jc(_$hash, badAircraft.hashCode);
    _$hash = $jc(_$hash, ratio.hashCode);
    _$hash = $jc(_$hash, windowMinutes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JammingCellPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('level', level)
          ..add('grid', grid)
          ..add('cell', cell)
          ..add('aircraft', aircraft)
          ..add('badAircraft', badAircraft)
          ..add('ratio', ratio)
          ..add('windowMinutes', windowMinutes))
        .toString();
  }
}

class JammingCellPayloadBuilder
    implements Builder<JammingCellPayload, JammingCellPayloadBuilder> {
  _$JammingCellPayload? _$v;

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

  JammingCellPayloadStatusEnum? _status;
  JammingCellPayloadStatusEnum? get status => _$this._status;
  set status(JammingCellPayloadStatusEnum? status) => _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  JammingCellPayloadLevelEnum? _level;
  JammingCellPayloadLevelEnum? get level => _$this._level;
  set level(JammingCellPayloadLevelEnum? level) => _$this._level = level;

  JammingCellPayloadGridEnum? _grid;
  JammingCellPayloadGridEnum? get grid => _$this._grid;
  set grid(JammingCellPayloadGridEnum? grid) => _$this._grid = grid;

  String? _cell;
  String? get cell => _$this._cell;
  set cell(String? cell) => _$this._cell = cell;

  int? _aircraft;
  int? get aircraft => _$this._aircraft;
  set aircraft(int? aircraft) => _$this._aircraft = aircraft;

  int? _badAircraft;
  int? get badAircraft => _$this._badAircraft;
  set badAircraft(int? badAircraft) => _$this._badAircraft = badAircraft;

  num? _ratio;
  num? get ratio => _$this._ratio;
  set ratio(num? ratio) => _$this._ratio = ratio;

  int? _windowMinutes;
  int? get windowMinutes => _$this._windowMinutes;
  set windowMinutes(int? windowMinutes) =>
      _$this._windowMinutes = windowMinutes;

  JammingCellPayloadBuilder() {
    JammingCellPayload._defaults(this);
  }

  JammingCellPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _level = $v.level;
      _grid = $v.grid;
      _cell = $v.cell;
      _aircraft = $v.aircraft;
      _badAircraft = $v.badAircraft;
      _ratio = $v.ratio;
      _windowMinutes = $v.windowMinutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JammingCellPayload other) {
    _$v = other as _$JammingCellPayload;
  }

  @override
  void update(void Function(JammingCellPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JammingCellPayload build() => _build();

  _$JammingCellPayload _build() {
    _$JammingCellPayload _$result;
    try {
      _$result = _$v ??
          _$JammingCellPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
                automated, r'JammingCellPayload', 'automated'),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
                notAWarning, r'JammingCellPayload', 'notAWarning'),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'JammingCellPayload', 'status'),
            evidence: _evidence?.build(),
            level: BuiltValueNullFieldError.checkNotNull(
                level, r'JammingCellPayload', 'level'),
            grid: grid,
            cell: BuiltValueNullFieldError.checkNotNull(
                cell, r'JammingCellPayload', 'cell'),
            aircraft: aircraft,
            badAircraft: badAircraft,
            ratio: ratio,
            windowMinutes: windowMinutes,
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
            r'JammingCellPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
