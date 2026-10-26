//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'password_reset.g.dart';

/// Complete a password reset with the single-use emailed token (user_token, 164/165)
///
/// Properties:
/// * [token]
/// * [newPassword]
@BuiltValue()
abstract class PasswordReset
    implements Built<PasswordReset, PasswordResetBuilder> {
  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'newPassword')
  String get newPassword;

  PasswordReset._();

  factory PasswordReset([void updates(PasswordResetBuilder b)]) =
      _$PasswordReset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PasswordResetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PasswordReset> get serializer =>
      _$PasswordResetSerializer();
}

class _$PasswordResetSerializer implements PrimitiveSerializer<PasswordReset> {
  @override
  final Iterable<Type> types = const [PasswordReset, _$PasswordReset];

  @override
  final String wireName = r'PasswordReset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PasswordReset object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    yield r'newPassword';
    yield serializers.serialize(
      object.newPassword,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PasswordReset object, {
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
    required PasswordResetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.token = valueDes;
          break;
        case r'newPassword':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.newPassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PasswordReset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PasswordResetBuilder();
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
