// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_lightning.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherLightning extends PlaceWeatherLightning {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final num? nearestKm15m;
  @override
  final num? nearestKm30m;
  @override
  final int? count15km15m;
  @override
  final num? verifiedNearestKm30m;

  factory _$PlaceWeatherLightning([
    void Function(PlaceWeatherLightningBuilder)? updates,
  ]) => (PlaceWeatherLightningBuilder()..update(updates))._build();

  _$PlaceWeatherLightning._({
    required this.status,
    this.asOf,
    this.statusText,
    this.nearestKm15m,
    this.nearestKm30m,
    this.count15km15m,
    this.verifiedNearestKm30m,
  }) : super._();
  @override
  PlaceWeatherLightning rebuild(
    void Function(PlaceWeatherLightningBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherLightningBuilder toBuilder() =>
      PlaceWeatherLightningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherLightning &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        nearestKm15m == other.nearestKm15m &&
        nearestKm30m == other.nearestKm30m &&
        count15km15m == other.count15km15m &&
        verifiedNearestKm30m == other.verifiedNearestKm30m;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, nearestKm15m.hashCode);
    _$hash = $jc(_$hash, nearestKm30m.hashCode);
    _$hash = $jc(_$hash, count15km15m.hashCode);
    _$hash = $jc(_$hash, verifiedNearestKm30m.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherLightning')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('nearestKm15m', nearestKm15m)
          ..add('nearestKm30m', nearestKm30m)
          ..add('count15km15m', count15km15m)
          ..add('verifiedNearestKm30m', verifiedNearestKm30m))
        .toString();
  }
}

class PlaceWeatherLightningBuilder
    implements Builder<PlaceWeatherLightning, PlaceWeatherLightningBuilder> {
  _$PlaceWeatherLightning? _$v;

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

  num? _nearestKm30m;
  num? get nearestKm30m => _$this._nearestKm30m;
  set nearestKm30m(num? nearestKm30m) => _$this._nearestKm30m = nearestKm30m;

  int? _count15km15m;
  int? get count15km15m => _$this._count15km15m;
  set count15km15m(int? count15km15m) => _$this._count15km15m = count15km15m;

  num? _verifiedNearestKm30m;
  num? get verifiedNearestKm30m => _$this._verifiedNearestKm30m;
  set verifiedNearestKm30m(num? verifiedNearestKm30m) =>
      _$this._verifiedNearestKm30m = verifiedNearestKm30m;

  PlaceWeatherLightningBuilder() {
    PlaceWeatherLightning._defaults(this);
  }

  PlaceWeatherLightningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _nearestKm15m = $v.nearestKm15m;
      _nearestKm30m = $v.nearestKm30m;
      _count15km15m = $v.count15km15m;
      _verifiedNearestKm30m = $v.verifiedNearestKm30m;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherLightning other) {
    _$v = other as _$PlaceWeatherLightning;
  }

  @override
  void update(void Function(PlaceWeatherLightningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherLightning build() => _build();

  _$PlaceWeatherLightning _build() {
    final _$result =
        _$v ??
        _$PlaceWeatherLightning._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'PlaceWeatherLightning',
            'status',
          ),
          asOf: asOf,
          statusText: statusText,
          nearestKm15m: nearestKm15m,
          nearestKm30m: nearestKm30m,
          count15km15m: count15km15m,
          verifiedNearestKm30m: verifiedNearestKm30m,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
