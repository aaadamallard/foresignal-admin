// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_forecast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherForecast extends PlaceWeatherForecast {
  @override
  final PlaceWeatherForecastGfs? gfs;
  @override
  final PlaceWeatherForecastNws? nws;

  factory _$PlaceWeatherForecast(
          [void Function(PlaceWeatherForecastBuilder)? updates]) =>
      (PlaceWeatherForecastBuilder()..update(updates))._build();

  _$PlaceWeatherForecast._({this.gfs, this.nws}) : super._();
  @override
  PlaceWeatherForecast rebuild(
          void Function(PlaceWeatherForecastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherForecastBuilder toBuilder() =>
      PlaceWeatherForecastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherForecast &&
        gfs == other.gfs &&
        nws == other.nws;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, gfs.hashCode);
    _$hash = $jc(_$hash, nws.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherForecast')
          ..add('gfs', gfs)
          ..add('nws', nws))
        .toString();
  }
}

class PlaceWeatherForecastBuilder
    implements Builder<PlaceWeatherForecast, PlaceWeatherForecastBuilder> {
  _$PlaceWeatherForecast? _$v;

  PlaceWeatherForecastGfsBuilder? _gfs;
  PlaceWeatherForecastGfsBuilder get gfs =>
      _$this._gfs ??= PlaceWeatherForecastGfsBuilder();
  set gfs(PlaceWeatherForecastGfsBuilder? gfs) => _$this._gfs = gfs;

  PlaceWeatherForecastNwsBuilder? _nws;
  PlaceWeatherForecastNwsBuilder get nws =>
      _$this._nws ??= PlaceWeatherForecastNwsBuilder();
  set nws(PlaceWeatherForecastNwsBuilder? nws) => _$this._nws = nws;

  PlaceWeatherForecastBuilder() {
    PlaceWeatherForecast._defaults(this);
  }

  PlaceWeatherForecastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gfs = $v.gfs?.toBuilder();
      _nws = $v.nws?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherForecast other) {
    _$v = other as _$PlaceWeatherForecast;
  }

  @override
  void update(void Function(PlaceWeatherForecastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherForecast build() => _build();

  _$PlaceWeatherForecast _build() {
    _$PlaceWeatherForecast _$result;
    try {
      _$result = _$v ??
          _$PlaceWeatherForecast._(
            gfs: _gfs?.build(),
            nws: _nws?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'gfs';
        _gfs?.build();
        _$failedField = 'nws';
        _nws?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PlaceWeatherForecast', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
