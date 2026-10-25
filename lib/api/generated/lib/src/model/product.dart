//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/product_links.dart';
import 'package:foresignal_api/src/model/external_catalogue_entry.dart';
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:foresignal_api/src/model/product_spatial.dart';
import 'package:foresignal_api/src/model/product_render.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/product_temporal.dart';
import 'package:foresignal_api/src/model/product_legend.dart';
import 'package:foresignal_api/src/model/product_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product.g.dart';

/// A raster, field or external product in the catalogue (Weather-Imagery-Design §6.2); `compact=true` lists carry id, title, kind, category, source, coverage, units, temporal and status only
///
/// Properties:
/// * [id]
/// * [title]
/// * [kind] - raster: rendered tiles; field: model vector/scalar field (also tiles); external: client-direct catalogue entry
/// * [category]
/// * [source_] - Owning source id
/// * [dynamic_] - Registered at runtime (SatDump products)
/// * [units]
/// * [dtype] - Stored sample type
/// * [coverage]
/// * [coverageMeaning] - One-line meaning of the coverage
/// * [codes] - Categorical and special raw codes → meaning, e.g. {\"0\": \"noCoverage\", \"1\": \"noEcho\"}
/// * [temporal]
/// * [spatial]
/// * [render]
/// * [legend]
/// * [attribution]
/// * [status]
/// * [external_]
/// * [links]
@BuiltValue()
abstract class Product implements Built<Product, ProductBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  /// raster: rendered tiles; field: model vector/scalar field (also tiles); external: client-direct catalogue entry
  @BuiltValueField(wireName: r'kind')
  ProductKindEnum get kind;
  // enum kindEnum {  raster,  field,  external,  };

  @BuiltValueField(wireName: r'category')
  ProductCategoryEnum get category;
  // enum categoryEnum {  radar,  satellite,  model,  lightning,  imagery,  };

  /// Owning source id
  @BuiltValueField(wireName: r'source')
  String get source_;

  /// Registered at runtime (SatDump products)
  @BuiltValueField(wireName: r'dynamic')
  bool? get dynamic_;

  @BuiltValueField(wireName: r'units')
  String? get units;

  /// Stored sample type
  @BuiltValueField(wireName: r'dtype')
  ProductDtypeEnum? get dtype;
  // enum dtypeEnum {  u8,  u16,  i16,  f32,  rgba8,  };

  @BuiltValueField(wireName: r'coverage')
  ProductCoverageEnum? get coverage;
  // enum coverageEnum {  CONUS,  global,  station-disc,  swath,  };

  /// One-line meaning of the coverage
  @BuiltValueField(wireName: r'coverageMeaning')
  String? get coverageMeaning;

  /// Categorical and special raw codes → meaning, e.g. {\"0\": \"noCoverage\", \"1\": \"noEcho\"}
  @BuiltValueField(wireName: r'codes')
  BuiltMap<String, String>? get codes;

  @BuiltValueField(wireName: r'temporal')
  ProductTemporal? get temporal;

  @BuiltValueField(wireName: r'spatial')
  ProductSpatial? get spatial;

  @BuiltValueField(wireName: r'render')
  ProductRender? get render;

  @BuiltValueField(wireName: r'legend')
  ProductLegend? get legend;

  @BuiltValueField(wireName: r'attribution')
  Attribution? get attribution;

  @BuiltValueField(wireName: r'status')
  ProductStatus? get status;

  @BuiltValueField(wireName: r'external')
  ExternalCatalogueEntry? get external_;

  @BuiltValueField(wireName: r'links')
  ProductLinks? get links;

  Product._();

  factory Product([void updates(ProductBuilder b)]) = _$Product;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Product> get serializer => _$ProductSerializer();
}

class _$ProductSerializer implements PrimitiveSerializer<Product> {
  @override
  final Iterable<Type> types = const [Product, _$Product];

