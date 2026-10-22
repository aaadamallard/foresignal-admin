//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_member.g.dart';

/// A principal's membership of a group
///
/// Properties:
/// * [principal]
/// * [role]
/// * [addedAt]
/// * [addedBy]
@BuiltValue()
abstract class GroupMember implements Built<GroupMember, GroupMemberBuilder> {
  @BuiltValueField(wireName: r'principal')
  PrincipalSummary get principal;

  @BuiltValueField(wireName: r'role')
  GroupMemberRoleEnum get role;
  // enum roleEnum {  member,  manager,  };

  @BuiltValueField(wireName: r'addedAt')
  DateTime? get addedAt;

  @BuiltValueField(wireName: r'addedBy')
  PrincipalSummary? get addedBy;

  GroupMember._();

  factory GroupMember([void updates(GroupMemberBuilder b)]) = _$GroupMember;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupMemberBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupMember> get serializer => _$GroupMemberSerializer();
}

class _$GroupMemberSerializer implements PrimitiveSerializer<GroupMember> {
  @override
  final Iterable<Type> types = const [GroupMember, _$GroupMember];

  @override
  final String wireName = r'GroupMember';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupMember object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'principal';
    yield serializers.serialize(
      object.principal,
      specifiedType: const FullType(PrincipalSummary),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(GroupMemberRoleEnum),
    );
    if (object.addedAt != null) {
      yield r'addedAt';
      yield serializers.serialize(
        object.addedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.addedBy != null) {
      yield r'addedBy';
      yield serializers.serialize(
        object.addedBy,
        specifiedType: const FullType.nullable(PrincipalSummary),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupMember object, {
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
    required GroupMemberBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'principal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrincipalSummary),
                  )
                  as PrincipalSummary;
          result.principal.replace(valueDes);
          break;
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(GroupMemberRoleEnum),
                  )
                  as GroupMemberRoleEnum;
          result.role = valueDes;
          break;
        case r'addedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.addedAt = valueDes;
          break;
        case r'addedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PrincipalSummary),
                  )
                  as PrincipalSummary?;
          if (valueDes == null) continue;
          result.addedBy.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupMember deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupMemberBuilder();
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

class GroupMemberRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'member')
  static const GroupMemberRoleEnum member = _$groupMemberRoleEnum_member;
  @BuiltValueEnumConst(wireName: r'manager')
  static const GroupMemberRoleEnum manager = _$groupMemberRoleEnum_manager;

  static Serializer<GroupMemberRoleEnum> get serializer =>
      _$groupMemberRoleEnumSerializer;

  const GroupMemberRoleEnum._(String name) : super(name);

  static BuiltSet<GroupMemberRoleEnum> get values =>
      _$groupMemberRoleEnumValues;
  static GroupMemberRoleEnum valueOf(String name) =>
      _$groupMemberRoleEnumValueOf(name);
}
