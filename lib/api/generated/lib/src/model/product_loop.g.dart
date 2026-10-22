// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_loop.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductLoop extends ProductLoop {
  @override
  final String crs;
  @override
  final BuiltList<num> bounds;
  @override
  final BuiltList<BuiltList<num>> coordinates;
  @override
  final int width;
  @override
  final int height;
  @override
  final BuiltList<String>? products;
  @override
  final BuiltMap<String, String>? runs;
  @override
  final BuiltList<ProductLoopFramesInner> frames;
  @override
  final String? legendUrl;
  @override
  final BuiltList<Attribution>? attribution;
  @override
  final DateTime serverTime;

  factory _$ProductLoop([void Function(ProductLoopBuilder)? updates]) =>
      (ProductLoopBuilder()..update(updates))._build();

  _$ProductLoop._(
      {required this.crs,
      required this.bounds,
      required this.coordinates,
      required this.width,
      required this.height,
      this.products,
      this.runs,
      required this.frames,
      this.legendUrl,
      this.attribution,
      required this.serverTime})
      : super._();
  @override
  ProductLoop rebuild(void Function(ProductLoopBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductLoopBuilder toBuilder() => ProductLoopBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductLoop &&
        crs == other.crs &&
        bounds == other.bounds &&
        coordinates == other.coordinates &&
        width == other.width &&
        height == other.height &&
        products == other.products &&
        runs == other.runs &&
        frames == other.frames &&
        legendUrl == other.legendUrl &&
        attribution == other.attribution &&
        serverTime == other.serverTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, crs.hashCode);
    _$hash = $jc(_$hash, bounds.hashCode);
    _$hash = $jc(_$hash, coordinates.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jc(_$hash, runs.hashCode);
    _$hash = $jc(_$hash, frames.hashCode);
    _$hash = $jc(_$hash, legendUrl.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, serverTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductLoop')
          ..add('crs', crs)
          ..add('bounds', bounds)
          ..add('coordinates', coordinates)
          ..add('width', width)
          ..add('height', height)
          ..add('products', products)
          ..add('runs', runs)
          ..add('frames', frames)
          ..add('legendUrl', legendUrl)
          ..add('attribution', attribution)
          ..add('serverTime', serverTime))
        .toString();
  }
}

class ProductLoopBuilder implements Builder<ProductLoop, ProductLoopBuilder> {
  _$ProductLoop? _$v;

  String? _crs;
  String? get crs => _$this._crs;
  set crs(String? crs) => _$this._crs = crs;

  ListBuilder<num>? _bounds;
  ListBuilder<num> get bounds => _$this._bounds ??= ListBuilder<num>();
  set bounds(ListBuilder<num>? bounds) => _$this._bounds = bounds;

  ListBuilder<BuiltList<num>>? _coordinates;
  ListBuilder<BuiltList<num>> get coordinates =>
      _$this._coordinates ??= ListBuilder<BuiltList<num>>();
  set coordinates(ListBuilder<BuiltList<num>>? coordinates) =>
      _$this._coordinates = coordinates;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  ListBuilder<String>? _products;
  ListBuilder<String> get products =>
      _$this._products ??= ListBuilder<String>();
  set products(ListBuilder<String>? products) => _$this._products = products;

  MapBuilder<String, String>? _runs;
  MapBuilder<String, String> get runs =>
      _$this._runs ??= MapBuilder<String, String>();
  set runs(MapBuilder<String, String>? runs) => _$this._runs = runs;

  ListBuilder<ProductLoopFramesInner>? _frames;
  ListBuilder<ProductLoopFramesInner> get frames =>
      _$this._frames ??= ListBuilder<ProductLoopFramesInner>();
  set frames(ListBuilder<ProductLoopFramesInner>? frames) =>
      _$this._frames = frames;

  String? _legendUrl;
  String? get legendUrl => _$this._legendUrl;
  set legendUrl(String? legendUrl) => _$this._legendUrl = legendUrl;

  ListBuilder<Attribution>? _attribution;
  ListBuilder<Attribution> get attribution =>
      _$this._attribution ??= ListBuilder<Attribution>();
  set attribution(ListBuilder<Attribution>? attribution) =>
      _$this._attribution = attribution;

  DateTime? _serverTime;
  DateTime? get serverTime => _$this._serverTime;
  set serverTime(DateTime? serverTime) => _$this._serverTime = serverTime;

  ProductLoopBuilder() {
    ProductLoop._defaults(this);
  }

  ProductLoopBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _crs = $v.crs;
      _bounds = $v.bounds.toBuilder();
      _coordinates = $v.coordinates.toBuilder();
      _width = $v.width;
      _height = $v.height;
      _products = $v.products?.toBuilder();
      _runs = $v.runs?.toBuilder();
      _frames = $v.frames.toBuilder();
      _legendUrl = $v.legendUrl;
      _attribution = $v.attribution?.toBuilder();
      _serverTime = $v.serverTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductLoop other) {
    _$v = other as _$ProductLoop;
  }

  @override
  void update(void Function(ProductLoopBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductLoop build() => _build();

  _$ProductLoop _build() {
    _$ProductLoop _$result;
    try {
      _$result = _$v ??
          _$ProductLoop._(
            crs: BuiltValueNullFieldError.checkNotNull(
                crs, r'ProductLoop', 'crs'),
            bounds: bounds.build(),
            coordinates: coordinates.build(),
            width: BuiltValueNullFieldError.checkNotNull(
                width, r'ProductLoop', 'width'),
            height: BuiltValueNullFieldError.checkNotNull(
                height, r'ProductLoop', 'height'),
            products: _products?.build(),
            runs: _runs?.build(),
            frames: frames.build(),
            legendUrl: legendUrl,
            attribution: _attribution?.build(),
            serverTime: BuiltValueNullFieldError.checkNotNull(
                serverTime, r'ProductLoop', 'serverTime'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bounds';
        bounds.build();
        _$failedField = 'coordinates';
        coordinates.build();

        _$failedField = 'products';
        _products?.build();
        _$failedField = 'runs';
        _runs?.build();
        _$failedField = 'frames';
        frames.build();

        _$failedField = 'attribution';
        _attribution?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProductLoop', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
