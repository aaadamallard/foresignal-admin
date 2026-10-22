// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_context_radar.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherContextRadar extends WeatherContextRadar {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final num? maxDbz;
  @override
  final WeatherContextRadarNearestCell? nearestCell;

  factory _$WeatherContextRadar([
    void Function(WeatherContextRadarBuilder)? updates,
  ]) => (WeatherContextRadarBuilder()..update(updates))._build();

  _$WeatherContextRadar._({
    required this.status,
    this.asOf,
    this.statusText,
    this.maxDbz,
    this.nearestCell,
  }) : super._();
  @override
  WeatherContextRadar rebuild(
    void Function(WeatherContextRadarBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WeatherContextRadarBuilder toBuilder() =>
      WeatherContextRadarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherContextRadar &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        maxDbz == other.maxDbz &&
        nearestCell == other.nearestCell;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, maxDbz.hashCode);
    _$hash = $jc(_$hash, nearestCell.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherContextRadar')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('maxDbz', maxDbz)
          ..add('nearestCell', nearestCell))
        .toString();
  }
}

class WeatherContextRadarBuilder
    implements Builder<WeatherContextRadar, WeatherContextRadarBuilder> {
  _$WeatherContextRadar? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  num? _maxDbz;
  num? get maxDbz => _$this._maxDbz;
  set maxDbz(num? maxDbz) => _$this._maxDbz = maxDbz;

  WeatherContextRadarNearestCellBuilder? _nearestCell;
  WeatherContextRadarNearestCellBuilder get nearestCell =>
      _$this._nearestCell ??= WeatherContextRadarNearestCellBuilder();
  set nearestCell(WeatherContextRadarNearestCellBuilder? nearestCell) =>
      _$this._nearestCell = nearestCell;

  WeatherContextRadarBuilder() {
    WeatherContextRadar._defaults(this);
  }

  WeatherContextRadarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _maxDbz = $v.maxDbz;
      _nearestCell = $v.nearestCell?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherContextRadar other) {
    _$v = other as _$WeatherContextRadar;
  }

  @override
  void update(void Function(WeatherContextRadarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherContextRadar build() => _build();

  _$WeatherContextRadar _build() {
    _$WeatherContextRadar _$result;
    try {
      _$result =
          _$v ??
          _$WeatherContextRadar._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'WeatherContextRadar',
              'status',
            ),
            asOf: asOf,
            statusText: statusText,
            maxDbz: maxDbz,
            nearestCell: _nearestCell?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nearestCell';
        _nearestCell?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WeatherContextRadar',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
