//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_engagement.g.dart';

/// Engagement counts at capture; null where the platform does not supply them
///
/// Properties:
/// * [replies]
/// * [reposts]
/// * [quotes]
/// * [likes]
/// * [views]
@BuiltValue()
abstract class SocialEngagement
    implements Built<SocialEngagement, SocialEngagementBuilder> {
  @BuiltValueField(wireName: r'replies')
  int? get replies;

  @BuiltValueField(wireName: r'reposts')
  int? get reposts;

  @BuiltValueField(wireName: r'quotes')
  int? get quotes;

  @BuiltValueField(wireName: r'likes')
  int? get likes;

  @BuiltValueField(wireName: r'views')
  int? get views;

  SocialEngagement._();

  factory SocialEngagement([void updates(SocialEngagementBuilder b)]) =
      _$SocialEngagement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialEngagementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialEngagement> get serializer =>
      _$SocialEngagementSerializer();
}

class _$SocialEngagementSerializer
    implements PrimitiveSerializer<SocialEngagement> {
  @override
  final Iterable<Type> types = const [SocialEngagement, _$SocialEngagement];

  @override
  final String wireName = r'SocialEngagement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialEngagement object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.replies != null) {
      yield r'replies';
      yield serializers.serialize(
        object.replies,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.reposts != null) {
      yield r'reposts';
      yield serializers.serialize(
        object.reposts,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.quotes != null) {
      yield r'quotes';
      yield serializers.serialize(
        object.quotes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.likes != null) {
      yield r'likes';
      yield serializers.serialize(
        object.likes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.views != null) {
      yield r'views';
      yield serializers.serialize(
        object.views,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialEngagement object, {
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
    required SocialEngagementBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'replies':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.replies = valueDes;
          break;
        case r'reposts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.reposts = valueDes;
          break;
        case r'quotes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.quotes = valueDes;
          break;
        case r'likes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.likes = valueDes;
          break;
        case r'views':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.views = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialEngagement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialEngagementBuilder();
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
