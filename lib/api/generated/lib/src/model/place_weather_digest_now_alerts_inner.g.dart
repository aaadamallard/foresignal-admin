// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_digest_now_alerts_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherDigestNowAlertsInner
    extends PlaceWeatherDigestNowAlertsInner {
  @override
  final String id;
  @override
  final String event;
  @override
  final String? severity;
  @override
  final DateTime? expires;

  factory _$PlaceWeatherDigestNowAlertsInner([
    void Function(PlaceWeatherDigestNowAlertsInnerBuilder)? updates,
  ]) => (PlaceWeatherDigestNowAlertsInnerBuilder()..update(updates))._build();

  _$PlaceWeatherDigestNowAlertsInner._({
    required this.id,
    required this.event,
    this.severity,
    this.expires,
  }) : super._();
  @override
  PlaceWeatherDigestNowAlertsInner rebuild(
    void Function(PlaceWeatherDigestNowAlertsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherDigestNowAlertsInnerBuilder toBuilder() =>
      PlaceWeatherDigestNowAlertsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherDigestNowAlertsInner &&
        id == other.id &&
        event == other.event &&
        severity == other.severity &&
        expires == other.expires;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherDigestNowAlertsInner')
          ..add('id', id)
          ..add('event', event)
          ..add('severity', severity)
          ..add('expires', expires))
        .toString();
  }
}

class PlaceWeatherDigestNowAlertsInnerBuilder
    implements
        Builder<
          PlaceWeatherDigestNowAlertsInner,
          PlaceWeatherDigestNowAlertsInnerBuilder
        > {
  _$PlaceWeatherDigestNowAlertsInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  String? _severity;
  String? get severity => _$this._severity;
  set severity(String? severity) => _$this._severity = severity;

  DateTime? _expires;
  DateTime? get expires => _$this._expires;
  set expires(DateTime? expires) => _$this._expires = expires;

  PlaceWeatherDigestNowAlertsInnerBuilder() {
    PlaceWeatherDigestNowAlertsInner._defaults(this);
  }

  PlaceWeatherDigestNowAlertsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _event = $v.event;
      _severity = $v.severity;
      _expires = $v.expires;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherDigestNowAlertsInner other) {
    _$v = other as _$PlaceWeatherDigestNowAlertsInner;
  }

  @override
  void update(void Function(PlaceWeatherDigestNowAlertsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherDigestNowAlertsInner build() => _build();

  _$PlaceWeatherDigestNowAlertsInner _build() {
    final _$result =
        _$v ??
        _$PlaceWeatherDigestNowAlertsInner._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'PlaceWeatherDigestNowAlertsInner',
            'id',
          ),
          event: BuiltValueNullFieldError.checkNotNull(
            event,
            r'PlaceWeatherDigestNowAlertsInner',
            'event',
          ),
          severity: severity,
          expires: expires,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
