// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hazard_forecast_probability_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HazardForecastProbabilityRange extends HazardForecastProbabilityRange {
  @override
  final num low;
  @override
  final num? high;

  factory _$HazardForecastProbabilityRange(
          [void Function(HazardForecastProbabilityRangeBuilder)? updates]) =>
      (HazardForecastProbabilityRangeBuilder()..update(updates))._build();

  _$HazardForecastProbabilityRange._({required this.low, this.high})
      : super._();
  @override
  HazardForecastProbabilityRange rebuild(
          void Function(HazardForecastProbabilityRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HazardForecastProbabilityRangeBuilder toBuilder() =>
      HazardForecastProbabilityRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HazardForecastProbabilityRange &&
        low == other.low &&
        high == other.high;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, low.hashCode);
    _$hash = $jc(_$hash, high.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HazardForecastProbabilityRange')
          ..add('low', low)
          ..add('high', high))
        .toString();
  }
}

class HazardForecastProbabilityRangeBuilder
    implements
        Builder<HazardForecastProbabilityRange,
            HazardForecastProbabilityRangeBuilder> {
  _$HazardForecastProbabilityRange? _$v;

  num? _low;
  num? get low => _$this._low;
  set low(num? low) => _$this._low = low;

  num? _high;
  num? get high => _$this._high;
  set high(num? high) => _$this._high = high;

  HazardForecastProbabilityRangeBuilder() {
    HazardForecastProbabilityRange._defaults(this);
  }

  HazardForecastProbabilityRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _low = $v.low;
      _high = $v.high;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HazardForecastProbabilityRange other) {
    _$v = other as _$HazardForecastProbabilityRange;
  }

  @override
  void update(void Function(HazardForecastProbabilityRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HazardForecastProbabilityRange build() => _build();

  _$HazardForecastProbabilityRange _build() {
    final _$result = _$v ??
        _$HazardForecastProbabilityRange._(
          low: BuiltValueNullFieldError.checkNotNull(
              low, r'HazardForecastProbabilityRange', 'low'),
          high: high,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
