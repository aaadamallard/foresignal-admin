// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_series_point.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastSeriesPoint extends ForecastSeriesPoint {
  @override
  final DateTime time;
  @override
  final num? tempC;
  @override
  final num? windSpeedMs;
  @override
  final int? windFromDeg;
  @override
  final num? gustMs;
  @override
  final int? popPct;
  @override
  final num? precipMm;
  @override
  final int? skyCoverPct;
  @override
  final num? smokeUgM3;

  factory _$ForecastSeriesPoint(
          [void Function(ForecastSeriesPointBuilder)? updates]) =>
      (ForecastSeriesPointBuilder()..update(updates))._build();

  _$ForecastSeriesPoint._(
      {required this.time,
      this.tempC,
      this.windSpeedMs,
      this.windFromDeg,
      this.gustMs,
      this.popPct,
      this.precipMm,
      this.skyCoverPct,
      this.smokeUgM3})
      : super._();
  @override
  ForecastSeriesPoint rebuild(
          void Function(ForecastSeriesPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastSeriesPointBuilder toBuilder() =>
      ForecastSeriesPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastSeriesPoint &&
        time == other.time &&
        tempC == other.tempC &&
        windSpeedMs == other.windSpeedMs &&
        windFromDeg == other.windFromDeg &&
        gustMs == other.gustMs &&
        popPct == other.popPct &&
        precipMm == other.precipMm &&
        skyCoverPct == other.skyCoverPct &&
        smokeUgM3 == other.smokeUgM3;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, tempC.hashCode);
    _$hash = $jc(_$hash, windSpeedMs.hashCode);
    _$hash = $jc(_$hash, windFromDeg.hashCode);
    _$hash = $jc(_$hash, gustMs.hashCode);
    _$hash = $jc(_$hash, popPct.hashCode);
    _$hash = $jc(_$hash, precipMm.hashCode);
    _$hash = $jc(_$hash, skyCoverPct.hashCode);
    _$hash = $jc(_$hash, smokeUgM3.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastSeriesPoint')
          ..add('time', time)
          ..add('tempC', tempC)
          ..add('windSpeedMs', windSpeedMs)
          ..add('windFromDeg', windFromDeg)
          ..add('gustMs', gustMs)
          ..add('popPct', popPct)
          ..add('precipMm', precipMm)
          ..add('skyCoverPct', skyCoverPct)
          ..add('smokeUgM3', smokeUgM3))
        .toString();
  }
}

class ForecastSeriesPointBuilder
    implements Builder<ForecastSeriesPoint, ForecastSeriesPointBuilder> {
  _$ForecastSeriesPoint? _$v;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  num? _tempC;
  num? get tempC => _$this._tempC;
  set tempC(num? tempC) => _$this._tempC = tempC;

  num? _windSpeedMs;
  num? get windSpeedMs => _$this._windSpeedMs;
  set windSpeedMs(num? windSpeedMs) => _$this._windSpeedMs = windSpeedMs;

  int? _windFromDeg;
  int? get windFromDeg => _$this._windFromDeg;
  set windFromDeg(int? windFromDeg) => _$this._windFromDeg = windFromDeg;

  num? _gustMs;
  num? get gustMs => _$this._gustMs;
  set gustMs(num? gustMs) => _$this._gustMs = gustMs;

  int? _popPct;
  int? get popPct => _$this._popPct;
  set popPct(int? popPct) => _$this._popPct = popPct;

  num? _precipMm;
  num? get precipMm => _$this._precipMm;
  set precipMm(num? precipMm) => _$this._precipMm = precipMm;

  int? _skyCoverPct;
  int? get skyCoverPct => _$this._skyCoverPct;
  set skyCoverPct(int? skyCoverPct) => _$this._skyCoverPct = skyCoverPct;

  num? _smokeUgM3;
  num? get smokeUgM3 => _$this._smokeUgM3;
  set smokeUgM3(num? smokeUgM3) => _$this._smokeUgM3 = smokeUgM3;

  ForecastSeriesPointBuilder() {
    ForecastSeriesPoint._defaults(this);
  }

  ForecastSeriesPointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _tempC = $v.tempC;
      _windSpeedMs = $v.windSpeedMs;
      _windFromDeg = $v.windFromDeg;
      _gustMs = $v.gustMs;
      _popPct = $v.popPct;
      _precipMm = $v.precipMm;
      _skyCoverPct = $v.skyCoverPct;
      _smokeUgM3 = $v.smokeUgM3;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastSeriesPoint other) {
    _$v = other as _$ForecastSeriesPoint;
  }

  @override
  void update(void Function(ForecastSeriesPointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastSeriesPoint build() => _build();

  _$ForecastSeriesPoint _build() {
    final _$result = _$v ??
        _$ForecastSeriesPoint._(
          time: BuiltValueNullFieldError.checkNotNull(
              time, r'ForecastSeriesPoint', 'time'),
          tempC: tempC,
          windSpeedMs: windSpeedMs,
          windFromDeg: windFromDeg,
          gustMs: gustMs,
          popPct: popPct,
          precipMm: precipMm,
          skyCoverPct: skyCoverPct,
          smokeUgM3: smokeUgM3,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
