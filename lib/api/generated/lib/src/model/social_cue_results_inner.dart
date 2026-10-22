//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/social_platform_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_cue_results_inner.g.dart';

/// Posts found on one platform
///
/// Properties:
/// * [platform]
/// * [posts]
/// * [newPosts]
/// * [costUsd]
/// * [error]
@BuiltValue()
abstract class SocialCueResultsInner
    implements Built<SocialCueResultsInner, SocialCueResultsInnerBuilder> {
  @BuiltValueField(wireName: r'platform')
  SocialPlatformId get platform;
  // enum platformEnum {  bluesky-jetstream,  bluesky-search,  mastodon,  reddit,  youtube,  x,  threads,  instagram-hashtags,  };

  @BuiltValueField(wireName: r'posts')
  int get posts;

  @BuiltValueField(wireName: r'newPosts')
  int? get newPosts;

  @BuiltValueField(wireName: r'costUsd')
  num? get costUsd;

  @BuiltValueField(wireName: r'error')
  String? get error;

  SocialCueResultsInner._();

  factory SocialCueResultsInner(
      [void updates(SocialCueResultsInnerBuilder b)]) = _$SocialCueResultsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialCueResultsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialCueResultsInner> get serializer =>
      _$SocialCueResultsInnerSerializer();
}

class _$SocialCueResultsInnerSerializer
    implements PrimitiveSerializer<SocialCueResultsInner> {
  @override
  final Iterable<Type> types = const [
    SocialCueResultsInner,
    _$SocialCueResultsInner
  ];

  @override
  final String wireName = r'SocialCueResultsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialCueResultsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(SocialPlatformId),
    );
    yield r'posts';
    yield serializers.serialize(
      object.posts,
      specifiedType: const FullType(int),
    );
    if (object.newPosts != null) {
      yield r'newPosts';
      yield serializers.serialize(
        object.newPosts,
        specifiedType: const FullType(int),
      );
    }
    if (object.costUsd != null) {
      yield r'costUsd';
      yield serializers.serialize(
        object.costUsd,
        specifiedType: const FullType(num),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialCueResultsInner object, {
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
    required SocialCueResultsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialPlatformId),
          ) as SocialPlatformId;
          result.platform = valueDes;
          break;
        case r'posts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.posts = valueDes;
          break;
        case r'newPosts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.newPosts = valueDes;
          break;
        case r'costUsd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.costUsd = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialCueResultsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialCueResultsInnerBuilder();
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
