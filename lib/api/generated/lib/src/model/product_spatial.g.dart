// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_spatial.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductSpatial extends ProductSpatial {
  @override
  final BuiltList<num> bounds;
  @override
  final int minZoom;
  @override
  final int maxZoom;
  @override
  final int? maxZoomForAnimation;
  @override
  final BuiltList<num>? center;

  factory _$ProductSpatial([void Function(ProductSpatialBuilder)? updates]) =>
      (ProductSpatialBuilder()..update(updates))._build();

  _$ProductSpatial._({
    required this.bounds,
    required this.minZoom,
    required this.maxZoom,
    this.maxZoomForAnimation,
    this.center,
  }) : super._();
  @override
  ProductSpatial rebuild(void Function(ProductSpatialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductSpatialBuilder toBuilder() => ProductSpatialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductSpatial &&
        bounds == other.bounds &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom &&
        maxZoomForAnimation == other.maxZoomForAnimation &&
        center == other.center;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bounds.hashCode);
    _$hash = $jc(_$hash, minZoom.hashCode);
    _$hash = $jc(_$hash, maxZoom.hashCode);
    _$hash = $jc(_$hash, maxZoomForAnimation.hashCode);
    _$hash = $jc(_$hash, center.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductSpatial')
          ..add('bounds', bounds)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom)
          ..add('maxZoomForAnimation', maxZoomForAnimation)
          ..add('center', center))
        .toString();
  }
}

class ProductSpatialBuilder
    implements Builder<ProductSpatial, ProductSpatialBuilder> {
  _$ProductSpatial? _$v;

  ListBuilder<num>? _bounds;
  ListBuilder<num> get bounds => _$this._bounds ??= ListBuilder<num>();
  set bounds(ListBuilder<num>? bounds) => _$this._bounds = bounds;

  int? _minZoom;
  int? get minZoom => _$this._minZoom;
  set minZoom(int? minZoom) => _$this._minZoom = minZoom;

  int? _maxZoom;
  int? get maxZoom => _$this._maxZoom;
  set maxZoom(int? maxZoom) => _$this._maxZoom = maxZoom;

  int? _maxZoomForAnimation;
  int? get maxZoomForAnimation => _$this._maxZoomForAnimation;
  set maxZoomForAnimation(int? maxZoomForAnimation) =>
      _$this._maxZoomForAnimation = maxZoomForAnimation;

  ListBuilder<num>? _center;
  ListBuilder<num> get center => _$this._center ??= ListBuilder<num>();
  set center(ListBuilder<num>? center) => _$this._center = center;

  ProductSpatialBuilder() {
    ProductSpatial._defaults(this);
  }

  ProductSpatialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bounds = $v.bounds.toBuilder();
      _minZoom = $v.minZoom;
      _maxZoom = $v.maxZoom;
      _maxZoomForAnimation = $v.maxZoomForAnimation;
      _center = $v.center?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductSpatial other) {
    _$v = other as _$ProductSpatial;
  }

  @override
  void update(void Function(ProductSpatialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductSpatial build() => _build();

  _$ProductSpatial _build() {
    _$ProductSpatial _$result;
    try {
      _$result =
          _$v ??
          _$ProductSpatial._(
            bounds: bounds.build(),
            minZoom: BuiltValueNullFieldError.checkNotNull(
              minZoom,
              r'ProductSpatial',
              'minZoom',
            ),
            maxZoom: BuiltValueNullFieldError.checkNotNull(
              maxZoom,
              r'ProductSpatial',
              'maxZoom',
            ),
            maxZoomForAnimation: maxZoomForAnimation,
            center: _center?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bounds';
        bounds.build();

        _$failedField = 'center';
        _center?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProductSpatial',
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
