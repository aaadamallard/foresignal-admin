// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wx_area_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WxAreaPayloadFieldEnum _$wxAreaPayloadFieldEnum_refl =
    const WxAreaPayloadFieldEnum._('refl');
const WxAreaPayloadFieldEnum _$wxAreaPayloadFieldEnum_mesh =
    const WxAreaPayloadFieldEnum._('mesh');
const WxAreaPayloadFieldEnum _$wxAreaPayloadFieldEnum_precip =
    const WxAreaPayloadFieldEnum._('precip');
const WxAreaPayloadFieldEnum _$wxAreaPayloadFieldEnum_rotation =
    const WxAreaPayloadFieldEnum._('rotation');
const WxAreaPayloadFieldEnum _$wxAreaPayloadFieldEnum_qpe1h =
    const WxAreaPayloadFieldEnum._('qpe1h');
const WxAreaPayloadFieldEnum _$wxAreaPayloadFieldEnum_ffg =
    const WxAreaPayloadFieldEnum._('ffg');

WxAreaPayloadFieldEnum _$wxAreaPayloadFieldEnumValueOf(String name) {
  switch (name) {
    case 'refl':
      return _$wxAreaPayloadFieldEnum_refl;
    case 'mesh':
      return _$wxAreaPayloadFieldEnum_mesh;
    case 'precip':
      return _$wxAreaPayloadFieldEnum_precip;
    case 'rotation':
      return _$wxAreaPayloadFieldEnum_rotation;
    case 'qpe1h':
      return _$wxAreaPayloadFieldEnum_qpe1h;
    case 'ffg':
      return _$wxAreaPayloadFieldEnum_ffg;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WxAreaPayloadFieldEnum> _$wxAreaPayloadFieldEnumValues =
    BuiltSet<WxAreaPayloadFieldEnum>(const <WxAreaPayloadFieldEnum>[
  _$wxAreaPayloadFieldEnum_refl,
  _$wxAreaPayloadFieldEnum_mesh,
  _$wxAreaPayloadFieldEnum_precip,
  _$wxAreaPayloadFieldEnum_rotation,
  _$wxAreaPayloadFieldEnum_qpe1h,
  _$wxAreaPayloadFieldEnum_ffg,
]);

Serializer<WxAreaPayloadFieldEnum> _$wxAreaPayloadFieldEnumSerializer =
    _$WxAreaPayloadFieldEnumSerializer();

class _$WxAreaPayloadFieldEnumSerializer
    implements PrimitiveSerializer<WxAreaPayloadFieldEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'refl': 'refl',
    'mesh': 'mesh',
    'precip': 'precip',
    'rotation': 'rotation',
    'qpe1h': 'qpe1h',
    'ffg': 'ffg',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'refl': 'refl',
    'mesh': 'mesh',
    'precip': 'precip',
    'rotation': 'rotation',
    'qpe1h': 'qpe1h',
    'ffg': 'ffg',
  };

  @override
  final Iterable<Type> types = const <Type>[WxAreaPayloadFieldEnum];
  @override
  final String wireName = 'WxAreaPayloadFieldEnum';

  @override
  Object serialize(Serializers serializers, WxAreaPayloadFieldEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WxAreaPayloadFieldEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WxAreaPayloadFieldEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$WxAreaPayload extends WxAreaPayload {
  @override
  final WxAreaPayloadFieldEnum field;
  @override
  final num threshold;
  @override
  final String aoi;
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final num? areaKm2;
  @override
  final num? maxValue;
  @override
  final int? coveragePct;
  @override
  final bool? automated;
  @override
  final bool? notAWarning;

  factory _$WxAreaPayload([void Function(WxAreaPayloadBuilder)? updates]) =>
      (WxAreaPayloadBuilder()..update(updates))._build();

  _$WxAreaPayload._(
      {required this.field,
      required this.threshold,
      required this.aoi,
      required this.status,
      this.asOf,
      this.areaKm2,
      this.maxValue,
      this.coveragePct,
      this.automated,
      this.notAWarning})
      : super._();
  @override
  WxAreaPayload rebuild(void Function(WxAreaPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WxAreaPayloadBuilder toBuilder() => WxAreaPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WxAreaPayload &&
        field == other.field &&
        threshold == other.threshold &&
        aoi == other.aoi &&
        status == other.status &&
        asOf == other.asOf &&
        areaKm2 == other.areaKm2 &&
        maxValue == other.maxValue &&
        coveragePct == other.coveragePct &&
        automated == other.automated &&
        notAWarning == other.notAWarning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, field.hashCode);
    _$hash = $jc(_$hash, threshold.hashCode);
    _$hash = $jc(_$hash, aoi.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, areaKm2.hashCode);
    _$hash = $jc(_$hash, maxValue.hashCode);
    _$hash = $jc(_$hash, coveragePct.hashCode);
    _$hash = $jc(_$hash, automated.hashCode);
    _$hash = $jc(_$hash, notAWarning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WxAreaPayload')
          ..add('field', field)
          ..add('threshold', threshold)
          ..add('aoi', aoi)
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('areaKm2', areaKm2)
          ..add('maxValue', maxValue)
          ..add('coveragePct', coveragePct)
          ..add('automated', automated)
          ..add('notAWarning', notAWarning))
        .toString();
  }
}

class WxAreaPayloadBuilder
    implements Builder<WxAreaPayload, WxAreaPayloadBuilder> {
  _$WxAreaPayload? _$v;

  WxAreaPayloadFieldEnum? _field;
  WxAreaPayloadFieldEnum? get field => _$this._field;
  set field(WxAreaPayloadFieldEnum? field) => _$this._field = field;

  num? _threshold;
  num? get threshold => _$this._threshold;
  set threshold(num? threshold) => _$this._threshold = threshold;

  String? _aoi;
  String? get aoi => _$this._aoi;
  set aoi(String? aoi) => _$this._aoi = aoi;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  num? _areaKm2;
  num? get areaKm2 => _$this._areaKm2;
  set areaKm2(num? areaKm2) => _$this._areaKm2 = areaKm2;

  num? _maxValue;
  num? get maxValue => _$this._maxValue;
  set maxValue(num? maxValue) => _$this._maxValue = maxValue;

  int? _coveragePct;
  int? get coveragePct => _$this._coveragePct;
  set coveragePct(int? coveragePct) => _$this._coveragePct = coveragePct;

  bool? _automated;
  bool? get automated => _$this._automated;
  set automated(bool? automated) => _$this._automated = automated;

  bool? _notAWarning;
  bool? get notAWarning => _$this._notAWarning;
  set notAWarning(bool? notAWarning) => _$this._notAWarning = notAWarning;

  WxAreaPayloadBuilder() {
    WxAreaPayload._defaults(this);
  }

  WxAreaPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _field = $v.field;
      _threshold = $v.threshold;
      _aoi = $v.aoi;
      _status = $v.status;
      _asOf = $v.asOf;
      _areaKm2 = $v.areaKm2;
      _maxValue = $v.maxValue;
      _coveragePct = $v.coveragePct;
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WxAreaPayload other) {
    _$v = other as _$WxAreaPayload;
  }

  @override
  void update(void Function(WxAreaPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WxAreaPayload build() => _build();

  _$WxAreaPayload _build() {
    final _$result = _$v ??
        _$WxAreaPayload._(
          field: BuiltValueNullFieldError.checkNotNull(
              field, r'WxAreaPayload', 'field'),
          threshold: BuiltValueNullFieldError.checkNotNull(
              threshold, r'WxAreaPayload', 'threshold'),
          aoi: BuiltValueNullFieldError.checkNotNull(
              aoi, r'WxAreaPayload', 'aoi'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'WxAreaPayload', 'status'),
          asOf: asOf,
          areaKm2: areaKm2,
          maxValue: maxValue,
          coveragePct: coveragePct,
          automated: automated,
          notAWarning: notAWarning,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
