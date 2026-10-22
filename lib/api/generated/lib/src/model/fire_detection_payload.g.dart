// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fire_detection_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FireDetectionPayloadConfidenceClassEnum
    _$fireDetectionPayloadConfidenceClassEnum_low =
    const FireDetectionPayloadConfidenceClassEnum._('low');
const FireDetectionPayloadConfidenceClassEnum
    _$fireDetectionPayloadConfidenceClassEnum_nominal =
    const FireDetectionPayloadConfidenceClassEnum._('nominal');
const FireDetectionPayloadConfidenceClassEnum
    _$fireDetectionPayloadConfidenceClassEnum_high =
    const FireDetectionPayloadConfidenceClassEnum._('high');

FireDetectionPayloadConfidenceClassEnum
    _$fireDetectionPayloadConfidenceClassEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$fireDetectionPayloadConfidenceClassEnum_low;
    case 'nominal':
      return _$fireDetectionPayloadConfidenceClassEnum_nominal;
    case 'high':
      return _$fireDetectionPayloadConfidenceClassEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FireDetectionPayloadConfidenceClassEnum>
    _$fireDetectionPayloadConfidenceClassEnumValues = BuiltSet<
        FireDetectionPayloadConfidenceClassEnum>(const <FireDetectionPayloadConfidenceClassEnum>[
  _$fireDetectionPayloadConfidenceClassEnum_low,
  _$fireDetectionPayloadConfidenceClassEnum_nominal,
  _$fireDetectionPayloadConfidenceClassEnum_high,
]);

Serializer<FireDetectionPayloadConfidenceClassEnum>
    _$fireDetectionPayloadConfidenceClassEnumSerializer =
    _$FireDetectionPayloadConfidenceClassEnumSerializer();

