//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/narrative_platform_stats.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'narrative_summary.g.dart';

/// A narrative: posts that say the same thing, a 116 canonical event (family `social-narrative`) whose evidence groups count independent origins (136)
///
/// Properties:
/// * [id] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [title] - Deterministic: the most central member's text truncated to 140 chars, then the claim summary once 2 or more claims exist
/// * [canonicalEventId] - ULID identifier
/// * [topics] - 117 attention topic ids
/// * [placeRefs]
/// * [entityRefs]
/// * [regionCodes]
/// * [languages]
/// * [platforms]
/// * [firstObservedAt]
/// * [lastActivityAt]
/// * [postCount]
/// * [uniqueAuthors]
/// * [evidenceGroupCount] - Independent origins (reposts, quotes, shared links and media join their original's group)
/// * [originConcentration] - Share of posts descending from the top three evidence groups
/// * [velocity] - Current hourly velocity ratio from 135 baselines
/// * [mediaFingerprints] - Media fingerprint ids
/// * [newsStoryIds] - 133 stories linked by URL or text
/// * [situationIds]
/// * [status] - Set from 137 comparisons; describes the relationship to independent evidence, never truth
/// * [state] - By velocity and age
/// * [coordinationIndicatorsPresent] - A `social-coordination` finding exists for the narrative
/// * [mergedInto] - ULID identifier
/// * [tlp] - Traffic Light Protocol 2.0 label
@BuiltValue()
abstract class NarrativeSummary
    implements Built<NarrativeSummary, NarrativeSummaryBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  /// Deterministic: the most central member's text truncated to 140 chars, then the claim summary once 2 or more claims exist
  @BuiltValueField(wireName: r'title')
  String get title;

  /// ULID identifier
  @BuiltValueField(wireName: r'canonicalEventId')
  String get canonicalEventId;

  /// 117 attention topic ids
  @BuiltValueField(wireName: r'topics')
  BuiltList<String>? get topics;

  @BuiltValueField(wireName: r'placeRefs')
  BuiltList<String>? get placeRefs;

  @BuiltValueField(wireName: r'entityRefs')
  BuiltList<String>? get entityRefs;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'languages')
  BuiltList<String>? get languages;

  @BuiltValueField(wireName: r'platforms')
  BuiltList<NarrativePlatformStats> get platforms;

  @BuiltValueField(wireName: r'firstObservedAt')
  DateTime get firstObservedAt;

  @BuiltValueField(wireName: r'lastActivityAt')
  DateTime get lastActivityAt;

  @BuiltValueField(wireName: r'postCount')
  int get postCount;

  @BuiltValueField(wireName: r'uniqueAuthors')
  int get uniqueAuthors;

  /// Independent origins (reposts, quotes, shared links and media join their original's group)
  @BuiltValueField(wireName: r'evidenceGroupCount')
  int get evidenceGroupCount;

  /// Share of posts descending from the top three evidence groups
  @BuiltValueField(wireName: r'originConcentration')
  num get originConcentration;

  /// Current hourly velocity ratio from 135 baselines
  @BuiltValueField(wireName: r'velocity')
  num? get velocity;

  /// Media fingerprint ids
  @BuiltValueField(wireName: r'mediaFingerprints')
  BuiltList<String>? get mediaFingerprints;

  /// 133 stories linked by URL or text
  @BuiltValueField(wireName: r'newsStoryIds')
  BuiltList<String>? get newsStoryIds;

  @BuiltValueField(wireName: r'situationIds')
  BuiltList<String>? get situationIds;

  /// Set from 137 comparisons; describes the relationship to independent evidence, never truth
  @BuiltValueField(wireName: r'status')
  NarrativeSummaryStatusEnum get status;
  // enum statusEnum {  unassessed,  pending,  corroborated,  unobserved,  contradicted,  mixed,  insufficient-coverage,  };

  /// By velocity and age
  @BuiltValueField(wireName: r'state')
  NarrativeSummaryStateEnum get state;
  // enum stateEnum {  emerging,  active,  fading,  dormant,  };

  /// A `social-coordination` finding exists for the narrative
  @BuiltValueField(wireName: r'coordinationIndicatorsPresent')
  bool? get coordinationIndicatorsPresent;

  /// ULID identifier
  @BuiltValueField(wireName: r'mergedInto')
  String? get mergedInto;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String get tlp;

  NarrativeSummary._();

  factory NarrativeSummary([void updates(NarrativeSummaryBuilder b)]) =
      _$NarrativeSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NarrativeSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NarrativeSummary> get serializer =>
      _$NarrativeSummarySerializer();
}

