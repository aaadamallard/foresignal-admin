// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_context_wind.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherContextWind extends WeatherContextWind {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final String? productId;
  @override
  final num? speedMs;
  @override
  final num? gustMs;
  @override
  final int? fromDeg;
  @override
  final String? run;
  @override
  final DateTime? validTime;
  @override
  final int? step;

  factory _$WeatherContextWind(
          [void Function(WeatherContextWindBuilder)? updates]) =>
      (WeatherContextWindBuilder()..update(updates))._build();

  _$WeatherContextWind._(
      {required this.status,
      this.asOf,
      this.statusText,
      this.productId,
      this.speedMs,
      this.gustMs,
      this.fromDeg,
      this.run,
      this.validTime,
      this.step})
      : super._();
  @override
  WeatherContextWind rebuild(
          void Function(WeatherContextWindBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherContextWindBuilder toBuilder() =>
      WeatherContextWindBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherContextWind &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        productId == other.productId &&
        speedMs == other.speedMs &&
        gustMs == other.gustMs &&
        fromDeg == other.fromDeg &&
        run == other.run &&
        validTime == other.validTime &&
        step == other.step;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, speedMs.hashCode);
    _$hash = $jc(_$hash, gustMs.hashCode);
    _$hash = $jc(_$hash, fromDeg.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, validTime.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherContextWind')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('productId', productId)
          ..add('speedMs', speedMs)
          ..add('gustMs', gustMs)
          ..add('fromDeg', fromDeg)
          ..add('run', run)
          ..add('validTime', validTime)
          ..add('step', step))
        .toString();
  }
}

class WeatherContextWindBuilder
    implements Builder<WeatherContextWind, WeatherContextWindBuilder> {
  _$WeatherContextWind? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  num? _speedMs;
  num? get speedMs => _$this._speedMs;
  set speedMs(num? speedMs) => _$this._speedMs = speedMs;

  num? _gustMs;
  num? get gustMs => _$this._gustMs;
  set gustMs(num? gustMs) => _$this._gustMs = gustMs;

  int? _fromDeg;
  int? get fromDeg => _$this._fromDeg;
  set fromDeg(int? fromDeg) => _$this._fromDeg = fromDeg;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  DateTime? _validTime;
  DateTime? get validTime => _$this._validTime;
  set validTime(DateTime? validTime) => _$this._validTime = validTime;

  int? _step;
  int? get step => _$this._step;
  set step(int? step) => _$this._step = step;

  WeatherContextWindBuilder() {
    WeatherContextWind._defaults(this);
  }

  WeatherContextWindBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _productId = $v.productId;
      _speedMs = $v.speedMs;
      _gustMs = $v.gustMs;
      _fromDeg = $v.fromDeg;
      _run = $v.run;
      _validTime = $v.validTime;
      _step = $v.step;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherContextWind other) {
    _$v = other as _$WeatherContextWind;
  }

  @override
  void update(void Function(WeatherContextWindBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherContextWind build() => _build();

  _$WeatherContextWind _build() {
    final _$result = _$v ??
        _$WeatherContextWind._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'WeatherContextWind', 'status'),
          asOf: asOf,
          statusText: statusText,
          productId: productId,
          speedMs: speedMs,
          gustMs: gustMs,
          fromDeg: fromDeg,
          run: run,
          validTime: validTime,
          step: step,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
