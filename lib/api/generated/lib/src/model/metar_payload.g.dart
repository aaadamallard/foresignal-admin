// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metar_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MetarPayloadMetarTypeEnum _$metarPayloadMetarTypeEnum_METAR =
    const MetarPayloadMetarTypeEnum._('METAR');
const MetarPayloadMetarTypeEnum _$metarPayloadMetarTypeEnum_SPECI =
    const MetarPayloadMetarTypeEnum._('SPECI');
const MetarPayloadMetarTypeEnum
_$metarPayloadMetarTypeEnum_unknownDefaultOpenApi =
    const MetarPayloadMetarTypeEnum._('unknownDefaultOpenApi');

MetarPayloadMetarTypeEnum _$metarPayloadMetarTypeEnumValueOf(String name) {
  switch (name) {
    case 'METAR':
      return _$metarPayloadMetarTypeEnum_METAR;
    case 'SPECI':
      return _$metarPayloadMetarTypeEnum_SPECI;
    case 'unknownDefaultOpenApi':
      return _$metarPayloadMetarTypeEnum_unknownDefaultOpenApi;
    default:
      return _$metarPayloadMetarTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MetarPayloadMetarTypeEnum> _$metarPayloadMetarTypeEnumValues =
    BuiltSet<MetarPayloadMetarTypeEnum>(const <MetarPayloadMetarTypeEnum>[
      _$metarPayloadMetarTypeEnum_METAR,
      _$metarPayloadMetarTypeEnum_SPECI,
      _$metarPayloadMetarTypeEnum_unknownDefaultOpenApi,
    ]);

const MetarPayloadFlightCategoryEnum _$metarPayloadFlightCategoryEnum_VFR =
    const MetarPayloadFlightCategoryEnum._('VFR');
const MetarPayloadFlightCategoryEnum _$metarPayloadFlightCategoryEnum_MVFR =
    const MetarPayloadFlightCategoryEnum._('MVFR');
const MetarPayloadFlightCategoryEnum _$metarPayloadFlightCategoryEnum_IFR =
    const MetarPayloadFlightCategoryEnum._('IFR');
const MetarPayloadFlightCategoryEnum _$metarPayloadFlightCategoryEnum_LIFR =
    const MetarPayloadFlightCategoryEnum._('LIFR');
const MetarPayloadFlightCategoryEnum
_$metarPayloadFlightCategoryEnum_unknownDefaultOpenApi =
    const MetarPayloadFlightCategoryEnum._('unknownDefaultOpenApi');

MetarPayloadFlightCategoryEnum _$metarPayloadFlightCategoryEnumValueOf(
  String name,
) {
  switch (name) {
    case 'VFR':
      return _$metarPayloadFlightCategoryEnum_VFR;
    case 'MVFR':
      return _$metarPayloadFlightCategoryEnum_MVFR;
    case 'IFR':
      return _$metarPayloadFlightCategoryEnum_IFR;
    case 'LIFR':
      return _$metarPayloadFlightCategoryEnum_LIFR;
    case 'unknownDefaultOpenApi':
      return _$metarPayloadFlightCategoryEnum_unknownDefaultOpenApi;
    default:
      return _$metarPayloadFlightCategoryEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MetarPayloadFlightCategoryEnum>
_$metarPayloadFlightCategoryEnumValues =
    BuiltSet<MetarPayloadFlightCategoryEnum>(
      const <MetarPayloadFlightCategoryEnum>[
        _$metarPayloadFlightCategoryEnum_VFR,
        _$metarPayloadFlightCategoryEnum_MVFR,
        _$metarPayloadFlightCategoryEnum_IFR,
        _$metarPayloadFlightCategoryEnum_LIFR,
        _$metarPayloadFlightCategoryEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<MetarPayloadMetarTypeEnum> _$metarPayloadMetarTypeEnumSerializer =
    _$MetarPayloadMetarTypeEnumSerializer();
Serializer<MetarPayloadFlightCategoryEnum>
_$metarPayloadFlightCategoryEnumSerializer =
    _$MetarPayloadFlightCategoryEnumSerializer();

class _$MetarPayloadMetarTypeEnumSerializer
    implements PrimitiveSerializer<MetarPayloadMetarTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'METAR': 'METAR',
    'SPECI': 'SPECI',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'METAR': 'METAR',
    'SPECI': 'SPECI',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MetarPayloadMetarTypeEnum];
  @override
  final String wireName = 'MetarPayloadMetarTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    MetarPayloadMetarTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MetarPayloadMetarTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MetarPayloadMetarTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MetarPayloadFlightCategoryEnumSerializer
    implements PrimitiveSerializer<MetarPayloadFlightCategoryEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'VFR': 'VFR',
    'MVFR': 'MVFR',
    'IFR': 'IFR',
    'LIFR': 'LIFR',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'VFR': 'VFR',
    'MVFR': 'MVFR',
    'IFR': 'IFR',
    'LIFR': 'LIFR',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MetarPayloadFlightCategoryEnum];
  @override
  final String wireName = 'MetarPayloadFlightCategoryEnum';

  @override
  Object serialize(
    Serializers serializers,
    MetarPayloadFlightCategoryEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MetarPayloadFlightCategoryEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MetarPayloadFlightCategoryEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MetarPayload extends MetarPayload {
  @override
  final String raw;
  @override
  final String stationId;
  @override
  final MetarPayloadMetarTypeEnum? metarType;
  @override
  final num? tempC;
  @override
  final num? dewpointC;
  @override
  final int? windDirDeg;
  @override
  final bool? windVariable;
  @override
  final int? windKt;
  @override
  final int? gustKt;
  @override
  final num? visibilitySm;
  @override
  final bool? visibilityPlus;
  @override
  final num? altimInHg;
  @override
  final num? slpMb;
  @override
  final String? wx;
  @override
  final BuiltList<MetarPayloadSkyInner>? sky;
  @override
  final MetarPayloadFlightCategoryEnum? flightCategory;
  @override
  final num? elevationM;

  factory _$MetarPayload([void Function(MetarPayloadBuilder)? updates]) =>
      (MetarPayloadBuilder()..update(updates))._build();

  _$MetarPayload._({
    required this.raw,
    required this.stationId,
    this.metarType,
    this.tempC,
    this.dewpointC,
    this.windDirDeg,
    this.windVariable,
    this.windKt,
    this.gustKt,
    this.visibilitySm,
    this.visibilityPlus,
    this.altimInHg,
    this.slpMb,
    this.wx,
    this.sky,
    this.flightCategory,
    this.elevationM,
  }) : super._();
  @override
  MetarPayload rebuild(void Function(MetarPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetarPayloadBuilder toBuilder() => MetarPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetarPayload &&
        raw == other.raw &&
        stationId == other.stationId &&
        metarType == other.metarType &&
        tempC == other.tempC &&
        dewpointC == other.dewpointC &&
        windDirDeg == other.windDirDeg &&
        windVariable == other.windVariable &&
        windKt == other.windKt &&
        gustKt == other.gustKt &&
        visibilitySm == other.visibilitySm &&
        visibilityPlus == other.visibilityPlus &&
        altimInHg == other.altimInHg &&
        slpMb == other.slpMb &&
        wx == other.wx &&
        sky == other.sky &&
        flightCategory == other.flightCategory &&
        elevationM == other.elevationM;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, raw.hashCode);
    _$hash = $jc(_$hash, stationId.hashCode);
    _$hash = $jc(_$hash, metarType.hashCode);
    _$hash = $jc(_$hash, tempC.hashCode);
    _$hash = $jc(_$hash, dewpointC.hashCode);
    _$hash = $jc(_$hash, windDirDeg.hashCode);
    _$hash = $jc(_$hash, windVariable.hashCode);
    _$hash = $jc(_$hash, windKt.hashCode);
    _$hash = $jc(_$hash, gustKt.hashCode);
    _$hash = $jc(_$hash, visibilitySm.hashCode);
    _$hash = $jc(_$hash, visibilityPlus.hashCode);
    _$hash = $jc(_$hash, altimInHg.hashCode);
    _$hash = $jc(_$hash, slpMb.hashCode);
    _$hash = $jc(_$hash, wx.hashCode);
    _$hash = $jc(_$hash, sky.hashCode);
    _$hash = $jc(_$hash, flightCategory.hashCode);
    _$hash = $jc(_$hash, elevationM.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetarPayload')
          ..add('raw', raw)
          ..add('stationId', stationId)
          ..add('metarType', metarType)
          ..add('tempC', tempC)
          ..add('dewpointC', dewpointC)
          ..add('windDirDeg', windDirDeg)
          ..add('windVariable', windVariable)
          ..add('windKt', windKt)
          ..add('gustKt', gustKt)
          ..add('visibilitySm', visibilitySm)
          ..add('visibilityPlus', visibilityPlus)
          ..add('altimInHg', altimInHg)
          ..add('slpMb', slpMb)
          ..add('wx', wx)
          ..add('sky', sky)
          ..add('flightCategory', flightCategory)
          ..add('elevationM', elevationM))
        .toString();
  }
}

class MetarPayloadBuilder
    implements Builder<MetarPayload, MetarPayloadBuilder> {
  _$MetarPayload? _$v;

  String? _raw;
  String? get raw => _$this._raw;
  set raw(String? raw) => _$this._raw = raw;

  String? _stationId;
  String? get stationId => _$this._stationId;
  set stationId(String? stationId) => _$this._stationId = stationId;

  MetarPayloadMetarTypeEnum? _metarType;
  MetarPayloadMetarTypeEnum? get metarType => _$this._metarType;
  set metarType(MetarPayloadMetarTypeEnum? metarType) =>
      _$this._metarType = metarType;

  num? _tempC;
  num? get tempC => _$this._tempC;
  set tempC(num? tempC) => _$this._tempC = tempC;

  num? _dewpointC;
  num? get dewpointC => _$this._dewpointC;
  set dewpointC(num? dewpointC) => _$this._dewpointC = dewpointC;

  int? _windDirDeg;
  int? get windDirDeg => _$this._windDirDeg;
  set windDirDeg(int? windDirDeg) => _$this._windDirDeg = windDirDeg;

  bool? _windVariable;
  bool? get windVariable => _$this._windVariable;
  set windVariable(bool? windVariable) => _$this._windVariable = windVariable;

  int? _windKt;
  int? get windKt => _$this._windKt;
  set windKt(int? windKt) => _$this._windKt = windKt;

  int? _gustKt;
  int? get gustKt => _$this._gustKt;
  set gustKt(int? gustKt) => _$this._gustKt = gustKt;

  num? _visibilitySm;
  num? get visibilitySm => _$this._visibilitySm;
  set visibilitySm(num? visibilitySm) => _$this._visibilitySm = visibilitySm;

  bool? _visibilityPlus;
  bool? get visibilityPlus => _$this._visibilityPlus;
  set visibilityPlus(bool? visibilityPlus) =>
      _$this._visibilityPlus = visibilityPlus;

  num? _altimInHg;
  num? get altimInHg => _$this._altimInHg;
  set altimInHg(num? altimInHg) => _$this._altimInHg = altimInHg;

  num? _slpMb;
  num? get slpMb => _$this._slpMb;
  set slpMb(num? slpMb) => _$this._slpMb = slpMb;

  String? _wx;
  String? get wx => _$this._wx;
  set wx(String? wx) => _$this._wx = wx;

  ListBuilder<MetarPayloadSkyInner>? _sky;
  ListBuilder<MetarPayloadSkyInner> get sky =>
      _$this._sky ??= ListBuilder<MetarPayloadSkyInner>();
  set sky(ListBuilder<MetarPayloadSkyInner>? sky) => _$this._sky = sky;

  MetarPayloadFlightCategoryEnum? _flightCategory;
  MetarPayloadFlightCategoryEnum? get flightCategory => _$this._flightCategory;
  set flightCategory(MetarPayloadFlightCategoryEnum? flightCategory) =>
      _$this._flightCategory = flightCategory;

  num? _elevationM;
  num? get elevationM => _$this._elevationM;
  set elevationM(num? elevationM) => _$this._elevationM = elevationM;

  MetarPayloadBuilder() {
    MetarPayload._defaults(this);
  }

  MetarPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _raw = $v.raw;
      _stationId = $v.stationId;
      _metarType = $v.metarType;
      _tempC = $v.tempC;
      _dewpointC = $v.dewpointC;
      _windDirDeg = $v.windDirDeg;
      _windVariable = $v.windVariable;
      _windKt = $v.windKt;
      _gustKt = $v.gustKt;
      _visibilitySm = $v.visibilitySm;
      _visibilityPlus = $v.visibilityPlus;
      _altimInHg = $v.altimInHg;
      _slpMb = $v.slpMb;
      _wx = $v.wx;
      _sky = $v.sky?.toBuilder();
      _flightCategory = $v.flightCategory;
      _elevationM = $v.elevationM;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetarPayload other) {
    _$v = other as _$MetarPayload;
  }

  @override
  void update(void Function(MetarPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetarPayload build() => _build();

  _$MetarPayload _build() {
    _$MetarPayload _$result;
    try {
      _$result =
          _$v ??
          _$MetarPayload._(
            raw: BuiltValueNullFieldError.checkNotNull(
              raw,
              r'MetarPayload',
              'raw',
            ),
            stationId: BuiltValueNullFieldError.checkNotNull(
              stationId,
              r'MetarPayload',
              'stationId',
            ),
            metarType: metarType,
            tempC: tempC,
            dewpointC: dewpointC,
            windDirDeg: windDirDeg,
            windVariable: windVariable,
            windKt: windKt,
            gustKt: gustKt,
            visibilitySm: visibilitySm,
            visibilityPlus: visibilityPlus,
            altimInHg: altimInHg,
            slpMb: slpMb,
            wx: wx,
            sky: _sky?.build(),
            flightCategory: flightCategory,
            elevationM: elevationM,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sky';
        _sky?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MetarPayload',
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
