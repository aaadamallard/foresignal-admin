//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attention_topic_social.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/attention_topic_input_wiki_articles_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attention_topic.g.dart';

/// An attention topic; enabled topics are synced into the topics param of gdelt-timelines and wikimedia-pageviews (117), and their social blocks drive the social term index (135)
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [gdeltQuery] - GDELT DOC 2.0 query
/// * [wikiArticles]
/// * [keywords] - Used by 118's linker
/// * [regionCodes] - 040 region codes
/// * [themes]
/// * [enabled]
/// * [social] - Social tracking block (135): terms, hashtags, accounts, channels, excludes, platforms, places, regions, entities, mode
/// * [createdBy]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class AttentionTopic
    implements Built<AttentionTopic, AttentionTopicBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// GDELT DOC 2.0 query
  @BuiltValueField(wireName: r'gdeltQuery')
  String? get gdeltQuery;

  @BuiltValueField(wireName: r'wikiArticles')
  BuiltList<AttentionTopicInputWikiArticlesInner>? get wikiArticles;

  /// Used by 118's linker
  @BuiltValueField(wireName: r'keywords')
  BuiltList<String>? get keywords;

  /// 040 region codes
  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'themes')
  BuiltList<String>? get themes;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// Social tracking block (135): terms, hashtags, accounts, channels, excludes, platforms, places, regions, entities, mode
  @BuiltValueField(wireName: r'social')
  AttentionTopicSocial? get social;

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  AttentionTopic._();

  factory AttentionTopic([void updates(AttentionTopicBuilder b)]) =
      _$AttentionTopic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttentionTopicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttentionTopic> get serializer =>
      _$AttentionTopicSerializer();
}

class _$AttentionTopicSerializer
    implements PrimitiveSerializer<AttentionTopic> {
  @override
  final Iterable<Type> types = const [AttentionTopic, _$AttentionTopic];

  @override
  final String wireName = r'AttentionTopic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttentionTopic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.gdeltQuery != null) {
      yield r'gdeltQuery';
      yield serializers.serialize(
        object.gdeltQuery,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.wikiArticles != null) {
      yield r'wikiArticles';
      yield serializers.serialize(
        object.wikiArticles,
        specifiedType: const FullType(
            BuiltList, [FullType(AttentionTopicInputWikiArticlesInner)]),
      );
    }
    if (object.keywords != null) {
      yield r'keywords';
      yield serializers.serialize(
        object.keywords,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.themes != null) {
      yield r'themes';
      yield serializers.serialize(
        object.themes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.social != null) {
      yield r'social';
      yield serializers.serialize(
        object.social,
        specifiedType: const FullType.nullable(AttentionTopicSocial),
      );
    }
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AttentionTopic object, {
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
    required AttentionTopicBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'gdeltQuery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.gdeltQuery = valueDes;
          break;
        case r'wikiArticles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(AttentionTopicInputWikiArticlesInner)]),
          ) as BuiltList<AttentionTopicInputWikiArticlesInner>?;
          if (valueDes == null) continue;
          result.wikiArticles.replace(valueDes);
          break;
        case r'keywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.keywords.replace(valueDes);
          break;
        case r'regionCodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'themes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.themes.replace(valueDes);
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'social':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AttentionTopicSocial),
          ) as AttentionTopicSocial?;
          if (valueDes == null) continue;
          result.social.replace(valueDes);
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createdBy = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
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
  AttentionTopic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttentionTopicBuilder();
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
