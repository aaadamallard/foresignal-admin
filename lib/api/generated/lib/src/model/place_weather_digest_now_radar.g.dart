// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_digest_now_radar.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherDigestNowRadar extends PlaceWeatherDigestNowRadar {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final num? maxDbzInRadius;
  @override
  final num? nearest50Km;

  factory _$PlaceWeatherDigestNowRadar(
          [void Function(PlaceWeatherDigestNowRadarBuilder)? updates]) =>
      (PlaceWeatherDigestNowRadarBuilder()..update(updates))._build();

  _$PlaceWeatherDigestNowRadar._(
      {required this.status,
      this.asOf,
      this.statusText,
      this.maxDbzInRadius,
      this.nearest50Km})
      : super._();
  @override
  PlaceWeatherDigestNowRadar rebuild(
          void Function(PlaceWeatherDigestNowRadarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherDigestNowRadarBuilder toBuilder() =>
      PlaceWeatherDigestNowRadarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherDigestNowRadar &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        maxDbzInRadius == other.maxDbzInRadius &&
        nearest50Km == other.nearest50Km;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, maxDbzInRadius.hashCode);
    _$hash = $jc(_$hash, nearest50Km.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherDigestNowRadar')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('maxDbzInRadius', maxDbzInRadius)
          ..add('nearest50Km', nearest50Km))
        .toString();
  }
}

class PlaceWeatherDigestNowRadarBuilder
    implements
        Builder<PlaceWeatherDigestNowRadar, PlaceWeatherDigestNowRadarBuilder> {
  _$PlaceWeatherDigestNowRadar? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  num? _maxDbzInRadius;
  num? get maxDbzInRadius => _$this._maxDbzInRadius;
  set maxDbzInRadius(num? maxDbzInRadius) =>
      _$this._maxDbzInRadius = maxDbzInRadius;

  num? _nearest50Km;
  num? get nearest50Km => _$this._nearest50Km;
  set nearest50Km(num? nearest50Km) => _$this._nearest50Km = nearest50Km;

  PlaceWeatherDigestNowRadarBuilder() {
    PlaceWeatherDigestNowRadar._defaults(this);
  }

  PlaceWeatherDigestNowRadarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _maxDbzInRadius = $v.maxDbzInRadius;
      _nearest50Km = $v.nearest50Km;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherDigestNowRadar other) {
    _$v = other as _$PlaceWeatherDigestNowRadar;
  }

  @override
  void update(void Function(PlaceWeatherDigestNowRadarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherDigestNowRadar build() => _build();

  _$PlaceWeatherDigestNowRadar _build() {
    final _$result = _$v ??
        _$PlaceWeatherDigestNowRadar._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'PlaceWeatherDigestNowRadar', 'status'),
          asOf: asOf,
          statusText: statusText,
          maxDbzInRadius: maxDbzInRadius,
          nearest50Km: nearest50Km,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
