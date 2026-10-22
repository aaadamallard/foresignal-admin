//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/group_member_input.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_members_input.g.dart';

/// Members to add (managers or admin)
///
/// Properties:
/// * [members]
@BuiltValue()
abstract class GroupMembersInput
    implements Built<GroupMembersInput, GroupMembersInputBuilder> {
  @BuiltValueField(wireName: r'members')
  BuiltList<GroupMemberInput> get members;

  GroupMembersInput._();

  factory GroupMembersInput([void updates(GroupMembersInputBuilder b)]) =
      _$GroupMembersInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupMembersInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupMembersInput> get serializer =>
      _$GroupMembersInputSerializer();
}

class _$GroupMembersInputSerializer
    implements PrimitiveSerializer<GroupMembersInput> {
  @override
  final Iterable<Type> types = const [GroupMembersInput, _$GroupMembersInput];

  @override
  final String wireName = r'GroupMembersInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupMembersInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [FullType(GroupMemberInput)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupMembersInput object, {
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
    required GroupMembersInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'members':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(GroupMemberInput),
                    ]),
                  )
                  as BuiltList<GroupMemberInput>;
          result.members.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupMembersInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupMembersInputBuilder();
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
