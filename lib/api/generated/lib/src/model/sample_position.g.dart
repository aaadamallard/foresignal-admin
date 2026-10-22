// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_position.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SamplePosition extends SamplePosition {
  @override
  final num lon;
  @override
  final num lat;
  @override
  final DateTime observedAt;
  @override
  final int ageSeconds;

  factory _$SamplePosition([void Function(SamplePositionBuilder)? updates]) =>
      (SamplePositionBuilder()..update(updates))._build();

  _$SamplePosition._(
      {required this.lon,
      required this.lat,
      required this.observedAt,
      required this.ageSeconds})
      : super._();
  @override
  SamplePosition rebuild(void Function(SamplePositionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SamplePositionBuilder toBuilder() => SamplePositionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SamplePosition &&
        lon == other.lon &&
        lat == other.lat &&
        observedAt == other.observedAt &&
        ageSeconds == other.ageSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, ageSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SamplePosition')
          ..add('lon', lon)
          ..add('lat', lat)
          ..add('observedAt', observedAt)
          ..add('ageSeconds', ageSeconds))
        .toString();
  }
}

class SamplePositionBuilder
    implements Builder<SamplePosition, SamplePositionBuilder> {
  _$SamplePosition? _$v;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  int? _ageSeconds;
  int? get ageSeconds => _$this._ageSeconds;
  set ageSeconds(int? ageSeconds) => _$this._ageSeconds = ageSeconds;

  SamplePositionBuilder() {
    SamplePosition._defaults(this);
  }

  SamplePositionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lon = $v.lon;
      _lat = $v.lat;
      _observedAt = $v.observedAt;
      _ageSeconds = $v.ageSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SamplePosition other) {
    _$v = other as _$SamplePosition;
  }

  @override
  void update(void Function(SamplePositionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SamplePosition build() => _build();

  _$SamplePosition _build() {
    final _$result = _$v ??
        _$SamplePosition._(
          lon: BuiltValueNullFieldError.checkNotNull(
              lon, r'SamplePosition', 'lon'),
          lat: BuiltValueNullFieldError.checkNotNull(
              lat, r'SamplePosition', 'lat'),
          observedAt: BuiltValueNullFieldError.checkNotNull(
              observedAt, r'SamplePosition', 'observedAt'),
          ageSeconds: BuiltValueNullFieldError.checkNotNull(
              ageSeconds, r'SamplePosition', 'ageSeconds'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