class _$NarrativeSummarySerializer
    implements PrimitiveSerializer<NarrativeSummary> {
  @override
  final Iterable<Type> types = const [NarrativeSummary, _$NarrativeSummary];

  @override
  final String wireName = r'NarrativeSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NarrativeSummary object, {
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
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'canonicalEventId';
    yield serializers.serialize(
      object.canonicalEventId,
      specifiedType: const FullType(String),
    );
    if (object.topics != null) {
      yield r'topics';
      yield serializers.serialize(
        object.topics,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.placeRefs != null) {
      yield r'placeRefs';
      yield serializers.serialize(
        object.placeRefs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.entityRefs != null) {
      yield r'entityRefs';
      yield serializers.serialize(
        object.entityRefs,
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
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'platforms';
    yield serializers.serialize(
      object.platforms,
      specifiedType: const FullType(BuiltList, [
        FullType(NarrativePlatformStats),
      ]),
    );
    yield r'firstObservedAt';
    yield serializers.serialize(
      object.firstObservedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'lastActivityAt';
    yield serializers.serialize(
      object.lastActivityAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'postCount';
    yield serializers.serialize(
      object.postCount,
      specifiedType: const FullType(int),
    );
    yield r'uniqueAuthors';
    yield serializers.serialize(
      object.uniqueAuthors,
      specifiedType: const FullType(int),
    );
    yield r'evidenceGroupCount';
    yield serializers.serialize(
      object.evidenceGroupCount,
      specifiedType: const FullType(int),
    );
    yield r'originConcentration';
    yield serializers.serialize(
      object.originConcentration,
      specifiedType: const FullType(num),
    );
    if (object.velocity != null) {
      yield r'velocity';
      yield serializers.serialize(
        object.velocity,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.mediaFingerprints != null) {
      yield r'mediaFingerprints';
      yield serializers.serialize(
        object.mediaFingerprints,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.newsStoryIds != null) {
      yield r'newsStoryIds';
      yield serializers.serialize(
        object.newsStoryIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.situationIds != null) {
      yield r'situationIds';
      yield serializers.serialize(
        object.situationIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(NarrativeSummaryStatusEnum),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(NarrativeSummaryStateEnum),
    );
    if (object.coordinationIndicatorsPresent != null) {
      yield r'coordinationIndicatorsPresent';
      yield serializers.serialize(
        object.coordinationIndicatorsPresent,
        specifiedType: const FullType(bool),
      );
    }
    if (object.mergedInto != null) {
      yield r'mergedInto';
      yield serializers.serialize(
        object.mergedInto,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'tlp';
    yield serializers.serialize(
      object.tlp,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NarrativeSummary object, {
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
    required NarrativeSummaryBuilder result,
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
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
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
        case r'topics':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.topics.replace(valueDes);
          break;
        case r'placeRefs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.placeRefs.replace(valueDes);
          break;
        case r'entityRefs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.entityRefs.replace(valueDes);
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
        case r'languages':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'platforms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(NarrativePlatformStats),
                    ]),
                  )
                  as BuiltList<NarrativePlatformStats>;
          result.platforms.replace(valueDes);
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
        case r'lastActivityAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.lastActivityAt = valueDes;
          break;
        case r'postCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.postCount = valueDes;
          break;
        case r'uniqueAuthors':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.uniqueAuthors = valueDes;
          break;
        case r'evidenceGroupCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.evidenceGroupCount = valueDes;
          break;
        case r'originConcentration':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.originConcentration = valueDes;
          break;
        case r'velocity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.velocity = valueDes;
          break;
        case r'mediaFingerprints':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.mediaFingerprints.replace(valueDes);
          break;
        case r'newsStoryIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.newsStoryIds.replace(valueDes);
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
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NarrativeSummaryStatusEnum),
                  )
                  as NarrativeSummaryStatusEnum;
          result.status = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NarrativeSummaryStateEnum),
                  )
                  as NarrativeSummaryStateEnum;
          result.state = valueDes;
          break;
        case r'coordinationIndicatorsPresent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.coordinationIndicatorsPresent = valueDes;
          break;
        case r'mergedInto':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mergedInto = valueDes;
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tlp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NarrativeSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NarrativeSummaryBuilder();
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

/// Set from 137 comparisons; describes the relationship to independent evidence, never truth
class NarrativeSummaryStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unassessed')
  static const NarrativeSummaryStatusEnum unassessed =
      _$narrativeSummaryStatusEnum_unassessed;
  @BuiltValueEnumConst(wireName: r'pending')
  static const NarrativeSummaryStatusEnum pending =
      _$narrativeSummaryStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'corroborated')
  static const NarrativeSummaryStatusEnum corroborated =
      _$narrativeSummaryStatusEnum_corroborated;
  @BuiltValueEnumConst(wireName: r'unobserved')
  static const NarrativeSummaryStatusEnum unobserved =
      _$narrativeSummaryStatusEnum_unobserved;
  @BuiltValueEnumConst(wireName: r'contradicted')
  static const NarrativeSummaryStatusEnum contradicted =
      _$narrativeSummaryStatusEnum_contradicted;
  @BuiltValueEnumConst(wireName: r'mixed')
  static const NarrativeSummaryStatusEnum mixed =
      _$narrativeSummaryStatusEnum_mixed;
  @BuiltValueEnumConst(wireName: r'insufficient-coverage')
  static const NarrativeSummaryStatusEnum insufficientCoverage =
      _$narrativeSummaryStatusEnum_insufficientCoverage;

  static Serializer<NarrativeSummaryStatusEnum> get serializer =>
      _$narrativeSummaryStatusEnumSerializer;

  const NarrativeSummaryStatusEnum._(String name) : super(name);

  static BuiltSet<NarrativeSummaryStatusEnum> get values =>
      _$narrativeSummaryStatusEnumValues;
  static NarrativeSummaryStatusEnum valueOf(String name) =>
      _$narrativeSummaryStatusEnumValueOf(name);
}

/// By velocity and age
class NarrativeSummaryStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'emerging')
  static const NarrativeSummaryStateEnum emerging =
      _$narrativeSummaryStateEnum_emerging;
  @BuiltValueEnumConst(wireName: r'active')
  static const NarrativeSummaryStateEnum active =
      _$narrativeSummaryStateEnum_active;
  @BuiltValueEnumConst(wireName: r'fading')
  static const NarrativeSummaryStateEnum fading =
      _$narrativeSummaryStateEnum_fading;
  @BuiltValueEnumConst(wireName: r'dormant')
  static const NarrativeSummaryStateEnum dormant =
      _$narrativeSummaryStateEnum_dormant;

  static Serializer<NarrativeSummaryStateEnum> get serializer =>
      _$narrativeSummaryStateEnumSerializer;

  const NarrativeSummaryStateEnum._(String name) : super(name);

  static BuiltSet<NarrativeSummaryStateEnum> get values =>
      _$narrativeSummaryStateEnumValues;
  static NarrativeSummaryStateEnum valueOf(String name) =>
      _$narrativeSummaryStateEnumValueOf(name);
}
