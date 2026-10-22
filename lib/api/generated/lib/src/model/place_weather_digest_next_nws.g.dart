// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_digest_next_nws.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherDigestNextNws extends PlaceWeatherDigestNextNws {
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
  @override
  final num? tMaxC24h;
  @override
  final num? tMinC24h;
  @override
  final DateTime? updatedAt;

  factory _$PlaceWeatherDigestNextNws([
    void Function(PlaceWeatherDigestNextNwsBuilder)? updates,
  ]) => (PlaceWeatherDigestNextNwsBuilder()..update(updates))._build();

  _$PlaceWeatherDigestNextNws._({
    required this.status,
    this.asOf,
    this.statusText,
    this.popMax24h,
    this.qpf24hMm,
    this.gustMaxMs24h,
    this.tMaxC24h,
    this.tMinC24h,
    this.updatedAt,
  }) : super._();
  @override
  PlaceWeatherDigestNextNws rebuild(
    void Function(PlaceWeatherDigestNextNwsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherDigestNextNwsBuilder toBuilder() =>
      PlaceWeatherDigestNextNwsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherDigestNextNws &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        popMax24h == other.popMax24h &&
        qpf24hMm == other.qpf24hMm &&
        gustMaxMs24h == other.gustMaxMs24h &&
        tMaxC24h == other.tMaxC24h &&
        tMinC24h == other.tMinC24h &&
        updatedAt == other.updatedAt;
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
    _$hash = $jc(_$hash, tMaxC24h.hashCode);
    _$hash = $jc(_$hash, tMinC24h.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherDigestNextNws')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('popMax24h', popMax24h)
          ..add('qpf24hMm', qpf24hMm)
          ..add('gustMaxMs24h', gustMaxMs24h)
          ..add('tMaxC24h', tMaxC24h)
          ..add('tMinC24h', tMinC24h)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PlaceWeatherDigestNextNwsBuilder
    implements
        Builder<PlaceWeatherDigestNextNws, PlaceWeatherDigestNextNwsBuilder> {
  _$PlaceWeatherDigestNextNws? _$v;

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

  num? _tMaxC24h;
  num? get tMaxC24h => _$this._tMaxC24h;
  set tMaxC24h(num? tMaxC24h) => _$this._tMaxC24h = tMaxC24h;

  num? _tMinC24h;
  num? get tMinC24h => _$this._tMinC24h;
  set tMinC24h(num? tMinC24h) => _$this._tMinC24h = tMinC24h;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PlaceWeatherDigestNextNwsBuilder() {
    PlaceWeatherDigestNextNws._defaults(this);
  }

  PlaceWeatherDigestNextNwsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _popMax24h = $v.popMax24h;
      _qpf24hMm = $v.qpf24hMm;
      _gustMaxMs24h = $v.gustMaxMs24h;
      _tMaxC24h = $v.tMaxC24h;
      _tMinC24h = $v.tMinC24h;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherDigestNextNws other) {
    _$v = other as _$PlaceWeatherDigestNextNws;
  }

  @override
  void update(void Function(PlaceWeatherDigestNextNwsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherDigestNextNws build() => _build();

  _$PlaceWeatherDigestNextNws _build() {
    final _$result =
        _$v ??
        _$PlaceWeatherDigestNextNws._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'PlaceWeatherDigestNextNws',
            'status',
          ),
          asOf: asOf,
          statusText: statusText,
          popMax24h: popMax24h,
          qpf24hMm: qpf24hMm,
          gustMaxMs24h: gustMaxMs24h,
          tMaxC24h: tMaxC24h,
          tMinC24h: tMinC24h,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
