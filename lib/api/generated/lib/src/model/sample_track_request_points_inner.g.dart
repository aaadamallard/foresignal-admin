// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_track_request_points_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SampleTrackRequestPointsInner extends SampleTrackRequestPointsInner {
  @override
  final num lon;
  @override
  final num lat;
  @override
  final DateTime time;

  factory _$SampleTrackRequestPointsInner(
          [void Function(SampleTrackRequestPointsInnerBuilder)? updates]) =>
      (SampleTrackRequestPointsInnerBuilder()..update(updates))._build();

  _$SampleTrackRequestPointsInner._(
      {required this.lon, required this.lat, required this.time})
      : super._();
  @override
  SampleTrackRequestPointsInner rebuild(
          void Function(SampleTrackRequestPointsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SampleTrackRequestPointsInnerBuilder toBuilder() =>
      SampleTrackRequestPointsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SampleTrackRequestPointsInner &&
        lon == other.lon &&
        lat == other.lat &&
        time == other.time;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SampleTrackRequestPointsInner')
          ..add('lon', lon)
          ..add('lat', lat)
          ..add('time', time))
        .toString();
  }
}

class SampleTrackRequestPointsInnerBuilder
    implements
        Builder<SampleTrackRequestPointsInner,
            SampleTrackRequestPointsInnerBuilder> {
  _$SampleTrackRequestPointsInner? _$v;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  SampleTrackRequestPointsInnerBuilder() {
    SampleTrackRequestPointsInner._defaults(this);
  }

  SampleTrackRequestPointsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lon = $v.lon;
      _lat = $v.lat;
      _time = $v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SampleTrackRequestPointsInner other) {
    _$v = other as _$SampleTrackRequestPointsInner;
  }

  @override
  void update(void Function(SampleTrackRequestPointsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SampleTrackRequestPointsInner build() => _build();

  _$SampleTrackRequestPointsInner _build() {
    final _$result = _$v ??
        _$SampleTrackRequestPointsInner._(
          lon: BuiltValueNullFieldError.checkNotNull(
              lon, r'SampleTrackRequestPointsInner', 'lon'),
          lat: BuiltValueNullFieldError.checkNotNull(
              lat, r'SampleTrackRequestPointsInner', 'lat'),
          time: BuiltValueNullFieldError.checkNotNull(
              time, r'SampleTrackRequestPointsInner', 'time'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
