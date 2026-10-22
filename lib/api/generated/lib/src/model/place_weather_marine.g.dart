// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_marine.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherMarine extends PlaceWeatherMarine {
  @override
  final SampleStatus? status;
  @override
  final num? waveHeightMaxM24h;

  factory _$PlaceWeatherMarine([
    void Function(PlaceWeatherMarineBuilder)? updates,
  ]) => (PlaceWeatherMarineBuilder()..update(updates))._build();

  _$PlaceWeatherMarine._({this.status, this.waveHeightMaxM24h}) : super._();
  @override
  PlaceWeatherMarine rebuild(
    void Function(PlaceWeatherMarineBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherMarineBuilder toBuilder() =>
      PlaceWeatherMarineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherMarine &&
        status == other.status &&
        waveHeightMaxM24h == other.waveHeightMaxM24h;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, waveHeightMaxM24h.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherMarine')
          ..add('status', status)
          ..add('waveHeightMaxM24h', waveHeightMaxM24h))
        .toString();
  }
}

class PlaceWeatherMarineBuilder
    implements Builder<PlaceWeatherMarine, PlaceWeatherMarineBuilder> {
  _$PlaceWeatherMarine? _$v;

  SampleStatus? _status;
  SampleStatus? get status => _$this._status;
  set status(SampleStatus? status) => _$this._status = status;

  num? _waveHeightMaxM24h;
  num? get waveHeightMaxM24h => _$this._waveHeightMaxM24h;
  set waveHeightMaxM24h(num? waveHeightMaxM24h) =>
      _$this._waveHeightMaxM24h = waveHeightMaxM24h;

  PlaceWeatherMarineBuilder() {
    PlaceWeatherMarine._defaults(this);
  }

  PlaceWeatherMarineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _waveHeightMaxM24h = $v.waveHeightMaxM24h;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherMarine other) {
    _$v = other as _$PlaceWeatherMarine;
  }

  @override
  void update(void Function(PlaceWeatherMarineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherMarine build() => _build();

  _$PlaceWeatherMarine _build() {
    final _$result =
        _$v ??
        _$PlaceWeatherMarine._(
          status: status,
          waveHeightMaxM24h: waveHeightMaxM24h,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
