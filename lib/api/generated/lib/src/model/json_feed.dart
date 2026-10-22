//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/json_feed_authors_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/json_feed_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'json_feed.g.dart';

/// JSON Feed 1.1 document for alerts or briefing runs (058). Property names follow the JSON Feed spec (snake_case).
///
/// Properties:
/// * [version]
/// * [title]
/// * [homePageUrl]
/// * [feedUrl]
/// * [description]
/// * [language]
/// * [authors]
/// * [items]
@BuiltValue()
abstract class JsonFeed implements Built<JsonFeed, JsonFeedBuilder> {
  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'home_page_url')
  String? get homePageUrl;

  @BuiltValueField(wireName: r'feed_url')
  String? get feedUrl;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'authors')
  BuiltList<JsonFeedAuthorsInner>? get authors;

  @BuiltValueField(wireName: r'items')
  BuiltList<JsonFeedItem> get items;

  JsonFeed._();

  factory JsonFeed([void updates(JsonFeedBuilder b)]) = _$JsonFeed;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JsonFeedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JsonFeed> get serializer => _$JsonFeedSerializer();
}

class _$JsonFeedSerializer implements PrimitiveSerializer<JsonFeed> {
  @override
  final Iterable<Type> types = const [JsonFeed, _$JsonFeed];

  @override
  final String wireName = r'JsonFeed';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JsonFeed object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.homePageUrl != null) {
      yield r'home_page_url';
      yield serializers.serialize(
        object.homePageUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.feedUrl != null) {
      yield r'feed_url';
      yield serializers.serialize(
        object.feedUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.authors != null) {
      yield r'authors';
      yield serializers.serialize(
        object.authors,
        specifiedType: const FullType(BuiltList, [
          FullType(JsonFeedAuthorsInner),
        ]),
      );
    }
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(JsonFeedItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    JsonFeed object, {
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
    required JsonFeedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'home_page_url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.homePageUrl = valueDes;
          break;
        case r'feed_url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.feedUrl = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
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
        case r'authors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(JsonFeedAuthorsInner),
                    ]),
                  )
                  as BuiltList<JsonFeedAuthorsInner>?;
          if (valueDes == null) continue;
          result.authors.replace(valueDes);
          break;
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(JsonFeedItem),
                    ]),
                  )
                  as BuiltList<JsonFeedItem>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JsonFeed deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonFeedBuilder();
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