class _$FireDetectionPayloadConfidenceClassEnumSerializer
    implements PrimitiveSerializer<FireDetectionPayloadConfidenceClassEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'nominal': 'nominal',
    'high': 'high',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'nominal': 'nominal',
    'high': 'high',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FireDetectionPayloadConfidenceClassEnum
  ];
  @override
  final String wireName = 'FireDetectionPayloadConfidenceClassEnum';

  @override
  Object serialize(Serializers serializers,
          FireDetectionPayloadConfidenceClassEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FireDetectionPayloadConfidenceClassEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FireDetectionPayloadConfidenceClassEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FireDetectionPayload extends FireDetectionPayload {
  @override
  final int? maskCode;
  @override
  final JsonObject? confidence;
  @override
  final FireDetectionPayloadConfidenceClassEnum? confidenceClass;
  @override
  final String? instrument;
  @override
  final num? brightK;
  @override
  final num? bright2K;
  @override
  final num? scanKm;
  @override
  final num? trackKm;
  @override
  final String? daynight;
  @override
  final String? version;
  @override
  final int? type;
  @override
  final bool? temporallyFiltered;
  @override
  final num? frpMw;
  @override
  final num? tempK;
  @override
  final num? areaKm2;
  @override
  final String satellite;
  @override
  final String? method;
  @override
  final String? ecosystem;
  @override
  final String? source_;
  @override
  final String? label;

  factory _$FireDetectionPayload(
          [void Function(FireDetectionPayloadBuilder)? updates]) =>
      (FireDetectionPayloadBuilder()..update(updates))._build();

  _$FireDetectionPayload._(
      {this.maskCode,
      this.confidence,
      this.confidenceClass,
      this.instrument,
      this.brightK,
      this.bright2K,
      this.scanKm,
      this.trackKm,
      this.daynight,
      this.version,
      this.type,
      this.temporallyFiltered,
      this.frpMw,
      this.tempK,
      this.areaKm2,
      required this.satellite,
      this.method,
      this.ecosystem,
      this.source_,
      this.label})
      : super._();
  @override
  FireDetectionPayload rebuild(
          void Function(FireDetectionPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FireDetectionPayloadBuilder toBuilder() =>
      FireDetectionPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FireDetectionPayload &&
        maskCode == other.maskCode &&
        confidence == other.confidence &&
        confidenceClass == other.confidenceClass &&
        instrument == other.instrument &&
        brightK == other.brightK &&
        bright2K == other.bright2K &&
        scanKm == other.scanKm &&
        trackKm == other.trackKm &&
        daynight == other.daynight &&
        version == other.version &&
        type == other.type &&
        temporallyFiltered == other.temporallyFiltered &&
        frpMw == other.frpMw &&
        tempK == other.tempK &&
        areaKm2 == other.areaKm2 &&
        satellite == other.satellite &&
        method == other.method &&
        ecosystem == other.ecosystem &&
        source_ == other.source_ &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maskCode.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, confidenceClass.hashCode);
    _$hash = $jc(_$hash, instrument.hashCode);
    _$hash = $jc(_$hash, brightK.hashCode);
    _$hash = $jc(_$hash, bright2K.hashCode);
    _$hash = $jc(_$hash, scanKm.hashCode);
    _$hash = $jc(_$hash, trackKm.hashCode);
    _$hash = $jc(_$hash, daynight.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, temporallyFiltered.hashCode);
    _$hash = $jc(_$hash, frpMw.hashCode);
    _$hash = $jc(_$hash, tempK.hashCode);
    _$hash = $jc(_$hash, areaKm2.hashCode);
    _$hash = $jc(_$hash, satellite.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, ecosystem.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FireDetectionPayload')
          ..add('maskCode', maskCode)
          ..add('confidence', confidence)
          ..add('confidenceClass', confidenceClass)
          ..add('instrument', instrument)
          ..add('brightK', brightK)
          ..add('bright2K', bright2K)
          ..add('scanKm', scanKm)
          ..add('trackKm', trackKm)
          ..add('daynight', daynight)
          ..add('version', version)
          ..add('type', type)
          ..add('temporallyFiltered', temporallyFiltered)
          ..add('frpMw', frpMw)
          ..add('tempK', tempK)
          ..add('areaKm2', areaKm2)
          ..add('satellite', satellite)
          ..add('method', method)
          ..add('ecosystem', ecosystem)
          ..add('source_', source_)
          ..add('label', label))
        .toString();
  }
}

class FireDetectionPayloadBuilder
    implements Builder<FireDetectionPayload, FireDetectionPayloadBuilder> {
  _$FireDetectionPayload? _$v;

  int? _maskCode;
  int? get maskCode => _$this._maskCode;
  set maskCode(int? maskCode) => _$this._maskCode = maskCode;

  JsonObject? _confidence;
  JsonObject? get confidence => _$this._confidence;
  set confidence(JsonObject? confidence) => _$this._confidence = confidence;

  FireDetectionPayloadConfidenceClassEnum? _confidenceClass;
  FireDetectionPayloadConfidenceClassEnum? get confidenceClass =>
      _$this._confidenceClass;
  set confidenceClass(
          FireDetectionPayloadConfidenceClassEnum? confidenceClass) =>
      _$this._confidenceClass = confidenceClass;

  String? _instrument;
  String? get instrument => _$this._instrument;
  set instrument(String? instrument) => _$this._instrument = instrument;

  num? _brightK;
  num? get brightK => _$this._brightK;
  set brightK(num? brightK) => _$this._brightK = brightK;

  num? _bright2K;
  num? get bright2K => _$this._bright2K;
  set bright2K(num? bright2K) => _$this._bright2K = bright2K;

  num? _scanKm;
  num? get scanKm => _$this._scanKm;
  set scanKm(num? scanKm) => _$this._scanKm = scanKm;

  num? _trackKm;
  num? get trackKm => _$this._trackKm;
  set trackKm(num? trackKm) => _$this._trackKm = trackKm;

  String? _daynight;
  String? get daynight => _$this._daynight;
  set daynight(String? daynight) => _$this._daynight = daynight;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  bool? _temporallyFiltered;
  bool? get temporallyFiltered => _$this._temporallyFiltered;
  set temporallyFiltered(bool? temporallyFiltered) =>
      _$this._temporallyFiltered = temporallyFiltered;

  num? _frpMw;
  num? get frpMw => _$this._frpMw;
  set frpMw(num? frpMw) => _$this._frpMw = frpMw;

  num? _tempK;
  num? get tempK => _$this._tempK;
  set tempK(num? tempK) => _$this._tempK = tempK;

  num? _areaKm2;
  num? get areaKm2 => _$this._areaKm2;
  set areaKm2(num? areaKm2) => _$this._areaKm2 = areaKm2;

  String? _satellite;
  String? get satellite => _$this._satellite;
  set satellite(String? satellite) => _$this._satellite = satellite;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  String? _ecosystem;
  String? get ecosystem => _$this._ecosystem;
  set ecosystem(String? ecosystem) => _$this._ecosystem = ecosystem;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  FireDetectionPayloadBuilder() {
    FireDetectionPayload._defaults(this);
  }

  FireDetectionPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maskCode = $v.maskCode;
      _confidence = $v.confidence;
      _confidenceClass = $v.confidenceClass;
      _instrument = $v.instrument;
      _brightK = $v.brightK;
      _bright2K = $v.bright2K;
      _scanKm = $v.scanKm;
      _trackKm = $v.trackKm;
      _daynight = $v.daynight;
      _version = $v.version;
      _type = $v.type;
      _temporallyFiltered = $v.temporallyFiltered;
      _frpMw = $v.frpMw;
      _tempK = $v.tempK;
      _areaKm2 = $v.areaKm2;
      _satellite = $v.satellite;
      _method = $v.method;
      _ecosystem = $v.ecosystem;
      _source_ = $v.source_;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FireDetectionPayload other) {
    _$v = other as _$FireDetectionPayload;
  }

  @override
  void update(void Function(FireDetectionPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FireDetectionPayload build() => _build();

  _$FireDetectionPayload _build() {
    final _$result = _$v ??
        _$FireDetectionPayload._(
          maskCode: maskCode,
          confidence: confidence,
          confidenceClass: confidenceClass,
          instrument: instrument,
          brightK: brightK,
          bright2K: bright2K,
          scanKm: scanKm,
          trackKm: trackKm,
          daynight: daynight,
          version: version,
          type: type,
          temporallyFiltered: temporallyFiltered,
          frpMw: frpMw,
          tempK: tempK,
          areaKm2: areaKm2,
          satellite: BuiltValueNullFieldError.checkNotNull(
              satellite, r'FireDetectionPayload', 'satellite'),
          method: method,
          ecosystem: ecosystem,
          source_: source_,
          label: label,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
