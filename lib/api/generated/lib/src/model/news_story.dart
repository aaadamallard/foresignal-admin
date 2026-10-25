//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/news_story_outlets_inner.dart';
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/coverage_stats.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_story.g.dart';

/// A cluster of articles about one event (116 canonical event, family `news-story`) with coverage statistics
///
/// Properties:
/// * [id] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [canonicalEventId] - ULID identifier
/// * [title] - Deterministic: the most central article's title
/// * [firstSeenAt]
/// * [lastSeenAt]
/// * [articleCount]
/// * [outletCount]
/// * [evidenceGroupCount]
/// * [topicIds]
/// * [regionCodes]
/// * [coverage]
/// * [blindspot]
/// * [corroborated]
/// * [situationIds]
/// * [outlets]
/// * [situations] - Detail view
/// * [canonicalEvents] - Detail view
@BuiltValue()
abstract class NewsStory implements Built<NewsStory, NewsStoryBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  /// ULID identifier
  @BuiltValueField(wireName: r'canonicalEventId')
  String get canonicalEventId;

  /// Deterministic: the most central article's title
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'firstSeenAt')
  DateTime get firstSeenAt;

  @BuiltValueField(wireName: r'lastSeenAt')
  DateTime get lastSeenAt;

  @BuiltValueField(wireName: r'articleCount')
  int get articleCount;

  @BuiltValueField(wireName: r'outletCount')
  int? get outletCount;

  @BuiltValueField(wireName: r'evidenceGroupCount')
  int get evidenceGroupCount;

  @BuiltValueField(wireName: r'topicIds')
  BuiltList<String>? get topicIds;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'coverage')
  CoverageStats get coverage;

  @BuiltValueField(wireName: r'blindspot')
  NewsStoryBlindspotEnum? get blindspot;
  // enum blindspotEnum {  left,  right,  };

  @BuiltValueField(wireName: r'corroborated')
  bool get corroborated;

  @BuiltValueField(wireName: r'situationIds')
  BuiltList<String>? get situationIds;

  @BuiltValueField(wireName: r'outlets')
  BuiltList<NewsStoryOutletsInner>? get outlets;

  /// Detail view
  @BuiltValueField(wireName: r'situations')
  BuiltList<ObjectEnvelope>? get situations;

  /// Detail view
  @BuiltValueField(wireName: r'canonicalEvents')
  BuiltList<ObjectEnvelope>? get canonicalEvents;

  NewsStory._();

  factory NewsStory([void updates(NewsStoryBuilder b)]) = _$NewsStory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsStoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsStory> get serializer => _$NewsStorySerializer();
}

class _$NewsStorySerializer implements PrimitiveSerializer<NewsStory> {
  @override
  final Iterable<Type> types = const [NewsStory, _$NewsStory];

  @override
  final String wireName = r'NewsStory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsStory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'canonicalEventId';
    yield serializers.serialize(
      object.canonicalEventId,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'firstSeenAt';
    yield serializers.serialize(
      object.firstSeenAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'lastSeenAt';
    yield serializers.serialize(
      object.lastSeenAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'articleCount';
    yield serializers.serialize(
      object.articleCount,
      specifiedType: const FullType(int),
    );
    if (object.outletCount != null) {
      yield r'outletCount';
      yield serializers.serialize(
        object.outletCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'evidenceGroupCount';
    yield serializers.serialize(
      object.evidenceGroupCount,
      specifiedType: const FullType(int),
    );
    if (object.topicIds != null) {
      yield r'topicIds';
      yield serializers.serialize(
        object.topicIds,
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
    yield r'coverage';
    yield serializers.serialize(
      object.coverage,
      specifiedType: const FullType(CoverageStats),
    );
    if (object.blindspot != null) {
      yield r'blindspot';
      yield serializers.serialize(
        object.blindspot,
        specifiedType: const FullType.nullable(NewsStoryBlindspotEnum),
      );
    }
    yield r'corroborated';
    yield serializers.serialize(
      object.corroborated,
      specifiedType: const FullType(bool),
    );
    if (object.situationIds != null) {
      yield r'situationIds';
      yield serializers.serialize(
        object.situationIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.outlets != null) {
      yield r'outlets';
      yield serializers.serialize(
        object.outlets,
        specifiedType: const FullType(BuiltList, [
          FullType(NewsStoryOutletsInner),
        ]),
      );
    }
    if (object.situations != null) {
      yield r'situations';
      yield serializers.serialize(
        object.situations,
        specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
      );
    }
    if (object.canonicalEvents != null) {
      yield r'canonicalEvents';
      yield serializers.serialize(
        object.canonicalEvents,
        specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsStory object, {
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
    required NewsStoryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'canonicalEventId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.canonicalEventId = valueDes;
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
        case r'firstSeenAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.firstSeenAt = valueDes;
          break;
        case r'lastSeenAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.lastSeenAt = valueDes;
          break;
        case r'articleCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.articleCount = valueDes;
          break;
        case r'outletCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.outletCount = valueDes;
          break;
        case r'evidenceGroupCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.evidenceGroupCount = valueDes;
          break;
        case r'topicIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.topicIds.replace(valueDes);
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'coverage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CoverageStats),
                  )
                  as CoverageStats;
          result.coverage.replace(valueDes);
          break;
        case r'blindspot':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NewsStoryBlindspotEnum,
                    ),
                  )
                  as NewsStoryBlindspotEnum?;
          if (valueDes == null) continue;
          result.blindspot = valueDes;
          break;
        case r'corroborated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.corroborated = valueDes;
          break;
        case r'situationIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.situationIds.replace(valueDes);
          break;
        case r'outlets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(NewsStoryOutletsInner),
                    ]),
                  )
                  as BuiltList<NewsStoryOutletsInner>?;
          if (valueDes == null) continue;
          result.outlets.replace(valueDes);
          break;
        case r'situations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ObjectEnvelope),
                    ]),
                  )
                  as BuiltList<ObjectEnvelope>?;
          if (valueDes == null) continue;
          result.situations.replace(valueDes);
          break;
        case r'canonicalEvents':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ObjectEnvelope),
                    ]),
                  )
                  as BuiltList<ObjectEnvelope>?;
          if (valueDes == null) continue;
          result.canonicalEvents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsStory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsStoryBuilder();
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

class NewsStoryBlindspotEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'left')
  static const NewsStoryBlindspotEnum left = _$newsStoryBlindspotEnum_left;
  @BuiltValueEnumConst(wireName: r'right')
  static const NewsStoryBlindspotEnum right = _$newsStoryBlindspotEnum_right;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NewsStoryBlindspotEnum unknownDefaultOpenApi =
      _$newsStoryBlindspotEnum_unknownDefaultOpenApi;

  static Serializer<NewsStoryBlindspotEnum> get serializer =>
      _$newsStoryBlindspotEnumSerializer;

  const NewsStoryBlindspotEnum._(String name) : super(name);

  static BuiltSet<NewsStoryBlindspotEnum> get values =>
      _$newsStoryBlindspotEnumValues;
  static NewsStoryBlindspotEnum valueOf(String name) =>
      _$newsStoryBlindspotEnumValueOf(name);
}
