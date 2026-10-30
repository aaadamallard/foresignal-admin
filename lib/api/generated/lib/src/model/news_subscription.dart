//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_subscription.g.dart';

/// One entry of the caller's news subscriptions: an outlet (133) or a language the caller follows
///
/// Properties:
/// * [type]
/// * [id] - A media outlet id (`listMediaOutlets`) for `outlet`; a BCP 47 language tag for `language`
@BuiltValue()
abstract class NewsSubscription
    implements Built<NewsSubscription, NewsSubscriptionBuilder> {
  @BuiltValueField(wireName: r'type')
  NewsSubscriptionTypeEnum get type;
  // enum typeEnum {  outlet,  language,  };

  /// A media outlet id (`listMediaOutlets`) for `outlet`; a BCP 47 language tag for `language`
  @BuiltValueField(wireName: r'id')
  String get id;

  NewsSubscription._();

  factory NewsSubscription([void updates(NewsSubscriptionBuilder b)]) =
      _$NewsSubscription;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsSubscriptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsSubscription> get serializer =>
      _$NewsSubscriptionSerializer();
}

class _$NewsSubscriptionSerializer
    implements PrimitiveSerializer<NewsSubscription> {
  @override
  final Iterable<Type> types = const [NewsSubscription, _$NewsSubscription];

  @override
  final String wireName = r'NewsSubscription';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsSubscription object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(NewsSubscriptionTypeEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsSubscription object, {
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
    required NewsSubscriptionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NewsSubscriptionTypeEnum),
                  )
                  as NewsSubscriptionTypeEnum;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsSubscription deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsSubscriptionBuilder();
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

class NewsSubscriptionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'outlet')
  static const NewsSubscriptionTypeEnum outlet =
      _$newsSubscriptionTypeEnum_outlet;
  @BuiltValueEnumConst(wireName: r'language')
  static const NewsSubscriptionTypeEnum language =
      _$newsSubscriptionTypeEnum_language;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NewsSubscriptionTypeEnum unknownDefaultOpenApi =
      _$newsSubscriptionTypeEnum_unknownDefaultOpenApi;

  static Serializer<NewsSubscriptionTypeEnum> get serializer =>
      _$newsSubscriptionTypeEnumSerializer;

  const NewsSubscriptionTypeEnum._(String name) : super(name);

  static BuiltSet<NewsSubscriptionTypeEnum> get values =>
      _$newsSubscriptionTypeEnumValues;
  static NewsSubscriptionTypeEnum valueOf(String name) =>
      _$newsSubscriptionTypeEnumValueOf(name);
}
