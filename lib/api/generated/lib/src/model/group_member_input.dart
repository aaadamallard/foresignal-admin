//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_member_input.g.dart';

/// Add or update a group member
///
/// Properties:
/// * [principalId] - Principal id or handle
/// * [role]
@BuiltValue()
abstract class GroupMemberInput
    implements Built<GroupMemberInput, GroupMemberInputBuilder> {
  /// Principal id or handle
  @BuiltValueField(wireName: r'principalId')
  String get principalId;

  @BuiltValueField(wireName: r'role')
  GroupMemberInputRoleEnum? get role;
  // enum roleEnum {  member,  manager,  };

  GroupMemberInput._();

  factory GroupMemberInput([void updates(GroupMemberInputBuilder b)]) =
      _$GroupMemberInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupMemberInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupMemberInput> get serializer =>
      _$GroupMemberInputSerializer();
}

class _$GroupMemberInputSerializer
    implements PrimitiveSerializer<GroupMemberInput> {
  @override
  final Iterable<Type> types = const [GroupMemberInput, _$GroupMemberInput];

  @override
  final String wireName = r'GroupMemberInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupMemberInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'principalId';
    yield serializers.serialize(
      object.principalId,
      specifiedType: const FullType(String),
    );
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(GroupMemberInputRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupMemberInput object, {
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
    required GroupMemberInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'principalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.principalId = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(GroupMemberInputRoleEnum),
          ) as GroupMemberInputRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupMemberInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupMemberInputBuilder();
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

class GroupMemberInputRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'member')
  static const GroupMemberInputRoleEnum member =
      _$groupMemberInputRoleEnum_member;
  @BuiltValueEnumConst(wireName: r'manager')
  static const GroupMemberInputRoleEnum manager =
      _$groupMemberInputRoleEnum_manager;

  static Serializer<GroupMemberInputRoleEnum> get serializer =>
      _$groupMemberInputRoleEnumSerializer;

  const GroupMemberInputRoleEnum._(String name) : super(name);

  static BuiltSet<GroupMemberInputRoleEnum> get values =>
      _$groupMemberInputRoleEnumValues;
  static GroupMemberInputRoleEnum valueOf(String name) =>
      _$groupMemberInputRoleEnumValueOf(name);
}
