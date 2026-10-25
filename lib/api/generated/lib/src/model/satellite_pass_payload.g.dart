// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'satellite_pass_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SatellitePassPayloadStatusEnum
_$satellitePassPayloadStatusEnum_predicted =
    const SatellitePassPayloadStatusEnum._('predicted');
const SatellitePassPayloadStatusEnum
_$satellitePassPayloadStatusEnum_receiving =
    const SatellitePassPayloadStatusEnum._('receiving');
const SatellitePassPayloadStatusEnum _$satellitePassPayloadStatusEnum_recorded =
    const SatellitePassPayloadStatusEnum._('recorded');
const SatellitePassPayloadStatusEnum _$satellitePassPayloadStatusEnum_decoded =
    const SatellitePassPayloadStatusEnum._('decoded');
const SatellitePassPayloadStatusEnum _$satellitePassPayloadStatusEnum_failed =
    const SatellitePassPayloadStatusEnum._('failed');
const SatellitePassPayloadStatusEnum _$satellitePassPayloadStatusEnum_missed =
    const SatellitePassPayloadStatusEnum._('missed');
const SatellitePassPayloadStatusEnum
_$satellitePassPayloadStatusEnum_unknownDefaultOpenApi =
    const SatellitePassPayloadStatusEnum._('unknownDefaultOpenApi');

SatellitePassPayloadStatusEnum _$satellitePassPayloadStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'predicted':
      return _$satellitePassPayloadStatusEnum_predicted;
    case 'receiving':
      return _$satellitePassPayloadStatusEnum_receiving;
    case 'recorded':
      return _$satellitePassPayloadStatusEnum_recorded;
    case 'decoded':
      return _$satellitePassPayloadStatusEnum_decoded;
    case 'failed':
      return _$satellitePassPayloadStatusEnum_failed;
    case 'missed':
      return _$satellitePassPayloadStatusEnum_missed;
    case 'unknownDefaultOpenApi':
      return _$satellitePassPayloadStatusEnum_unknownDefaultOpenApi;
    default:
      return _$satellitePassPayloadStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SatellitePassPayloadStatusEnum>
_$satellitePassPayloadStatusEnumValues =
    BuiltSet<SatellitePassPayloadStatusEnum>(
      const <SatellitePassPayloadStatusEnum>[
        _$satellitePassPayloadStatusEnum_predicted,
        _$satellitePassPayloadStatusEnum_receiving,
        _$satellitePassPayloadStatusEnum_recorded,
        _$satellitePassPayloadStatusEnum_decoded,
        _$satellitePassPayloadStatusEnum_failed,
        _$satellitePassPayloadStatusEnum_missed,
        _$satellitePassPayloadStatusEnum_unknownDefaultOpenApi,
      ],
    );

const SatellitePassPayloadGeometrySourceEnum
_$satellitePassPayloadGeometrySourceEnum_footprint =
    const SatellitePassPayloadGeometrySourceEnum._('footprint');
const SatellitePassPayloadGeometrySourceEnum
_$satellitePassPayloadGeometrySourceEnum_swath =
    const SatellitePassPayloadGeometrySourceEnum._('swath');
const SatellitePassPayloadGeometrySourceEnum
_$satellitePassPayloadGeometrySourceEnum_unknownDefaultOpenApi =
    const SatellitePassPayloadGeometrySourceEnum._('unknownDefaultOpenApi');

