//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/claim_place.dart';
import 'package:foresignal_api/src/model/claim_reputation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/claim_event_time.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claim.g.dart';

/// A structured claim extracted from a narrative: what, where, when, who. A report, not a fact; usable as a graded 125 evidence item (`source = social-claim`) (136)
///
/// Properties:
/// * [id] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [narrativeId] - ULID identifier
/// * [type] - Lexicon id (`intel/social/claim-lexicon.json`)
/// * [signalFamily] - 119 signal family the type maps to
/// * [polarity]
/// * [hedged] - Hedge markers such as \"reportedly\", \"unconfirmed\"
/// * [place]
/// * [entityRefs]
/// * [eventTime]
/// * [actor] - Organisation name if stated
/// * [supportCount] - Posts supporting the claim
/// * [evidenceGroupCount]
/// * [firstObservedAt]
/// * [extraction]
/// * [manifestId] - ULID identifier
/// * [confidence] - Extraction confidence only
/// * [status] - Set by 137 comparisons
/// * [comparisonId] - 137 comparison
/// * [sourceReliability] - Admiralty: F by default, E/D from the account's or channel's 137 track record, or an operator override
/// * [informationCredibility] - From 137 status: 6 unassessed, 2 corroborated, 5 unobserved, 4 contradicted
/// * [grade]
/// * [restatement] - The neutral, de-hyped who/what/where/when restatement of the claim: the checkable core stripped of outrage and partisan framing. An LLM proposal is kept only when it re-validates against the lexicon, gazetteer and entity index and carries no hype word or unresolvable specific; otherwise a deterministic restatement synthesized from the validated fields. Null for claims extracted before 153 (153)
/// * [framingScore] - Deterministic, LLM-free framing/partisan intensity of the most central post (0 neutral prose, higher = more outrage, partisan-loaded labels, shouting and emphasis). Measures how the claim is told, not whether it is true. Null for claims extracted before 153 (153)
/// * [framingLabel] - Band of framingScore: neutral (< 0.12), charged (< 0.28), inflammatory (>= 0.28). Null for claims extracted before 153 (153)
/// * [reputation] - The rated-outlet reputation folded into sourceReliability, when the claim's source resolves to a rated outlet (a source key that is a web domain). Null for the common case of a social account with no resolvable outlet (153)
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [createdAt]
@BuiltValue()
abstract class Claim implements Built<Claim, ClaimBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  /// ULID identifier
  @BuiltValueField(wireName: r'narrativeId')
  String get narrativeId;

  /// Lexicon id (`intel/social/claim-lexicon.json`)
  @BuiltValueField(wireName: r'type')
  String get type;

  /// 119 signal family the type maps to
  @BuiltValueField(wireName: r'signalFamily')
  String get signalFamily;

  @BuiltValueField(wireName: r'polarity')
  ClaimPolarityEnum get polarity;
  // enum polarityEnum {  asserted,  denied,  questioned,  };

  /// Hedge markers such as \"reportedly\", \"unconfirmed\"
  @BuiltValueField(wireName: r'hedged')
  bool get hedged;

  @BuiltValueField(wireName: r'place')
  ClaimPlace? get place;

  @BuiltValueField(wireName: r'entityRefs')
  BuiltList<String>? get entityRefs;

  @BuiltValueField(wireName: r'eventTime')
  ClaimEventTime? get eventTime;

  /// Organisation name if stated
  @BuiltValueField(wireName: r'actor')
  String? get actor;

  /// Posts supporting the claim
  @BuiltValueField(wireName: r'supportCount')
  int get supportCount;

  @BuiltValueField(wireName: r'evidenceGroupCount')
  int get evidenceGroupCount;

  @BuiltValueField(wireName: r'firstObservedAt')
  DateTime get firstObservedAt;

  @BuiltValueField(wireName: r'extraction')
  ClaimExtractionEnum get extraction;
  // enum extractionEnum {  deterministic,  llm,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String get manifestId;

  /// Extraction confidence only
  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  /// Set by 137 comparisons
  @BuiltValueField(wireName: r'status')
  ClaimStatusEnum get status;
  // enum statusEnum {  unassessed,  pending,  corroborated,  unobserved,  contradicted,  insufficient-coverage,  };

  /// 137 comparison
  @BuiltValueField(wireName: r'comparisonId')
  String? get comparisonId;

  /// Admiralty: F by default, E/D from the account's or channel's 137 track record, or an operator override
  @BuiltValueField(wireName: r'sourceReliability')
  ClaimSourceReliabilityEnum get sourceReliability;
  // enum sourceReliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  /// From 137 status: 6 unassessed, 2 corroborated, 5 unobserved, 4 contradicted
  @BuiltValueField(wireName: r'informationCredibility')
  int get informationCredibility;

  @BuiltValueField(wireName: r'grade')
  String get grade;

  /// The neutral, de-hyped who/what/where/when restatement of the claim: the checkable core stripped of outrage and partisan framing. An LLM proposal is kept only when it re-validates against the lexicon, gazetteer and entity index and carries no hype word or unresolvable specific; otherwise a deterministic restatement synthesized from the validated fields. Null for claims extracted before 153 (153)
  @BuiltValueField(wireName: r'restatement')
  String? get restatement;

  /// Deterministic, LLM-free framing/partisan intensity of the most central post (0 neutral prose, higher = more outrage, partisan-loaded labels, shouting and emphasis). Measures how the claim is told, not whether it is true. Null for claims extracted before 153 (153)
  @BuiltValueField(wireName: r'framingScore')
  num? get framingScore;

  /// Band of framingScore: neutral (< 0.12), charged (< 0.28), inflammatory (>= 0.28). Null for claims extracted before 153 (153)
  @BuiltValueField(wireName: r'framingLabel')
  ClaimFramingLabelEnum? get framingLabel;
  // enum framingLabelEnum {  neutral,  charged,  inflammatory,  };

  /// The rated-outlet reputation folded into sourceReliability, when the claim's source resolves to a rated outlet (a source key that is a web domain). Null for the common case of a social account with no resolvable outlet (153)
  @BuiltValueField(wireName: r'reputation')
  ClaimReputation? get reputation;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  Claim._();

  factory Claim([void updates(ClaimBuilder b)]) = _$Claim;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Claim> get serializer => _$ClaimSerializer();
}

