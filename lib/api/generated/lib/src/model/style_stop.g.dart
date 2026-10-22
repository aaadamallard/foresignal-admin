// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_stop.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StyleStop extends StyleStop {
  @override
  final num value;
  @override
  final String color;
  @override
  final String? label;

  factory _$StyleStop([void Function(StyleStopBuilder)? updates]) =>
      (StyleStopBuilder()..update(updates))._build();

  _$StyleStop._({required this.value, required this.color, this.label})
    : super._();
  @override
  StyleStop rebuild(void Function(StyleStopBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StyleStopBuilder toBuilder() => StyleStopBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StyleStop &&
        value == other.value &&
        color == other.color &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StyleStop')
          ..add('value', value)
          ..add('color', color)
          ..add('label', label))
        .toString();
  }
}

class StyleStopBuilder implements Builder<StyleStop, StyleStopBuilder> {
  _$StyleStop? _$v;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  StyleStopBuilder() {
    StyleStop._defaults(this);
  }

  StyleStopBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _color = $v.color;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StyleStop other) {
    _$v = other as _$StyleStop;
  }

  @override
  void update(void Function(StyleStopBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StyleStop build() => _build();

  _$StyleStop _build() {
    final _$result =
        _$v ??
        _$StyleStop._(
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'StyleStop',
            'value',
          ),
          color: BuiltValueNullFieldError.checkNotNull(
            color,
            r'StyleStop',
            'color',
          ),
          label: label,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
