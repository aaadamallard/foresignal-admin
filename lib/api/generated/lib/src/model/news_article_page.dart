//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/news_article.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_article_page.g.dart';

/// One page of news articles
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class NewsArticlePage
    implements Built<NewsArticlePage, NewsArticlePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<NewsArticle> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  NewsArticlePage._();

  factory NewsArticlePage([void updates(NewsArticlePageBuilder b)]) =
      _$NewsArticlePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsArticlePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsArticlePage> get serializer =>
      _$NewsArticlePageSerializer();
}

class _$NewsArticlePageSerializer
    implements PrimitiveSerializer<NewsArticlePage> {
  @override
  final Iterable<Type> types = const [NewsArticlePage, _$NewsArticlePage];

  @override
  final String wireName = r'NewsArticlePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsArticlePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(NewsArticle)]),
    );
    yield r'nextCursor';
    yield object.nextCursor == null
        ? null
        : serializers.serialize(
            object.nextCursor,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsArticlePage object, {
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
    required NewsArticlePageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(NewsArticle)]),
          ) as BuiltList<NewsArticle>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsArticlePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsArticlePageBuilder();
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