class _$ClaimSerializer implements PrimitiveSerializer<Claim> {
  @override
  final Iterable<Type> types = const [Claim, _$Claim];

  @override
  final String wireName = r'Claim';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Claim object, {
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
    yield r'narrativeId';
    yield serializers.serialize(
      object.narrativeId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'signalFamily';
    yield serializers.serialize(
      object.signalFamily,
      specifiedType: const FullType(String),
    );
    yield r'polarity';
    yield serializers.serialize(
      object.polarity,
      specifiedType: const FullType(ClaimPolarityEnum),
    );
    yield r'hedged';
    yield serializers.serialize(
      object.hedged,
      specifiedType: const FullType(bool),
    );
    if (object.place != null) {
      yield r'place';
      yield serializers.serialize(
        object.place,
        specifiedType: const FullType.nullable(ClaimPlace),
      );
    }
    if (object.entityRefs != null) {
      yield r'entityRefs';
      yield serializers.serialize(
        object.entityRefs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.eventTime != null) {
      yield r'eventTime';
      yield serializers.serialize(
        object.eventTime,
        specifiedType: const FullType.nullable(ClaimEventTime),
      );
    }
    if (object.actor != null) {
      yield r'actor';
      yield serializers.serialize(
        object.actor,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'supportCount';
    yield serializers.serialize(
      object.supportCount,
      specifiedType: const FullType(int),
    );
    yield r'evidenceGroupCount';
    yield serializers.serialize(
      object.evidenceGroupCount,
      specifiedType: const FullType(int),
    );
    yield r'firstObservedAt';
    yield serializers.serialize(
      object.firstObservedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'extraction';
    yield serializers.serialize(
      object.extraction,
      specifiedType: const FullType(ClaimExtractionEnum),
    );
    yield r'manifestId';
    yield serializers.serialize(
      object.manifestId,
      specifiedType: const FullType(String),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ClaimStatusEnum),
    );
    if (object.comparisonId != null) {
      yield r'comparisonId';
      yield serializers.serialize(
        object.comparisonId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'sourceReliability';
    yield serializers.serialize(
      object.sourceReliability,
      specifiedType: const FullType(ClaimSourceReliabilityEnum),
    );
    yield r'informationCredibility';
    yield serializers.serialize(
      object.informationCredibility,
      specifiedType: const FullType(int),
    );
    yield r'grade';
    yield serializers.serialize(
      object.grade,
      specifiedType: const FullType(String),
    );
    if (object.restatement != null) {
      yield r'restatement';
      yield serializers.serialize(
        object.restatement,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.framingScore != null) {
      yield r'framingScore';
      yield serializers.serialize(
        object.framingScore,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.framingLabel != null) {
      yield r'framingLabel';
      yield serializers.serialize(
        object.framingLabel,
        specifiedType: const FullType.nullable(ClaimFramingLabelEnum),
      );
    }
    if (object.reputation != null) {
      yield r'reputation';
      yield serializers.serialize(
        object.reputation,
        specifiedType: const FullType.nullable(ClaimReputation),
      );
    }
    if (object.tlp != null) {
      yield r'tlp';
      yield serializers.serialize(
        object.tlp,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Claim object, {
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
    required ClaimBuilder result,
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
        case r'narrativeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.narrativeId = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'signalFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.signalFamily = valueDes;
          break;
        case r'polarity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ClaimPolarityEnum),
                  )
                  as ClaimPolarityEnum;
          result.polarity = valueDes;
          break;
        case r'hedged':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.hedged = valueDes;
          break;
        case r'place':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ClaimPlace),
                  )
                  as ClaimPlace?;
          if (valueDes == null) continue;
          result.place.replace(valueDes);
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
        case r'eventTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ClaimEventTime),
                  )
                  as ClaimEventTime?;
          if (valueDes == null) continue;
          result.eventTime.replace(valueDes);
          break;
        case r'actor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.actor = valueDes;
          break;
        case r'supportCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.supportCount = valueDes;
          break;
        case r'evidenceGroupCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.evidenceGroupCount = valueDes;
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
        case r'extraction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ClaimExtractionEnum),
                  )
                  as ClaimExtractionEnum;
          result.extraction = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.manifestId = valueDes;
          break;
        case r'confidence':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.confidence = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ClaimStatusEnum),
                  )
                  as ClaimStatusEnum;
          result.status = valueDes;
          break;
        case r'comparisonId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.comparisonId = valueDes;
          break;
        case r'sourceReliability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ClaimSourceReliabilityEnum),
                  )
                  as ClaimSourceReliabilityEnum;
          result.sourceReliability = valueDes;
          break;
        case r'informationCredibility':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.informationCredibility = valueDes;
          break;
        case r'grade':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.grade = valueDes;
          break;
        case r'restatement':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.restatement = valueDes;
          break;
        case r'framingScore':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.framingScore = valueDes;
          break;
        case r'framingLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ClaimFramingLabelEnum,
                    ),
                  )
                  as ClaimFramingLabelEnum?;
          if (valueDes == null) continue;
          result.framingLabel = valueDes;
          break;
        case r'reputation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ClaimReputation),
                  )
                  as ClaimReputation?;
          if (valueDes == null) continue;
          result.reputation.replace(valueDes);
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tlp = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Claim deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimBuilder();
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

class ClaimPolarityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'asserted')
  static const ClaimPolarityEnum asserted = _$claimPolarityEnum_asserted;
  @BuiltValueEnumConst(wireName: r'denied')
  static const ClaimPolarityEnum denied = _$claimPolarityEnum_denied;
  @BuiltValueEnumConst(wireName: r'questioned')
  static const ClaimPolarityEnum questioned = _$claimPolarityEnum_questioned;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ClaimPolarityEnum unknownDefaultOpenApi =
      _$claimPolarityEnum_unknownDefaultOpenApi;

