//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/indicator.dart';
import 'package:foresignal_api/src/model/hypothesis.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/key_assumption.dart';
import 'package:foresignal_api/src/model/confidence_level.dart';
import 'package:foresignal_api/src/model/ledger_question_brief.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_set.g.dart';

/// A rolling hypothesis set: one key question and its competing answers
///
/// Properties:
/// * [id] - ULID identifier
/// * [question]
/// * [description]
/// * [kind] - `exclusive`: probabilities sum to 1 with exactly one `other` hypothesis
/// * [cadence]
/// * [horizon]
/// * [status]
/// * [situationId] - ULID identifier
/// * [questionId] - ULID identifier
/// * [regionCodes] - ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
/// * [themes]
/// * [origin]
/// * [confidence]
/// * [lastReviewedAt]
/// * [nextReviewAt]
/// * [lastRevisionId] - ULID identifier
/// * [lastRevisionAt]
/// * [private]
/// * [version] - Optimistic lock for PATCH
/// * [hypotheses]
/// * [indicators]
/// * [assumptions]
/// * [linkedQuestion]
/// * [recordRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [createdAt]
/// * [updatedAt]
/// * [reviewFlagged] - A broken linchpin assumption flagged the set for review; a review clears it
@BuiltValue()
abstract class HypothesisSet
    implements Built<HypothesisSet, HypothesisSetBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'question')
  String get question;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// `exclusive`: probabilities sum to 1 with exactly one `other` hypothesis
  @BuiltValueField(wireName: r'kind')
  HypothesisSetKindEnum get kind;
  // enum kindEnum {  exclusive,  independent,  };

  @BuiltValueField(wireName: r'cadence')
  HypothesisSetCadenceEnum get cadence;
  // enum cadenceEnum {  daily,  weekly,  monthly,  };

  @BuiltValueField(wireName: r'horizon')
  Date? get horizon;

  @BuiltValueField(wireName: r'status')
  HypothesisSetStatusEnum get status;
  // enum statusEnum {  active,  resolved,  archived,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String? get questionId;

  /// ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'themes')
  BuiltList<String>? get themes;

  @BuiltValueField(wireName: r'origin')
  HypothesisSetOriginEnum get origin;
  // enum originEnum {  operator,  agent,  analyst,  };

  @BuiltValueField(wireName: r'confidence')
  ConfidenceLevel get confidence;
  // enum confidenceEnum {  low,  moderate,  high,  };

  @BuiltValueField(wireName: r'lastReviewedAt')
  DateTime? get lastReviewedAt;

  @BuiltValueField(wireName: r'nextReviewAt')
  DateTime? get nextReviewAt;

  /// ULID identifier
  @BuiltValueField(wireName: r'lastRevisionId')
  String? get lastRevisionId;

  @BuiltValueField(wireName: r'lastRevisionAt')
  DateTime? get lastRevisionAt;

  @BuiltValueField(wireName: r'private')
  bool get private;

  /// Optimistic lock for PATCH
  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'hypotheses')
  BuiltList<Hypothesis> get hypotheses;

  @BuiltValueField(wireName: r'indicators')
  BuiltList<Indicator>? get indicators;

  @BuiltValueField(wireName: r'assumptions')
  BuiltList<KeyAssumption>? get assumptions;

  @BuiltValueField(wireName: r'linkedQuestion')
  LedgerQuestionBrief? get linkedQuestion;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'recordRef')
  String? get recordRef;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  /// A broken linchpin assumption flagged the set for review; a review clears it
  @BuiltValueField(wireName: r'reviewFlagged')
  bool? get reviewFlagged;

  HypothesisSet._();

  factory HypothesisSet([void updates(HypothesisSetBuilder b)]) =
      _$HypothesisSet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisSetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisSet> get serializer =>
      _$HypothesisSetSerializer();
}

class _$HypothesisSetSerializer implements PrimitiveSerializer<HypothesisSet> {
  @override
  final Iterable<Type> types = const [HypothesisSet, _$HypothesisSet];

