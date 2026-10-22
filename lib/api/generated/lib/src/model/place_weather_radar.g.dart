// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_radar.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherRadar extends PlaceWeatherRadar {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final num? maxDbzInRadius;
  @override
  final num? nearest40Km;
  @override
  final num? nearest50Km;
  @override
  final num? nearest50Km10m;
  @override
  final num? nearest60Km;
  @override
  final num? verifiedNearest50Km10m;

  factory _$PlaceWeatherRadar(
          [void Function(PlaceWeatherRadarBuilder)? updates]) =>
      (PlaceWeatherRadarBuilder()..update(updates))._build();

  _$PlaceWeatherRadar._(
      {required this.status,
      this.asOf,
      this.statusText,
      this.maxDbzInRadius,
      this.nearest40Km,
      this.nearest50Km,
      this.nearest50Km10m,
      this.nearest60Km,
      this.verifiedNearest50Km10m})
      : super._();
  @override
  PlaceWeatherRadar rebuild(void Function(PlaceWeatherRadarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherRadarBuilder toBuilder() =>
      PlaceWeatherRadarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherRadar &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        maxDbzInRadius == other.maxDbzInRadius &&
        nearest40Km == other.nearest40Km &&
        nearest50Km == other.nearest50Km &&
        nearest50Km10m == other.nearest50Km10m &&
        nearest60Km == other.nearest60Km &&
        verifiedNearest50Km10m == other.verifiedNearest50Km10m;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, maxDbzInRadius.hashCode);
    _$hash = $jc(_$hash, nearest40Km.hashCode);
    _$hash = $jc(_$hash, nearest50Km.hashCode);
    _$hash = $jc(_$hash, nearest50Km10m.hashCode);
    _$hash = $jc(_$hash, nearest60Km.hashCode);
    _$hash = $jc(_$hash, verifiedNearest50Km10m.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherRadar')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('maxDbzInRadius', maxDbzInRadius)
          ..add('nearest40Km', nearest40Km)
          ..add('nearest50Km', nearest50Km)
          ..add('nearest50Km10m', nearest50Km10m)
          ..add('nearest60Km', nearest60Km)
          ..add('verifiedNearest50Km10m', verifiedNearest50Km10m))
        .toString();
  }
}

class PlaceWeatherRadarBuilder
    implements Builder<PlaceWeatherRadar, PlaceWeatherRadarBuilder> {
  _$PlaceWeatherRadar? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  num? _maxDbzInRadius;
  num? get maxDbzInRadius => _$this._maxDbzInRadius;
  set maxDbzInRadius(num? maxDbzInRadius) =>
      _$this._maxDbzInRadius = maxDbzInRadius;

  num? _nearest40Km;
  num? get nearest40Km => _$this._nearest40Km;
  set nearest40Km(num? nearest40Km) => _$this._nearest40Km = nearest40Km;

  num? _nearest50Km;
  num? get nearest50Km => _$this._nearest50Km;
  set nearest50Km(num? nearest50Km) => _$this._nearest50Km = nearest50Km;

  num? _nearest50Km10m;
  num? get nearest50Km10m => _$this._nearest50Km10m;
  set nearest50Km10m(num? nearest50Km10m) =>
      _$this._nearest50Km10m = nearest50Km10m;

  num? _nearest60Km;
  num? get nearest60Km => _$this._nearest60Km;
  set nearest60Km(num? nearest60Km) => _$this._nearest60Km = nearest60Km;

  num? _verifiedNearest50Km10m;
  num? get verifiedNearest50Km10m => _$this._verifiedNearest50Km10m;
  set verifiedNearest50Km10m(num? verifiedNearest50Km10m) =>
      _$this._verifiedNearest50Km10m = verifiedNearest50Km10m;

  PlaceWeatherRadarBuilder() {
    PlaceWeatherRadar._defaults(this);
  }

  PlaceWeatherRadarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _maxDbzInRadius = $v.maxDbzInRadius;
      _nearest40Km = $v.nearest40Km;
      _nearest50Km = $v.nearest50Km;
      _nearest50Km10m = $v.nearest50Km10m;
      _nearest60Km = $v.nearest60Km;
      _verifiedNearest50Km10m = $v.verifiedNearest50Km10m;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherRadar other) {
    _$v = other as _$PlaceWeatherRadar;
  }

  @override
  void update(void Function(PlaceWeatherRadarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherRadar build() => _build();

  _$PlaceWeatherRadar _build() {
    final _$result = _$v ??
        _$PlaceWeatherRadar._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'PlaceWeatherRadar', 'status'),
          asOf: asOf,
          statusText: statusText,
          maxDbzInRadius: maxDbzInRadius,
          nearest40Km: nearest40Km,
          nearest50Km: nearest50Km,
          nearest50Km10m: nearest50Km10m,
          nearest60Km: nearest60Km,
          verifiedNearest50Km10m: verifiedNearest50Km10m,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
