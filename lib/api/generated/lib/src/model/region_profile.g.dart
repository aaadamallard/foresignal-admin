// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionProfile extends RegionProfile {
  @override
  final String regionCode;
  @override
  final num reportingDensity;
  @override
  final int densityDecile;
  @override
  final DateTime computedAt;

  factory _$RegionProfile([void Function(RegionProfileBuilder)? updates]) =>
      (RegionProfileBuilder()..update(updates))._build();

  _$RegionProfile._(
      {required this.regionCode,
      required this.reportingDensity,
      required this.densityDecile,
      required this.computedAt})
      : super._();
  @override
  RegionProfile rebuild(void Function(RegionProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionProfileBuilder toBuilder() => RegionProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionProfile &&
        regionCode == other.regionCode &&
        reportingDensity == other.reportingDensity &&
        densityDecile == other.densityDecile &&
        computedAt == other.computedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionCode.hashCode);
    _$hash = $jc(_$hash, reportingDensity.hashCode);
    _$hash = $jc(_$hash, densityDecile.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionProfile')
          ..add('regionCode', regionCode)
          ..add('reportingDensity', reportingDensity)
          ..add('densityDecile', densityDecile)
          ..add('computedAt', computedAt))
        .toString();
  }
}

class RegionProfileBuilder
    implements Builder<RegionProfile, RegionProfileBuilder> {
  _$RegionProfile? _$v;

  String? _regionCode;
  String? get regionCode => _$this._regionCode;
  set regionCode(String? regionCode) => _$this._regionCode = regionCode;

  num? _reportingDensity;
  num? get reportingDensity => _$this._reportingDensity;
  set reportingDensity(num? reportingDensity) =>
      _$this._reportingDensity = reportingDensity;

  int? _densityDecile;
  int? get densityDecile => _$this._densityDecile;
  set densityDecile(int? densityDecile) =>
      _$this._densityDecile = densityDecile;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  RegionProfileBuilder() {
    RegionProfile._defaults(this);
  }

  RegionProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionCode = $v.regionCode;
      _reportingDensity = $v.reportingDensity;
      _densityDecile = $v.densityDecile;
      _computedAt = $v.computedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionProfile other) {
    _$v = other as _$RegionProfile;
  }

  @override
  void update(void Function(RegionProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionProfile build() => _build();

  _$RegionProfile _build() {
    final _$result = _$v ??
        _$RegionProfile._(
          regionCode: BuiltValueNullFieldError.checkNotNull(
              regionCode, r'RegionProfile', 'regionCode'),
          reportingDensity: BuiltValueNullFieldError.checkNotNull(
              reportingDensity, r'RegionProfile', 'reportingDensity'),
          densityDecile: BuiltValueNullFieldError.checkNotNull(
              densityDecile, r'RegionProfile', 'densityDecile'),
          computedAt: BuiltValueNullFieldError.checkNotNull(
              computedAt, r'RegionProfile', 'computedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
