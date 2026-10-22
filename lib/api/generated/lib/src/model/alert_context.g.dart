// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlertContext extends AlertContext {
  @override
  final WeatherContext? weather;
  @override
  final AlertContextNear? near;
  @override
  final AnomalyObservation? anomaly;
  @override
  final AlertContextAnchor? anchor;

  factory _$AlertContext([void Function(AlertContextBuilder)? updates]) =>
      (AlertContextBuilder()..update(updates))._build();

  _$AlertContext._({this.weather, this.near, this.anomaly, this.anchor})
      : super._();
  @override
  AlertContext rebuild(void Function(AlertContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertContextBuilder toBuilder() => AlertContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertContext &&
        weather == other.weather &&
        near == other.near &&
        anomaly == other.anomaly &&
        anchor == other.anchor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jc(_$hash, near.hashCode);
    _$hash = $jc(_$hash, anomaly.hashCode);
    _$hash = $jc(_$hash, anchor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertContext')
          ..add('weather', weather)
          ..add('near', near)
          ..add('anomaly', anomaly)
          ..add('anchor', anchor))
        .toString();
  }
}

class AlertContextBuilder
    implements Builder<AlertContext, AlertContextBuilder> {
  _$AlertContext? _$v;

  WeatherContextBuilder? _weather;
  WeatherContextBuilder get weather =>
      _$this._weather ??= WeatherContextBuilder();
  set weather(WeatherContextBuilder? weather) => _$this._weather = weather;

  AlertContextNearBuilder? _near;
  AlertContextNearBuilder get near =>
      _$this._near ??= AlertContextNearBuilder();
  set near(AlertContextNearBuilder? near) => _$this._near = near;

  AnomalyObservationBuilder? _anomaly;
  AnomalyObservationBuilder get anomaly =>
      _$this._anomaly ??= AnomalyObservationBuilder();
  set anomaly(AnomalyObservationBuilder? anomaly) => _$this._anomaly = anomaly;

  AlertContextAnchorBuilder? _anchor;
  AlertContextAnchorBuilder get anchor =>
      _$this._anchor ??= AlertContextAnchorBuilder();
  set anchor(AlertContextAnchorBuilder? anchor) => _$this._anchor = anchor;

  AlertContextBuilder() {
    AlertContext._defaults(this);
  }

  AlertContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weather = $v.weather?.toBuilder();
      _near = $v.near?.toBuilder();
      _anomaly = $v.anomaly?.toBuilder();
      _anchor = $v.anchor?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertContext other) {
    _$v = other as _$AlertContext;
  }

  @override
  void update(void Function(AlertContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertContext build() => _build();

  _$AlertContext _build() {
    _$AlertContext _$result;
    try {
      _$result = _$v ??
          _$AlertContext._(
            weather: _weather?.build(),
            near: _near?.build(),
            anomaly: _anomaly?.build(),
            anchor: _anchor?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weather';
        _weather?.build();
        _$failedField = 'near';
        _near?.build();
        _$failedField = 'anomaly';
        _anomaly?.build();
        _$failedField = 'anchor';
        _anchor?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AlertContext', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
