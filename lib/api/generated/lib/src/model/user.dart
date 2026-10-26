//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/user_data_restriction.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/role_ref.dart';
import 'package:foresignal_api/src/model/user_link_issued.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

/// A platform user (user table, 164)
///
/// Properties:
/// * [id]
/// * [email] - Unique, normalized; the primary identity
/// * [fullName]
/// * [status]
/// * [roles] - Assigned roles; effective permissions are their union
/// * [mfaEnabled]
/// * [createdBy] - Admin who created the account; null for the bootstrap first admin
/// * [createdAt]
/// * [updatedAt]
/// * [lastLoginAt]
/// * [activation]
/// * [dataRestriction] - The user's data restriction, or null when unrestricted (R2-013)
@BuiltValue()
abstract class User implements Built<User, UserBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Unique, normalized; the primary identity
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'fullName')
  String get fullName;

  @BuiltValueField(wireName: r'status')
  String get status;

  /// Assigned roles; effective permissions are their union
  @BuiltValueField(wireName: r'roles')
  BuiltList<RoleRef> get roles;

  @BuiltValueField(wireName: r'mfaEnabled')
  bool? get mfaEnabled;

  /// Admin who created the account; null for the bootstrap first admin
  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'lastLoginAt')
  DateTime? get lastLoginAt;

  @BuiltValueField(wireName: r'activation')
  UserLinkIssued? get activation;

  /// The user's data restriction, or null when unrestricted (R2-013)
  @BuiltValueField(wireName: r'dataRestriction')
  UserDataRestriction? get dataRestriction;

  User._();

  factory User([void updates(UserBuilder b)]) = _$User;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<User> get serializer => _$UserSerializer();
}

class _$UserSerializer implements PrimitiveSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];

  @override
  final String wireName = r'User';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'fullName';
    yield serializers.serialize(
      object.fullName,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'roles';
    yield serializers.serialize(
      object.roles,
      specifiedType: const FullType(BuiltList, [FullType(RoleRef)]),
    );
    if (object.mfaEnabled != null) {
      yield r'mfaEnabled';
      yield serializers.serialize(
        object.mfaEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    if (object.lastLoginAt != null) {
      yield r'lastLoginAt';
      yield serializers.serialize(
        object.lastLoginAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.activation != null) {
      yield r'activation';
      yield serializers.serialize(
        object.activation,
        specifiedType: const FullType(UserLinkIssued),
      );
    }
    if (object.dataRestriction != null) {
      yield r'dataRestriction';
      yield serializers.serialize(
        object.dataRestriction,
        specifiedType: const FullType.nullable(UserDataRestriction),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    User object, {
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
    required UserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'email':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.email = valueDes;
          break;
        case r'fullName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.fullName = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.status = valueDes;
          break;
        case r'roles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(RoleRef),
                    ]),
                  )
                  as BuiltList<RoleRef>;
          result.roles.replace(valueDes);
          break;
        case r'mfaEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.mfaEnabled = valueDes;
          break;
        case r'createdBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.createdBy = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'lastLoginAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastLoginAt = valueDes;
          break;
        case r'activation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(UserLinkIssued),
                  )
                  as UserLinkIssued?;
          if (valueDes == null) continue;
          result.activation.replace(valueDes);
          break;
        case r'dataRestriction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(UserDataRestriction),
                  )
                  as UserDataRestriction?;
          if (valueDes == null) continue;
          result.dataRestriction.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  User deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserBuilder();
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
