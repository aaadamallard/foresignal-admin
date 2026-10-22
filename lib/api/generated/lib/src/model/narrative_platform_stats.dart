//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'narrative_platform_stats.g.dart';

/// A narrative's presence on one platform; `earliestPostRef` is the earliest observed post, never the originator
///
/// Properties:
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [posts]
/// * [uniqueAuthors]
/// * [firstObservedAt]
/// * [earliestPostRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
@BuiltValue()
abstract class NarrativePlatformStats
    implements Built<NarrativePlatformStats, NarrativePlatformStatsBuilder> {
  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  @BuiltValueField(wireName: r'posts')
  int get posts;

  @BuiltValueField(wireName: r'uniqueAuthors')
  int get uniqueAuthors;

  @BuiltValueField(wireName: r'firstObservedAt')
  DateTime get firstObservedAt;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'earliestPostRef')
  String get earliestPostRef;

  NarrativePlatformStats._();

  factory NarrativePlatformStats([
    void updates(NarrativePlatformStatsBuilder b),
  ]) = _$NarrativePlatformStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NarrativePlatformStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NarrativePlatformStats> get serializer =>
      _$NarrativePlatformStatsSerializer();
}

class _$NarrativePlatformStatsSerializer
    implements PrimitiveSerializer<NarrativePlatformStats> {
  @override
  final Iterable<Type> types = const [
    NarrativePlatformStats,
    _$NarrativePlatformStats,
  ];

  @override
  final String wireName = r'NarrativePlatformStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NarrativePlatformStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
    yield r'posts';
    yield serializers.serialize(
      object.posts,
      specifiedType: const FullType(int),
    );
    yield r'uniqueAuthors';
    yield serializers.serialize(
      object.uniqueAuthors,
      specifiedType: const FullType(int),
    );
    yield r'firstObservedAt';
    yield serializers.serialize(
      object.firstObservedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'earliestPostRef';
    yield serializers.serialize(
      object.earliestPostRef,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NarrativePlatformStats object, {
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
    required NarrativePlatformStatsBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.platform = valueDes;
          break;
        case r'posts':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.posts = valueDes;
          break;
        case r'uniqueAuthors':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.uniqueAuthors = valueDes;
          break;
        case r'firstObservedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.firstObservedAt = valueDes;
          break;
        case r'earliestPostRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.earliestPostRef = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NarrativePlatformStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NarrativePlatformStatsBuilder();
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
