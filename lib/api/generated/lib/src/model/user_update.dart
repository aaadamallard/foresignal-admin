//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/user_data_restriction.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_update.g.dart';

/// Update a user's profile fields (roles are set via setUserRoles; status via suspend/unsuspend)
///
/// Properties:
/// * [fullName]
/// * [email]
/// * [dataRestriction] - Replaces the user's data restriction; null lifts it, absent leaves it (R2-013)
@BuiltValue()
abstract class UserUpdate implements Built<UserUpdate, UserUpdateBuilder> {
  @BuiltValueField(wireName: r'fullName')
  String? get fullName;

  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Replaces the user's data restriction; null lifts it, absent leaves it (R2-013)
  @BuiltValueField(wireName: r'dataRestriction')
  UserDataRestriction? get dataRestriction;

  UserUpdate._();

  factory UserUpdate([void updates(UserUpdateBuilder b)]) = _$UserUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserUpdate> get serializer => _$UserUpdateSerializer();
}

class _$UserUpdateSerializer implements PrimitiveSerializer<UserUpdate> {
  @override
  final Iterable<Type> types = const [UserUpdate, _$UserUpdate];

  @override
  final String wireName = r'UserUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fullName != null) {
      yield r'fullName';
      yield serializers.serialize(
        object.fullName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
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
    UserUpdate object, {
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
    required UserUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fullName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.fullName = valueDes;
          break;
        case r'email':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
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
  UserUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserUpdateBuilder();
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
