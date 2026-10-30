//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/news_subscription.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_subscription_view.g.dart';

/// The caller's news subscriptions (NP-003). With no entry of a type there is no restriction of that type; with at least one, the caller's editions keep only news matching one of them (an outlet entry matches its outlet, a language entry an article in that language or translated into it, NP-002).
///
/// Properties:
/// * [subscriptions]
/// * [updatedAt] - When the caller last replaced the subscriptions, or null when never
@BuiltValue()
abstract class NewsSubscriptionView
    implements Built<NewsSubscriptionView, NewsSubscriptionViewBuilder> {
  @BuiltValueField(wireName: r'subscriptions')
  BuiltList<NewsSubscription> get subscriptions;

  /// When the caller last replaced the subscriptions, or null when never
  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  NewsSubscriptionView._();

  factory NewsSubscriptionView([void updates(NewsSubscriptionViewBuilder b)]) =
      _$NewsSubscriptionView;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsSubscriptionViewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsSubscriptionView> get serializer =>
      _$NewsSubscriptionViewSerializer();
}

class _$NewsSubscriptionViewSerializer
    implements PrimitiveSerializer<NewsSubscriptionView> {
  @override
  final Iterable<Type> types = const [
    NewsSubscriptionView,
    _$NewsSubscriptionView,
  ];

  @override
  final String wireName = r'NewsSubscriptionView';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsSubscriptionView object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'subscriptions';
    yield serializers.serialize(
      object.subscriptions,
      specifiedType: const FullType(BuiltList, [FullType(NewsSubscription)]),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsSubscriptionView object, {
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
    required NewsSubscriptionViewBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsSubscriptionView deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsSubscriptionViewBuilder();
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
