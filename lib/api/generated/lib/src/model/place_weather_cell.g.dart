// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_cell.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherCell extends PlaceWeatherCell {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final int? eta50Min;
  @override
  final String? etaCellId;
  @override
  final num? etaSpeedKmh;
  @override
  final int? etaBearingDeg;

  factory _$PlaceWeatherCell([
    void Function(PlaceWeatherCellBuilder)? updates,
  ]) => (PlaceWeatherCellBuilder()..update(updates))._build();

  _$PlaceWeatherCell._({
    required this.status,
    this.asOf,
    this.statusText,
    this.eta50Min,
    this.etaCellId,
    this.etaSpeedKmh,
    this.etaBearingDeg,
  }) : super._();
  @override
  PlaceWeatherCell rebuild(void Function(PlaceWeatherCellBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherCellBuilder toBuilder() =>
      PlaceWeatherCellBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherCell &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        eta50Min == other.eta50Min &&
        etaCellId == other.etaCellId &&
        etaSpeedKmh == other.etaSpeedKmh &&
        etaBearingDeg == other.etaBearingDeg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, eta50Min.hashCode);
    _$hash = $jc(_$hash, etaCellId.hashCode);
    _$hash = $jc(_$hash, etaSpeedKmh.hashCode);
    _$hash = $jc(_$hash, etaBearingDeg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherCell')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('eta50Min', eta50Min)
          ..add('etaCellId', etaCellId)
          ..add('etaSpeedKmh', etaSpeedKmh)
          ..add('etaBearingDeg', etaBearingDeg))
        .toString();
  }
}

class PlaceWeatherCellBuilder
    implements Builder<PlaceWeatherCell, PlaceWeatherCellBuilder> {
  _$PlaceWeatherCell? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  int? _eta50Min;
  int? get eta50Min => _$this._eta50Min;
  set eta50Min(int? eta50Min) => _$this._eta50Min = eta50Min;

  String? _etaCellId;
  String? get etaCellId => _$this._etaCellId;
  set etaCellId(String? etaCellId) => _$this._etaCellId = etaCellId;

  num? _etaSpeedKmh;
  num? get etaSpeedKmh => _$this._etaSpeedKmh;
  set etaSpeedKmh(num? etaSpeedKmh) => _$this._etaSpeedKmh = etaSpeedKmh;

  int? _etaBearingDeg;
  int? get etaBearingDeg => _$this._etaBearingDeg;
  set etaBearingDeg(int? etaBearingDeg) =>
      _$this._etaBearingDeg = etaBearingDeg;

  PlaceWeatherCellBuilder() {
    PlaceWeatherCell._defaults(this);
  }

  PlaceWeatherCellBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _eta50Min = $v.eta50Min;
      _etaCellId = $v.etaCellId;
      _etaSpeedKmh = $v.etaSpeedKmh;
      _etaBearingDeg = $v.etaBearingDeg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherCell other) {
    _$v = other as _$PlaceWeatherCell;
  }

  @override
  void update(void Function(PlaceWeatherCellBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherCell build() => _build();

  _$PlaceWeatherCell _build() {
    final _$result =
        _$v ??
        _$PlaceWeatherCell._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'PlaceWeatherCell',
            'status',
          ),
          asOf: asOf,
          statusText: statusText,
          eta50Min: eta50Min,
          etaCellId: etaCellId,
          etaSpeedKmh: etaSpeedKmh,
          etaBearingDeg: etaBearingDeg,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
