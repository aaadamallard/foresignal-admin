//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_subscription_verify.g.dart';

/// Verification code echoed by the client (031)
///
/// Properties:
/// * [code] - From the `verify` push (16 random bytes, base64url)
@BuiltValue()
abstract class PushSubscriptionVerify
    implements Built<PushSubscriptionVerify, PushSubscriptionVerifyBuilder> {
  /// From the `verify` push (16 random bytes, base64url)
  @BuiltValueField(wireName: r'code')
  String get code;

  PushSubscriptionVerify._();

  factory PushSubscriptionVerify([
    void updates(PushSubscriptionVerifyBuilder b),
  ]) = _$PushSubscriptionVerify;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushSubscriptionVerifyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushSubscriptionVerify> get serializer =>
      _$PushSubscriptionVerifySerializer();
}

class _$PushSubscriptionVerifySerializer
    implements PrimitiveSerializer<PushSubscriptionVerify> {
  @override
  final Iterable<Type> types = const [
    PushSubscriptionVerify,
    _$PushSubscriptionVerify,
  ];

  @override
  final String wireName = r'PushSubscriptionVerify';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushSubscriptionVerify object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PushSubscriptionVerify object, {
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
    required PushSubscriptionVerifyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.code = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushSubscriptionVerify deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushSubscriptionVerifyBuilder();
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
