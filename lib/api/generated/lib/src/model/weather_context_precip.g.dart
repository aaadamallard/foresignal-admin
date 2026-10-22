// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_context_precip.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherContextPrecip extends WeatherContextPrecip {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final num? rateMmH;
  @override
  final num? qpe1hMm;

  factory _$WeatherContextPrecip(
          [void Function(WeatherContextPrecipBuilder)? updates]) =>
      (WeatherContextPrecipBuilder()..update(updates))._build();

  _$WeatherContextPrecip._(
      {required this.status,
      this.asOf,
      this.statusText,
      this.rateMmH,
      this.qpe1hMm})
      : super._();
  @override
  WeatherContextPrecip rebuild(
          void Function(WeatherContextPrecipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherContextPrecipBuilder toBuilder() =>
      WeatherContextPrecipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherContextPrecip &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        rateMmH == other.rateMmH &&
        qpe1hMm == other.qpe1hMm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, rateMmH.hashCode);
    _$hash = $jc(_$hash, qpe1hMm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherContextPrecip')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('rateMmH', rateMmH)
          ..add('qpe1hMm', qpe1hMm))
        .toString();
  }
}

class WeatherContextPrecipBuilder
    implements Builder<WeatherContextPrecip, WeatherContextPrecipBuilder> {
  _$WeatherContextPrecip? _$v;

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

  num? _qpe1hMm;
  num? get qpe1hMm => _$this._qpe1hMm;
  set qpe1hMm(num? qpe1hMm) => _$this._qpe1hMm = qpe1hMm;

  WeatherContextPrecipBuilder() {
    WeatherContextPrecip._defaults(this);
  }

  WeatherContextPrecipBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _rateMmH = $v.rateMmH;
      _qpe1hMm = $v.qpe1hMm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherContextPrecip other) {
    _$v = other as _$WeatherContextPrecip;
  }

  @override
  void update(void Function(WeatherContextPrecipBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherContextPrecip build() => _build();

  _$WeatherContextPrecip _build() {
    final _$result = _$v ??
        _$WeatherContextPrecip._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'WeatherContextPrecip', 'status'),
          asOf: asOf,
          statusText: statusText,
          rateMmH: rateMmH,
          qpe1hMm: qpe1hMm,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
