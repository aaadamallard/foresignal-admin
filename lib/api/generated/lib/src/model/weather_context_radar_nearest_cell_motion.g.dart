// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_context_radar_nearest_cell_motion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherContextRadarNearestCellMotion
    extends WeatherContextRadarNearestCellMotion {
  @override
  final num? speedKmh;
  @override
  final int? bearingDeg;
  @override
  final String? method;

  factory _$WeatherContextRadarNearestCellMotion([
    void Function(WeatherContextRadarNearestCellMotionBuilder)? updates,
  ]) =>
      (WeatherContextRadarNearestCellMotionBuilder()..update(updates))._build();

  _$WeatherContextRadarNearestCellMotion._({
    this.speedKmh,
    this.bearingDeg,
    this.method,
  }) : super._();
  @override
  WeatherContextRadarNearestCellMotion rebuild(
    void Function(WeatherContextRadarNearestCellMotionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WeatherContextRadarNearestCellMotionBuilder toBuilder() =>
      WeatherContextRadarNearestCellMotionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherContextRadarNearestCellMotion &&
        speedKmh == other.speedKmh &&
        bearingDeg == other.bearingDeg &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, speedKmh.hashCode);
    _$hash = $jc(_$hash, bearingDeg.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherContextRadarNearestCellMotion')
          ..add('speedKmh', speedKmh)
          ..add('bearingDeg', bearingDeg)
          ..add('method', method))
        .toString();
  }
}

class WeatherContextRadarNearestCellMotionBuilder
    implements
        Builder<
          WeatherContextRadarNearestCellMotion,
          WeatherContextRadarNearestCellMotionBuilder
        > {
  _$WeatherContextRadarNearestCellMotion? _$v;

  num? _speedKmh;
  num? get speedKmh => _$this._speedKmh;
  set speedKmh(num? speedKmh) => _$this._speedKmh = speedKmh;

  int? _bearingDeg;
  int? get bearingDeg => _$this._bearingDeg;
  set bearingDeg(int? bearingDeg) => _$this._bearingDeg = bearingDeg;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  WeatherContextRadarNearestCellMotionBuilder() {
    WeatherContextRadarNearestCellMotion._defaults(this);
  }

  WeatherContextRadarNearestCellMotionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speedKmh = $v.speedKmh;
      _bearingDeg = $v.bearingDeg;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherContextRadarNearestCellMotion other) {
    _$v = other as _$WeatherContextRadarNearestCellMotion;
  }

  @override
  void update(
    void Function(WeatherContextRadarNearestCellMotionBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  WeatherContextRadarNearestCellMotion build() => _build();

  _$WeatherContextRadarNearestCellMotion _build() {
    final _$result =
        _$v ??
        _$WeatherContextRadarNearestCellMotion._(
          speedKmh: speedKmh,
          bearingDeg: bearingDeg,
          method: method,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
