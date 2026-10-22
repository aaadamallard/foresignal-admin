// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_digest_now_lightning.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherDigestNowLightning extends PlaceWeatherDigestNowLightning {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final num? nearestKm15m;
  @override
  final int? count15km15m;

  factory _$PlaceWeatherDigestNowLightning([
    void Function(PlaceWeatherDigestNowLightningBuilder)? updates,
  ]) => (PlaceWeatherDigestNowLightningBuilder()..update(updates))._build();

  _$PlaceWeatherDigestNowLightning._({
    required this.status,
    this.asOf,
    this.statusText,
    this.nearestKm15m,
    this.count15km15m,
  }) : super._();
  @override
  PlaceWeatherDigestNowLightning rebuild(
    void Function(PlaceWeatherDigestNowLightningBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherDigestNowLightningBuilder toBuilder() =>
      PlaceWeatherDigestNowLightningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherDigestNowLightning &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        nearestKm15m == other.nearestKm15m &&
        count15km15m == other.count15km15m;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, nearestKm15m.hashCode);
    _$hash = $jc(_$hash, count15km15m.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherDigestNowLightning')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('nearestKm15m', nearestKm15m)
          ..add('count15km15m', count15km15m))
        .toString();
  }
}

class PlaceWeatherDigestNowLightningBuilder
    implements
        Builder<
          PlaceWeatherDigestNowLightning,
          PlaceWeatherDigestNowLightningBuilder
        > {
  _$PlaceWeatherDigestNowLightning? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  num? _nearestKm15m;
  num? get nearestKm15m => _$this._nearestKm15m;
  set nearestKm15m(num? nearestKm15m) => _$this._nearestKm15m = nearestKm15m;

  int? _count15km15m;
  int? get count15km15m => _$this._count15km15m;
  set count15km15m(int? count15km15m) => _$this._count15km15m = count15km15m;

  PlaceWeatherDigestNowLightningBuilder() {
    PlaceWeatherDigestNowLightning._defaults(this);
  }

  PlaceWeatherDigestNowLightningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _nearestKm15m = $v.nearestKm15m;
      _count15km15m = $v.count15km15m;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherDigestNowLightning other) {
    _$v = other as _$PlaceWeatherDigestNowLightning;
  }

  @override
  void update(void Function(PlaceWeatherDigestNowLightningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherDigestNowLightning build() => _build();

  _$PlaceWeatherDigestNowLightning _build() {
    final _$result =
        _$v ??
        _$PlaceWeatherDigestNowLightning._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'PlaceWeatherDigestNowLightning',
            'status',
          ),
          asOf: asOf,
          statusText: statusText,
          nearestKm15m: nearestKm15m,
          count15km15m: count15km15m,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
