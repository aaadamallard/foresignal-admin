//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/push_subscription_input_subscription_keys.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_subscription_input_subscription.g.dart';

/// PushSubscriptionInputSubscription
///
/// Properties:
/// * [endpoint]
/// * [keys]
@BuiltValue()
abstract class PushSubscriptionInputSubscription
    implements
        Built<
          PushSubscriptionInputSubscription,
          PushSubscriptionInputSubscriptionBuilder
        > {
  @BuiltValueField(wireName: r'endpoint')
  String get endpoint;

  @BuiltValueField(wireName: r'keys')
  PushSubscriptionInputSubscriptionKeys get keys;

  PushSubscriptionInputSubscription._();

  factory PushSubscriptionInputSubscription([
    void updates(PushSubscriptionInputSubscriptionBuilder b),
  ]) = _$PushSubscriptionInputSubscription;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushSubscriptionInputSubscriptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushSubscriptionInputSubscription> get serializer =>
      _$PushSubscriptionInputSubscriptionSerializer();
}

class _$PushSubscriptionInputSubscriptionSerializer
    implements PrimitiveSerializer<PushSubscriptionInputSubscription> {
  @override
  final Iterable<Type> types = const [
    PushSubscriptionInputSubscription,
    _$PushSubscriptionInputSubscription,
  ];

  @override
  final String wireName = r'PushSubscriptionInputSubscription';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushSubscriptionInputSubscription object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'endpoint';
    yield serializers.serialize(
      object.endpoint,
      specifiedType: const FullType(String),
    );
    yield r'keys';
    yield serializers.serialize(
      object.keys,
      specifiedType: const FullType(PushSubscriptionInputSubscriptionKeys),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PushSubscriptionInputSubscription object, {
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
    required PushSubscriptionInputSubscriptionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'endpoint':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.endpoint = valueDes;
          break;
        case r'keys':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      PushSubscriptionInputSubscriptionKeys,
                    ),
                  )
                  as PushSubscriptionInputSubscriptionKeys;
          result.keys.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushSubscriptionInputSubscription deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushSubscriptionInputSubscriptionBuilder();
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