  @override
  final String wireName = r'Product';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Product object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(ProductKindEnum),
    );
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(ProductCategoryEnum),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(String),
    );
    if (object.dynamic_ != null) {
      yield r'dynamic';
      yield serializers.serialize(
        object.dynamic_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dtype != null) {
      yield r'dtype';
      yield serializers.serialize(
        object.dtype,
        specifiedType: const FullType.nullable(ProductDtypeEnum),
      );
    }
    if (object.coverage != null) {
      yield r'coverage';
      yield serializers.serialize(
        object.coverage,
        specifiedType: const FullType(ProductCoverageEnum),
      );
    }
    if (object.coverageMeaning != null) {
      yield r'coverageMeaning';
      yield serializers.serialize(
        object.coverageMeaning,
        specifiedType: const FullType(String),
      );
    }
    if (object.codes != null) {
      yield r'codes';
      yield serializers.serialize(
        object.codes,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.temporal != null) {
      yield r'temporal';
      yield serializers.serialize(
        object.temporal,
        specifiedType: const FullType(ProductTemporal),
      );
    }
    if (object.spatial != null) {
      yield r'spatial';
      yield serializers.serialize(
        object.spatial,
        specifiedType: const FullType(ProductSpatial),
      );
    }
    if (object.render != null) {
      yield r'render';
      yield serializers.serialize(
        object.render,
        specifiedType: const FullType(ProductRender),
      );
    }
    if (object.legend != null) {
      yield r'legend';
      yield serializers.serialize(
        object.legend,
        specifiedType: const FullType(ProductLegend),
      );
    }
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(Attribution),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(ProductStatus),
      );
    }
    if (object.external_ != null) {
      yield r'external';
      yield serializers.serialize(
        object.external_,
        specifiedType: const FullType.nullable(ExternalCatalogueEntry),
      );
    }
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(ProductLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Product object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ProductKindEnum),
                  )
                  as ProductKindEnum;
          result.kind = valueDes;
          break;
        case r'category':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ProductCategoryEnum),
                  )
                  as ProductCategoryEnum;
          result.category = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.source_ = valueDes;
          break;
        case r'dynamic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.dynamic_ = valueDes;
          break;
        case r'units':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        case r'dtype':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProductDtypeEnum),
                  )
                  as ProductDtypeEnum?;
          if (valueDes == null) continue;
          result.dtype = valueDes;
          break;
        case r'coverage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProductCoverageEnum),
                  )
                  as ProductCoverageEnum?;
          if (valueDes == null) continue;
          result.coverage = valueDes;
          break;
        case r'coverageMeaning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.coverageMeaning = valueDes;
          break;
        case r'codes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.codes.replace(valueDes);
          break;
        case r'temporal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProductTemporal),
                  )
                  as ProductTemporal?;
          if (valueDes == null) continue;
          result.temporal.replace(valueDes);
          break;
        case r'spatial':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProductSpatial),
                  )
                  as ProductSpatial?;
          if (valueDes == null) continue;
          result.spatial.replace(valueDes);
          break;
        case r'render':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProductRender),
                  )
                  as ProductRender?;
          if (valueDes == null) continue;
          result.render.replace(valueDes);
          break;
        case r'legend':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProductLegend),
                  )
                  as ProductLegend?;
          if (valueDes == null) continue;
          result.legend.replace(valueDes);
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Attribution),
                  )
                  as Attribution?;
          if (valueDes == null) continue;
          result.attribution.replace(valueDes);
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProductStatus),
                  )
                  as ProductStatus?;
          if (valueDes == null) continue;
          result.status.replace(valueDes);
          break;
        case r'external':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExternalCatalogueEntry,
                    ),
                  )
                  as ExternalCatalogueEntry?;
          if (valueDes == null) continue;
          result.external_.replace(valueDes);
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProductLinks),
                  )
                  as ProductLinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Product deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductBuilder();
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

