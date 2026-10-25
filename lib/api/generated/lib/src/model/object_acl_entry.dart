//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_acl_entry.g.dart';

/// One access-list grant
///
/// Properties:
/// * [grantee] - `principal:{id}`, `group:{id}` or `instance`
/// * [granteeDisplay] - Handle or group name for display
/// * [role]
/// * [grantedBy]
/// * [grantedAt]
/// * [expiresAt]
@BuiltValue()
abstract class ObjectAclEntry
    implements Built<ObjectAclEntry, ObjectAclEntryBuilder> {
  /// `principal:{id}`, `group:{id}` or `instance`
  @BuiltValueField(wireName: r'grantee')
  String get grantee;

  /// Handle or group name for display
  @BuiltValueField(wireName: r'granteeDisplay')
  String? get granteeDisplay;

  @BuiltValueField(wireName: r'role')
  ObjectAclEntryRoleEnum get role;
  // enum roleEnum {  viewer,  commenter,  editor,  owner,  };

  @BuiltValueField(wireName: r'grantedBy')
  PrincipalSummary? get grantedBy;

  @BuiltValueField(wireName: r'grantedAt')
  DateTime get grantedAt;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  ObjectAclEntry._();

  factory ObjectAclEntry([void updates(ObjectAclEntryBuilder b)]) =
      _$ObjectAclEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectAclEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectAclEntry> get serializer =>
      _$ObjectAclEntrySerializer();
}

class _$ObjectAclEntrySerializer
    implements PrimitiveSerializer<ObjectAclEntry> {
  @override
  final Iterable<Type> types = const [ObjectAclEntry, _$ObjectAclEntry];

  @override
  final String wireName = r'ObjectAclEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectAclEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'grantee';
    yield serializers.serialize(
      object.grantee,
      specifiedType: const FullType(String),
    );
    if (object.granteeDisplay != null) {
      yield r'granteeDisplay';
      yield serializers.serialize(
        object.granteeDisplay,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(ObjectAclEntryRoleEnum),
    );
    if (object.grantedBy != null) {
      yield r'grantedBy';
      yield serializers.serialize(
        object.grantedBy,
        specifiedType: const FullType(PrincipalSummary),
      );
    }
    yield r'grantedAt';
    yield serializers.serialize(
      object.grantedAt,
      specifiedType: const FullType(DateTime),
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
    ObjectAclEntry object, {
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
    required ObjectAclEntryBuilder result,
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
        case r'granteeDisplay':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.granteeDisplay = valueDes;
          break;
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ObjectAclEntryRoleEnum),
                  )
                  as ObjectAclEntryRoleEnum;
          result.role = valueDes;
          break;
        case r'grantedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PrincipalSummary),
                  )
                  as PrincipalSummary?;
          if (valueDes == null) continue;
          result.grantedBy.replace(valueDes);
          break;
        case r'grantedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.grantedAt = valueDes;
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
  ObjectAclEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectAclEntryBuilder();
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

class ObjectAclEntryRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'viewer')
  static const ObjectAclEntryRoleEnum viewer = _$objectAclEntryRoleEnum_viewer;
  @BuiltValueEnumConst(wireName: r'commenter')
  static const ObjectAclEntryRoleEnum commenter =
      _$objectAclEntryRoleEnum_commenter;
  @BuiltValueEnumConst(wireName: r'editor')
  static const ObjectAclEntryRoleEnum editor = _$objectAclEntryRoleEnum_editor;
  @BuiltValueEnumConst(wireName: r'owner')
  static const ObjectAclEntryRoleEnum owner = _$objectAclEntryRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ObjectAclEntryRoleEnum unknownDefaultOpenApi =
      _$objectAclEntryRoleEnum_unknownDefaultOpenApi;

  static Serializer<ObjectAclEntryRoleEnum> get serializer =>
      _$objectAclEntryRoleEnumSerializer;

  const ObjectAclEntryRoleEnum._(String name) : super(name);

  static BuiltSet<ObjectAclEntryRoleEnum> get values =>
      _$objectAclEntryRoleEnumValues;
  static ObjectAclEntryRoleEnum valueOf(String name) =>
      _$objectAclEntryRoleEnumValueOf(name);
}
