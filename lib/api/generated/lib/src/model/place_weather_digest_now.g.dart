// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_digest_now.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherDigestNow extends PlaceWeatherDigestNow {
  @override
  final PlaceWeatherDigestNowRadar? radar;
  @override
  final PlaceWeatherDigestNowLightning? lightning;
  @override
  final BuiltList<PlaceWeatherDigestNowAlertsInner>? alerts;
  @override
  final PlaceWeatherDigestNowAlertsStatus? alertsStatus;

  factory _$PlaceWeatherDigestNow(
          [void Function(PlaceWeatherDigestNowBuilder)? updates]) =>
      (PlaceWeatherDigestNowBuilder()..update(updates))._build();

  _$PlaceWeatherDigestNow._(
      {this.radar, this.lightning, this.alerts, this.alertsStatus})
      : super._();
  @override
  PlaceWeatherDigestNow rebuild(
          void Function(PlaceWeatherDigestNowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherDigestNowBuilder toBuilder() =>
      PlaceWeatherDigestNowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherDigestNow &&
        radar == other.radar &&
        lightning == other.lightning &&
        alerts == other.alerts &&
        alertsStatus == other.alertsStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, radar.hashCode);
    _$hash = $jc(_$hash, lightning.hashCode);
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jc(_$hash, alertsStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherDigestNow')
          ..add('radar', radar)
          ..add('lightning', lightning)
          ..add('alerts', alerts)
          ..add('alertsStatus', alertsStatus))
        .toString();
  }
}

class PlaceWeatherDigestNowBuilder
    implements Builder<PlaceWeatherDigestNow, PlaceWeatherDigestNowBuilder> {
  _$PlaceWeatherDigestNow? _$v;

  PlaceWeatherDigestNowRadarBuilder? _radar;
  PlaceWeatherDigestNowRadarBuilder get radar =>
      _$this._radar ??= PlaceWeatherDigestNowRadarBuilder();
  set radar(PlaceWeatherDigestNowRadarBuilder? radar) => _$this._radar = radar;

  PlaceWeatherDigestNowLightningBuilder? _lightning;
  PlaceWeatherDigestNowLightningBuilder get lightning =>
      _$this._lightning ??= PlaceWeatherDigestNowLightningBuilder();
  set lightning(PlaceWeatherDigestNowLightningBuilder? lightning) =>
      _$this._lightning = lightning;

  ListBuilder<PlaceWeatherDigestNowAlertsInner>? _alerts;
  ListBuilder<PlaceWeatherDigestNowAlertsInner> get alerts =>
      _$this._alerts ??= ListBuilder<PlaceWeatherDigestNowAlertsInner>();
  set alerts(ListBuilder<PlaceWeatherDigestNowAlertsInner>? alerts) =>
      _$this._alerts = alerts;

  PlaceWeatherDigestNowAlertsStatusBuilder? _alertsStatus;
  PlaceWeatherDigestNowAlertsStatusBuilder get alertsStatus =>
      _$this._alertsStatus ??= PlaceWeatherDigestNowAlertsStatusBuilder();
  set alertsStatus(PlaceWeatherDigestNowAlertsStatusBuilder? alertsStatus) =>
      _$this._alertsStatus = alertsStatus;

  PlaceWeatherDigestNowBuilder() {
    PlaceWeatherDigestNow._defaults(this);
  }

  PlaceWeatherDigestNowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _radar = $v.radar?.toBuilder();
      _lightning = $v.lightning?.toBuilder();
      _alerts = $v.alerts?.toBuilder();
      _alertsStatus = $v.alertsStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherDigestNow other) {
    _$v = other as _$PlaceWeatherDigestNow;
  }

  @override
  void update(void Function(PlaceWeatherDigestNowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherDigestNow build() => _build();

  _$PlaceWeatherDigestNow _build() {
    _$PlaceWeatherDigestNow _$result;
    try {
      _$result = _$v ??
          _$PlaceWeatherDigestNow._(
            radar: _radar?.build(),
            lightning: _lightning?.build(),
            alerts: _alerts?.build(),
            alertsStatus: _alertsStatus?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'radar';
        _radar?.build();
        _$failedField = 'lightning';
        _lightning?.build();
        _$failedField = 'alerts';
        _alerts?.build();
        _$failedField = 'alertsStatus';
        _alertsStatus?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PlaceWeatherDigestNow', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
