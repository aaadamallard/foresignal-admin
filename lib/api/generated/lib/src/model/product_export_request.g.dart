// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_export_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProductExportRequestFormatEnum _$productExportRequestFormatEnum_mbtiles =
    const ProductExportRequestFormatEnum._('mbtiles');
const ProductExportRequestFormatEnum _$productExportRequestFormatEnum_pmtiles =
    const ProductExportRequestFormatEnum._('pmtiles');
const ProductExportRequestFormatEnum _$productExportRequestFormatEnum_cog =
    const ProductExportRequestFormatEnum._('cog');

ProductExportRequestFormatEnum _$productExportRequestFormatEnumValueOf(
  String name,
) {
  switch (name) {
    case 'mbtiles':
      return _$productExportRequestFormatEnum_mbtiles;
    case 'pmtiles':
      return _$productExportRequestFormatEnum_pmtiles;
    case 'cog':
      return _$productExportRequestFormatEnum_cog;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProductExportRequestFormatEnum>
_$productExportRequestFormatEnumValues =
    BuiltSet<ProductExportRequestFormatEnum>(
      const <ProductExportRequestFormatEnum>[
        _$productExportRequestFormatEnum_mbtiles,
        _$productExportRequestFormatEnum_pmtiles,
        _$productExportRequestFormatEnum_cog,
      ],
    );

const ProductExportRequestTmsEnum
_$productExportRequestTmsEnum_webMercatorQuad =
    const ProductExportRequestTmsEnum._('webMercatorQuad');
const ProductExportRequestTmsEnum _$productExportRequestTmsEnum_worldCRS84Quad =
    const ProductExportRequestTmsEnum._('worldCRS84Quad');

ProductExportRequestTmsEnum _$productExportRequestTmsEnumValueOf(String name) {
  switch (name) {
    case 'webMercatorQuad':
      return _$productExportRequestTmsEnum_webMercatorQuad;
    case 'worldCRS84Quad':
      return _$productExportRequestTmsEnum_worldCRS84Quad;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProductExportRequestTmsEnum>
_$productExportRequestTmsEnumValues =
    BuiltSet<ProductExportRequestTmsEnum>(const <ProductExportRequestTmsEnum>[
      _$productExportRequestTmsEnum_webMercatorQuad,
      _$productExportRequestTmsEnum_worldCRS84Quad,
    ]);

Serializer<ProductExportRequestFormatEnum>
_$productExportRequestFormatEnumSerializer =
    _$ProductExportRequestFormatEnumSerializer();
Serializer<ProductExportRequestTmsEnum>
_$productExportRequestTmsEnumSerializer =
    _$ProductExportRequestTmsEnumSerializer();

class _$ProductExportRequestFormatEnumSerializer
    implements PrimitiveSerializer<ProductExportRequestFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mbtiles': 'mbtiles',
    'pmtiles': 'pmtiles',
    'cog': 'cog',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mbtiles': 'mbtiles',
    'pmtiles': 'pmtiles',
    'cog': 'cog',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductExportRequestFormatEnum];
  @override
  final String wireName = 'ProductExportRequestFormatEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProductExportRequestFormatEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProductExportRequestFormatEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProductExportRequestFormatEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProductExportRequestTmsEnumSerializer
    implements PrimitiveSerializer<ProductExportRequestTmsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'webMercatorQuad': 'WebMercatorQuad',
    'worldCRS84Quad': 'WorldCRS84Quad',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WebMercatorQuad': 'webMercatorQuad',
    'WorldCRS84Quad': 'worldCRS84Quad',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductExportRequestTmsEnum];
  @override
  final String wireName = 'ProductExportRequestTmsEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProductExportRequestTmsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProductExportRequestTmsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProductExportRequestTmsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProductExportRequest extends ProductExportRequest {
  @override
  final ProductExportRequestFormatEnum format;
  @override
  final String? frameKey;
  @override
  final BuiltList<String>? frameKeys;
  @override
  final BuiltList<num>? bbox;
  @override
  final String? placeId;
  @override
  final num? radiusKm;
  @override
  final int? minZoom;
  @override
  final int? maxZoom;
  @override
  final String? style;
  @override
  final ProductExportRequestTmsEnum? tms;

  factory _$ProductExportRequest([
    void Function(ProductExportRequestBuilder)? updates,
  ]) => (ProductExportRequestBuilder()..update(updates))._build();

  _$ProductExportRequest._({
    required this.format,
    this.frameKey,
    this.frameKeys,
    this.bbox,
    this.placeId,
    this.radiusKm,
    this.minZoom,
    this.maxZoom,
    this.style,
    this.tms,
  }) : super._();
  @override
  ProductExportRequest rebuild(
    void Function(ProductExportRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProductExportRequestBuilder toBuilder() =>
      ProductExportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductExportRequest &&
        format == other.format &&
        frameKey == other.frameKey &&
        frameKeys == other.frameKeys &&
        bbox == other.bbox &&
        placeId == other.placeId &&
        radiusKm == other.radiusKm &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom &&
        style == other.style &&
        tms == other.tms;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, frameKey.hashCode);
    _$hash = $jc(_$hash, frameKeys.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, radiusKm.hashCode);
    _$hash = $jc(_$hash, minZoom.hashCode);
    _$hash = $jc(_$hash, maxZoom.hashCode);
    _$hash = $jc(_$hash, style.hashCode);
    _$hash = $jc(_$hash, tms.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductExportRequest')
          ..add('format', format)
          ..add('frameKey', frameKey)
          ..add('frameKeys', frameKeys)
          ..add('bbox', bbox)
          ..add('placeId', placeId)
          ..add('radiusKm', radiusKm)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom)
          ..add('style', style)
          ..add('tms', tms))
        .toString();
  }
}

