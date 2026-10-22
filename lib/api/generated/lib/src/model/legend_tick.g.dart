// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legend_tick.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LegendTick extends LegendTick {
  @override
  final num value;
  @override
  final String label;

  factory _$LegendTick([void Function(LegendTickBuilder)? updates]) =>
      (LegendTickBuilder()..update(updates))._build();

  _$LegendTick._({required this.value, required this.label}) : super._();
  @override
  LegendTick rebuild(void Function(LegendTickBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LegendTickBuilder toBuilder() => LegendTickBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LegendTick && value == other.value && label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LegendTick')
          ..add('value', value)
          ..add('label', label))
        .toString();
  }
}

class LegendTickBuilder implements Builder<LegendTick, LegendTickBuilder> {
  _$LegendTick? _$v;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  LegendTickBuilder() {
    LegendTick._defaults(this);
  }

  LegendTickBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LegendTick other) {
    _$v = other as _$LegendTick;
  }

  @override
  void update(void Function(LegendTickBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LegendTick build() => _build();

  _$LegendTick _build() {
    final _$result = _$v ??
        _$LegendTick._(
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'LegendTick', 'value'),
          label: BuiltValueNullFieldError.checkNotNull(
              label, r'LegendTick', 'label'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
