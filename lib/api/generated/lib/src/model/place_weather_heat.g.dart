// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_heat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherHeat extends PlaceWeatherHeat {
  @override
  final SampleStatus? status;
  @override
  final int? riskMaxDay1;
  @override
  final int? riskMax7d;
  @override
  final Date? peakDay;

  factory _$PlaceWeatherHeat([
    void Function(PlaceWeatherHeatBuilder)? updates,
  ]) => (PlaceWeatherHeatBuilder()..update(updates))._build();

  _$PlaceWeatherHeat._({
    this.status,
    this.riskMaxDay1,
    this.riskMax7d,
    this.peakDay,
  }) : super._();
  @override
  PlaceWeatherHeat rebuild(void Function(PlaceWeatherHeatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherHeatBuilder toBuilder() =>
      PlaceWeatherHeatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherHeat &&
        status == other.status &&
        riskMaxDay1 == other.riskMaxDay1 &&
        riskMax7d == other.riskMax7d &&
        peakDay == other.peakDay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, riskMaxDay1.hashCode);
    _$hash = $jc(_$hash, riskMax7d.hashCode);
    _$hash = $jc(_$hash, peakDay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherHeat')
          ..add('status', status)
          ..add('riskMaxDay1', riskMaxDay1)
          ..add('riskMax7d', riskMax7d)
          ..add('peakDay', peakDay))
        .toString();
  }
}

class PlaceWeatherHeatBuilder
    implements Builder<PlaceWeatherHeat, PlaceWeatherHeatBuilder> {
  _$PlaceWeatherHeat? _$v;

  SampleStatus? _status;
  SampleStatus? get status => _$this._status;
  set status(SampleStatus? status) => _$this._status = status;

  int? _riskMaxDay1;
  int? get riskMaxDay1 => _$this._riskMaxDay1;
  set riskMaxDay1(int? riskMaxDay1) => _$this._riskMaxDay1 = riskMaxDay1;

  int? _riskMax7d;
  int? get riskMax7d => _$this._riskMax7d;
  set riskMax7d(int? riskMax7d) => _$this._riskMax7d = riskMax7d;

  Date? _peakDay;
  Date? get peakDay => _$this._peakDay;
  set peakDay(Date? peakDay) => _$this._peakDay = peakDay;

  PlaceWeatherHeatBuilder() {
    PlaceWeatherHeat._defaults(this);
  }

  PlaceWeatherHeatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _riskMaxDay1 = $v.riskMaxDay1;
      _riskMax7d = $v.riskMax7d;
      _peakDay = $v.peakDay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherHeat other) {
    _$v = other as _$PlaceWeatherHeat;
  }

  @override
  void update(void Function(PlaceWeatherHeatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherHeat build() => _build();

  _$PlaceWeatherHeat _build() {
    final _$result =
        _$v ??
        _$PlaceWeatherHeat._(
          status: status,
          riskMaxDay1: riskMaxDay1,
          riskMax7d: riskMax7d,
          peakDay: peakDay,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
