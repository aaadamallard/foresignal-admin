// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_smoke.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherSmoke extends PlaceWeatherSmoke {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final num? hrrrPm25Max24h;

  factory _$PlaceWeatherSmoke([
    void Function(PlaceWeatherSmokeBuilder)? updates,
  ]) => (PlaceWeatherSmokeBuilder()..update(updates))._build();

  _$PlaceWeatherSmoke._({
    required this.status,
    this.asOf,
    this.statusText,
    this.hrrrPm25Max24h,
  }) : super._();
  @override
  PlaceWeatherSmoke rebuild(void Function(PlaceWeatherSmokeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherSmokeBuilder toBuilder() =>
      PlaceWeatherSmokeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherSmoke &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        hrrrPm25Max24h == other.hrrrPm25Max24h;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, hrrrPm25Max24h.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherSmoke')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('hrrrPm25Max24h', hrrrPm25Max24h))
        .toString();
  }
}

class PlaceWeatherSmokeBuilder
    implements Builder<PlaceWeatherSmoke, PlaceWeatherSmokeBuilder> {
  _$PlaceWeatherSmoke? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  num? _hrrrPm25Max24h;
  num? get hrrrPm25Max24h => _$this._hrrrPm25Max24h;
  set hrrrPm25Max24h(num? hrrrPm25Max24h) =>
      _$this._hrrrPm25Max24h = hrrrPm25Max24h;

  PlaceWeatherSmokeBuilder() {
    PlaceWeatherSmoke._defaults(this);
  }

  PlaceWeatherSmokeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _hrrrPm25Max24h = $v.hrrrPm25Max24h;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherSmoke other) {
    _$v = other as _$PlaceWeatherSmoke;
  }

  @override
  void update(void Function(PlaceWeatherSmokeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherSmoke build() => _build();

  _$PlaceWeatherSmoke _build() {
    final _$result =
        _$v ??
        _$PlaceWeatherSmoke._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'PlaceWeatherSmoke',
            'status',
          ),
          asOf: asOf,
          statusText: statusText,
          hrrrPm25Max24h: hrrrPm25Max24h,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
