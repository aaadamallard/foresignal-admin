//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest_count_entities.g.dart';

/// Distinct entities per group
///
/// Properties:
/// * [new_]
/// * [changed]
/// * [removed]
/// * [edges]
@BuiltValue()
abstract class DigestCountEntities
    implements Built<DigestCountEntities, DigestCountEntitiesBuilder> {
  @BuiltValueField(wireName: r'new')
  int? get new_;

  @BuiltValueField(wireName: r'changed')
  int? get changed;

  @BuiltValueField(wireName: r'removed')
  int? get removed;

  @BuiltValueField(wireName: r'edges')
  int? get edges;

  DigestCountEntities._();

  factory DigestCountEntities([void updates(DigestCountEntitiesBuilder b)]) =
      _$DigestCountEntities;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestCountEntitiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigestCountEntities> get serializer =>
      _$DigestCountEntitiesSerializer();
}

class _$DigestCountEntitiesSerializer
    implements PrimitiveSerializer<DigestCountEntities> {
  @override
  final Iterable<Type> types = const [
    DigestCountEntities,
    _$DigestCountEntities
  ];

  @override
  final String wireName = r'DigestCountEntities';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigestCountEntities object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.new_ != null) {
      yield r'new';
      yield serializers.serialize(
        object.new_,
        specifiedType: const FullType(int),
      );
    }
    if (object.changed != null) {
      yield r'changed';
      yield serializers.serialize(
        object.changed,
        specifiedType: const FullType(int),
      );
    }
    if (object.removed != null) {
      yield r'removed';
      yield serializers.serialize(
        object.removed,
        specifiedType: const FullType(int),
      );
    }
    if (object.edges != null) {
      yield r'edges';
      yield serializers.serialize(
        object.edges,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DigestCountEntities object, {
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
    required DigestCountEntitiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'new':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.new_ = valueDes;
          break;
        case r'changed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.changed = valueDes;
          break;
        case r'removed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.removed = valueDes;
          break;
        case r'edges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.edges = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigestCountEntities deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestCountEntitiesBuilder();
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
