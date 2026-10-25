//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/social_post.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'narrative_post.g.dart';

/// A narrative member post with why it joined and its evidence group
///
/// Properties:
/// * [post]
/// * [linkReason] - `seed` for the first member
/// * [evidenceGroupId] - ULID identifier
/// * [joinedAt]
/// * [centrality] - Similarity to the narrative centroid
@BuiltValue()
abstract class NarrativePost
    implements Built<NarrativePost, NarrativePostBuilder> {
  @BuiltValueField(wireName: r'post')
  SocialPost get post;

  /// `seed` for the first member
  @BuiltValueField(wireName: r'linkReason')
  NarrativePostLinkReasonEnum get linkReason;
  // enum linkReasonEnum {  seed,  repost,  quote,  text,  link,  media,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'evidenceGroupId')
  String get evidenceGroupId;

  @BuiltValueField(wireName: r'joinedAt')
  DateTime get joinedAt;

  /// Similarity to the narrative centroid
  @BuiltValueField(wireName: r'centrality')
  num? get centrality;

  NarrativePost._();

  factory NarrativePost([void updates(NarrativePostBuilder b)]) =
      _$NarrativePost;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NarrativePostBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NarrativePost> get serializer =>
      _$NarrativePostSerializer();
}

class _$NarrativePostSerializer implements PrimitiveSerializer<NarrativePost> {
  @override
  final Iterable<Type> types = const [NarrativePost, _$NarrativePost];

  @override
  final String wireName = r'NarrativePost';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NarrativePost object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'post';
    yield serializers.serialize(
      object.post,
      specifiedType: const FullType(SocialPost),
    );
    yield r'linkReason';
    yield serializers.serialize(
      object.linkReason,
      specifiedType: const FullType(NarrativePostLinkReasonEnum),
    );
    yield r'evidenceGroupId';
    yield serializers.serialize(
      object.evidenceGroupId,
      specifiedType: const FullType(String),
    );
    yield r'joinedAt';
    yield serializers.serialize(
      object.joinedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.centrality != null) {
      yield r'centrality';
      yield serializers.serialize(
        object.centrality,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NarrativePost object, {
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
    required NarrativePostBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'post':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialPost),
                  )
                  as SocialPost;
          result.post.replace(valueDes);
          break;
        case r'linkReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NarrativePostLinkReasonEnum),
                  )
                  as NarrativePostLinkReasonEnum;
          result.linkReason = valueDes;
          break;
        case r'evidenceGroupId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.evidenceGroupId = valueDes;
          break;
        case r'joinedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.joinedAt = valueDes;
          break;
        case r'centrality':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.centrality = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NarrativePost deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NarrativePostBuilder();
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

/// `seed` for the first member
class NarrativePostLinkReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'seed')
  static const NarrativePostLinkReasonEnum seed =
      _$narrativePostLinkReasonEnum_seed;
  @BuiltValueEnumConst(wireName: r'repost')
  static const NarrativePostLinkReasonEnum repost =
      _$narrativePostLinkReasonEnum_repost;
  @BuiltValueEnumConst(wireName: r'quote')
  static const NarrativePostLinkReasonEnum quote =
      _$narrativePostLinkReasonEnum_quote;
  @BuiltValueEnumConst(wireName: r'text')
  static const NarrativePostLinkReasonEnum text =
      _$narrativePostLinkReasonEnum_text;
  @BuiltValueEnumConst(wireName: r'link')
  static const NarrativePostLinkReasonEnum link =
      _$narrativePostLinkReasonEnum_link;
  @BuiltValueEnumConst(wireName: r'media')
  static const NarrativePostLinkReasonEnum media =
      _$narrativePostLinkReasonEnum_media;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NarrativePostLinkReasonEnum unknownDefaultOpenApi =
      _$narrativePostLinkReasonEnum_unknownDefaultOpenApi;

  static Serializer<NarrativePostLinkReasonEnum> get serializer =>
      _$narrativePostLinkReasonEnumSerializer;

  const NarrativePostLinkReasonEnum._(String name) : super(name);

  static BuiltSet<NarrativePostLinkReasonEnum> get values =>
      _$narrativePostLinkReasonEnumValues;
  static NarrativePostLinkReasonEnum valueOf(String name) =>
      _$narrativePostLinkReasonEnumValueOf(name);
}
