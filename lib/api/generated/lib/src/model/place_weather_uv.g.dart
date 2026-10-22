// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_uv.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherUv extends PlaceWeatherUv {
  @override
  final SampleStatus? status;
  @override
  final num? maxToday;

  factory _$PlaceWeatherUv([void Function(PlaceWeatherUvBuilder)? updates]) =>
      (PlaceWeatherUvBuilder()..update(updates))._build();

  _$PlaceWeatherUv._({this.status, this.maxToday}) : super._();
  @override
  PlaceWeatherUv rebuild(void Function(PlaceWeatherUvBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherUvBuilder toBuilder() => PlaceWeatherUvBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherUv &&
        status == other.status &&
        maxToday == other.maxToday;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, maxToday.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherUv')
          ..add('status', status)
          ..add('maxToday', maxToday))
        .toString();
  }
}

class PlaceWeatherUvBuilder
    implements Builder<PlaceWeatherUv, PlaceWeatherUvBuilder> {
  _$PlaceWeatherUv? _$v;

  SampleStatus? _status;
  SampleStatus? get status => _$this._status;
  set status(SampleStatus? status) => _$this._status = status;

  num? _maxToday;
  num? get maxToday => _$this._maxToday;
  set maxToday(num? maxToday) => _$this._maxToday = maxToday;

  PlaceWeatherUvBuilder() {
    PlaceWeatherUv._defaults(this);
  }

  PlaceWeatherUvBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _maxToday = $v.maxToday;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherUv other) {
    _$v = other as _$PlaceWeatherUv;
  }

  @override
  void update(void Function(PlaceWeatherUvBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherUv build() => _build();

  _$PlaceWeatherUv _build() {
    final _$result = _$v ??
        _$PlaceWeatherUv._(
          status: status,
          maxToday: maxToday,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
