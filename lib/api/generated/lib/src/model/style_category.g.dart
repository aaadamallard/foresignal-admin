// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StyleCategory extends StyleCategory {
  @override
  final int code;
  @override
  final String color;
  @override
  final String label;

  factory _$StyleCategory([void Function(StyleCategoryBuilder)? updates]) =>
      (StyleCategoryBuilder()..update(updates))._build();

  _$StyleCategory._({
    required this.code,
    required this.color,
    required this.label,
  }) : super._();
  @override
  StyleCategory rebuild(void Function(StyleCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StyleCategoryBuilder toBuilder() => StyleCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StyleCategory &&
        code == other.code &&
        color == other.color &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StyleCategory')
          ..add('code', code)
          ..add('color', color)
          ..add('label', label))
        .toString();
  }
}

class StyleCategoryBuilder
    implements Builder<StyleCategory, StyleCategoryBuilder> {
  _$StyleCategory? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  StyleCategoryBuilder() {
    StyleCategory._defaults(this);
  }

  StyleCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _color = $v.color;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StyleCategory other) {
    _$v = other as _$StyleCategory;
  }

  @override
  void update(void Function(StyleCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StyleCategory build() => _build();

  _$StyleCategory _build() {
    final _$result =
        _$v ??
        _$StyleCategory._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'StyleCategory',
            'code',
          ),
          color: BuiltValueNullFieldError.checkNotNull(
            color,
            r'StyleCategory',
            'color',
          ),
          label: BuiltValueNullFieldError.checkNotNull(
            label,
            r'StyleCategory',
            'label',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
