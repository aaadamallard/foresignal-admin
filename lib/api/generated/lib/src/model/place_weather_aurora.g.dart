// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_aurora.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherAurora extends PlaceWeatherAurora {
  @override
  final SampleStatus? status;
  @override
  final num? probMaxNearby;

  factory _$PlaceWeatherAurora([
    void Function(PlaceWeatherAuroraBuilder)? updates,
  ]) => (PlaceWeatherAuroraBuilder()..update(updates))._build();

  _$PlaceWeatherAurora._({this.status, this.probMaxNearby}) : super._();
  @override
  PlaceWeatherAurora rebuild(
    void Function(PlaceWeatherAuroraBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherAuroraBuilder toBuilder() =>
      PlaceWeatherAuroraBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherAurora &&
        status == other.status &&
        probMaxNearby == other.probMaxNearby;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, probMaxNearby.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherAurora')
          ..add('status', status)
          ..add('probMaxNearby', probMaxNearby))
        .toString();
  }
}

class PlaceWeatherAuroraBuilder
    implements Builder<PlaceWeatherAurora, PlaceWeatherAuroraBuilder> {
  _$PlaceWeatherAurora? _$v;

  SampleStatus? _status;
  SampleStatus? get status => _$this._status;
  set status(SampleStatus? status) => _$this._status = status;

  num? _probMaxNearby;
  num? get probMaxNearby => _$this._probMaxNearby;
  set probMaxNearby(num? probMaxNearby) =>
      _$this._probMaxNearby = probMaxNearby;

  PlaceWeatherAuroraBuilder() {
    PlaceWeatherAurora._defaults(this);
  }

  PlaceWeatherAuroraBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _probMaxNearby = $v.probMaxNearby;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherAurora other) {
    _$v = other as _$PlaceWeatherAurora;
  }

  @override
  void update(void Function(PlaceWeatherAuroraBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherAurora build() => _build();

  _$PlaceWeatherAurora _build() {
    final _$result =
        _$v ??
        _$PlaceWeatherAurora._(status: status, probMaxNearby: probMaxNearby);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
