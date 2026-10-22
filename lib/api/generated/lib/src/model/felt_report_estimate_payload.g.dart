// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'felt_report_estimate_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FeltReportEstimatePayloadStatusEnum
    _$feltReportEstimatePayloadStatusEnum_ok =
    const FeltReportEstimatePayloadStatusEnum._('ok');
const FeltReportEstimatePayloadStatusEnum
    _$feltReportEstimatePayloadStatusEnum_insufficientData =
    const FeltReportEstimatePayloadStatusEnum._('insufficientData');
const FeltReportEstimatePayloadStatusEnum
    _$feltReportEstimatePayloadStatusEnum_noCoverage =
    const FeltReportEstimatePayloadStatusEnum._('noCoverage');
const FeltReportEstimatePayloadStatusEnum
    _$feltReportEstimatePayloadStatusEnum_degradedInput =
    const FeltReportEstimatePayloadStatusEnum._('degradedInput');

FeltReportEstimatePayloadStatusEnum
    _$feltReportEstimatePayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$feltReportEstimatePayloadStatusEnum_ok;
    case 'insufficientData':
      return _$feltReportEstimatePayloadStatusEnum_insufficientData;
    case 'noCoverage':
      return _$feltReportEstimatePayloadStatusEnum_noCoverage;
    case 'degradedInput':
      return _$feltReportEstimatePayloadStatusEnum_degradedInput;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FeltReportEstimatePayloadStatusEnum>
    _$feltReportEstimatePayloadStatusEnumValues = BuiltSet<
        FeltReportEstimatePayloadStatusEnum>(const <FeltReportEstimatePayloadStatusEnum>[
  _$feltReportEstimatePayloadStatusEnum_ok,
  _$feltReportEstimatePayloadStatusEnum_insufficientData,
  _$feltReportEstimatePayloadStatusEnum_noCoverage,
  _$feltReportEstimatePayloadStatusEnum_degradedInput,
]);

const FeltReportEstimatePayloadMethodEnum
    _$feltReportEstimatePayloadMethodEnum_shakemap =
    const FeltReportEstimatePayloadMethodEnum._('shakemap');
const FeltReportEstimatePayloadMethodEnum
    _$feltReportEstimatePayloadMethodEnum_ipeAw2007 =
    const FeltReportEstimatePayloadMethodEnum._('ipeAw2007');

