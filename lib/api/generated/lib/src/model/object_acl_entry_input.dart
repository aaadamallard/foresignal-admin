//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_acl_entry_input.g.dart';

/// One access-list grant to set
///
/// Properties:
/// * [grantee] - `principal:{id}`, `group:{id}` or `instance`
/// * [role]
/// * [expiresAt]
@BuiltValue()
abstract class ObjectAclEntryInput
    implements Built<ObjectAclEntryInput, ObjectAclEntryInputBuilder> {
  /// `principal:{id}`, `group:{id}` or `instance`
  @BuiltValueField(wireName: r'grantee')
  String get grantee;

  @BuiltValueField(wireName: r'role')
  ObjectAclEntryInputRoleEnum get role;
  // enum roleEnum {  viewer,  commenter,  editor,  owner,  };

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  ObjectAclEntryInput._();

  factory ObjectAclEntryInput([void updates(ObjectAclEntryInputBuilder b)]) =
      _$ObjectAclEntryInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectAclEntryInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectAclEntryInput> get serializer =>
      _$ObjectAclEntryInputSerializer();
}

class _$ObjectAclEntryInputSerializer
    implements PrimitiveSerializer<ObjectAclEntryInput> {
  @override
  final Iterable<Type> types = const [
    ObjectAclEntryInput,
    _$ObjectAclEntryInput,
  ];

  @override
  final String wireName = r'ObjectAclEntryInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectAclEntryInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'grantee';
    yield serializers.serialize(
      object.grantee,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(ObjectAclEntryInputRoleEnum),
    );
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ObjectAclEntryInput object, {
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
    required ObjectAclEntryInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'grantee':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.grantee = valueDes;
          break;
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ObjectAclEntryInputRoleEnum),
                  )
                  as ObjectAclEntryInputRoleEnum;
          result.role = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObjectAclEntryInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectAclEntryInputBuilder();
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

class ObjectAclEntryInputRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'viewer')
  static const ObjectAclEntryInputRoleEnum viewer =
      _$objectAclEntryInputRoleEnum_viewer;
  @BuiltValueEnumConst(wireName: r'commenter')
  static const ObjectAclEntryInputRoleEnum commenter =
      _$objectAclEntryInputRoleEnum_commenter;
  @BuiltValueEnumConst(wireName: r'editor')
  static const ObjectAclEntryInputRoleEnum editor =
      _$objectAclEntryInputRoleEnum_editor;
  @BuiltValueEnumConst(wireName: r'owner')
  static const ObjectAclEntryInputRoleEnum owner =
      _$objectAclEntryInputRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ObjectAclEntryInputRoleEnum unknownDefaultOpenApi =
      _$objectAclEntryInputRoleEnum_unknownDefaultOpenApi;

  static Serializer<ObjectAclEntryInputRoleEnum> get serializer =>
      _$objectAclEntryInputRoleEnumSerializer;

  const ObjectAclEntryInputRoleEnum._(String name) : super(name);

  static BuiltSet<ObjectAclEntryInputRoleEnum> get values =>
      _$objectAclEntryInputRoleEnumValues;
  static ObjectAclEntryInputRoleEnum valueOf(String name) =>
      _$objectAclEntryInputRoleEnumValueOf(name);
}
