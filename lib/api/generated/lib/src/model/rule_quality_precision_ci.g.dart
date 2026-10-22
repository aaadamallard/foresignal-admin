// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_quality_precision_ci.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleQualityPrecisionCi extends RuleQualityPrecisionCi {
  @override
  final num? lower;
  @override
  final num? upper;

  factory _$RuleQualityPrecisionCi(
          [void Function(RuleQualityPrecisionCiBuilder)? updates]) =>
      (RuleQualityPrecisionCiBuilder()..update(updates))._build();

  _$RuleQualityPrecisionCi._({this.lower, this.upper}) : super._();
  @override
  RuleQualityPrecisionCi rebuild(
          void Function(RuleQualityPrecisionCiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleQualityPrecisionCiBuilder toBuilder() =>
      RuleQualityPrecisionCiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleQualityPrecisionCi &&
        lower == other.lower &&
        upper == other.upper;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lower.hashCode);
    _$hash = $jc(_$hash, upper.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleQualityPrecisionCi')
          ..add('lower', lower)
          ..add('upper', upper))
        .toString();
  }
}

class RuleQualityPrecisionCiBuilder
    implements Builder<RuleQualityPrecisionCi, RuleQualityPrecisionCiBuilder> {
  _$RuleQualityPrecisionCi? _$v;

  num? _lower;
  num? get lower => _$this._lower;
  set lower(num? lower) => _$this._lower = lower;

  num? _upper;
  num? get upper => _$this._upper;
  set upper(num? upper) => _$this._upper = upper;

  RuleQualityPrecisionCiBuilder() {
    RuleQualityPrecisionCi._defaults(this);
  }

  RuleQualityPrecisionCiBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lower = $v.lower;
      _upper = $v.upper;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleQualityPrecisionCi other) {
    _$v = other as _$RuleQualityPrecisionCi;
  }

  @override
  void update(void Function(RuleQualityPrecisionCiBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleQualityPrecisionCi build() => _build();

  _$RuleQualityPrecisionCi _build() {
    final _$result = _$v ??
        _$RuleQualityPrecisionCi._(
          lower: lower,
          upper: upper,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
