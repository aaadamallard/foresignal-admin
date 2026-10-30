//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/news_subscription.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_subscription_update.g.dart';

/// Replace the caller's news subscriptions. With no entry of a type there is no restriction of that type; with at least one, the caller's editions keep only news matching one of them (an outlet entry matches its outlet, a language entry an article in that language or translated into it, NP-002).
///
/// Properties:
/// * [subscriptions]
@BuiltValue()
abstract class NewsSubscriptionUpdate
    implements Built<NewsSubscriptionUpdate, NewsSubscriptionUpdateBuilder> {
  @BuiltValueField(wireName: r'subscriptions')
  BuiltList<NewsSubscription> get subscriptions;

  NewsSubscriptionUpdate._();

  factory NewsSubscriptionUpdate([
    void updates(NewsSubscriptionUpdateBuilder b),
  ]) = _$NewsSubscriptionUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsSubscriptionUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsSubscriptionUpdate> get serializer =>
      _$NewsSubscriptionUpdateSerializer();
}

class _$NewsSubscriptionUpdateSerializer
    implements PrimitiveSerializer<NewsSubscriptionUpdate> {
  @override
  final Iterable<Type> types = const [
    NewsSubscriptionUpdate,
    _$NewsSubscriptionUpdate,
  ];

  @override
  final String wireName = r'NewsSubscriptionUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsSubscriptionUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'subscriptions';
    yield serializers.serialize(
      object.subscriptions,
      specifiedType: const FullType(BuiltList, [FullType(NewsSubscription)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsSubscriptionUpdate object, {
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
    required NewsSubscriptionUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subscriptions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(NewsSubscription),
                    ]),
                  )
                  as BuiltList<NewsSubscription>;
          result.subscriptions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsSubscriptionUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsSubscriptionUpdateBuilder();
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
