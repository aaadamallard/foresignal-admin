// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storm_track_payload_history_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StormTrackPayloadHistoryInner extends StormTrackPayloadHistoryInner {
  @override
  final DateTime time;
  @override
  final num lon;
  @override
  final num lat;

  factory _$StormTrackPayloadHistoryInner([
    void Function(StormTrackPayloadHistoryInnerBuilder)? updates,
  ]) => (StormTrackPayloadHistoryInnerBuilder()..update(updates))._build();

  _$StormTrackPayloadHistoryInner._({
    required this.time,
    required this.lon,
    required this.lat,
  }) : super._();
  @override
  StormTrackPayloadHistoryInner rebuild(
    void Function(StormTrackPayloadHistoryInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StormTrackPayloadHistoryInnerBuilder toBuilder() =>
      StormTrackPayloadHistoryInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StormTrackPayloadHistoryInner &&
        time == other.time &&
        lon == other.lon &&
        lat == other.lat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StormTrackPayloadHistoryInner')
          ..add('time', time)
          ..add('lon', lon)
          ..add('lat', lat))
        .toString();
  }
}

class StormTrackPayloadHistoryInnerBuilder
    implements
        Builder<
          StormTrackPayloadHistoryInner,
          StormTrackPayloadHistoryInnerBuilder
        > {
  _$StormTrackPayloadHistoryInner? _$v;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  StormTrackPayloadHistoryInnerBuilder() {
    StormTrackPayloadHistoryInner._defaults(this);
  }

  StormTrackPayloadHistoryInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _lon = $v.lon;
      _lat = $v.lat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StormTrackPayloadHistoryInner other) {
    _$v = other as _$StormTrackPayloadHistoryInner;
  }

  @override
  void update(void Function(StormTrackPayloadHistoryInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StormTrackPayloadHistoryInner build() => _build();

  _$StormTrackPayloadHistoryInner _build() {
    final _$result =
        _$v ??
        _$StormTrackPayloadHistoryInner._(
          time: BuiltValueNullFieldError.checkNotNull(
            time,
            r'StormTrackPayloadHistoryInner',
            'time',
          ),
          lon: BuiltValueNullFieldError.checkNotNull(
            lon,
            r'StormTrackPayloadHistoryInner',
            'lon',
          ),
          lat: BuiltValueNullFieldError.checkNotNull(
            lat,
            r'StormTrackPayloadHistoryInner',
            'lat',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