FeltReportEstimatePayloadMethodEnum
    _$feltReportEstimatePayloadMethodEnumValueOf(String name) {
  switch (name) {
    case 'shakemap':
      return _$feltReportEstimatePayloadMethodEnum_shakemap;
    case 'ipeAw2007':
      return _$feltReportEstimatePayloadMethodEnum_ipeAw2007;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FeltReportEstimatePayloadMethodEnum>
    _$feltReportEstimatePayloadMethodEnumValues = BuiltSet<
        FeltReportEstimatePayloadMethodEnum>(const <FeltReportEstimatePayloadMethodEnum>[
  _$feltReportEstimatePayloadMethodEnum_shakemap,
  _$feltReportEstimatePayloadMethodEnum_ipeAw2007,
]);

const FeltReportEstimatePayloadCoefficientSetEnum
    _$feltReportEstimatePayloadCoefficientSetEnum_california =
    const FeltReportEstimatePayloadCoefficientSetEnum._('california');
const FeltReportEstimatePayloadCoefficientSetEnum
    _$feltReportEstimatePayloadCoefficientSetEnum_ceus =
    const FeltReportEstimatePayloadCoefficientSetEnum._('ceus');

FeltReportEstimatePayloadCoefficientSetEnum
    _$feltReportEstimatePayloadCoefficientSetEnumValueOf(String name) {
  switch (name) {
    case 'california':
      return _$feltReportEstimatePayloadCoefficientSetEnum_california;
    case 'ceus':
      return _$feltReportEstimatePayloadCoefficientSetEnum_ceus;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FeltReportEstimatePayloadCoefficientSetEnum>
    _$feltReportEstimatePayloadCoefficientSetEnumValues = BuiltSet<
        FeltReportEstimatePayloadCoefficientSetEnum>(const <FeltReportEstimatePayloadCoefficientSetEnum>[
  _$feltReportEstimatePayloadCoefficientSetEnum_california,
  _$feltReportEstimatePayloadCoefficientSetEnum_ceus,
]);

Serializer<FeltReportEstimatePayloadStatusEnum>
    _$feltReportEstimatePayloadStatusEnumSerializer =
    _$FeltReportEstimatePayloadStatusEnumSerializer();
Serializer<FeltReportEstimatePayloadMethodEnum>
    _$feltReportEstimatePayloadMethodEnumSerializer =
    _$FeltReportEstimatePayloadMethodEnumSerializer();
Serializer<FeltReportEstimatePayloadCoefficientSetEnum>
    _$feltReportEstimatePayloadCoefficientSetEnumSerializer =
    _$FeltReportEstimatePayloadCoefficientSetEnumSerializer();

class _$FeltReportEstimatePayloadStatusEnumSerializer
    implements PrimitiveSerializer<FeltReportEstimatePayloadStatusEnum> {
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
    FeltReportEstimatePayloadStatusEnum
  ];
  @override
  final String wireName = 'FeltReportEstimatePayloadStatusEnum';

  @override
  Object serialize(
          Serializers serializers, FeltReportEstimatePayloadStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FeltReportEstimatePayloadStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FeltReportEstimatePayloadStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FeltReportEstimatePayloadMethodEnumSerializer
    implements PrimitiveSerializer<FeltReportEstimatePayloadMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'shakemap': 'shakemap',
    'ipeAw2007': 'ipe-aw2007',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'shakemap': 'shakemap',
    'ipe-aw2007': 'ipeAw2007',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FeltReportEstimatePayloadMethodEnum
  ];
  @override
  final String wireName = 'FeltReportEstimatePayloadMethodEnum';

  @override
  Object serialize(
          Serializers serializers, FeltReportEstimatePayloadMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FeltReportEstimatePayloadMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FeltReportEstimatePayloadMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FeltReportEstimatePayloadCoefficientSetEnumSerializer
    implements
        PrimitiveSerializer<FeltReportEstimatePayloadCoefficientSetEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'california': 'california',
    'ceus': 'ceus',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'california': 'california',
    'ceus': 'ceus',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FeltReportEstimatePayloadCoefficientSetEnum
  ];
  @override
  final String wireName = 'FeltReportEstimatePayloadCoefficientSetEnum';

  @override
  Object serialize(Serializers serializers,
          FeltReportEstimatePayloadCoefficientSetEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FeltReportEstimatePayloadCoefficientSetEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FeltReportEstimatePayloadCoefficientSetEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FeltReportEstimatePayload extends FeltReportEstimatePayload {
  @override
  final bool automated;
  @override
  final bool notAWarning;
  @override
  final AircraftFusionPayloadDetector detector;
  @override
  final num? confidence;
  @override
  final FeltReportEstimatePayloadStatusEnum status;
  @override
  final BuiltList<DerivedEvidenceRef>? evidence;
  @override
  final String eventId;
  @override
  final String placeId;
  @override
  final num mmi;
  @override
  final num? distanceKm;
  @override
  final bool? feltLikely;
  @override
  final FeltReportEstimatePayloadMethodEnum method;
  @override
  final FeltReportEstimatePayloadCoefficientSetEnum? coefficientSet;

  factory _$FeltReportEstimatePayload(
          [void Function(FeltReportEstimatePayloadBuilder)? updates]) =>
      (FeltReportEstimatePayloadBuilder()..update(updates))._build();

  _$FeltReportEstimatePayload._(
      {required this.automated,
      required this.notAWarning,
      required this.detector,
      this.confidence,
      required this.status,
      this.evidence,
      required this.eventId,
      required this.placeId,
      required this.mmi,
      this.distanceKm,
      this.feltLikely,
      required this.method,
      this.coefficientSet})
      : super._();
  @override
  FeltReportEstimatePayload rebuild(
          void Function(FeltReportEstimatePayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeltReportEstimatePayloadBuilder toBuilder() =>
      FeltReportEstimatePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeltReportEstimatePayload &&
        automated == other.automated &&
        notAWarning == other.notAWarning &&
        detector == other.detector &&
        confidence == other.confidence &&
        status == other.status &&
        evidence == other.evidence &&
        eventId == other.eventId &&
        placeId == other.placeId &&
        mmi == other.mmi &&
        distanceKm == other.distanceKm &&
        feltLikely == other.feltLikely &&
        method == other.method &&
        coefficientSet == other.coefficientSet;
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
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, mmi.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jc(_$hash, feltLikely.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, coefficientSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeltReportEstimatePayload')
          ..add('automated', automated)
          ..add('notAWarning', notAWarning)
          ..add('detector', detector)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('evidence', evidence)
          ..add('eventId', eventId)
          ..add('placeId', placeId)
          ..add('mmi', mmi)
          ..add('distanceKm', distanceKm)
          ..add('feltLikely', feltLikely)
          ..add('method', method)
          ..add('coefficientSet', coefficientSet))
        .toString();
  }
}

class FeltReportEstimatePayloadBuilder
    implements
        Builder<FeltReportEstimatePayload, FeltReportEstimatePayloadBuilder> {
  _$FeltReportEstimatePayload? _$v;

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

  FeltReportEstimatePayloadStatusEnum? _status;
  FeltReportEstimatePayloadStatusEnum? get status => _$this._status;
  set status(FeltReportEstimatePayloadStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<DerivedEvidenceRef>? _evidence;
  ListBuilder<DerivedEvidenceRef> get evidence =>
      _$this._evidence ??= ListBuilder<DerivedEvidenceRef>();
  set evidence(ListBuilder<DerivedEvidenceRef>? evidence) =>
      _$this._evidence = evidence;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  num? _mmi;
  num? get mmi => _$this._mmi;
  set mmi(num? mmi) => _$this._mmi = mmi;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  bool? _feltLikely;
  bool? get feltLikely => _$this._feltLikely;
  set feltLikely(bool? feltLikely) => _$this._feltLikely = feltLikely;

  FeltReportEstimatePayloadMethodEnum? _method;
  FeltReportEstimatePayloadMethodEnum? get method => _$this._method;
  set method(FeltReportEstimatePayloadMethodEnum? method) =>
      _$this._method = method;

  FeltReportEstimatePayloadCoefficientSetEnum? _coefficientSet;
  FeltReportEstimatePayloadCoefficientSetEnum? get coefficientSet =>
      _$this._coefficientSet;
  set coefficientSet(
          FeltReportEstimatePayloadCoefficientSetEnum? coefficientSet) =>
      _$this._coefficientSet = coefficientSet;

  FeltReportEstimatePayloadBuilder() {
    FeltReportEstimatePayload._defaults(this);
  }

  FeltReportEstimatePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _detector = $v.detector.toBuilder();
      _confidence = $v.confidence;
      _status = $v.status;
      _evidence = $v.evidence?.toBuilder();
      _eventId = $v.eventId;
      _placeId = $v.placeId;
      _mmi = $v.mmi;
      _distanceKm = $v.distanceKm;
      _feltLikely = $v.feltLikely;
      _method = $v.method;
      _coefficientSet = $v.coefficientSet;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeltReportEstimatePayload other) {
    _$v = other as _$FeltReportEstimatePayload;
  }

  @override
  void update(void Function(FeltReportEstimatePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeltReportEstimatePayload build() => _build();

  _$FeltReportEstimatePayload _build() {
    _$FeltReportEstimatePayload _$result;
    try {
      _$result = _$v ??
          _$FeltReportEstimatePayload._(
            automated: BuiltValueNullFieldError.checkNotNull(
                automated, r'FeltReportEstimatePayload', 'automated'),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
                notAWarning, r'FeltReportEstimatePayload', 'notAWarning'),
            detector: detector.build(),
            confidence: confidence,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'FeltReportEstimatePayload', 'status'),
            evidence: _evidence?.build(),
            eventId: BuiltValueNullFieldError.checkNotNull(
                eventId, r'FeltReportEstimatePayload', 'eventId'),
            placeId: BuiltValueNullFieldError.checkNotNull(
                placeId, r'FeltReportEstimatePayload', 'placeId'),
            mmi: BuiltValueNullFieldError.checkNotNull(
                mmi, r'FeltReportEstimatePayload', 'mmi'),
            distanceKm: distanceKm,
            feltLikely: feltLikely,
            method: BuiltValueNullFieldError.checkNotNull(
                method, r'FeltReportEstimatePayload', 'method'),
            coefficientSet: coefficientSet,
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
            r'FeltReportEstimatePayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
