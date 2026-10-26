//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_activation.g.dart';

/// Activate an invited account: set the first password with the emailed activation token (165/170)
///
/// Properties:
/// * [token]
/// * [password]
@BuiltValue()
abstract class AccountActivation
    implements Built<AccountActivation, AccountActivationBuilder> {
  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'password')
  String get password;

  AccountActivation._();

  factory AccountActivation([void updates(AccountActivationBuilder b)]) =
      _$AccountActivation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountActivationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountActivation> get serializer =>
      _$AccountActivationSerializer();
}

class _$AccountActivationSerializer
    implements PrimitiveSerializer<AccountActivation> {
  @override
  final Iterable<Type> types = const [AccountActivation, _$AccountActivation];

  @override
  final String wireName = r'AccountActivation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountActivation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountActivation object, {
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
    required AccountActivationBuilder result,
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
        case r'password':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountActivation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountActivationBuilder();
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
