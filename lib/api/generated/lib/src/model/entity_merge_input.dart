//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_merge_input.g.dart';

/// Operator-only merge of another (anchored or provisional) entity into the path entity
///
/// Properties:
/// * [otherId] - ULID identifier
@BuiltValue()
abstract class EntityMergeInput
    implements Built<EntityMergeInput, EntityMergeInputBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'otherId')
  String get otherId;

  EntityMergeInput._();

  factory EntityMergeInput([void updates(EntityMergeInputBuilder b)]) =
      _$EntityMergeInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityMergeInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityMergeInput> get serializer =>
      _$EntityMergeInputSerializer();
}

class _$EntityMergeInputSerializer
    implements PrimitiveSerializer<EntityMergeInput> {
  @override
  final Iterable<Type> types = const [EntityMergeInput, _$EntityMergeInput];

  @override
  final String wireName = r'EntityMergeInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityMergeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'otherId';
    yield serializers.serialize(
      object.otherId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityMergeInput object, {
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
    required EntityMergeInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'otherId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.otherId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityMergeInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityMergeInputBuilder();
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
