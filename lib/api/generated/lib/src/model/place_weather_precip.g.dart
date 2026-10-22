// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_precip.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherPrecip extends PlaceWeatherPrecip {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final num? rateMmH;
  @override
  final num? qpe1hMmMax;
  @override
  final num? qpe24hMmMax;
  @override
  final num? ffgRatio1hPctMax;

  factory _$PlaceWeatherPrecip(
          [void Function(PlaceWeatherPrecipBuilder)? updates]) =>
      (PlaceWeatherPrecipBuilder()..update(updates))._build();

  _$PlaceWeatherPrecip._(
      {required this.status,
      this.asOf,
      this.statusText,
      this.rateMmH,
      this.qpe1hMmMax,
      this.qpe24hMmMax,
      this.ffgRatio1hPctMax})
      : super._();
  @override
  PlaceWeatherPrecip rebuild(
          void Function(PlaceWeatherPrecipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherPrecipBuilder toBuilder() =>
      PlaceWeatherPrecipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherPrecip &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        rateMmH == other.rateMmH &&
        qpe1hMmMax == other.qpe1hMmMax &&
        qpe24hMmMax == other.qpe24hMmMax &&
        ffgRatio1hPctMax == other.ffgRatio1hPctMax;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, rateMmH.hashCode);
    _$hash = $jc(_$hash, qpe1hMmMax.hashCode);
    _$hash = $jc(_$hash, qpe24hMmMax.hashCode);
    _$hash = $jc(_$hash, ffgRatio1hPctMax.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherPrecip')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('rateMmH', rateMmH)
          ..add('qpe1hMmMax', qpe1hMmMax)
          ..add('qpe24hMmMax', qpe24hMmMax)
          ..add('ffgRatio1hPctMax', ffgRatio1hPctMax))
        .toString();
  }
}

class PlaceWeatherPrecipBuilder
    implements Builder<PlaceWeatherPrecip, PlaceWeatherPrecipBuilder> {
  _$PlaceWeatherPrecip? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  num? _rateMmH;
  num? get rateMmH => _$this._rateMmH;
  set rateMmH(num? rateMmH) => _$this._rateMmH = rateMmH;

  num? _qpe1hMmMax;
  num? get qpe1hMmMax => _$this._qpe1hMmMax;
  set qpe1hMmMax(num? qpe1hMmMax) => _$this._qpe1hMmMax = qpe1hMmMax;

  num? _qpe24hMmMax;
  num? get qpe24hMmMax => _$this._qpe24hMmMax;
  set qpe24hMmMax(num? qpe24hMmMax) => _$this._qpe24hMmMax = qpe24hMmMax;

  num? _ffgRatio1hPctMax;
  num? get ffgRatio1hPctMax => _$this._ffgRatio1hPctMax;
  set ffgRatio1hPctMax(num? ffgRatio1hPctMax) =>
      _$this._ffgRatio1hPctMax = ffgRatio1hPctMax;

  PlaceWeatherPrecipBuilder() {
    PlaceWeatherPrecip._defaults(this);
  }

  PlaceWeatherPrecipBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _rateMmH = $v.rateMmH;
      _qpe1hMmMax = $v.qpe1hMmMax;
      _qpe24hMmMax = $v.qpe24hMmMax;
      _ffgRatio1hPctMax = $v.ffgRatio1hPctMax;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherPrecip other) {
    _$v = other as _$PlaceWeatherPrecip;
  }

  @override
  void update(void Function(PlaceWeatherPrecipBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherPrecip build() => _build();

  _$PlaceWeatherPrecip _build() {
    final _$result = _$v ??
        _$PlaceWeatherPrecip._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'PlaceWeatherPrecip', 'status'),
          asOf: asOf,
          statusText: statusText,
          rateMmH: rateMmH,
          qpe1hMmMax: qpe1hMmMax,
          qpe24hMmMax: qpe24hMmMax,
          ffgRatio1hPctMax: ffgRatio1hPctMax,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
