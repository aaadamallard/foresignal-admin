//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attention_topic_social_channel.g.dart';

/// A channel followed for a topic
///
/// Properties:
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [type]
/// * [id] - Subreddit name, channel username, instance host, hashtag or YouTube channel id
@BuiltValue()
abstract class AttentionTopicSocialChannel
    implements
        Built<AttentionTopicSocialChannel, AttentionTopicSocialChannelBuilder> {
  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  @BuiltValueField(wireName: r'type')
  AttentionTopicSocialChannelTypeEnum get type;
  // enum typeEnum {  subreddit,  mastodon-instance,  mastodon-hashtag,  youtube-channel,  };

  /// Subreddit name, channel username, instance host, hashtag or YouTube channel id
  @BuiltValueField(wireName: r'id')
  String get id;

  AttentionTopicSocialChannel._();

  factory AttentionTopicSocialChannel(
          [void updates(AttentionTopicSocialChannelBuilder b)]) =
      _$AttentionTopicSocialChannel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttentionTopicSocialChannelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttentionTopicSocialChannel> get serializer =>
      _$AttentionTopicSocialChannelSerializer();
}

class _$AttentionTopicSocialChannelSerializer
    implements PrimitiveSerializer<AttentionTopicSocialChannel> {
  @override
  final Iterable<Type> types = const [
    AttentionTopicSocialChannel,
    _$AttentionTopicSocialChannel
  ];

  @override
  final String wireName = r'AttentionTopicSocialChannel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttentionTopicSocialChannel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AttentionTopicSocialChannelTypeEnum),
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
    AttentionTopicSocialChannel object, {
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
    required AttentionTopicSocialChannelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.platform = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AttentionTopicSocialChannelTypeEnum),
          ) as AttentionTopicSocialChannelTypeEnum;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  AttentionTopicSocialChannel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttentionTopicSocialChannelBuilder();
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

class AttentionTopicSocialChannelTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'subreddit')
  static const AttentionTopicSocialChannelTypeEnum subreddit =
      _$attentionTopicSocialChannelTypeEnum_subreddit;
  @BuiltValueEnumConst(wireName: r'mastodon-instance')
  static const AttentionTopicSocialChannelTypeEnum mastodonInstance =
      _$attentionTopicSocialChannelTypeEnum_mastodonInstance;
  @BuiltValueEnumConst(wireName: r'mastodon-hashtag')
  static const AttentionTopicSocialChannelTypeEnum mastodonHashtag =
      _$attentionTopicSocialChannelTypeEnum_mastodonHashtag;
  @BuiltValueEnumConst(wireName: r'youtube-channel')
  static const AttentionTopicSocialChannelTypeEnum youtubeChannel =
      _$attentionTopicSocialChannelTypeEnum_youtubeChannel;

  static Serializer<AttentionTopicSocialChannelTypeEnum> get serializer =>
      _$attentionTopicSocialChannelTypeEnumSerializer;

  const AttentionTopicSocialChannelTypeEnum._(String name) : super(name);

  static BuiltSet<AttentionTopicSocialChannelTypeEnum> get values =>
      _$attentionTopicSocialChannelTypeEnumValues;
  static AttentionTopicSocialChannelTypeEnum valueOf(String name) =>
      _$attentionTopicSocialChannelTypeEnumValueOf(name);
}
