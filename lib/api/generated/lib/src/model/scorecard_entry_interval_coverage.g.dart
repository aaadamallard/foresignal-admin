// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scorecard_entry_interval_coverage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScorecardEntryIntervalCoverage extends ScorecardEntryIntervalCoverage {
  @override
  final num? p05p95;
  @override
  final num? p25p75;

  factory _$ScorecardEntryIntervalCoverage(
          [void Function(ScorecardEntryIntervalCoverageBuilder)? updates]) =>
      (ScorecardEntryIntervalCoverageBuilder()..update(updates))._build();

  _$ScorecardEntryIntervalCoverage._({this.p05p95, this.p25p75}) : super._();
  @override
  ScorecardEntryIntervalCoverage rebuild(
          void Function(ScorecardEntryIntervalCoverageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScorecardEntryIntervalCoverageBuilder toBuilder() =>
      ScorecardEntryIntervalCoverageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScorecardEntryIntervalCoverage &&
        p05p95 == other.p05p95 &&
        p25p75 == other.p25p75;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, p05p95.hashCode);
    _$hash = $jc(_$hash, p25p75.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScorecardEntryIntervalCoverage')
          ..add('p05p95', p05p95)
          ..add('p25p75', p25p75))
        .toString();
  }
}

class ScorecardEntryIntervalCoverageBuilder
    implements
        Builder<ScorecardEntryIntervalCoverage,
            ScorecardEntryIntervalCoverageBuilder> {
  _$ScorecardEntryIntervalCoverage? _$v;

  num? _p05p95;
  num? get p05p95 => _$this._p05p95;
  set p05p95(num? p05p95) => _$this._p05p95 = p05p95;

  num? _p25p75;
  num? get p25p75 => _$this._p25p75;
  set p25p75(num? p25p75) => _$this._p25p75 = p25p75;

  ScorecardEntryIntervalCoverageBuilder() {
    ScorecardEntryIntervalCoverage._defaults(this);
  }

  ScorecardEntryIntervalCoverageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _p05p95 = $v.p05p95;
      _p25p75 = $v.p25p75;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScorecardEntryIntervalCoverage other) {
    _$v = other as _$ScorecardEntryIntervalCoverage;
  }

  @override
  void update(void Function(ScorecardEntryIntervalCoverageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScorecardEntryIntervalCoverage build() => _build();

  _$ScorecardEntryIntervalCoverage _build() {
    final _$result = _$v ??
        _$ScorecardEntryIntervalCoverage._(
          p05p95: p05p95,
          p25p75: p25p75,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
