//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/media_outlet.dart';
import 'package:foresignal_api/src/model/news_article.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_story_outlets_inner.g.dart';

/// Articles grouped by outlet (detail view)
///
/// Properties:
/// * [outlet]
/// * [articles]
/// * [evidenceGroupId]
@BuiltValue()
abstract class NewsStoryOutletsInner
    implements Built<NewsStoryOutletsInner, NewsStoryOutletsInnerBuilder> {
  @BuiltValueField(wireName: r'outlet')
  MediaOutlet get outlet;

  @BuiltValueField(wireName: r'articles')
  BuiltList<NewsArticle> get articles;

  @BuiltValueField(wireName: r'evidenceGroupId')
  String? get evidenceGroupId;

  NewsStoryOutletsInner._();

  factory NewsStoryOutletsInner([
    void updates(NewsStoryOutletsInnerBuilder b),
  ]) = _$NewsStoryOutletsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsStoryOutletsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsStoryOutletsInner> get serializer =>
      _$NewsStoryOutletsInnerSerializer();
}

class _$NewsStoryOutletsInnerSerializer
    implements PrimitiveSerializer<NewsStoryOutletsInner> {
  @override
  final Iterable<Type> types = const [
    NewsStoryOutletsInner,
    _$NewsStoryOutletsInner,
  ];

  @override
  final String wireName = r'NewsStoryOutletsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsStoryOutletsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'outlet';
    yield serializers.serialize(
      object.outlet,
      specifiedType: const FullType(MediaOutlet),
    );
    yield r'articles';
    yield serializers.serialize(
      object.articles,
      specifiedType: const FullType(BuiltList, [FullType(NewsArticle)]),
    );
    if (object.evidenceGroupId != null) {
      yield r'evidenceGroupId';
      yield serializers.serialize(
        object.evidenceGroupId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsStoryOutletsInner object, {
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
    required NewsStoryOutletsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'outlet':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MediaOutlet),
                  )
                  as MediaOutlet;
          result.outlet.replace(valueDes);
          break;
        case r'articles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(NewsArticle),
                    ]),
                  )
                  as BuiltList<NewsArticle>;
          result.articles.replace(valueDes);
          break;
        case r'evidenceGroupId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.evidenceGroupId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsStoryOutletsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsStoryOutletsInnerBuilder();
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
