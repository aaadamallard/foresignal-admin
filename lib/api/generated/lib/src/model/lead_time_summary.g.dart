// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_time_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LeadTimeSummary extends LeadTimeSummary {
  @override
  final int n;
  @override
  final num? median;
  @override
  final num? p25;
  @override
  final num? p75;

  factory _$LeadTimeSummary([void Function(LeadTimeSummaryBuilder)? updates]) =>
      (LeadTimeSummaryBuilder()..update(updates))._build();

  _$LeadTimeSummary._({required this.n, this.median, this.p25, this.p75})
      : super._();
  @override
  LeadTimeSummary rebuild(void Function(LeadTimeSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeadTimeSummaryBuilder toBuilder() => LeadTimeSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeadTimeSummary &&
        n == other.n &&
        median == other.median &&
        p25 == other.p25 &&
        p75 == other.p75;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, median.hashCode);
    _$hash = $jc(_$hash, p25.hashCode);
    _$hash = $jc(_$hash, p75.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeadTimeSummary')
          ..add('n', n)
          ..add('median', median)
          ..add('p25', p25)
          ..add('p75', p75))
        .toString();
  }
}

class LeadTimeSummaryBuilder
    implements Builder<LeadTimeSummary, LeadTimeSummaryBuilder> {
  _$LeadTimeSummary? _$v;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  num? _median;
  num? get median => _$this._median;
  set median(num? median) => _$this._median = median;

  num? _p25;
  num? get p25 => _$this._p25;
  set p25(num? p25) => _$this._p25 = p25;

  num? _p75;
  num? get p75 => _$this._p75;
  set p75(num? p75) => _$this._p75 = p75;

  LeadTimeSummaryBuilder() {
    LeadTimeSummary._defaults(this);
  }

  LeadTimeSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _n = $v.n;
      _median = $v.median;
      _p25 = $v.p25;
      _p75 = $v.p75;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeadTimeSummary other) {
    _$v = other as _$LeadTimeSummary;
  }

  @override
  void update(void Function(LeadTimeSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeadTimeSummary build() => _build();

  _$LeadTimeSummary _build() {
    final _$result = _$v ??
        _$LeadTimeSummary._(
          n: BuiltValueNullFieldError.checkNotNull(n, r'LeadTimeSummary', 'n'),
          median: median,
          p25: p25,
          p75: p75,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
