// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gps_logger_fix.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GpsLoggerFix extends GpsLoggerFix {
  @override
  final num lat;
  @override
  final num lon;
  @override
  final String? time;
  @override
  final num? acc;
  @override
  final num? alt;
  @override
  final num? spd;
  @override
  final num? dir;
  @override
  final num? batt;
  @override
  final String? dev;

  factory _$GpsLoggerFix([void Function(GpsLoggerFixBuilder)? updates]) =>
      (GpsLoggerFixBuilder()..update(updates))._build();

  _$GpsLoggerFix._(
      {required this.lat,
      required this.lon,
      this.time,
      this.acc,
      this.alt,
      this.spd,
      this.dir,
      this.batt,
      this.dev})
      : super._();
  @override
  GpsLoggerFix rebuild(void Function(GpsLoggerFixBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpsLoggerFixBuilder toBuilder() => GpsLoggerFixBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpsLoggerFix &&
        lat == other.lat &&
        lon == other.lon &&
        time == other.time &&
        acc == other.acc &&
        alt == other.alt &&
        spd == other.spd &&
        dir == other.dir &&
        batt == other.batt &&
        dev == other.dev;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, acc.hashCode);
    _$hash = $jc(_$hash, alt.hashCode);
    _$hash = $jc(_$hash, spd.hashCode);
    _$hash = $jc(_$hash, dir.hashCode);
    _$hash = $jc(_$hash, batt.hashCode);
    _$hash = $jc(_$hash, dev.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GpsLoggerFix')
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('time', time)
          ..add('acc', acc)
          ..add('alt', alt)
          ..add('spd', spd)
          ..add('dir', dir)
          ..add('batt', batt)
          ..add('dev', dev))
        .toString();
  }
}

class GpsLoggerFixBuilder
    implements Builder<GpsLoggerFix, GpsLoggerFixBuilder> {
  _$GpsLoggerFix? _$v;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  num? _acc;
  num? get acc => _$this._acc;
  set acc(num? acc) => _$this._acc = acc;

  num? _alt;
  num? get alt => _$this._alt;
  set alt(num? alt) => _$this._alt = alt;

  num? _spd;
  num? get spd => _$this._spd;
  set spd(num? spd) => _$this._spd = spd;

  num? _dir;
  num? get dir => _$this._dir;
  set dir(num? dir) => _$this._dir = dir;

  num? _batt;
  num? get batt => _$this._batt;
  set batt(num? batt) => _$this._batt = batt;

  String? _dev;
  String? get dev => _$this._dev;
  set dev(String? dev) => _$this._dev = dev;

  GpsLoggerFixBuilder() {
    GpsLoggerFix._defaults(this);
  }

  GpsLoggerFixBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _lon = $v.lon;
      _time = $v.time;
      _acc = $v.acc;
      _alt = $v.alt;
      _spd = $v.spd;
      _dir = $v.dir;
      _batt = $v.batt;
      _dev = $v.dev;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpsLoggerFix other) {
    _$v = other as _$GpsLoggerFix;
  }

  @override
  void update(void Function(GpsLoggerFixBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpsLoggerFix build() => _build();

  _$GpsLoggerFix _build() {
    final _$result = _$v ??
        _$GpsLoggerFix._(
          lat: BuiltValueNullFieldError.checkNotNull(
              lat, r'GpsLoggerFix', 'lat'),
          lon: BuiltValueNullFieldError.checkNotNull(
              lon, r'GpsLoggerFix', 'lon'),
          time: time,
          acc: acc,
          alt: alt,
          spd: spd,
          dir: dir,
          batt: batt,
          dev: dev,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
