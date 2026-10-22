// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'satellite_pass_payload_rf_snr_by_elevation_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SatellitePassPayloadRfSnrByElevationInner
    extends SatellitePassPayloadRfSnrByElevationInner {
  @override
  final num elevationDeg;
  @override
  final num snrDb;

  factory _$SatellitePassPayloadRfSnrByElevationInner(
          [void Function(SatellitePassPayloadRfSnrByElevationInnerBuilder)?
              updates]) =>
      (SatellitePassPayloadRfSnrByElevationInnerBuilder()..update(updates))
          ._build();

  _$SatellitePassPayloadRfSnrByElevationInner._(
      {required this.elevationDeg, required this.snrDb})
      : super._();
  @override
  SatellitePassPayloadRfSnrByElevationInner rebuild(
          void Function(SatellitePassPayloadRfSnrByElevationInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SatellitePassPayloadRfSnrByElevationInnerBuilder toBuilder() =>
      SatellitePassPayloadRfSnrByElevationInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SatellitePassPayloadRfSnrByElevationInner &&
        elevationDeg == other.elevationDeg &&
        snrDb == other.snrDb;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, elevationDeg.hashCode);
    _$hash = $jc(_$hash, snrDb.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SatellitePassPayloadRfSnrByElevationInner')
          ..add('elevationDeg', elevationDeg)
          ..add('snrDb', snrDb))
        .toString();
  }
}

class SatellitePassPayloadRfSnrByElevationInnerBuilder
    implements
        Builder<SatellitePassPayloadRfSnrByElevationInner,
            SatellitePassPayloadRfSnrByElevationInnerBuilder> {
  _$SatellitePassPayloadRfSnrByElevationInner? _$v;

  num? _elevationDeg;
  num? get elevationDeg => _$this._elevationDeg;
  set elevationDeg(num? elevationDeg) => _$this._elevationDeg = elevationDeg;

  num? _snrDb;
  num? get snrDb => _$this._snrDb;
  set snrDb(num? snrDb) => _$this._snrDb = snrDb;

  SatellitePassPayloadRfSnrByElevationInnerBuilder() {
    SatellitePassPayloadRfSnrByElevationInner._defaults(this);
  }

  SatellitePassPayloadRfSnrByElevationInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _elevationDeg = $v.elevationDeg;
      _snrDb = $v.snrDb;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SatellitePassPayloadRfSnrByElevationInner other) {
    _$v = other as _$SatellitePassPayloadRfSnrByElevationInner;
  }

  @override
  void update(
      void Function(SatellitePassPayloadRfSnrByElevationInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SatellitePassPayloadRfSnrByElevationInner build() => _build();

  _$SatellitePassPayloadRfSnrByElevationInner _build() {
    final _$result = _$v ??
        _$SatellitePassPayloadRfSnrByElevationInner._(
          elevationDeg: BuiltValueNullFieldError.checkNotNull(elevationDeg,
              r'SatellitePassPayloadRfSnrByElevationInner', 'elevationDeg'),
          snrDb: BuiltValueNullFieldError.checkNotNull(
              snrDb, r'SatellitePassPayloadRfSnrByElevationInner', 'snrDb'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
