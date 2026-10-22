//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:foresignal_api/src/model/ogc_coverage_collection_data_queries.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:foresignal_api/src/model/ogc_coverage_collection_extent.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_coverage_collection.g.dart';

/// A raster product exposed as an OGC API collection with map tiles (20-057) and EDR queries (19-086r6)
///
/// Properties:
/// * [id] - Product id
/// * [title]
/// * [description]
/// * [itemType]
/// * [extent]
/// * [dataQueries]
/// * [parameterNames] - EDR parameters with units and nodata
/// * [outputFormats]
/// * [crs]
/// * [attribution]
/// * [links]
@BuiltValue()
abstract class OgcCoverageCollection
    implements Built<OgcCoverageCollection, OgcCoverageCollectionBuilder> {
  /// Product id
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'itemType')
  OgcCoverageCollectionItemTypeEnum get itemType;
  // enum itemTypeEnum {  coverage,  };

  @BuiltValueField(wireName: r'extent')
  OgcCoverageCollectionExtent? get extent;

  @BuiltValueField(wireName: r'data_queries')
  OgcCoverageCollectionDataQueries? get dataQueries;

  /// EDR parameters with units and nodata
  @BuiltValueField(wireName: r'parameter_names')
  BuiltMap<String, BuiltMap<String, JsonObject?>>? get parameterNames;

  @BuiltValueField(wireName: r'output_formats')
  BuiltList<String>? get outputFormats;

  @BuiltValueField(wireName: r'crs')
  BuiltList<String>? get crs;

  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  @BuiltValueField(wireName: r'links')
  BuiltList<OgcLink> get links;

  OgcCoverageCollection._();

  factory OgcCoverageCollection(
      [void updates(OgcCoverageCollectionBuilder b)]) = _$OgcCoverageCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcCoverageCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcCoverageCollection> get serializer =>
      _$OgcCoverageCollectionSerializer();
}

class _$OgcCoverageCollectionSerializer
    implements PrimitiveSerializer<OgcCoverageCollection> {
  @override
  final Iterable<Type> types = const [
    OgcCoverageCollection,
    _$OgcCoverageCollection
  ];

  @override
  final String wireName = r'OgcCoverageCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcCoverageCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'itemType';
    yield serializers.serialize(
      object.itemType,
      specifiedType: const FullType(OgcCoverageCollectionItemTypeEnum),
    );
    if (object.extent != null) {
      yield r'extent';
      yield serializers.serialize(
        object.extent,
        specifiedType: const FullType(OgcCoverageCollectionExtent),
      );
    }
    if (object.dataQueries != null) {
      yield r'data_queries';
      yield serializers.serialize(
        object.dataQueries,
        specifiedType: const FullType(OgcCoverageCollectionDataQueries),
      );
    }
    if (object.parameterNames != null) {
      yield r'parameter_names';
      yield serializers.serialize(
        object.parameterNames,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
        ]),
      );
    }
    if (object.outputFormats != null) {
      yield r'output_formats';
      yield serializers.serialize(
        object.outputFormats,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.crs != null) {
      yield r'crs';
      yield serializers.serialize(
        object.crs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'links';
    yield serializers.serialize(
      object.links,
      specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcCoverageCollection object, {
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
    required OgcCoverageCollectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'itemType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OgcCoverageCollectionItemTypeEnum),
          ) as OgcCoverageCollectionItemTypeEnum;
          result.itemType = valueDes;
          break;
        case r'extent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OgcCoverageCollectionExtent),
          ) as OgcCoverageCollectionExtent?;
          if (valueDes == null) continue;
          result.extent.replace(valueDes);
          break;
        case r'data_queries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(OgcCoverageCollectionDataQueries),
          ) as OgcCoverageCollectionDataQueries?;
          if (valueDes == null) continue;
          result.dataQueries.replace(valueDes);
          break;
        case r'parameter_names':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(
                  BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
            ]),
          ) as BuiltMap<String, BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.parameterNames.replace(valueDes);
          break;
        case r'output_formats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.outputFormats.replace(valueDes);
          break;
        case r'crs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.crs.replace(valueDes);
          break;
        case r'attribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.attribution = valueDes;
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
          ) as BuiltList<OgcLink>;
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
  OgcCoverageCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcCoverageCollectionBuilder();
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

class OgcCoverageCollectionItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'coverage')
  static const OgcCoverageCollectionItemTypeEnum coverage =
      _$ogcCoverageCollectionItemTypeEnum_coverage;

  static Serializer<OgcCoverageCollectionItemTypeEnum> get serializer =>
      _$ogcCoverageCollectionItemTypeEnumSerializer;

  const OgcCoverageCollectionItemTypeEnum._(String name) : super(name);

  static BuiltSet<OgcCoverageCollectionItemTypeEnum> get values =>
      _$ogcCoverageCollectionItemTypeEnumValues;
  static OgcCoverageCollectionItemTypeEnum valueOf(String name) =>
      _$ogcCoverageCollectionItemTypeEnumValueOf(name);
}
