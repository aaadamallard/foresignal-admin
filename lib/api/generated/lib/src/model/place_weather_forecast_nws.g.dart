// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_forecast_nws.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherForecastNws extends PlaceWeatherForecastNws {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final int? popMax24h;
  @override
  final num? qpf24hMm;
  @override
  final num? gustMaxMs24h;

  factory _$PlaceWeatherForecastNws([
    void Function(PlaceWeatherForecastNwsBuilder)? updates,
  ]) => (PlaceWeatherForecastNwsBuilder()..update(updates))._build();

  _$PlaceWeatherForecastNws._({
    required this.status,
    this.asOf,
    this.statusText,
    this.popMax24h,
    this.qpf24hMm,
    this.gustMaxMs24h,
  }) : super._();
  @override
  PlaceWeatherForecastNws rebuild(
    void Function(PlaceWeatherForecastNwsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherForecastNwsBuilder toBuilder() =>
      PlaceWeatherForecastNwsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherForecastNws &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        popMax24h == other.popMax24h &&
        qpf24hMm == other.qpf24hMm &&
        gustMaxMs24h == other.gustMaxMs24h;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, popMax24h.hashCode);
    _$hash = $jc(_$hash, qpf24hMm.hashCode);
    _$hash = $jc(_$hash, gustMaxMs24h.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherForecastNws')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('popMax24h', popMax24h)
          ..add('qpf24hMm', qpf24hMm)
          ..add('gustMaxMs24h', gustMaxMs24h))
        .toString();
  }
}

class PlaceWeatherForecastNwsBuilder
    implements
        Builder<PlaceWeatherForecastNws, PlaceWeatherForecastNwsBuilder> {
  _$PlaceWeatherForecastNws? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  int? _popMax24h;
  int? get popMax24h => _$this._popMax24h;
  set popMax24h(int? popMax24h) => _$this._popMax24h = popMax24h;

  num? _qpf24hMm;
  num? get qpf24hMm => _$this._qpf24hMm;
  set qpf24hMm(num? qpf24hMm) => _$this._qpf24hMm = qpf24hMm;

  num? _gustMaxMs24h;
  num? get gustMaxMs24h => _$this._gustMaxMs24h;
  set gustMaxMs24h(num? gustMaxMs24h) => _$this._gustMaxMs24h = gustMaxMs24h;

  PlaceWeatherForecastNwsBuilder() {
    PlaceWeatherForecastNws._defaults(this);
  }

  PlaceWeatherForecastNwsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _popMax24h = $v.popMax24h;
      _qpf24hMm = $v.qpf24hMm;
      _gustMaxMs24h = $v.gustMaxMs24h;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherForecastNws other) {
    _$v = other as _$PlaceWeatherForecastNws;
  }

  @override
  void update(void Function(PlaceWeatherForecastNwsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherForecastNws build() => _build();

  _$PlaceWeatherForecastNws _build() {
    final _$result =
        _$v ??
        _$PlaceWeatherForecastNws._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'PlaceWeatherForecastNws',
            'status',
          ),
          asOf: asOf,
          statusText: statusText,
          popMax24h: popMax24h,
          qpf24hMm: qpf24hMm,
          gustMaxMs24h: gustMaxMs24h,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
