// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_lag_distribution.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorLagDistribution extends PrecursorLagDistribution {
  @override
  final String? p25;
  @override
  final String? median;
  @override
  final String? p75;

  factory _$PrecursorLagDistribution(
          [void Function(PrecursorLagDistributionBuilder)? updates]) =>
      (PrecursorLagDistributionBuilder()..update(updates))._build();

  _$PrecursorLagDistribution._({this.p25, this.median, this.p75}) : super._();
  @override
  PrecursorLagDistribution rebuild(
          void Function(PrecursorLagDistributionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorLagDistributionBuilder toBuilder() =>
      PrecursorLagDistributionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorLagDistribution &&
        p25 == other.p25 &&
        median == other.median &&
        p75 == other.p75;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, p25.hashCode);
    _$hash = $jc(_$hash, median.hashCode);
    _$hash = $jc(_$hash, p75.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorLagDistribution')
          ..add('p25', p25)
          ..add('median', median)
          ..add('p75', p75))
        .toString();
  }
}

class PrecursorLagDistributionBuilder
    implements
        Builder<PrecursorLagDistribution, PrecursorLagDistributionBuilder> {
  _$PrecursorLagDistribution? _$v;

  String? _p25;
  String? get p25 => _$this._p25;
  set p25(String? p25) => _$this._p25 = p25;

  String? _median;
  String? get median => _$this._median;
  set median(String? median) => _$this._median = median;

  String? _p75;
  String? get p75 => _$this._p75;
  set p75(String? p75) => _$this._p75 = p75;

  PrecursorLagDistributionBuilder() {
    PrecursorLagDistribution._defaults(this);
  }

  PrecursorLagDistributionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _p25 = $v.p25;
      _median = $v.median;
      _p75 = $v.p75;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorLagDistribution other) {
    _$v = other as _$PrecursorLagDistribution;
  }

  @override
  void update(void Function(PrecursorLagDistributionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorLagDistribution build() => _build();

  _$PrecursorLagDistribution _build() {
    final _$result = _$v ??
        _$PrecursorLagDistribution._(
          p25: p25,
          median: median,
          p75: p75,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
