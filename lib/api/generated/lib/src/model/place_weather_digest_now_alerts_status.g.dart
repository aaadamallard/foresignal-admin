// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_digest_now_alerts_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherDigestNowAlertsStatus
    extends PlaceWeatherDigestNowAlertsStatus {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;

  factory _$PlaceWeatherDigestNowAlertsStatus(
          [void Function(PlaceWeatherDigestNowAlertsStatusBuilder)? updates]) =>
      (PlaceWeatherDigestNowAlertsStatusBuilder()..update(updates))._build();

  _$PlaceWeatherDigestNowAlertsStatus._(
      {required this.status, this.asOf, this.statusText})
      : super._();
  @override
  PlaceWeatherDigestNowAlertsStatus rebuild(
          void Function(PlaceWeatherDigestNowAlertsStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherDigestNowAlertsStatusBuilder toBuilder() =>
      PlaceWeatherDigestNowAlertsStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherDigestNowAlertsStatus &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherDigestNowAlertsStatus')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText))
        .toString();
  }
}

class PlaceWeatherDigestNowAlertsStatusBuilder
    implements
        Builder<PlaceWeatherDigestNowAlertsStatus,
            PlaceWeatherDigestNowAlertsStatusBuilder> {
  _$PlaceWeatherDigestNowAlertsStatus? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  PlaceWeatherDigestNowAlertsStatusBuilder() {
    PlaceWeatherDigestNowAlertsStatus._defaults(this);
  }

  PlaceWeatherDigestNowAlertsStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherDigestNowAlertsStatus other) {
    _$v = other as _$PlaceWeatherDigestNowAlertsStatus;
  }

  @override
  void update(
      void Function(PlaceWeatherDigestNowAlertsStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherDigestNowAlertsStatus build() => _build();

  _$PlaceWeatherDigestNowAlertsStatus _build() {
    final _$result = _$v ??
        _$PlaceWeatherDigestNowAlertsStatus._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'PlaceWeatherDigestNowAlertsStatus', 'status'),
          asOf: asOf,
          statusText: statusText,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
