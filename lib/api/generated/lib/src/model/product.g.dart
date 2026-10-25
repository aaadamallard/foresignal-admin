// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProductKindEnum _$productKindEnum_raster = const ProductKindEnum._(
  'raster',
);
const ProductKindEnum _$productKindEnum_field = const ProductKindEnum._(
  'field',
);
const ProductKindEnum _$productKindEnum_external_ = const ProductKindEnum._(
  'external_',
);
const ProductKindEnum _$productKindEnum_unknownDefaultOpenApi =
    const ProductKindEnum._('unknownDefaultOpenApi');

ProductKindEnum _$productKindEnumValueOf(String name) {
  switch (name) {
    case 'raster':
      return _$productKindEnum_raster;
    case 'field':
      return _$productKindEnum_field;
    case 'external_':
      return _$productKindEnum_external_;
    case 'unknownDefaultOpenApi':
      return _$productKindEnum_unknownDefaultOpenApi;
    default:
      return _$productKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProductKindEnum> _$productKindEnumValues =
    BuiltSet<ProductKindEnum>(const <ProductKindEnum>[
      _$productKindEnum_raster,
      _$productKindEnum_field,
      _$productKindEnum_external_,
      _$productKindEnum_unknownDefaultOpenApi,
    ]);

const ProductCategoryEnum _$productCategoryEnum_radar =
    const ProductCategoryEnum._('radar');
const ProductCategoryEnum _$productCategoryEnum_satellite =
    const ProductCategoryEnum._('satellite');
const ProductCategoryEnum _$productCategoryEnum_model =
    const ProductCategoryEnum._('model');
const ProductCategoryEnum _$productCategoryEnum_lightning =
    const ProductCategoryEnum._('lightning');
const ProductCategoryEnum _$productCategoryEnum_imagery =
    const ProductCategoryEnum._('imagery');
const ProductCategoryEnum _$productCategoryEnum_unknownDefaultOpenApi =
    const ProductCategoryEnum._('unknownDefaultOpenApi');

ProductCategoryEnum _$productCategoryEnumValueOf(String name) {
  switch (name) {
    case 'radar':
      return _$productCategoryEnum_radar;
    case 'satellite':
      return _$productCategoryEnum_satellite;
    case 'model':
      return _$productCategoryEnum_model;
    case 'lightning':
      return _$productCategoryEnum_lightning;
    case 'imagery':
      return _$productCategoryEnum_imagery;
    case 'unknownDefaultOpenApi':
      return _$productCategoryEnum_unknownDefaultOpenApi;
    default:
      return _$productCategoryEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProductCategoryEnum> _$productCategoryEnumValues =
    BuiltSet<ProductCategoryEnum>(const <ProductCategoryEnum>[
      _$productCategoryEnum_radar,
      _$productCategoryEnum_satellite,
      _$productCategoryEnum_model,
      _$productCategoryEnum_lightning,
      _$productCategoryEnum_imagery,
      _$productCategoryEnum_unknownDefaultOpenApi,
    ]);

const ProductDtypeEnum _$productDtypeEnum_u8 = const ProductDtypeEnum._('u8');
const ProductDtypeEnum _$productDtypeEnum_u16 = const ProductDtypeEnum._('u16');
const ProductDtypeEnum _$productDtypeEnum_i16 = const ProductDtypeEnum._('i16');
const ProductDtypeEnum _$productDtypeEnum_f32 = const ProductDtypeEnum._('f32');
const ProductDtypeEnum _$productDtypeEnum_rgba8 = const ProductDtypeEnum._(
  'rgba8',
);
const ProductDtypeEnum _$productDtypeEnum_unknownDefaultOpenApi =
    const ProductDtypeEnum._('unknownDefaultOpenApi');

ProductDtypeEnum _$productDtypeEnumValueOf(String name) {
  switch (name) {
    case 'u8':
      return _$productDtypeEnum_u8;
    case 'u16':
      return _$productDtypeEnum_u16;
    case 'i16':
      return _$productDtypeEnum_i16;
    case 'f32':
      return _$productDtypeEnum_f32;
    case 'rgba8':
      return _$productDtypeEnum_rgba8;
    case 'unknownDefaultOpenApi':
      return _$productDtypeEnum_unknownDefaultOpenApi;
    default:
      return _$productDtypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProductDtypeEnum> _$productDtypeEnumValues =
    BuiltSet<ProductDtypeEnum>(const <ProductDtypeEnum>[
      _$productDtypeEnum_u8,
      _$productDtypeEnum_u16,
      _$productDtypeEnum_i16,
      _$productDtypeEnum_f32,
      _$productDtypeEnum_rgba8,
      _$productDtypeEnum_unknownDefaultOpenApi,
    ]);

const ProductCoverageEnum _$productCoverageEnum_CONUS =
    const ProductCoverageEnum._('CONUS');
const ProductCoverageEnum _$productCoverageEnum_global =
    const ProductCoverageEnum._('global');
const ProductCoverageEnum _$productCoverageEnum_stationDisc =
    const ProductCoverageEnum._('stationDisc');
const ProductCoverageEnum _$productCoverageEnum_swath =
    const ProductCoverageEnum._('swath');
const ProductCoverageEnum _$productCoverageEnum_unknownDefaultOpenApi =
    const ProductCoverageEnum._('unknownDefaultOpenApi');

ProductCoverageEnum _$productCoverageEnumValueOf(String name) {
  switch (name) {
    case 'CONUS':
      return _$productCoverageEnum_CONUS;
    case 'global':
      return _$productCoverageEnum_global;
    case 'stationDisc':
      return _$productCoverageEnum_stationDisc;
    case 'swath':
      return _$productCoverageEnum_swath;
    case 'unknownDefaultOpenApi':
      return _$productCoverageEnum_unknownDefaultOpenApi;
    default:
      return _$productCoverageEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProductCoverageEnum> _$productCoverageEnumValues =
    BuiltSet<ProductCoverageEnum>(const <ProductCoverageEnum>[
      _$productCoverageEnum_CONUS,
      _$productCoverageEnum_global,
      _$productCoverageEnum_stationDisc,
      _$productCoverageEnum_swath,
      _$productCoverageEnum_unknownDefaultOpenApi,
    ]);

Serializer<ProductKindEnum> _$productKindEnumSerializer =
    _$ProductKindEnumSerializer();
Serializer<ProductCategoryEnum> _$productCategoryEnumSerializer =
    _$ProductCategoryEnumSerializer();
Serializer<ProductDtypeEnum> _$productDtypeEnumSerializer =
    _$ProductDtypeEnumSerializer();
Serializer<ProductCoverageEnum> _$productCoverageEnumSerializer =
    _$ProductCoverageEnumSerializer();

class _$ProductKindEnumSerializer
    implements PrimitiveSerializer<ProductKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'raster': 'raster',
    'field': 'field',
    'external_': 'external',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'raster': 'raster',
    'field': 'field',
    'external': 'external_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductKindEnum];
  @override
  final String wireName = 'ProductKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProductKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProductKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProductKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProductCategoryEnumSerializer
    implements PrimitiveSerializer<ProductCategoryEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'radar': 'radar',
    'satellite': 'satellite',
    'model': 'model',
    'lightning': 'lightning',
    'imagery': 'imagery',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'radar': 'radar',
    'satellite': 'satellite',
    'model': 'model',
    'lightning': 'lightning',
    'imagery': 'imagery',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductCategoryEnum];
  @override
  final String wireName = 'ProductCategoryEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProductCategoryEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProductCategoryEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProductCategoryEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProductDtypeEnumSerializer
    implements PrimitiveSerializer<ProductDtypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'u8': 'u8',
    'u16': 'u16',
    'i16': 'i16',
    'f32': 'f32',
    'rgba8': 'rgba8',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'u8': 'u8',
    'u16': 'u16',
    'i16': 'i16',
    'f32': 'f32',
    'rgba8': 'rgba8',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductDtypeEnum];
  @override
  final String wireName = 'ProductDtypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProductDtypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProductDtypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProductDtypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProductCoverageEnumSerializer
    implements PrimitiveSerializer<ProductCoverageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CONUS': 'CONUS',
    'global': 'global',
    'stationDisc': 'station-disc',
    'swath': 'swath',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CONUS': 'CONUS',
    'global': 'global',
    'station-disc': 'stationDisc',
    'swath': 'swath',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductCoverageEnum];
  @override
  final String wireName = 'ProductCoverageEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProductCoverageEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProductCoverageEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProductCoverageEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Product extends Product {
  @override
  final String id;
  @override
  final String title;
  @override
  final ProductKindEnum kind;
  @override
  final ProductCategoryEnum category;
  @override
  final String source_;
  @override
  final bool? dynamic_;
  @override
  final String? units;
  @override
  final ProductDtypeEnum? dtype;
  @override
  final ProductCoverageEnum? coverage;
  @override
  final String? coverageMeaning;
  @override
  final BuiltMap<String, String>? codes;
  @override
  final ProductTemporal? temporal;
  @override
  final ProductSpatial? spatial;
  @override
  final ProductRender? render;
  @override
  final ProductLegend? legend;
  @override
  final Attribution? attribution;
  @override
  final ProductStatus? status;
  @override
  final ExternalCatalogueEntry? external_;
  @override
  final ProductLinks? links;

  factory _$Product([void Function(ProductBuilder)? updates]) =>
      (ProductBuilder()..update(updates))._build();

  _$Product._({
    required this.id,
    required this.title,
    required this.kind,
    required this.category,
    required this.source_,
    this.dynamic_,
    this.units,
    this.dtype,
    this.coverage,
    this.coverageMeaning,
    this.codes,
    this.temporal,
    this.spatial,
    this.render,
    this.legend,
    this.attribution,
    this.status,
    this.external_,
    this.links,
  }) : super._();
  @override
  Product rebuild(void Function(ProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductBuilder toBuilder() => ProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        id == other.id &&
        title == other.title &&
        kind == other.kind &&
        category == other.category &&
        source_ == other.source_ &&
        dynamic_ == other.dynamic_ &&
        units == other.units &&
        dtype == other.dtype &&
        coverage == other.coverage &&
        coverageMeaning == other.coverageMeaning &&
        codes == other.codes &&
        temporal == other.temporal &&
        spatial == other.spatial &&
        render == other.render &&
        legend == other.legend &&
        attribution == other.attribution &&
        status == other.status &&
        external_ == other.external_ &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, dynamic_.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, dtype.hashCode);
    _$hash = $jc(_$hash, coverage.hashCode);
    _$hash = $jc(_$hash, coverageMeaning.hashCode);
    _$hash = $jc(_$hash, codes.hashCode);
    _$hash = $jc(_$hash, temporal.hashCode);
    _$hash = $jc(_$hash, spatial.hashCode);
    _$hash = $jc(_$hash, render.hashCode);
    _$hash = $jc(_$hash, legend.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, external_.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Product')
          ..add('id', id)
          ..add('title', title)
          ..add('kind', kind)
          ..add('category', category)
          ..add('source_', source_)
          ..add('dynamic_', dynamic_)
          ..add('units', units)
          ..add('dtype', dtype)
          ..add('coverage', coverage)
          ..add('coverageMeaning', coverageMeaning)
          ..add('codes', codes)
          ..add('temporal', temporal)
          ..add('spatial', spatial)
          ..add('render', render)
          ..add('legend', legend)
          ..add('attribution', attribution)
          ..add('status', status)
          ..add('external_', external_)
          ..add('links', links))
        .toString();
  }
}

class ProductBuilder implements Builder<Product, ProductBuilder> {
  _$Product? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ProductKindEnum? _kind;
  ProductKindEnum? get kind => _$this._kind;
  set kind(ProductKindEnum? kind) => _$this._kind = kind;

  ProductCategoryEnum? _category;
  ProductCategoryEnum? get category => _$this._category;
  set category(ProductCategoryEnum? category) => _$this._category = category;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  bool? _dynamic_;
  bool? get dynamic_ => _$this._dynamic_;
  set dynamic_(bool? dynamic_) => _$this._dynamic_ = dynamic_;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  ProductDtypeEnum? _dtype;
  ProductDtypeEnum? get dtype => _$this._dtype;
  set dtype(ProductDtypeEnum? dtype) => _$this._dtype = dtype;

  ProductCoverageEnum? _coverage;
  ProductCoverageEnum? get coverage => _$this._coverage;
  set coverage(ProductCoverageEnum? coverage) => _$this._coverage = coverage;

  String? _coverageMeaning;
  String? get coverageMeaning => _$this._coverageMeaning;
  set coverageMeaning(String? coverageMeaning) =>
      _$this._coverageMeaning = coverageMeaning;

  MapBuilder<String, String>? _codes;
  MapBuilder<String, String> get codes =>
      _$this._codes ??= MapBuilder<String, String>();
  set codes(MapBuilder<String, String>? codes) => _$this._codes = codes;

  ProductTemporalBuilder? _temporal;
  ProductTemporalBuilder get temporal =>
      _$this._temporal ??= ProductTemporalBuilder();
  set temporal(ProductTemporalBuilder? temporal) => _$this._temporal = temporal;

  ProductSpatialBuilder? _spatial;
  ProductSpatialBuilder get spatial =>
      _$this._spatial ??= ProductSpatialBuilder();
  set spatial(ProductSpatialBuilder? spatial) => _$this._spatial = spatial;

  ProductRenderBuilder? _render;
  ProductRenderBuilder get render => _$this._render ??= ProductRenderBuilder();
  set render(ProductRenderBuilder? render) => _$this._render = render;

  ProductLegendBuilder? _legend;
  ProductLegendBuilder get legend => _$this._legend ??= ProductLegendBuilder();
  set legend(ProductLegendBuilder? legend) => _$this._legend = legend;

  AttributionBuilder? _attribution;
  AttributionBuilder get attribution =>
      _$this._attribution ??= AttributionBuilder();
  set attribution(AttributionBuilder? attribution) =>
      _$this._attribution = attribution;

  ProductStatusBuilder? _status;
  ProductStatusBuilder get status => _$this._status ??= ProductStatusBuilder();
  set status(ProductStatusBuilder? status) => _$this._status = status;

  ExternalCatalogueEntryBuilder? _external_;
  ExternalCatalogueEntryBuilder get external_ =>
      _$this._external_ ??= ExternalCatalogueEntryBuilder();
  set external_(ExternalCatalogueEntryBuilder? external_) =>
      _$this._external_ = external_;

  ProductLinksBuilder? _links;
  ProductLinksBuilder get links => _$this._links ??= ProductLinksBuilder();
  set links(ProductLinksBuilder? links) => _$this._links = links;

  ProductBuilder() {
    Product._defaults(this);
  }

  ProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _kind = $v.kind;
      _category = $v.category;
      _source_ = $v.source_;
      _dynamic_ = $v.dynamic_;
      _units = $v.units;
      _dtype = $v.dtype;
      _coverage = $v.coverage;
      _coverageMeaning = $v.coverageMeaning;
      _codes = $v.codes?.toBuilder();
      _temporal = $v.temporal?.toBuilder();
      _spatial = $v.spatial?.toBuilder();
      _render = $v.render?.toBuilder();
      _legend = $v.legend?.toBuilder();
      _attribution = $v.attribution?.toBuilder();
      _status = $v.status?.toBuilder();
      _external_ = $v.external_?.toBuilder();
      _links = $v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Product other) {
    _$v = other as _$Product;
  }

  @override
  void update(void Function(ProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Product build() => _build();

  _$Product _build() {
    _$Product _$result;
    try {
      _$result =
          _$v ??
          _$Product._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Product', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'Product',
              'title',
            ),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'Product',
              'kind',
            ),
            category: BuiltValueNullFieldError.checkNotNull(
              category,
              r'Product',
              'category',
            ),
            source_: BuiltValueNullFieldError.checkNotNull(
              source_,
              r'Product',
              'source_',
            ),
            dynamic_: dynamic_,
            units: units,
            dtype: dtype,
            coverage: coverage,
            coverageMeaning: coverageMeaning,
            codes: _codes?.build(),
            temporal: _temporal?.build(),
            spatial: _spatial?.build(),
            render: _render?.build(),
            legend: _legend?.build(),
            attribution: _attribution?.build(),
            status: _status?.build(),
            external_: _external_?.build(),
            links: _links?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codes';
        _codes?.build();
        _$failedField = 'temporal';
        _temporal?.build();
        _$failedField = 'spatial';
        _spatial?.build();
        _$failedField = 'render';
        _render?.build();
        _$failedField = 'legend';
        _legend?.build();
        _$failedField = 'attribution';
        _attribution?.build();
        _$failedField = 'status';
        _status?.build();
        _$failedField = 'external_';
        _external_?.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Product',
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
