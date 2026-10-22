// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'impact_rate_interval.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImpactRateInterval extends ImpactRateInterval {
  @override
  final num lo;
  @override
  final num hi;

  factory _$ImpactRateInterval([
    void Function(ImpactRateIntervalBuilder)? updates,
  ]) => (ImpactRateIntervalBuilder()..update(updates))._build();

  _$ImpactRateInterval._({required this.lo, required this.hi}) : super._();
  @override
  ImpactRateInterval rebuild(
    void Function(ImpactRateIntervalBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ImpactRateIntervalBuilder toBuilder() =>
      ImpactRateIntervalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImpactRateInterval && lo == other.lo && hi == other.hi;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lo.hashCode);
    _$hash = $jc(_$hash, hi.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImpactRateInterval')
          ..add('lo', lo)
          ..add('hi', hi))
        .toString();
  }
}

class ImpactRateIntervalBuilder
    implements Builder<ImpactRateInterval, ImpactRateIntervalBuilder> {
  _$ImpactRateInterval? _$v;

  num? _lo;
  num? get lo => _$this._lo;
  set lo(num? lo) => _$this._lo = lo;

  num? _hi;
  num? get hi => _$this._hi;
  set hi(num? hi) => _$this._hi = hi;

  ImpactRateIntervalBuilder() {
    ImpactRateInterval._defaults(this);
  }

  ImpactRateIntervalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lo = $v.lo;
      _hi = $v.hi;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImpactRateInterval other) {
    _$v = other as _$ImpactRateInterval;
  }

  @override
  void update(void Function(ImpactRateIntervalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImpactRateInterval build() => _build();

  _$ImpactRateInterval _build() {
    final _$result =
        _$v ??
        _$ImpactRateInterval._(
          lo: BuiltValueNullFieldError.checkNotNull(
            lo,
            r'ImpactRateInterval',
            'lo',
          ),
          hi: BuiltValueNullFieldError.checkNotNull(
            hi,
            r'ImpactRateInterval',
            'hi',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