  @override
  final String wireName = r'HypothesisSet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisSet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(HypothesisSetKindEnum),
    );
    yield r'cadence';
    yield serializers.serialize(
      object.cadence,
      specifiedType: const FullType(HypothesisSetCadenceEnum),
    );
    if (object.horizon != null) {
      yield r'horizon';
      yield serializers.serialize(
        object.horizon,
        specifiedType: const FullType.nullable(Date),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(HypothesisSetStatusEnum),
    );
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.questionId != null) {
      yield r'questionId';
      yield serializers.serialize(
        object.questionId,
        specifiedType: const FullType.nullable(String),
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
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(HypothesisSetOriginEnum),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(ConfidenceLevel),
    );
    if (object.lastReviewedAt != null) {
      yield r'lastReviewedAt';
      yield serializers.serialize(
        object.lastReviewedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.nextReviewAt != null) {
      yield r'nextReviewAt';
      yield serializers.serialize(
        object.nextReviewAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastRevisionId != null) {
      yield r'lastRevisionId';
      yield serializers.serialize(
        object.lastRevisionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastRevisionAt != null) {
      yield r'lastRevisionAt';
      yield serializers.serialize(
        object.lastRevisionAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'private';
    yield serializers.serialize(
      object.private,
      specifiedType: const FullType(bool),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    yield r'hypotheses';
    yield serializers.serialize(
      object.hypotheses,
      specifiedType: const FullType(BuiltList, [FullType(Hypothesis)]),
    );
    if (object.indicators != null) {
      yield r'indicators';
      yield serializers.serialize(
        object.indicators,
        specifiedType: const FullType(BuiltList, [FullType(Indicator)]),
      );
    }
    if (object.assumptions != null) {
      yield r'assumptions';
      yield serializers.serialize(
        object.assumptions,
        specifiedType: const FullType(BuiltList, [FullType(KeyAssumption)]),
      );
    }
    if (object.linkedQuestion != null) {
      yield r'linkedQuestion';
      yield serializers.serialize(
        object.linkedQuestion,
        specifiedType: const FullType.nullable(LedgerQuestionBrief),
      );
    }
    if (object.recordRef != null) {
      yield r'recordRef';
      yield serializers.serialize(
        object.recordRef,
        specifiedType: const FullType.nullable(String),
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
    if (object.reviewFlagged != null) {
      yield r'reviewFlagged';
      yield serializers.serialize(
        object.reviewFlagged,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSet object, {
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
    required HypothesisSetBuilder result,
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
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.question = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HypothesisSetKindEnum),
          ) as HypothesisSetKindEnum;
          result.kind = valueDes;
          break;
        case r'cadence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HypothesisSetCadenceEnum),
          ) as HypothesisSetCadenceEnum;
          result.cadence = valueDes;
          break;
        case r'horizon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.horizon = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HypothesisSetStatusEnum),
          ) as HypothesisSetStatusEnum;
          result.status = valueDes;
          break;
        case r'situationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
          break;
        case r'questionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.questionId = valueDes;
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
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HypothesisSetOriginEnum),
          ) as HypothesisSetOriginEnum;
          result.origin = valueDes;
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConfidenceLevel),
          ) as ConfidenceLevel;
          result.confidence = valueDes;
          break;
        case r'lastReviewedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastReviewedAt = valueDes;
          break;
        case r'nextReviewAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.nextReviewAt = valueDes;
          break;
        case r'lastRevisionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastRevisionId = valueDes;
          break;
        case r'lastRevisionAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastRevisionAt = valueDes;
          break;
        case r'private':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.private = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'hypotheses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Hypothesis)]),
          ) as BuiltList<Hypothesis>;
          result.hypotheses.replace(valueDes);
          break;
        case r'indicators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Indicator)]),
          ) as BuiltList<Indicator>?;
          if (valueDes == null) continue;
          result.indicators.replace(valueDes);
          break;
        case r'assumptions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(KeyAssumption)]),
          ) as BuiltList<KeyAssumption>?;
          if (valueDes == null) continue;
          result.assumptions.replace(valueDes);
          break;
        case r'linkedQuestion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LedgerQuestionBrief),
          ) as LedgerQuestionBrief?;
          if (valueDes == null) continue;
          result.linkedQuestion.replace(valueDes);
          break;
        case r'recordRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.recordRef = valueDes;
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
        case r'reviewFlagged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.reviewFlagged = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisSet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisSetBuilder();
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

