//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_subscription_input_subscription_keys.g.dart';

/// PushSubscriptionInputSubscriptionKeys
///
/// Properties:
/// * [p256dh]
/// * [auth]
@BuiltValue()
abstract class PushSubscriptionInputSubscriptionKeys
    implements
        Built<PushSubscriptionInputSubscriptionKeys,
            PushSubscriptionInputSubscriptionKeysBuilder> {
  @BuiltValueField(wireName: r'p256dh')
  String get p256dh;

  @BuiltValueField(wireName: r'auth')
  String get auth;

  PushSubscriptionInputSubscriptionKeys._();

  factory PushSubscriptionInputSubscriptionKeys(
          [void updates(PushSubscriptionInputSubscriptionKeysBuilder b)]) =
      _$PushSubscriptionInputSubscriptionKeys;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushSubscriptionInputSubscriptionKeysBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushSubscriptionInputSubscriptionKeys> get serializer =>
      _$PushSubscriptionInputSubscriptionKeysSerializer();
}

class _$PushSubscriptionInputSubscriptionKeysSerializer
    implements PrimitiveSerializer<PushSubscriptionInputSubscriptionKeys> {
  @override
  final Iterable<Type> types = const [
    PushSubscriptionInputSubscriptionKeys,
    _$PushSubscriptionInputSubscriptionKeys
  ];

  @override
  final String wireName = r'PushSubscriptionInputSubscriptionKeys';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushSubscriptionInputSubscriptionKeys object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'p256dh';
    yield serializers.serialize(
      object.p256dh,
      specifiedType: const FullType(String),
    );
    yield r'auth';
    yield serializers.serialize(
      object.auth,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PushSubscriptionInputSubscriptionKeys object, {
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
    required PushSubscriptionInputSubscriptionKeysBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'p256dh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.p256dh = valueDes;
          break;
        case r'auth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.auth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushSubscriptionInputSubscriptionKeys deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushSubscriptionInputSubscriptionKeysBuilder();
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
