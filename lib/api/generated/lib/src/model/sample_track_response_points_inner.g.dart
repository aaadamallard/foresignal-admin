// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_track_response_points_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SampleTrackResponsePointsInner extends SampleTrackResponsePointsInner {
  @override
  final num lon;
  @override
  final num lat;
  @override
  final DateTime time;
  @override
  final SampleStatus status;
  @override
  final BuiltList<SampleValue> values;

  factory _$SampleTrackResponsePointsInner(
          [void Function(SampleTrackResponsePointsInnerBuilder)? updates]) =>
      (SampleTrackResponsePointsInnerBuilder()..update(updates))._build();

  _$SampleTrackResponsePointsInner._(
      {required this.lon,
      required this.lat,
      required this.time,
      required this.status,
      required this.values})
      : super._();
  @override
  SampleTrackResponsePointsInner rebuild(
          void Function(SampleTrackResponsePointsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SampleTrackResponsePointsInnerBuilder toBuilder() =>
      SampleTrackResponsePointsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SampleTrackResponsePointsInner &&
        lon == other.lon &&
        lat == other.lat &&
        time == other.time &&
        status == other.status &&
        values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SampleTrackResponsePointsInner')
          ..add('lon', lon)
          ..add('lat', lat)
          ..add('time', time)
          ..add('status', status)
          ..add('values', values))
        .toString();
  }
}

class SampleTrackResponsePointsInnerBuilder
    implements
        Builder<SampleTrackResponsePointsInner,
            SampleTrackResponsePointsInnerBuilder> {
  _$SampleTrackResponsePointsInner? _$v;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  SampleStatus? _status;
  SampleStatus? get status => _$this._status;
  set status(SampleStatus? status) => _$this._status = status;

  ListBuilder<SampleValue>? _values;
  ListBuilder<SampleValue> get values =>
      _$this._values ??= ListBuilder<SampleValue>();
  set values(ListBuilder<SampleValue>? values) => _$this._values = values;

  SampleTrackResponsePointsInnerBuilder() {
    SampleTrackResponsePointsInner._defaults(this);
  }

  SampleTrackResponsePointsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lon = $v.lon;
      _lat = $v.lat;
      _time = $v.time;
      _status = $v.status;
      _values = $v.values.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SampleTrackResponsePointsInner other) {
    _$v = other as _$SampleTrackResponsePointsInner;
  }

  @override
  void update(void Function(SampleTrackResponsePointsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SampleTrackResponsePointsInner build() => _build();

  _$SampleTrackResponsePointsInner _build() {
    _$SampleTrackResponsePointsInner _$result;
    try {
      _$result = _$v ??
          _$SampleTrackResponsePointsInner._(
            lon: BuiltValueNullFieldError.checkNotNull(
                lon, r'SampleTrackResponsePointsInner', 'lon'),
            lat: BuiltValueNullFieldError.checkNotNull(
                lat, r'SampleTrackResponsePointsInner', 'lat'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'SampleTrackResponsePointsInner', 'time'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'SampleTrackResponsePointsInner', 'status'),
            values: values.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SampleTrackResponsePointsInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