class ProductExportRequestBuilder
    implements Builder<ProductExportRequest, ProductExportRequestBuilder> {
  _$ProductExportRequest? _$v;

  ProductExportRequestFormatEnum? _format;
  ProductExportRequestFormatEnum? get format => _$this._format;
  set format(ProductExportRequestFormatEnum? format) => _$this._format = format;

  String? _frameKey;
  String? get frameKey => _$this._frameKey;
  set frameKey(String? frameKey) => _$this._frameKey = frameKey;

  ListBuilder<String>? _frameKeys;
  ListBuilder<String> get frameKeys =>
      _$this._frameKeys ??= ListBuilder<String>();
  set frameKeys(ListBuilder<String>? frameKeys) =>
      _$this._frameKeys = frameKeys;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  num? _radiusKm;
  num? get radiusKm => _$this._radiusKm;
  set radiusKm(num? radiusKm) => _$this._radiusKm = radiusKm;

  int? _minZoom;
  int? get minZoom => _$this._minZoom;
  set minZoom(int? minZoom) => _$this._minZoom = minZoom;

  int? _maxZoom;
  int? get maxZoom => _$this._maxZoom;
  set maxZoom(int? maxZoom) => _$this._maxZoom = maxZoom;

  String? _style;
  String? get style => _$this._style;
  set style(String? style) => _$this._style = style;

  ProductExportRequestTmsEnum? _tms;
  ProductExportRequestTmsEnum? get tms => _$this._tms;
  set tms(ProductExportRequestTmsEnum? tms) => _$this._tms = tms;

  ProductExportRequestBuilder() {
    ProductExportRequest._defaults(this);
  }

  ProductExportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _format = $v.format;
      _frameKey = $v.frameKey;
      _frameKeys = $v.frameKeys?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _placeId = $v.placeId;
      _radiusKm = $v.radiusKm;
      _minZoom = $v.minZoom;
      _maxZoom = $v.maxZoom;
      _style = $v.style;
      _tms = $v.tms;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductExportRequest other) {
    _$v = other as _$ProductExportRequest;
  }

  @override
  void update(void Function(ProductExportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductExportRequest build() => _build();

  _$ProductExportRequest _build() {
    _$ProductExportRequest _$result;
    try {
      _$result =
          _$v ??
          _$ProductExportRequest._(
            format: BuiltValueNullFieldError.checkNotNull(
              format,
              r'ProductExportRequest',
              'format',
            ),
            frameKey: frameKey,
            frameKeys: _frameKeys?.build(),
            bbox: _bbox?.build(),
            placeId: placeId,
            radiusKm: radiusKm,
            minZoom: minZoom,
            maxZoom: maxZoom,
            style: style,
            tms: tms,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'frameKeys';
        _frameKeys?.build();
        _$failedField = 'bbox';
        _bbox?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProductExportRequest',
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
