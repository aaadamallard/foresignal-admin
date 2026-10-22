//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/news_story.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_story_page.g.dart';

/// One page of news stories
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class NewsStoryPage
    implements Built<NewsStoryPage, NewsStoryPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<NewsStory> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  NewsStoryPage._();

  factory NewsStoryPage([void updates(NewsStoryPageBuilder b)]) =
      _$NewsStoryPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsStoryPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsStoryPage> get serializer =>
      _$NewsStoryPageSerializer();
}

class _$NewsStoryPageSerializer implements PrimitiveSerializer<NewsStoryPage> {
  @override
  final Iterable<Type> types = const [NewsStoryPage, _$NewsStoryPage];

  @override
  final String wireName = r'NewsStoryPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsStoryPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(NewsStory)]),
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
    NewsStoryPage object, {
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
    required NewsStoryPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(NewsStory)]),
          ) as BuiltList<NewsStory>;
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
  NewsStoryPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsStoryPageBuilder();
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