/// raster: rendered tiles; field: model vector/scalar field (also tiles); external: client-direct catalogue entry
class ProductKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'raster')
  static const ProductKindEnum raster = _$productKindEnum_raster;
  @BuiltValueEnumConst(wireName: r'field')
  static const ProductKindEnum field = _$productKindEnum_field;
  @BuiltValueEnumConst(wireName: r'external')
  static const ProductKindEnum external_ = _$productKindEnum_external_;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProductKindEnum unknownDefaultOpenApi =
      _$productKindEnum_unknownDefaultOpenApi;

  static Serializer<ProductKindEnum> get serializer =>
      _$productKindEnumSerializer;

  const ProductKindEnum._(String name) : super(name);

  static BuiltSet<ProductKindEnum> get values => _$productKindEnumValues;
  static ProductKindEnum valueOf(String name) => _$productKindEnumValueOf(name);
}

class ProductCategoryEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'radar')
  static const ProductCategoryEnum radar = _$productCategoryEnum_radar;
  @BuiltValueEnumConst(wireName: r'satellite')
  static const ProductCategoryEnum satellite = _$productCategoryEnum_satellite;
  @BuiltValueEnumConst(wireName: r'model')
  static const ProductCategoryEnum model = _$productCategoryEnum_model;
  @BuiltValueEnumConst(wireName: r'lightning')
  static const ProductCategoryEnum lightning = _$productCategoryEnum_lightning;
  @BuiltValueEnumConst(wireName: r'imagery')
  static const ProductCategoryEnum imagery = _$productCategoryEnum_imagery;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProductCategoryEnum unknownDefaultOpenApi =
      _$productCategoryEnum_unknownDefaultOpenApi;

  static Serializer<ProductCategoryEnum> get serializer =>
      _$productCategoryEnumSerializer;

  const ProductCategoryEnum._(String name) : super(name);

  static BuiltSet<ProductCategoryEnum> get values =>
      _$productCategoryEnumValues;
  static ProductCategoryEnum valueOf(String name) =>
      _$productCategoryEnumValueOf(name);
}

/// Stored sample type
class ProductDtypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'u8')
  static const ProductDtypeEnum u8 = _$productDtypeEnum_u8;
  @BuiltValueEnumConst(wireName: r'u16')
  static const ProductDtypeEnum u16 = _$productDtypeEnum_u16;
  @BuiltValueEnumConst(wireName: r'i16')
  static const ProductDtypeEnum i16 = _$productDtypeEnum_i16;
  @BuiltValueEnumConst(wireName: r'f32')
  static const ProductDtypeEnum f32 = _$productDtypeEnum_f32;
  @BuiltValueEnumConst(wireName: r'rgba8')
  static const ProductDtypeEnum rgba8 = _$productDtypeEnum_rgba8;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProductDtypeEnum unknownDefaultOpenApi =
      _$productDtypeEnum_unknownDefaultOpenApi;

  static Serializer<ProductDtypeEnum> get serializer =>
      _$productDtypeEnumSerializer;

  const ProductDtypeEnum._(String name) : super(name);

  static BuiltSet<ProductDtypeEnum> get values => _$productDtypeEnumValues;
  static ProductDtypeEnum valueOf(String name) =>
      _$productDtypeEnumValueOf(name);
}

class ProductCoverageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CONUS')
  static const ProductCoverageEnum CONUS = _$productCoverageEnum_CONUS;
  @BuiltValueEnumConst(wireName: r'global')
  static const ProductCoverageEnum global = _$productCoverageEnum_global;
  @BuiltValueEnumConst(wireName: r'station-disc')
  static const ProductCoverageEnum stationDisc =
      _$productCoverageEnum_stationDisc;
  @BuiltValueEnumConst(wireName: r'swath')
  static const ProductCoverageEnum swath = _$productCoverageEnum_swath;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProductCoverageEnum unknownDefaultOpenApi =
      _$productCoverageEnum_unknownDefaultOpenApi;

  static Serializer<ProductCoverageEnum> get serializer =>
      _$productCoverageEnumSerializer;

  const ProductCoverageEnum._(String name) : super(name);

  static BuiltSet<ProductCoverageEnum> get values =>
      _$productCoverageEnumValues;
  static ProductCoverageEnum valueOf(String name) =>
      _$productCoverageEnumValueOf(name);
}
