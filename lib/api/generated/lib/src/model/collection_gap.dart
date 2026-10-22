//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/collection_gap_recommendations_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collection_gap.g.dart';

/// An indicator that would matter but cannot currently be observed
///
/// Properties:
/// * [id] - ULID identifier
/// * [setId] - ULID identifier
/// * [indicatorId] - ULID identifier
/// * [potentialEig]
/// * [actualEig]
/// * [pDetect]
/// * [recommendations]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class CollectionGap
    implements Built<CollectionGap, CollectionGapBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  /// ULID identifier
  @BuiltValueField(wireName: r'indicatorId')
  String get indicatorId;

  @BuiltValueField(wireName: r'potentialEig')
  num get potentialEig;

  @BuiltValueField(wireName: r'actualEig')
  num get actualEig;

  @BuiltValueField(wireName: r'pDetect')
  num? get pDetect;

  @BuiltValueField(wireName: r'recommendations')
  BuiltList<CollectionGapRecommendationsInner> get recommendations;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  CollectionGap._();

  factory CollectionGap([void updates(CollectionGapBuilder b)]) =
      _$CollectionGap;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectionGapBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollectionGap> get serializer =>
      _$CollectionGapSerializer();
}

class _$CollectionGapSerializer implements PrimitiveSerializer<CollectionGap> {
  @override
  final Iterable<Type> types = const [CollectionGap, _$CollectionGap];

  @override
  final String wireName = r'CollectionGap';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollectionGap object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'setId';
    yield serializers.serialize(
      object.setId,
      specifiedType: const FullType(String),
    );
    yield r'indicatorId';
    yield serializers.serialize(
      object.indicatorId,
      specifiedType: const FullType(String),
    );
    yield r'potentialEig';
    yield serializers.serialize(
      object.potentialEig,
      specifiedType: const FullType(num),
    );
    yield r'actualEig';
    yield serializers.serialize(
      object.actualEig,
      specifiedType: const FullType(num),
    );
    if (object.pDetect != null) {
      yield r'pDetect';
      yield serializers.serialize(
        object.pDetect,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'recommendations';
    yield serializers.serialize(
      object.recommendations,
      specifiedType: const FullType(
          BuiltList, [FullType(CollectionGapRecommendationsInner)]),
    );
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CollectionGap object, {
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
    required CollectionGapBuilder result,
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
        case r'setId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.setId = valueDes;
          break;
        case r'indicatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.indicatorId = valueDes;
          break;
        case r'potentialEig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.potentialEig = valueDes;
          break;
        case r'actualEig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.actualEig = valueDes;
          break;
        case r'pDetect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.pDetect = valueDes;
          break;
        case r'recommendations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(CollectionGapRecommendationsInner)]),
          ) as BuiltList<CollectionGapRecommendationsInner>;
          result.recommendations.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollectionGap deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectionGapBuilder();
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
