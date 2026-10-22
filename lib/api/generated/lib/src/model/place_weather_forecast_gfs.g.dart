// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_forecast_gfs.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherForecastGfs extends PlaceWeatherForecastGfs {
  @override
  final WeatherSectionStatus? status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final num? gustMax24h;
  @override
  final num? precip24hMm;

  factory _$PlaceWeatherForecastGfs(
          [void Function(PlaceWeatherForecastGfsBuilder)? updates]) =>
      (PlaceWeatherForecastGfsBuilder()..update(updates))._build();

  _$PlaceWeatherForecastGfs._(
      {this.status,
      this.asOf,
      this.statusText,
      this.gustMax24h,
      this.precip24hMm})
      : super._();
  @override
  PlaceWeatherForecastGfs rebuild(
          void Function(PlaceWeatherForecastGfsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherForecastGfsBuilder toBuilder() =>
      PlaceWeatherForecastGfsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherForecastGfs &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        gustMax24h == other.gustMax24h &&
        precip24hMm == other.precip24hMm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, gustMax24h.hashCode);
    _$hash = $jc(_$hash, precip24hMm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherForecastGfs')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('gustMax24h', gustMax24h)
          ..add('precip24hMm', precip24hMm))
        .toString();
  }
}

class PlaceWeatherForecastGfsBuilder
    implements
        Builder<PlaceWeatherForecastGfs, PlaceWeatherForecastGfsBuilder> {
  _$PlaceWeatherForecastGfs? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  num? _gustMax24h;
  num? get gustMax24h => _$this._gustMax24h;
  set gustMax24h(num? gustMax24h) => _$this._gustMax24h = gustMax24h;

  num? _precip24hMm;
  num? get precip24hMm => _$this._precip24hMm;
  set precip24hMm(num? precip24hMm) => _$this._precip24hMm = precip24hMm;

  PlaceWeatherForecastGfsBuilder() {
    PlaceWeatherForecastGfs._defaults(this);
  }

  PlaceWeatherForecastGfsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _gustMax24h = $v.gustMax24h;
      _precip24hMm = $v.precip24hMm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherForecastGfs other) {
    _$v = other as _$PlaceWeatherForecastGfs;
  }

  @override
  void update(void Function(PlaceWeatherForecastGfsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherForecastGfs build() => _build();

  _$PlaceWeatherForecastGfs _build() {
    final _$result = _$v ??
        _$PlaceWeatherForecastGfs._(
          status: status,
          asOf: asOf,
          statusText: statusText,
          gustMax24h: gustMax24h,
          precip24hMm: precip24hMm,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
