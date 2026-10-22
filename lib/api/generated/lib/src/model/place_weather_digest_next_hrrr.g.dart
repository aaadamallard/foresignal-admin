// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_digest_next_hrrr.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherDigestNextHrrr extends PlaceWeatherDigestNextHrrr {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final String? run;
  @override
  final num? gustMaxMs;
  @override
  final num? precipMm;
  @override
  final num? smokeMaxUgM3;
  @override
  final DateTime? validTime;

  factory _$PlaceWeatherDigestNextHrrr(
          [void Function(PlaceWeatherDigestNextHrrrBuilder)? updates]) =>
      (PlaceWeatherDigestNextHrrrBuilder()..update(updates))._build();

  _$PlaceWeatherDigestNextHrrr._(
      {required this.status,
      this.asOf,
      this.statusText,
      this.run,
      this.gustMaxMs,
      this.precipMm,
      this.smokeMaxUgM3,
      this.validTime})
      : super._();
  @override
  PlaceWeatherDigestNextHrrr rebuild(
          void Function(PlaceWeatherDigestNextHrrrBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherDigestNextHrrrBuilder toBuilder() =>
      PlaceWeatherDigestNextHrrrBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherDigestNextHrrr &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        run == other.run &&
        gustMaxMs == other.gustMaxMs &&
        precipMm == other.precipMm &&
        smokeMaxUgM3 == other.smokeMaxUgM3 &&
        validTime == other.validTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, gustMaxMs.hashCode);
    _$hash = $jc(_$hash, precipMm.hashCode);
    _$hash = $jc(_$hash, smokeMaxUgM3.hashCode);
    _$hash = $jc(_$hash, validTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherDigestNextHrrr')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('run', run)
          ..add('gustMaxMs', gustMaxMs)
          ..add('precipMm', precipMm)
          ..add('smokeMaxUgM3', smokeMaxUgM3)
          ..add('validTime', validTime))
        .toString();
  }
}

class PlaceWeatherDigestNextHrrrBuilder
    implements
        Builder<PlaceWeatherDigestNextHrrr, PlaceWeatherDigestNextHrrrBuilder> {
  _$PlaceWeatherDigestNextHrrr? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  num? _gustMaxMs;
  num? get gustMaxMs => _$this._gustMaxMs;
  set gustMaxMs(num? gustMaxMs) => _$this._gustMaxMs = gustMaxMs;

  num? _precipMm;
  num? get precipMm => _$this._precipMm;
  set precipMm(num? precipMm) => _$this._precipMm = precipMm;

  num? _smokeMaxUgM3;
  num? get smokeMaxUgM3 => _$this._smokeMaxUgM3;
  set smokeMaxUgM3(num? smokeMaxUgM3) => _$this._smokeMaxUgM3 = smokeMaxUgM3;

  DateTime? _validTime;
  DateTime? get validTime => _$this._validTime;
  set validTime(DateTime? validTime) => _$this._validTime = validTime;

  PlaceWeatherDigestNextHrrrBuilder() {
    PlaceWeatherDigestNextHrrr._defaults(this);
  }

  PlaceWeatherDigestNextHrrrBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _run = $v.run;
      _gustMaxMs = $v.gustMaxMs;
      _precipMm = $v.precipMm;
      _smokeMaxUgM3 = $v.smokeMaxUgM3;
      _validTime = $v.validTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherDigestNextHrrr other) {
    _$v = other as _$PlaceWeatherDigestNextHrrr;
  }

  @override
  void update(void Function(PlaceWeatherDigestNextHrrrBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherDigestNextHrrr build() => _build();

  _$PlaceWeatherDigestNextHrrr _build() {
    final _$result = _$v ??
        _$PlaceWeatherDigestNextHrrr._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'PlaceWeatherDigestNextHrrr', 'status'),
          asOf: asOf,
          statusText: statusText,
          run: run,
          gustMaxMs: gustMaxMs,
          precipMm: precipMm,
          smokeMaxUgM3: smokeMaxUgM3,
          validTime: validTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
