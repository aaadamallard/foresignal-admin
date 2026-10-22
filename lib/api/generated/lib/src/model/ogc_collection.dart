//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ogc_collection_extent.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_collection.g.dart';

/// A feature collection: one per kind for current state (id = kind) and one per kind for history (id = {kind}-history) (112)
///
/// Properties:
/// * [id]
/// * [title]
/// * [description]
/// * [itemType]
/// * [crs]
/// * [attribution] - 109 aggregate for the collection's sources
/// * [extent]
/// * [links]
@BuiltValue()
abstract class OgcCollection
    implements Built<OgcCollection, OgcCollectionBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'itemType')
  OgcCollectionItemTypeEnum get itemType;
  // enum itemTypeEnum {  feature,  };

  @BuiltValueField(wireName: r'crs')
  BuiltList<String>? get crs;

  /// 109 aggregate for the collection's sources
  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  @BuiltValueField(wireName: r'extent')
  OgcCollectionExtent? get extent;

  @BuiltValueField(wireName: r'links')
  BuiltList<OgcLink> get links;

  OgcCollection._();

  factory OgcCollection([void updates(OgcCollectionBuilder b)]) =
      _$OgcCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcCollection> get serializer =>
      _$OgcCollectionSerializer();
}

class _$OgcCollectionSerializer implements PrimitiveSerializer<OgcCollection> {
  @override
  final Iterable<Type> types = const [OgcCollection, _$OgcCollection];

  @override
  final String wireName = r'OgcCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcCollection object, {
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
      specifiedType: const FullType(OgcCollectionItemTypeEnum),
    );
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
    if (object.extent != null) {
      yield r'extent';
      yield serializers.serialize(
        object.extent,
        specifiedType: const FullType(OgcCollectionExtent),
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
    OgcCollection object, {
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
    required OgcCollectionBuilder result,
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
            specifiedType: const FullType(OgcCollectionItemTypeEnum),
          ) as OgcCollectionItemTypeEnum;
          result.itemType = valueDes;
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
        case r'extent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OgcCollectionExtent),
          ) as OgcCollectionExtent?;
          if (valueDes == null) continue;
          result.extent.replace(valueDes);
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
  OgcCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcCollectionBuilder();
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

class OgcCollectionItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'feature')
  static const OgcCollectionItemTypeEnum feature =
      _$ogcCollectionItemTypeEnum_feature;

  static Serializer<OgcCollectionItemTypeEnum> get serializer =>
      _$ogcCollectionItemTypeEnumSerializer;

  const OgcCollectionItemTypeEnum._(String name) : super(name);

  static BuiltSet<OgcCollectionItemTypeEnum> get values =>
      _$ogcCollectionItemTypeEnumValues;
  static OgcCollectionItemTypeEnum valueOf(String name) =>
      _$ogcCollectionItemTypeEnumValueOf(name);
}
