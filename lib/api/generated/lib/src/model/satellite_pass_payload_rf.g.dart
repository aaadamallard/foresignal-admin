// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'satellite_pass_payload_rf.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SatellitePassPayloadRf extends SatellitePassPayloadRf {
  @override
  final num? snrMaxDb;
  @override
  final num? snrMeanDb;
  @override
  final num? berMin;
  @override
  final num? berMean;
  @override
  final num? syncedFraction;
  @override
  final DateTime? firstLockAt;
  @override
  final DateTime? lastLockAt;
  @override
  final num? firstLockElevationDeg;
  @override
  final num? lastLockElevationDeg;
  @override
  final BuiltList<SatellitePassPayloadRfSnrByElevationInner>? snrByElevation;

  factory _$SatellitePassPayloadRf(
          [void Function(SatellitePassPayloadRfBuilder)? updates]) =>
      (SatellitePassPayloadRfBuilder()..update(updates))._build();

  _$SatellitePassPayloadRf._(
      {this.snrMaxDb,
      this.snrMeanDb,
      this.berMin,
      this.berMean,
      this.syncedFraction,
      this.firstLockAt,
      this.lastLockAt,
      this.firstLockElevationDeg,
      this.lastLockElevationDeg,
      this.snrByElevation})
      : super._();
  @override
  SatellitePassPayloadRf rebuild(
          void Function(SatellitePassPayloadRfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SatellitePassPayloadRfBuilder toBuilder() =>
      SatellitePassPayloadRfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SatellitePassPayloadRf &&
        snrMaxDb == other.snrMaxDb &&
        snrMeanDb == other.snrMeanDb &&
        berMin == other.berMin &&
        berMean == other.berMean &&
        syncedFraction == other.syncedFraction &&
        firstLockAt == other.firstLockAt &&
        lastLockAt == other.lastLockAt &&
        firstLockElevationDeg == other.firstLockElevationDeg &&
        lastLockElevationDeg == other.lastLockElevationDeg &&
        snrByElevation == other.snrByElevation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snrMaxDb.hashCode);
    _$hash = $jc(_$hash, snrMeanDb.hashCode);
    _$hash = $jc(_$hash, berMin.hashCode);
    _$hash = $jc(_$hash, berMean.hashCode);
    _$hash = $jc(_$hash, syncedFraction.hashCode);
    _$hash = $jc(_$hash, firstLockAt.hashCode);
    _$hash = $jc(_$hash, lastLockAt.hashCode);
    _$hash = $jc(_$hash, firstLockElevationDeg.hashCode);
    _$hash = $jc(_$hash, lastLockElevationDeg.hashCode);
    _$hash = $jc(_$hash, snrByElevation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SatellitePassPayloadRf')
          ..add('snrMaxDb', snrMaxDb)
          ..add('snrMeanDb', snrMeanDb)
          ..add('berMin', berMin)
          ..add('berMean', berMean)
          ..add('syncedFraction', syncedFraction)
          ..add('firstLockAt', firstLockAt)
          ..add('lastLockAt', lastLockAt)
          ..add('firstLockElevationDeg', firstLockElevationDeg)
          ..add('lastLockElevationDeg', lastLockElevationDeg)
          ..add('snrByElevation', snrByElevation))
        .toString();
  }
}

class SatellitePassPayloadRfBuilder
    implements Builder<SatellitePassPayloadRf, SatellitePassPayloadRfBuilder> {
  _$SatellitePassPayloadRf? _$v;

  num? _snrMaxDb;
  num? get snrMaxDb => _$this._snrMaxDb;
  set snrMaxDb(num? snrMaxDb) => _$this._snrMaxDb = snrMaxDb;

  num? _snrMeanDb;
  num? get snrMeanDb => _$this._snrMeanDb;
  set snrMeanDb(num? snrMeanDb) => _$this._snrMeanDb = snrMeanDb;

  num? _berMin;
  num? get berMin => _$this._berMin;
  set berMin(num? berMin) => _$this._berMin = berMin;

  num? _berMean;
  num? get berMean => _$this._berMean;
  set berMean(num? berMean) => _$this._berMean = berMean;

  num? _syncedFraction;
  num? get syncedFraction => _$this._syncedFraction;
  set syncedFraction(num? syncedFraction) =>
      _$this._syncedFraction = syncedFraction;

  DateTime? _firstLockAt;
  DateTime? get firstLockAt => _$this._firstLockAt;
  set firstLockAt(DateTime? firstLockAt) => _$this._firstLockAt = firstLockAt;

  DateTime? _lastLockAt;
  DateTime? get lastLockAt => _$this._lastLockAt;
  set lastLockAt(DateTime? lastLockAt) => _$this._lastLockAt = lastLockAt;

  num? _firstLockElevationDeg;
  num? get firstLockElevationDeg => _$this._firstLockElevationDeg;
  set firstLockElevationDeg(num? firstLockElevationDeg) =>
      _$this._firstLockElevationDeg = firstLockElevationDeg;

  num? _lastLockElevationDeg;
  num? get lastLockElevationDeg => _$this._lastLockElevationDeg;
  set lastLockElevationDeg(num? lastLockElevationDeg) =>
      _$this._lastLockElevationDeg = lastLockElevationDeg;

  ListBuilder<SatellitePassPayloadRfSnrByElevationInner>? _snrByElevation;
  ListBuilder<SatellitePassPayloadRfSnrByElevationInner> get snrByElevation =>
      _$this._snrByElevation ??=
          ListBuilder<SatellitePassPayloadRfSnrByElevationInner>();
  set snrByElevation(
          ListBuilder<SatellitePassPayloadRfSnrByElevationInner>?
              snrByElevation) =>
      _$this._snrByElevation = snrByElevation;

  SatellitePassPayloadRfBuilder() {
    SatellitePassPayloadRf._defaults(this);
  }

  SatellitePassPayloadRfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snrMaxDb = $v.snrMaxDb;
      _snrMeanDb = $v.snrMeanDb;
      _berMin = $v.berMin;
      _berMean = $v.berMean;
      _syncedFraction = $v.syncedFraction;
      _firstLockAt = $v.firstLockAt;
      _lastLockAt = $v.lastLockAt;
      _firstLockElevationDeg = $v.firstLockElevationDeg;
      _lastLockElevationDeg = $v.lastLockElevationDeg;
      _snrByElevation = $v.snrByElevation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SatellitePassPayloadRf other) {
    _$v = other as _$SatellitePassPayloadRf;
  }

  @override
  void update(void Function(SatellitePassPayloadRfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SatellitePassPayloadRf build() => _build();

  _$SatellitePassPayloadRf _build() {
    _$SatellitePassPayloadRf _$result;
    try {
      _$result = _$v ??
          _$SatellitePassPayloadRf._(
            snrMaxDb: snrMaxDb,
            snrMeanDb: snrMeanDb,
            berMin: berMin,
            berMean: berMean,
            syncedFraction: syncedFraction,
            firstLockAt: firstLockAt,
            lastLockAt: lastLockAt,
            firstLockElevationDeg: firstLockElevationDeg,
            lastLockElevationDeg: lastLockElevationDeg,
            snrByElevation: _snrByElevation?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snrByElevation';
        _snrByElevation?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SatellitePassPayloadRf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
