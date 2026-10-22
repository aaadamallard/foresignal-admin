// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_render.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductRender extends ProductRender {
  @override
  final String defaultStyle;
  @override
  final BuiltList<String> styles;
  @override
  final num? defaultOpacity;

  factory _$ProductRender([void Function(ProductRenderBuilder)? updates]) =>
      (ProductRenderBuilder()..update(updates))._build();

  _$ProductRender._({
    required this.defaultStyle,
    required this.styles,
    this.defaultOpacity,
  }) : super._();
  @override
  ProductRender rebuild(void Function(ProductRenderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductRenderBuilder toBuilder() => ProductRenderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductRender &&
        defaultStyle == other.defaultStyle &&
        styles == other.styles &&
        defaultOpacity == other.defaultOpacity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, defaultStyle.hashCode);
    _$hash = $jc(_$hash, styles.hashCode);
    _$hash = $jc(_$hash, defaultOpacity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductRender')
          ..add('defaultStyle', defaultStyle)
          ..add('styles', styles)
          ..add('defaultOpacity', defaultOpacity))
        .toString();
  }
}

class ProductRenderBuilder
    implements Builder<ProductRender, ProductRenderBuilder> {
  _$ProductRender? _$v;

  String? _defaultStyle;
  String? get defaultStyle => _$this._defaultStyle;
  set defaultStyle(String? defaultStyle) => _$this._defaultStyle = defaultStyle;

  ListBuilder<String>? _styles;
  ListBuilder<String> get styles => _$this._styles ??= ListBuilder<String>();
  set styles(ListBuilder<String>? styles) => _$this._styles = styles;

  num? _defaultOpacity;
  num? get defaultOpacity => _$this._defaultOpacity;
  set defaultOpacity(num? defaultOpacity) =>
      _$this._defaultOpacity = defaultOpacity;

  ProductRenderBuilder() {
    ProductRender._defaults(this);
  }

  ProductRenderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultStyle = $v.defaultStyle;
      _styles = $v.styles.toBuilder();
      _defaultOpacity = $v.defaultOpacity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductRender other) {
    _$v = other as _$ProductRender;
  }

  @override
  void update(void Function(ProductRenderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductRender build() => _build();

  _$ProductRender _build() {
    _$ProductRender _$result;
    try {
      _$result =
          _$v ??
          _$ProductRender._(
            defaultStyle: BuiltValueNullFieldError.checkNotNull(
              defaultStyle,
              r'ProductRender',
              'defaultStyle',
            ),
            styles: styles.build(),
            defaultOpacity: defaultOpacity,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'styles';
        styles.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProductRender',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
