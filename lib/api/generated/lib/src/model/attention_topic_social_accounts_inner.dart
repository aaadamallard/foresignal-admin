//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attention_topic_social_accounts_inner.g.dart';

/// A followed account
///
/// Properties:
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [handle]
@BuiltValue()
abstract class AttentionTopicSocialAccountsInner
    implements
        Built<AttentionTopicSocialAccountsInner,
            AttentionTopicSocialAccountsInnerBuilder> {
  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  @BuiltValueField(wireName: r'handle')
  String get handle;

  AttentionTopicSocialAccountsInner._();

  factory AttentionTopicSocialAccountsInner(
          [void updates(AttentionTopicSocialAccountsInnerBuilder b)]) =
      _$AttentionTopicSocialAccountsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttentionTopicSocialAccountsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttentionTopicSocialAccountsInner> get serializer =>
      _$AttentionTopicSocialAccountsInnerSerializer();
}

class _$AttentionTopicSocialAccountsInnerSerializer
    implements PrimitiveSerializer<AttentionTopicSocialAccountsInner> {
  @override
  final Iterable<Type> types = const [
    AttentionTopicSocialAccountsInner,
    _$AttentionTopicSocialAccountsInner
  ];

  @override
  final String wireName = r'AttentionTopicSocialAccountsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttentionTopicSocialAccountsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
    yield r'handle';
    yield serializers.serialize(
      object.handle,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AttentionTopicSocialAccountsInner object, {
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
    required AttentionTopicSocialAccountsInnerBuilder result,
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
        case r'handle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.handle = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AttentionTopicSocialAccountsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttentionTopicSocialAccountsInnerBuilder();
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
