//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/social_platform_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_cue_query.g.dart';

/// One exact query run on one platform
///
/// Properties:
/// * [platform]
/// * [query] - Exact query string sent
/// * [language]
/// * [estimatedCostUsd]
@BuiltValue()
abstract class SocialCueQuery
    implements Built<SocialCueQuery, SocialCueQueryBuilder> {
  @BuiltValueField(wireName: r'platform')
  SocialPlatformId get platform;
  // enum platformEnum {  bluesky-jetstream,  bluesky-search,  mastodon,  reddit,  youtube,  x,  threads,  instagram-hashtags,  };

  /// Exact query string sent
  @BuiltValueField(wireName: r'query')
  String get query;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'estimatedCostUsd')
  num? get estimatedCostUsd;

  SocialCueQuery._();

  factory SocialCueQuery([void updates(SocialCueQueryBuilder b)]) =
      _$SocialCueQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialCueQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialCueQuery> get serializer =>
      _$SocialCueQuerySerializer();
}

class _$SocialCueQuerySerializer
    implements PrimitiveSerializer<SocialCueQuery> {
  @override
  final Iterable<Type> types = const [SocialCueQuery, _$SocialCueQuery];

  @override
  final String wireName = r'SocialCueQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialCueQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(SocialPlatformId),
    );
    yield r'query';
    yield serializers.serialize(
      object.query,
      specifiedType: const FullType(String),
    );
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.estimatedCostUsd != null) {
      yield r'estimatedCostUsd';
      yield serializers.serialize(
        object.estimatedCostUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialCueQuery object, {
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
    required SocialCueQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialPlatformId),
                  )
                  as SocialPlatformId;
          result.platform = valueDes;
          break;
        case r'query':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.query = valueDes;
          break;
        case r'language':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'estimatedCostUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.estimatedCostUsd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialCueQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialCueQueryBuilder();
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