  static Serializer<ClaimPolarityEnum> get serializer =>
      _$claimPolarityEnumSerializer;

  const ClaimPolarityEnum._(String name) : super(name);

  static BuiltSet<ClaimPolarityEnum> get values => _$claimPolarityEnumValues;
  static ClaimPolarityEnum valueOf(String name) =>
      _$claimPolarityEnumValueOf(name);
}

class ClaimExtractionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'deterministic')
  static const ClaimExtractionEnum deterministic =
      _$claimExtractionEnum_deterministic;
  @BuiltValueEnumConst(wireName: r'llm')
  static const ClaimExtractionEnum llm = _$claimExtractionEnum_llm;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ClaimExtractionEnum unknownDefaultOpenApi =
      _$claimExtractionEnum_unknownDefaultOpenApi;

  static Serializer<ClaimExtractionEnum> get serializer =>
      _$claimExtractionEnumSerializer;

  const ClaimExtractionEnum._(String name) : super(name);

  static BuiltSet<ClaimExtractionEnum> get values =>
      _$claimExtractionEnumValues;
  static ClaimExtractionEnum valueOf(String name) =>
      _$claimExtractionEnumValueOf(name);
}

/// Set by 137 comparisons
class ClaimStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unassessed')
  static const ClaimStatusEnum unassessed = _$claimStatusEnum_unassessed;
  @BuiltValueEnumConst(wireName: r'pending')
  static const ClaimStatusEnum pending = _$claimStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'corroborated')
  static const ClaimStatusEnum corroborated = _$claimStatusEnum_corroborated;
  @BuiltValueEnumConst(wireName: r'unobserved')
  static const ClaimStatusEnum unobserved = _$claimStatusEnum_unobserved;
  @BuiltValueEnumConst(wireName: r'contradicted')
  static const ClaimStatusEnum contradicted = _$claimStatusEnum_contradicted;
  @BuiltValueEnumConst(wireName: r'insufficient-coverage')
  static const ClaimStatusEnum insufficientCoverage =
      _$claimStatusEnum_insufficientCoverage;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ClaimStatusEnum unknownDefaultOpenApi =
      _$claimStatusEnum_unknownDefaultOpenApi;

  static Serializer<ClaimStatusEnum> get serializer =>
      _$claimStatusEnumSerializer;

  const ClaimStatusEnum._(String name) : super(name);

  static BuiltSet<ClaimStatusEnum> get values => _$claimStatusEnumValues;
  static ClaimStatusEnum valueOf(String name) => _$claimStatusEnumValueOf(name);
}

