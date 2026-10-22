//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collection_gap_recommendations_inner.g.dart';

/// Collection recommendation (never applied automatically)
///
/// Properties:
/// * [type]
/// * [sourceId]
/// * [sensorFamily] - e.g. 069, 078 or 086 receiver or sensor family
/// * [text]
@BuiltValue()
abstract class CollectionGapRecommendationsInner
    implements
        Built<CollectionGapRecommendationsInner,
            CollectionGapRecommendationsInnerBuilder> {
  @BuiltValueField(wireName: r'type')
  CollectionGapRecommendationsInnerTypeEnum get type;
  // enum typeEnum {  enable-source,  add-receiver,  add-sensor,  none,  };

  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  /// e.g. 069, 078 or 086 receiver or sensor family
  @BuiltValueField(wireName: r'sensorFamily')
  String? get sensorFamily;

  @BuiltValueField(wireName: r'text')
  String get text;

  CollectionGapRecommendationsInner._();

  factory CollectionGapRecommendationsInner(
          [void updates(CollectionGapRecommendationsInnerBuilder b)]) =
      _$CollectionGapRecommendationsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectionGapRecommendationsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollectionGapRecommendationsInner> get serializer =>
      _$CollectionGapRecommendationsInnerSerializer();
}

class _$CollectionGapRecommendationsInnerSerializer
    implements PrimitiveSerializer<CollectionGapRecommendationsInner> {
  @override
  final Iterable<Type> types = const [
    CollectionGapRecommendationsInner,
    _$CollectionGapRecommendationsInner
  ];

  @override
  final String wireName = r'CollectionGapRecommendationsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollectionGapRecommendationsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(CollectionGapRecommendationsInnerTypeEnum),
    );
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sensorFamily != null) {
      yield r'sensorFamily';
      yield serializers.serialize(
        object.sensorFamily,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CollectionGapRecommendationsInner object, {
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
    required CollectionGapRecommendationsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(CollectionGapRecommendationsInnerTypeEnum),
          ) as CollectionGapRecommendationsInnerTypeEnum;
          result.type = valueDes;
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        case r'sensorFamily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sensorFamily = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollectionGapRecommendationsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectionGapRecommendationsInnerBuilder();
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

class CollectionGapRecommendationsInnerTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'enable-source')
  static const CollectionGapRecommendationsInnerTypeEnum enableSource =
      _$collectionGapRecommendationsInnerTypeEnum_enableSource;
  @BuiltValueEnumConst(wireName: r'add-receiver')
  static const CollectionGapRecommendationsInnerTypeEnum addReceiver =
      _$collectionGapRecommendationsInnerTypeEnum_addReceiver;
  @BuiltValueEnumConst(wireName: r'add-sensor')
  static const CollectionGapRecommendationsInnerTypeEnum addSensor =
      _$collectionGapRecommendationsInnerTypeEnum_addSensor;
  @BuiltValueEnumConst(wireName: r'none')
  static const CollectionGapRecommendationsInnerTypeEnum none =
      _$collectionGapRecommendationsInnerTypeEnum_none;

  static Serializer<CollectionGapRecommendationsInnerTypeEnum> get serializer =>
      _$collectionGapRecommendationsInnerTypeEnumSerializer;

  const CollectionGapRecommendationsInnerTypeEnum._(String name) : super(name);

  static BuiltSet<CollectionGapRecommendationsInnerTypeEnum> get values =>
      _$collectionGapRecommendationsInnerTypeEnumValues;
  static CollectionGapRecommendationsInnerTypeEnum valueOf(String name) =>
      _$collectionGapRecommendationsInnerTypeEnumValueOf(name);
}