/// `exclusive`: probabilities sum to 1 with exactly one `other` hypothesis
class HypothesisSetKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'exclusive')
  static const HypothesisSetKindEnum exclusive =
      _$hypothesisSetKindEnum_exclusive;
  @BuiltValueEnumConst(wireName: r'independent')
  static const HypothesisSetKindEnum independent =
      _$hypothesisSetKindEnum_independent;

  static Serializer<HypothesisSetKindEnum> get serializer =>
      _$hypothesisSetKindEnumSerializer;

  const HypothesisSetKindEnum._(String name) : super(name);

  static BuiltSet<HypothesisSetKindEnum> get values =>
      _$hypothesisSetKindEnumValues;
  static HypothesisSetKindEnum valueOf(String name) =>
      _$hypothesisSetKindEnumValueOf(name);
}

class HypothesisSetCadenceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'daily')
  static const HypothesisSetCadenceEnum daily =
      _$hypothesisSetCadenceEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const HypothesisSetCadenceEnum weekly =
      _$hypothesisSetCadenceEnum_weekly;
  @BuiltValueEnumConst(wireName: r'monthly')
  static const HypothesisSetCadenceEnum monthly =
      _$hypothesisSetCadenceEnum_monthly;

  static Serializer<HypothesisSetCadenceEnum> get serializer =>
      _$hypothesisSetCadenceEnumSerializer;

  const HypothesisSetCadenceEnum._(String name) : super(name);

  static BuiltSet<HypothesisSetCadenceEnum> get values =>
      _$hypothesisSetCadenceEnumValues;
  static HypothesisSetCadenceEnum valueOf(String name) =>
      _$hypothesisSetCadenceEnumValueOf(name);
}

class HypothesisSetStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const HypothesisSetStatusEnum active =
      _$hypothesisSetStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const HypothesisSetStatusEnum resolved =
      _$hypothesisSetStatusEnum_resolved;
  @BuiltValueEnumConst(wireName: r'archived')
  static const HypothesisSetStatusEnum archived =
      _$hypothesisSetStatusEnum_archived;

  static Serializer<HypothesisSetStatusEnum> get serializer =>
      _$hypothesisSetStatusEnumSerializer;

  const HypothesisSetStatusEnum._(String name) : super(name);

  static BuiltSet<HypothesisSetStatusEnum> get values =>
      _$hypothesisSetStatusEnumValues;
  static HypothesisSetStatusEnum valueOf(String name) =>
      _$hypothesisSetStatusEnumValueOf(name);
}

class HypothesisSetOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'operator')
  static const HypothesisSetOriginEnum operator_ =
      _$hypothesisSetOriginEnum_operator_;
  @BuiltValueEnumConst(wireName: r'agent')
  static const HypothesisSetOriginEnum agent = _$hypothesisSetOriginEnum_agent;
  @BuiltValueEnumConst(wireName: r'analyst')
  static const HypothesisSetOriginEnum analyst =
      _$hypothesisSetOriginEnum_analyst;

  static Serializer<HypothesisSetOriginEnum> get serializer =>
      _$hypothesisSetOriginEnumSerializer;

  const HypothesisSetOriginEnum._(String name) : super(name);

  static BuiltSet<HypothesisSetOriginEnum> get values =>
      _$hypothesisSetOriginEnumValues;
  static HypothesisSetOriginEnum valueOf(String name) =>
      _$hypothesisSetOriginEnumValueOf(name);
}