/// Admiralty: F by default, E/D from the account's or channel's 137 track record, or an operator override
class ClaimSourceReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const ClaimSourceReliabilityEnum A = _$claimSourceReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const ClaimSourceReliabilityEnum B = _$claimSourceReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const ClaimSourceReliabilityEnum C = _$claimSourceReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const ClaimSourceReliabilityEnum D = _$claimSourceReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const ClaimSourceReliabilityEnum E = _$claimSourceReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const ClaimSourceReliabilityEnum F = _$claimSourceReliabilityEnum_F;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ClaimSourceReliabilityEnum unknownDefaultOpenApi =
      _$claimSourceReliabilityEnum_unknownDefaultOpenApi;

  static Serializer<ClaimSourceReliabilityEnum> get serializer =>
      _$claimSourceReliabilityEnumSerializer;

  const ClaimSourceReliabilityEnum._(String name) : super(name);

  static BuiltSet<ClaimSourceReliabilityEnum> get values =>
      _$claimSourceReliabilityEnumValues;
  static ClaimSourceReliabilityEnum valueOf(String name) =>
      _$claimSourceReliabilityEnumValueOf(name);
}

/// Band of framingScore: neutral (< 0.12), charged (< 0.28), inflammatory (>= 0.28). Null for claims extracted before 153 (153)
class ClaimFramingLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'neutral')
  static const ClaimFramingLabelEnum neutral = _$claimFramingLabelEnum_neutral;
  @BuiltValueEnumConst(wireName: r'charged')
  static const ClaimFramingLabelEnum charged = _$claimFramingLabelEnum_charged;
  @BuiltValueEnumConst(wireName: r'inflammatory')
  static const ClaimFramingLabelEnum inflammatory =
      _$claimFramingLabelEnum_inflammatory;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ClaimFramingLabelEnum unknownDefaultOpenApi =
      _$claimFramingLabelEnum_unknownDefaultOpenApi;

  static Serializer<ClaimFramingLabelEnum> get serializer =>
      _$claimFramingLabelEnumSerializer;

  const ClaimFramingLabelEnum._(String name) : super(name);

  static BuiltSet<ClaimFramingLabelEnum> get values =>
      _$claimFramingLabelEnumValues;
  static ClaimFramingLabelEnum valueOf(String name) =>
      _$claimFramingLabelEnumValueOf(name);
}