SatellitePassPayloadGeometrySourceEnum
_$satellitePassPayloadGeometrySourceEnumValueOf(String name) {
  switch (name) {
    case 'footprint':
      return _$satellitePassPayloadGeometrySourceEnum_footprint;
    case 'swath':
      return _$satellitePassPayloadGeometrySourceEnum_swath;
    case 'unknownDefaultOpenApi':
      return _$satellitePassPayloadGeometrySourceEnum_unknownDefaultOpenApi;
    default:
      return _$satellitePassPayloadGeometrySourceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SatellitePassPayloadGeometrySourceEnum>
_$satellitePassPayloadGeometrySourceEnumValues =
    BuiltSet<SatellitePassPayloadGeometrySourceEnum>(
      const <SatellitePassPayloadGeometrySourceEnum>[
        _$satellitePassPayloadGeometrySourceEnum_footprint,
        _$satellitePassPayloadGeometrySourceEnum_swath,
        _$satellitePassPayloadGeometrySourceEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<SatellitePassPayloadStatusEnum>
_$satellitePassPayloadStatusEnumSerializer =
    _$SatellitePassPayloadStatusEnumSerializer();
Serializer<SatellitePassPayloadGeometrySourceEnum>
_$satellitePassPayloadGeometrySourceEnumSerializer =
    _$SatellitePassPayloadGeometrySourceEnumSerializer();

class _$SatellitePassPayloadStatusEnumSerializer
    implements PrimitiveSerializer<SatellitePassPayloadStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'predicted': 'predicted',
    'receiving': 'receiving',
    'recorded': 'recorded',
    'decoded': 'decoded',
    'failed': 'failed',
    'missed': 'missed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'predicted': 'predicted',
    'receiving': 'receiving',
    'recorded': 'recorded',
    'decoded': 'decoded',
    'failed': 'failed',
    'missed': 'missed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SatellitePassPayloadStatusEnum];
  @override
  final String wireName = 'SatellitePassPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SatellitePassPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SatellitePassPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SatellitePassPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SatellitePassPayloadGeometrySourceEnumSerializer
    implements PrimitiveSerializer<SatellitePassPayloadGeometrySourceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'footprint': 'footprint',
    'swath': 'swath',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'footprint': 'footprint',
    'swath': 'swath',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SatellitePassPayloadGeometrySourceEnum,
  ];
  @override
  final String wireName = 'SatellitePassPayloadGeometrySourceEnum';

  @override
  Object serialize(
    Serializers serializers,
    SatellitePassPayloadGeometrySourceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SatellitePassPayloadGeometrySourceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SatellitePassPayloadGeometrySourceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SatellitePassPayload extends SatellitePassPayload {
  @override
  final SatellitePassPayloadStatusEnum status;
  @override
  final String satellite;
  @override
  final String satKey;
  @override
  final int? norad;
  @override
  final String? pipelineId;
  @override
  final int? frequencyHz;
  @override
  final DateTime aos;
  @override
  final DateTime? los;
  @override
  final num? maxElevationDeg;
  @override
  final SatellitePassPayloadRf? rf;
  @override
  final BuiltList<String>? instruments;
  @override
  final BuiltList<SatellitePassPayloadProductsInner>? products;
  @override
  final String? tle;
  @override
  final String? satdumpVersion;
  @override
  final String title;
  @override
  final Attribution? attribution;
  @override
  final SatellitePassPayloadGeometrySourceEnum? geometrySource;
  @override
  final DateTime? tca;
  @override
  final num? aosAzimuthDeg;
  @override
  final num? losAzimuthDeg;
  @override
  final String? place;
  @override
  final bool? imminent;

  factory _$SatellitePassPayload([
    void Function(SatellitePassPayloadBuilder)? updates,
  ]) => (SatellitePassPayloadBuilder()..update(updates))._build();

  _$SatellitePassPayload._({
    required this.status,
    required this.satellite,
    required this.satKey,
    this.norad,
    this.pipelineId,
    this.frequencyHz,
    required this.aos,
    this.los,
    this.maxElevationDeg,
    this.rf,
    this.instruments,
    this.products,
    this.tle,
    this.satdumpVersion,
    required this.title,
    this.attribution,
    this.geometrySource,
    this.tca,
    this.aosAzimuthDeg,
    this.losAzimuthDeg,
    this.place,
    this.imminent,
  }) : super._();
  @override
  SatellitePassPayload rebuild(
    void Function(SatellitePassPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SatellitePassPayloadBuilder toBuilder() =>
      SatellitePassPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SatellitePassPayload &&
        status == other.status &&
        satellite == other.satellite &&
        satKey == other.satKey &&
        norad == other.norad &&
        pipelineId == other.pipelineId &&
        frequencyHz == other.frequencyHz &&
        aos == other.aos &&
        los == other.los &&
        maxElevationDeg == other.maxElevationDeg &&
        rf == other.rf &&
        instruments == other.instruments &&
        products == other.products &&
        tle == other.tle &&
        satdumpVersion == other.satdumpVersion &&
        title == other.title &&
        attribution == other.attribution &&
        geometrySource == other.geometrySource &&
        tca == other.tca &&
        aosAzimuthDeg == other.aosAzimuthDeg &&
        losAzimuthDeg == other.losAzimuthDeg &&
        place == other.place &&
        imminent == other.imminent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, satellite.hashCode);
    _$hash = $jc(_$hash, satKey.hashCode);
    _$hash = $jc(_$hash, norad.hashCode);
    _$hash = $jc(_$hash, pipelineId.hashCode);
    _$hash = $jc(_$hash, frequencyHz.hashCode);
    _$hash = $jc(_$hash, aos.hashCode);
    _$hash = $jc(_$hash, los.hashCode);
    _$hash = $jc(_$hash, maxElevationDeg.hashCode);
    _$hash = $jc(_$hash, rf.hashCode);
    _$hash = $jc(_$hash, instruments.hashCode);
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jc(_$hash, tle.hashCode);
    _$hash = $jc(_$hash, satdumpVersion.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, geometrySource.hashCode);
    _$hash = $jc(_$hash, tca.hashCode);
    _$hash = $jc(_$hash, aosAzimuthDeg.hashCode);
    _$hash = $jc(_$hash, losAzimuthDeg.hashCode);
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jc(_$hash, imminent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SatellitePassPayload')
          ..add('status', status)
          ..add('satellite', satellite)
          ..add('satKey', satKey)
          ..add('norad', norad)
          ..add('pipelineId', pipelineId)
          ..add('frequencyHz', frequencyHz)
          ..add('aos', aos)
          ..add('los', los)
          ..add('maxElevationDeg', maxElevationDeg)
          ..add('rf', rf)
          ..add('instruments', instruments)
          ..add('products', products)
          ..add('tle', tle)
          ..add('satdumpVersion', satdumpVersion)
          ..add('title', title)
          ..add('attribution', attribution)
          ..add('geometrySource', geometrySource)
          ..add('tca', tca)
          ..add('aosAzimuthDeg', aosAzimuthDeg)
          ..add('losAzimuthDeg', losAzimuthDeg)
          ..add('place', place)
          ..add('imminent', imminent))
        .toString();
  }
}

class SatellitePassPayloadBuilder
    implements Builder<SatellitePassPayload, SatellitePassPayloadBuilder> {
  _$SatellitePassPayload? _$v;

  SatellitePassPayloadStatusEnum? _status;
  SatellitePassPayloadStatusEnum? get status => _$this._status;
  set status(SatellitePassPayloadStatusEnum? status) => _$this._status = status;

  String? _satellite;
  String? get satellite => _$this._satellite;
  set satellite(String? satellite) => _$this._satellite = satellite;

  String? _satKey;
  String? get satKey => _$this._satKey;
  set satKey(String? satKey) => _$this._satKey = satKey;

  int? _norad;
  int? get norad => _$this._norad;
  set norad(int? norad) => _$this._norad = norad;

  String? _pipelineId;
  String? get pipelineId => _$this._pipelineId;
  set pipelineId(String? pipelineId) => _$this._pipelineId = pipelineId;

  int? _frequencyHz;
  int? get frequencyHz => _$this._frequencyHz;
  set frequencyHz(int? frequencyHz) => _$this._frequencyHz = frequencyHz;

  DateTime? _aos;
  DateTime? get aos => _$this._aos;
  set aos(DateTime? aos) => _$this._aos = aos;

  DateTime? _los;
  DateTime? get los => _$this._los;
  set los(DateTime? los) => _$this._los = los;

  num? _maxElevationDeg;
  num? get maxElevationDeg => _$this._maxElevationDeg;
  set maxElevationDeg(num? maxElevationDeg) =>
      _$this._maxElevationDeg = maxElevationDeg;

  SatellitePassPayloadRfBuilder? _rf;
  SatellitePassPayloadRfBuilder get rf =>
      _$this._rf ??= SatellitePassPayloadRfBuilder();
  set rf(SatellitePassPayloadRfBuilder? rf) => _$this._rf = rf;

  ListBuilder<String>? _instruments;
  ListBuilder<String> get instruments =>
      _$this._instruments ??= ListBuilder<String>();
  set instruments(ListBuilder<String>? instruments) =>
      _$this._instruments = instruments;

  ListBuilder<SatellitePassPayloadProductsInner>? _products;
  ListBuilder<SatellitePassPayloadProductsInner> get products =>
      _$this._products ??= ListBuilder<SatellitePassPayloadProductsInner>();
  set products(ListBuilder<SatellitePassPayloadProductsInner>? products) =>
      _$this._products = products;

  String? _tle;
  String? get tle => _$this._tle;
  set tle(String? tle) => _$this._tle = tle;

  String? _satdumpVersion;
  String? get satdumpVersion => _$this._satdumpVersion;
  set satdumpVersion(String? satdumpVersion) =>
      _$this._satdumpVersion = satdumpVersion;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  AttributionBuilder? _attribution;
  AttributionBuilder get attribution =>
      _$this._attribution ??= AttributionBuilder();
  set attribution(AttributionBuilder? attribution) =>
      _$this._attribution = attribution;

  SatellitePassPayloadGeometrySourceEnum? _geometrySource;
  SatellitePassPayloadGeometrySourceEnum? get geometrySource =>
      _$this._geometrySource;
  set geometrySource(SatellitePassPayloadGeometrySourceEnum? geometrySource) =>
      _$this._geometrySource = geometrySource;

  DateTime? _tca;
  DateTime? get tca => _$this._tca;
  set tca(DateTime? tca) => _$this._tca = tca;

  num? _aosAzimuthDeg;
  num? get aosAzimuthDeg => _$this._aosAzimuthDeg;
  set aosAzimuthDeg(num? aosAzimuthDeg) =>
      _$this._aosAzimuthDeg = aosAzimuthDeg;

  num? _losAzimuthDeg;
  num? get losAzimuthDeg => _$this._losAzimuthDeg;
  set losAzimuthDeg(num? losAzimuthDeg) =>
      _$this._losAzimuthDeg = losAzimuthDeg;

  String? _place;
  String? get place => _$this._place;
  set place(String? place) => _$this._place = place;

  bool? _imminent;
  bool? get imminent => _$this._imminent;
  set imminent(bool? imminent) => _$this._imminent = imminent;

  SatellitePassPayloadBuilder() {
    SatellitePassPayload._defaults(this);
  }

  SatellitePassPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _satellite = $v.satellite;
      _satKey = $v.satKey;
      _norad = $v.norad;
      _pipelineId = $v.pipelineId;
      _frequencyHz = $v.frequencyHz;
      _aos = $v.aos;
      _los = $v.los;
      _maxElevationDeg = $v.maxElevationDeg;
      _rf = $v.rf?.toBuilder();
      _instruments = $v.instruments?.toBuilder();
      _products = $v.products?.toBuilder();
      _tle = $v.tle;
      _satdumpVersion = $v.satdumpVersion;
      _title = $v.title;
      _attribution = $v.attribution?.toBuilder();
      _geometrySource = $v.geometrySource;
      _tca = $v.tca;
      _aosAzimuthDeg = $v.aosAzimuthDeg;
      _losAzimuthDeg = $v.losAzimuthDeg;
      _place = $v.place;
      _imminent = $v.imminent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SatellitePassPayload other) {
    _$v = other as _$SatellitePassPayload;
  }

  @override
  void update(void Function(SatellitePassPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SatellitePassPayload build() => _build();

  _$SatellitePassPayload _build() {
    _$SatellitePassPayload _$result;
    try {
      _$result =
          _$v ??
          _$SatellitePassPayload._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'SatellitePassPayload',
              'status',
            ),
            satellite: BuiltValueNullFieldError.checkNotNull(
              satellite,
              r'SatellitePassPayload',
              'satellite',
            ),
            satKey: BuiltValueNullFieldError.checkNotNull(
              satKey,
              r'SatellitePassPayload',
              'satKey',
            ),
            norad: norad,
            pipelineId: pipelineId,
            frequencyHz: frequencyHz,
            aos: BuiltValueNullFieldError.checkNotNull(
              aos,
              r'SatellitePassPayload',
              'aos',
            ),
            los: los,
            maxElevationDeg: maxElevationDeg,
            rf: _rf?.build(),
            instruments: _instruments?.build(),
            products: _products?.build(),
            tle: tle,
            satdumpVersion: satdumpVersion,
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'SatellitePassPayload',
              'title',
            ),
            attribution: _attribution?.build(),
            geometrySource: geometrySource,
            tca: tca,
            aosAzimuthDeg: aosAzimuthDeg,
            losAzimuthDeg: losAzimuthDeg,
            place: place,
            imminent: imminent,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rf';
        _rf?.build();
        _$failedField = 'instruments';
        _instruments?.build();
        _$failedField = 'products';
        _products?.build();

        _$failedField = 'attribution';
        _attribution?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SatellitePassPayload',
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
