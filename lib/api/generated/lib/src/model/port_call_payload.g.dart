// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'port_call_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PortCallPayloadStatusEnum _$portCallPayloadStatusEnum_ok =
    const PortCallPayloadStatusEnum._('ok');
const PortCallPayloadStatusEnum _$portCallPayloadStatusEnum_insufficientData =
    const PortCallPayloadStatusEnum._('insufficientData');
const PortCallPayloadStatusEnum _$portCallPayloadStatusEnum_noCoverage =
    const PortCallPayloadStatusEnum._('noCoverage');
const PortCallPayloadStatusEnum _$portCallPayloadStatusEnum_degradedInput =
    const PortCallPayloadStatusEnum._('degradedInput');

PortCallPayloadStatusEnum _$portCallPayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$portCallPayloadStatusEnum_ok;
    case 'insufficientData':
      return _$portCallPayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$portCallPayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$portCallPayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PortCallPayloadStatusEnum> _$portCallPayloadStatusEnumValues =
    BuiltSet<PortCallPayloadStatusEnum>(const <PortCallPayloadStatusEnum>[
      _$portCallPayloadStatusEnum_ok,
      _$portCallPayloadStatusEnum_insufficientData,
      _$portCallPayloadStatusEnum_noCoverage,
      _$portCallPayloadStatusEnum_degradedInput,
    ]);

Serializer<PortCallPayloadStatusEnum> _$portCallPayloadStatusEnumSerializer =
    _$PortCallPayloadStatusEnumSerializer();

class _$PortCallPayloadStatusEnumSerializer
    implements PrimitiveSerializer<PortCallPayloadStatusEnum> {
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
  final Iterable<Type> types = const <Type>[PortCallPayloadStatusEnum];
  @override
  final String wireName = 'PortCallPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    PortCallPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PortCallPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PortCallPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PortCallPayload extends PortCallPayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final PortCallPayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String mmsi;
  @override
  final String portNumber;
  @override
  final String? portName;
  @override
  final DateTime arrival;
  @override
  final DateTime? departure;
  @override
  final num? durationH;
  @override
  final bool? departureUnknown;

  factory _$PortCallPayload([void Function(PortCallPayloadBuilder)? updates]) =>
      (PortCallPayloadBuilder()..update(updates))._build();

  _$PortCallPayload._({
    required this.automated,
    required this.notAWarning,
    required this.detector,
    this.confidence,
    required this.status,
    this.evidence,
    required this.mmsi,
    required this.portNumber,
    this.portName,
    required this.arrival,
    this.departure,
    this.durationH,
    this.departureUnknown,
  }) : super._();
  @override
  PortCallPayload rebuild(void Function(PortCallPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PortCallPayloadBuilder toBuilder() => PortCallPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PortCallPayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        mmsi == other.mmsi &&
        portNumber == other.portNumber &&
        portName == other.portName &&
        arrival == other.arrival &&
        departure == other.departure &&
        durationH == other.durationH &&
        departureUnknown == other.departureUnknown;
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
    _$hash = $jc(_$hash, portNumber.hashCode);
    _$hash = $jc(_$hash, portName.hashCode);
    _$hash = $jc(_$hash, arrival.hashCode);
    _$hash = $jc(_$hash, departure.hashCode);
    _$hash = $jc(_$hash, durationH.hashCode);
    _$hash = $jc(_$hash, departureUnknown.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PortCallPayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('mmsi', mmsi)
          ..add('portNumber', portNumber)
          ..add('portName', portName)
          ..add('arrival', arrival)
          ..add('departure', departure)
          ..add('durationH', durationH)
          ..add('departureUnknown', departureUnknown))
        .toString();
  }
}

class PortCallPayloadBuilder
    implements Builder<PortCallPayload, PortCallPayloadBuilder> {
  _$PortCallPayload? _$v;

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

  PortCallPayloadStatusEnum? _status;
  PortCallPayloadStatusEnum? get status => _$this._status;
  set status(PortCallPayloadStatusEnum? status) => _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _mmsi;
  String? get mmsi => _$this._mmsi;
  set mmsi(String? mmsi) => _$this._mmsi = mmsi;

  String? _portNumber;
  String? get portNumber => _$this._portNumber;
  set portNumber(String? portNumber) => _$this._portNumber = portNumber;

  String? _portName;
  String? get portName => _$this._portName;
  set portName(String? portName) => _$this._portName = portName;

  DateTime? _arrival;
  DateTime? get arrival => _$this._arrival;
  set arrival(DateTime? arrival) => _$this._arrival = arrival;

  DateTime? _departure;
  DateTime? get departure => _$this._departure;
  set departure(DateTime? departure) => _$this._departure = departure;

  num? _durationH;
  num? get durationH => _$this._durationH;
  set durationH(num? durationH) => _$this._durationH = durationH;

  bool? _departureUnknown;
  bool? get departureUnknown => _$this._departureUnknown;
  set departureUnknown(bool? departureUnknown) =>
      _$this._departureUnknown = departureUnknown;

  PortCallPayloadBuilder() {
    PortCallPayload._defaults(this);
  }

  PortCallPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _mmsi = $v.mmsi;
      _portNumber = $v.portNumber;
      _portName = $v.portName;
      _arrival = $v.arrival;
      _departure = $v.departure;
      _durationH = $v.durationH;
      _departureUnknown = $v.departureUnknown;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PortCallPayload other) {
    _$v = other as _$PortCallPayload;
  }

  @override
  void update(void Function(PortCallPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PortCallPayload build() => _build();

  _$PortCallPayload _build() {
    _$PortCallPayload _$result;
    try {
      _$result =
          _$v ??
          _$PortCallPayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
              automated,
              r'PortCallPayload',
              'automated',
            ),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
              notAWarning,
              r'PortCallPayload',
              'notAWarning',
            ),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'PortCallPayload',
              'status',
            ),
            evidence: _evidence?.build(),
            mmsi: BuiltValueNullFieldError.checkNotNull(
              mmsi,
              r'PortCallPayload',
              'mmsi',
            ),
            portNumber: BuiltValueNullFieldError.checkNotNull(
              portNumber,
              r'PortCallPayload',
              'portNumber',
            ),
            portName: portName,
            arrival: BuiltValueNullFieldError.checkNotNull(
              arrival,
              r'PortCallPayload',
              'arrival',
            ),
            departure: departure,
            durationH: durationH,
            departureUnknown: departureUnknown,
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
          r'PortCallPayload',
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
