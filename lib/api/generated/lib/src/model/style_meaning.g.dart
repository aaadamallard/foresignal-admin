// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_meaning.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StyleMeaning extends StyleMeaning {
  @override
  final num? min;
  @override
  final num? max;
  @override
  final String text;

  factory _$StyleMeaning([void Function(StyleMeaningBuilder)? updates]) =>
      (StyleMeaningBuilder()..update(updates))._build();

  _$StyleMeaning._({this.min, this.max, required this.text}) : super._();
  @override
  StyleMeaning rebuild(void Function(StyleMeaningBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StyleMeaningBuilder toBuilder() => StyleMeaningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StyleMeaning &&
        min == other.min &&
        max == other.max &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StyleMeaning')
          ..add('min', min)
          ..add('max', max)
          ..add('text', text))
        .toString();
  }
}

class StyleMeaningBuilder
    implements Builder<StyleMeaning, StyleMeaningBuilder> {
  _$StyleMeaning? _$v;

  num? _min;
  num? get min => _$this._min;
  set min(num? min) => _$this._min = min;

  num? _max;
  num? get max => _$this._max;
  set max(num? max) => _$this._max = max;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  StyleMeaningBuilder() {
    StyleMeaning._defaults(this);
  }

  StyleMeaningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StyleMeaning other) {
    _$v = other as _$StyleMeaning;
  }

  @override
  void update(void Function(StyleMeaningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StyleMeaning build() => _build();

  _$StyleMeaning _build() {
    final _$result =
        _$v ??
        _$StyleMeaning._(
          min: min,
          max: max,
          text: BuiltValueNullFieldError.checkNotNull(
            text,
            r'StyleMeaning',
            'text',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
