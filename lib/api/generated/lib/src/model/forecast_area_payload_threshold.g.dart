// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_area_payload_threshold.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastAreaPayloadThreshold extends ForecastAreaPayloadThreshold {
  @override
  final String? op;
  @override
  final num? value;
  @override
  final String? units;

  factory _$ForecastAreaPayloadThreshold(
          [void Function(ForecastAreaPayloadThresholdBuilder)? updates]) =>
      (ForecastAreaPayloadThresholdBuilder()..update(updates))._build();

  _$ForecastAreaPayloadThreshold._({this.op, this.value, this.units})
      : super._();
  @override
  ForecastAreaPayloadThreshold rebuild(
          void Function(ForecastAreaPayloadThresholdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastAreaPayloadThresholdBuilder toBuilder() =>
      ForecastAreaPayloadThresholdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastAreaPayloadThreshold &&
        op == other.op &&
        value == other.value &&
        units == other.units;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, op.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastAreaPayloadThreshold')
          ..add('op', op)
          ..add('value', value)
          ..add('units', units))
        .toString();
  }
}

class ForecastAreaPayloadThresholdBuilder
    implements
        Builder<ForecastAreaPayloadThreshold,
            ForecastAreaPayloadThresholdBuilder> {
  _$ForecastAreaPayloadThreshold? _$v;

  String? _op;
  String? get op => _$this._op;
  set op(String? op) => _$this._op = op;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  ForecastAreaPayloadThresholdBuilder() {
    ForecastAreaPayloadThreshold._defaults(this);
  }

  ForecastAreaPayloadThresholdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _op = $v.op;
      _value = $v.value;
      _units = $v.units;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastAreaPayloadThreshold other) {
    _$v = other as _$ForecastAreaPayloadThreshold;
  }

  @override
  void update(void Function(ForecastAreaPayloadThresholdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastAreaPayloadThreshold build() => _build();

  _$ForecastAreaPayloadThreshold _build() {
    final _$result = _$v ??
        _$ForecastAreaPayloadThreshold._(
          op: op,
          value: value,
          units: units,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
