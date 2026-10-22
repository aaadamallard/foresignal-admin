//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_export_request.g.dart';

/// Raster export: one or more frames of a product as MBTiles (one file per frame), PMTiles or COG. Caps: ≤ 50,000 tiles per tileset and ≤ 2 GB per file.
///
/// Properties:
/// * [format]
/// * [frameKey]
/// * [frameKeys]
/// * [bbox] - [w, s, e, n]
/// * [placeId]
/// * [radiusKm]
/// * [minZoom]
/// * [maxZoom]
/// * [style]
/// * [tms] - mbtiles and pmtiles hold XYZ WebMercatorQuad tiles only (WorldCRS84Quad is 400 VALIDATION_FAILED). A cog follows the set: WebMercatorQuad writes EPSG:3857, WorldCRS84Quad EPSG:4326.
@BuiltValue()
abstract class ProductExportRequest
    implements Built<ProductExportRequest, ProductExportRequestBuilder> {
  @BuiltValueField(wireName: r'format')
  ProductExportRequestFormatEnum get format;
  // enum formatEnum {  mbtiles,  pmtiles,  cog,  };

  @BuiltValueField(wireName: r'frameKey')
  String? get frameKey;

  @BuiltValueField(wireName: r'frameKeys')
  BuiltList<String>? get frameKeys;

  /// [w, s, e, n]
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  @BuiltValueField(wireName: r'radiusKm')
  num? get radiusKm;

  @BuiltValueField(wireName: r'minZoom')
  int? get minZoom;

  @BuiltValueField(wireName: r'maxZoom')
  int? get maxZoom;

  @BuiltValueField(wireName: r'style')
  String? get style;

  /// mbtiles and pmtiles hold XYZ WebMercatorQuad tiles only (WorldCRS84Quad is 400 VALIDATION_FAILED). A cog follows the set: WebMercatorQuad writes EPSG:3857, WorldCRS84Quad EPSG:4326.
  @BuiltValueField(wireName: r'tms')
  ProductExportRequestTmsEnum? get tms;
  // enum tmsEnum {  WebMercatorQuad,  WorldCRS84Quad,  };

  ProductExportRequest._();

  factory ProductExportRequest([void updates(ProductExportRequestBuilder b)]) =
      _$ProductExportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductExportRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductExportRequest> get serializer =>
      _$ProductExportRequestSerializer();
}

class _$ProductExportRequestSerializer
    implements PrimitiveSerializer<ProductExportRequest> {
  @override
  final Iterable<Type> types = const [
    ProductExportRequest,
    _$ProductExportRequest
  ];

  @override
  final String wireName = r'ProductExportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductExportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(ProductExportRequestFormatEnum),
    );
    if (object.frameKey != null) {
      yield r'frameKey';
      yield serializers.serialize(
        object.frameKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.frameKeys != null) {
      yield r'frameKeys';
      yield serializers.serialize(
        object.frameKeys,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.radiusKm != null) {
      yield r'radiusKm';
      yield serializers.serialize(
        object.radiusKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.minZoom != null) {
      yield r'minZoom';
      yield serializers.serialize(
        object.minZoom,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxZoom != null) {
      yield r'maxZoom';
      yield serializers.serialize(
        object.maxZoom,
        specifiedType: const FullType(int),
      );
    }
    if (object.style != null) {
      yield r'style';
      yield serializers.serialize(
        object.style,
        specifiedType: const FullType(String),
      );
    }
    if (object.tms != null) {
      yield r'tms';
      yield serializers.serialize(
        object.tms,
        specifiedType: const FullType(ProductExportRequestTmsEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductExportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductExportRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductExportRequestFormatEnum),
          ) as ProductExportRequestFormatEnum;
          result.format = valueDes;
          break;
        case r'frameKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.frameKey = valueDes;
          break;
        case r'frameKeys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.frameKeys.replace(valueDes);
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'placeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'radiusKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.radiusKm = valueDes;
          break;
        case r'minZoom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minZoom = valueDes;
          break;
        case r'maxZoom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxZoom = valueDes;
          break;
        case r'style':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.style = valueDes;
          break;
        case r'tms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ProductExportRequestTmsEnum),
          ) as ProductExportRequestTmsEnum?;
          if (valueDes == null) continue;
          result.tms = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductExportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductExportRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class ProductExportRequestFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mbtiles')
  static const ProductExportRequestFormatEnum mbtiles =
      _$productExportRequestFormatEnum_mbtiles;
  @BuiltValueEnumConst(wireName: r'pmtiles')
  static const ProductExportRequestFormatEnum pmtiles =
      _$productExportRequestFormatEnum_pmtiles;
  @BuiltValueEnumConst(wireName: r'cog')
  static const ProductExportRequestFormatEnum cog =
      _$productExportRequestFormatEnum_cog;

  static Serializer<ProductExportRequestFormatEnum> get serializer =>
      _$productExportRequestFormatEnumSerializer;

  const ProductExportRequestFormatEnum._(String name) : super(name);

  static BuiltSet<ProductExportRequestFormatEnum> get values =>
      _$productExportRequestFormatEnumValues;
  static ProductExportRequestFormatEnum valueOf(String name) =>
      _$productExportRequestFormatEnumValueOf(name);
}

/// mbtiles and pmtiles hold XYZ WebMercatorQuad tiles only (WorldCRS84Quad is 400 VALIDATION_FAILED). A cog follows the set: WebMercatorQuad writes EPSG:3857, WorldCRS84Quad EPSG:4326.
class ProductExportRequestTmsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'WebMercatorQuad')
  static const ProductExportRequestTmsEnum webMercatorQuad =
      _$productExportRequestTmsEnum_webMercatorQuad;
  @BuiltValueEnumConst(wireName: r'WorldCRS84Quad')
  static const ProductExportRequestTmsEnum worldCRS84Quad =
      _$productExportRequestTmsEnum_worldCRS84Quad;

  static Serializer<ProductExportRequestTmsEnum> get serializer =>
      _$productExportRequestTmsEnumSerializer;

  const ProductExportRequestTmsEnum._(String name) : super(name);

  static BuiltSet<ProductExportRequestTmsEnum> get values =>
      _$productExportRequestTmsEnumValues;
  static ProductExportRequestTmsEnum valueOf(String name) =>
      _$productExportRequestTmsEnumValueOf(name);
}
