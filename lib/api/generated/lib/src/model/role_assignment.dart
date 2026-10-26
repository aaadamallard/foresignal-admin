//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'role_assignment.g.dart';

/// The complete set of role ids a user should hold (replaces the current set)
///
/// Properties:
/// * [roles]
@BuiltValue()
abstract class RoleAssignment
    implements Built<RoleAssignment, RoleAssignmentBuilder> {
  @BuiltValueField(wireName: r'roles')
  BuiltList<String> get roles;

  RoleAssignment._();

  factory RoleAssignment([void updates(RoleAssignmentBuilder b)]) =
      _$RoleAssignment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RoleAssignmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RoleAssignment> get serializer =>
      _$RoleAssignmentSerializer();
}

class _$RoleAssignmentSerializer
    implements PrimitiveSerializer<RoleAssignment> {
  @override
  final Iterable<Type> types = const [RoleAssignment, _$RoleAssignment];

  @override
  final String wireName = r'RoleAssignment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RoleAssignment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'roles';
    yield serializers.serialize(
      object.roles,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RoleAssignment object, {
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
    required RoleAssignmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'roles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.roles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RoleAssignment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RoleAssignmentBuilder();
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
