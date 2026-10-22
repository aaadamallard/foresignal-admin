// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_hail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherHail extends PlaceWeatherHail {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final num? meshMaxMmInRadius;
  @override
  final num? meshNearest25Km;

  factory _$PlaceWeatherHail([
    void Function(PlaceWeatherHailBuilder)? updates,
  ]) => (PlaceWeatherHailBuilder()..update(updates))._build();

  _$PlaceWeatherHail._({
    required this.status,
    this.asOf,
    this.statusText,
    this.meshMaxMmInRadius,
    this.meshNearest25Km,
  }) : super._();
  @override
  PlaceWeatherHail rebuild(void Function(PlaceWeatherHailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherHailBuilder toBuilder() =>
      PlaceWeatherHailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherHail &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        meshMaxMmInRadius == other.meshMaxMmInRadius &&
        meshNearest25Km == other.meshNearest25Km;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, meshMaxMmInRadius.hashCode);
    _$hash = $jc(_$hash, meshNearest25Km.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherHail')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('meshMaxMmInRadius', meshMaxMmInRadius)
          ..add('meshNearest25Km', meshNearest25Km))
        .toString();
  }
}

class PlaceWeatherHailBuilder
    implements Builder<PlaceWeatherHail, PlaceWeatherHailBuilder> {
  _$PlaceWeatherHail? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  num? _meshMaxMmInRadius;
  num? get meshMaxMmInRadius => _$this._meshMaxMmInRadius;
  set meshMaxMmInRadius(num? meshMaxMmInRadius) =>
      _$this._meshMaxMmInRadius = meshMaxMmInRadius;

  num? _meshNearest25Km;
  num? get meshNearest25Km => _$this._meshNearest25Km;
  set meshNearest25Km(num? meshNearest25Km) =>
      _$this._meshNearest25Km = meshNearest25Km;

  PlaceWeatherHailBuilder() {
    PlaceWeatherHail._defaults(this);
  }

  PlaceWeatherHailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _meshMaxMmInRadius = $v.meshMaxMmInRadius;
      _meshNearest25Km = $v.meshNearest25Km;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherHail other) {
    _$v = other as _$PlaceWeatherHail;
  }

  @override
  void update(void Function(PlaceWeatherHailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherHail build() => _build();

  _$PlaceWeatherHail _build() {
    final _$result =
        _$v ??
        _$PlaceWeatherHail._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'PlaceWeatherHail',
            'status',
          ),
          asOf: asOf,
          statusText: statusText,
          meshMaxMmInRadius: meshMaxMmInRadius,
          meshNearest25Km: meshNearest25Km,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
