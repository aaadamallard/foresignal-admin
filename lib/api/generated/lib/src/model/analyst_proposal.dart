//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_input.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_proposal.g.dart';

/// A proposed action from an analyst run; executes only on confirmation or under allowActions with an agent-scoped owner
///
/// Properties:
/// * [id] - ULID identifier
/// * [runId] - ULID identifier
/// * [profileId] - ULID identifier
/// * [type] - Extensible enum (128 adds types)
/// * [payload] - Action payload (rule input, event input, investigation item, annotation)
/// * [rationale]
/// * [citations]
/// * [status]
/// * [autoExecuted]
/// * [executedRef] - Reference of the created object
/// * [decidedBy]
/// * [decidedAt]
/// * [reason]
/// * [createdAt]
/// * [expiresAt]
/// * [chronicleDraft] - For `propose_chronicle`
@BuiltValue()
abstract class AnalystProposal
    implements Built<AnalystProposal, AnalystProposalBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'runId')
  String get runId;

  /// ULID identifier
  @BuiltValueField(wireName: r'profileId')
  String get profileId;

  /// Extensible enum (128 adds types)
  @BuiltValueField(wireName: r'type')
  AnalystProposalTypeEnum get type;
  // enum typeEnum {  propose_watch,  propose_intel_event,  propose_investigation_item,  annotate_event,  propose_chronicle,  propose_hypothesis_set,  propose_indicator,  propose_question,  propose_situation_merge,  };

  /// Action payload (rule input, event input, investigation item, annotation)
  @BuiltValueField(wireName: r'payload')
  BuiltMap<String, JsonObject?> get payload;

  @BuiltValueField(wireName: r'rationale')
  String? get rationale;

  @BuiltValueField(wireName: r'citations')
  BuiltList<String>? get citations;

  @BuiltValueField(wireName: r'status')
  AnalystProposalStatusEnum get status;
  // enum statusEnum {  pending,  executed,  rejected,  expired,  failed,  };

  @BuiltValueField(wireName: r'autoExecuted')
  bool? get autoExecuted;

  /// Reference of the created object
  @BuiltValueField(wireName: r'executedRef')
  String? get executedRef;

  @BuiltValueField(wireName: r'decidedBy')
  String? get decidedBy;

  @BuiltValueField(wireName: r'decidedAt')
  DateTime? get decidedAt;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  /// For `propose_chronicle`
  @BuiltValueField(wireName: r'chronicleDraft')
  ChronicleInput? get chronicleDraft;

  AnalystProposal._();

  factory AnalystProposal([void updates(AnalystProposalBuilder b)]) =
      _$AnalystProposal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystProposalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystProposal> get serializer =>
      _$AnalystProposalSerializer();
}

class _$AnalystProposalSerializer
    implements PrimitiveSerializer<AnalystProposal> {
  @override
  final Iterable<Type> types = const [AnalystProposal, _$AnalystProposal];

  @override
  final String wireName = r'AnalystProposal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystProposal object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'runId';
    yield serializers.serialize(
      object.runId,
      specifiedType: const FullType(String),
    );
    yield r'profileId';
    yield serializers.serialize(
      object.profileId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AnalystProposalTypeEnum),
    );
    yield r'payload';
    yield serializers.serialize(
      object.payload,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(JsonObject),
      ]),
    );
    if (object.rationale != null) {
      yield r'rationale';
      yield serializers.serialize(
        object.rationale,
        specifiedType: const FullType(String),
      );
    }
    if (object.citations != null) {
      yield r'citations';
      yield serializers.serialize(
        object.citations,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AnalystProposalStatusEnum),
    );
    if (object.autoExecuted != null) {
      yield r'autoExecuted';
      yield serializers.serialize(
        object.autoExecuted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.executedRef != null) {
      yield r'executedRef';
      yield serializers.serialize(
        object.executedRef,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.decidedBy != null) {
      yield r'decidedBy';
      yield serializers.serialize(
        object.decidedBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.decidedAt != null) {
      yield r'decidedAt';
      yield serializers.serialize(
        object.decidedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.chronicleDraft != null) {
      yield r'chronicleDraft';
      yield serializers.serialize(
        object.chronicleDraft,
        specifiedType: const FullType.nullable(ChronicleInput),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystProposal object, {
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
    required AnalystProposalBuilder result,
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
        case r'runId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.runId = valueDes;
          break;
        case r'profileId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.profileId = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AnalystProposalTypeEnum),
                  )
                  as AnalystProposalTypeEnum;
          result.type = valueDes;
          break;
        case r'payload':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>;
          result.payload.replace(valueDes);
          break;
        case r'rationale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.rationale = valueDes;
          break;
        case r'citations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.citations.replace(valueDes);
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AnalystProposalStatusEnum),
                  )
                  as AnalystProposalStatusEnum;
          result.status = valueDes;
          break;
        case r'autoExecuted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.autoExecuted = valueDes;
          break;
        case r'executedRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.executedRef = valueDes;
          break;
        case r'decidedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.decidedBy = valueDes;
          break;
        case r'decidedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.decidedAt = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'chronicleDraft':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ChronicleInput),
                  )
                  as ChronicleInput?;
          if (valueDes == null) continue;
          result.chronicleDraft.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystProposal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystProposalBuilder();
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

/// Extensible enum (128 adds types)
class AnalystProposalTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'propose_watch')
  static const AnalystProposalTypeEnum proposeWatch =
      _$analystProposalTypeEnum_proposeWatch;
  @BuiltValueEnumConst(wireName: r'propose_intel_event')
  static const AnalystProposalTypeEnum proposeIntelEvent =
      _$analystProposalTypeEnum_proposeIntelEvent;
  @BuiltValueEnumConst(wireName: r'propose_investigation_item')
  static const AnalystProposalTypeEnum proposeInvestigationItem =
      _$analystProposalTypeEnum_proposeInvestigationItem;
  @BuiltValueEnumConst(wireName: r'annotate_event')
  static const AnalystProposalTypeEnum annotateEvent =
      _$analystProposalTypeEnum_annotateEvent;
  @BuiltValueEnumConst(wireName: r'propose_chronicle')
  static const AnalystProposalTypeEnum proposeChronicle =
      _$analystProposalTypeEnum_proposeChronicle;
  @BuiltValueEnumConst(wireName: r'propose_hypothesis_set')
  static const AnalystProposalTypeEnum proposeHypothesisSet =
      _$analystProposalTypeEnum_proposeHypothesisSet;
  @BuiltValueEnumConst(wireName: r'propose_indicator')
  static const AnalystProposalTypeEnum proposeIndicator =
      _$analystProposalTypeEnum_proposeIndicator;
  @BuiltValueEnumConst(wireName: r'propose_question')
  static const AnalystProposalTypeEnum proposeQuestion =
      _$analystProposalTypeEnum_proposeQuestion;
  @BuiltValueEnumConst(wireName: r'propose_situation_merge')
  static const AnalystProposalTypeEnum proposeSituationMerge =
      _$analystProposalTypeEnum_proposeSituationMerge;

  static Serializer<AnalystProposalTypeEnum> get serializer =>
      _$analystProposalTypeEnumSerializer;

  const AnalystProposalTypeEnum._(String name) : super(name);

  static BuiltSet<AnalystProposalTypeEnum> get values =>
      _$analystProposalTypeEnumValues;
  static AnalystProposalTypeEnum valueOf(String name) =>
      _$analystProposalTypeEnumValueOf(name);
}

class AnalystProposalStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const AnalystProposalStatusEnum pending =
      _$analystProposalStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'executed')
  static const AnalystProposalStatusEnum executed =
      _$analystProposalStatusEnum_executed;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const AnalystProposalStatusEnum rejected =
      _$analystProposalStatusEnum_rejected;
  @BuiltValueEnumConst(wireName: r'expired')
  static const AnalystProposalStatusEnum expired =
      _$analystProposalStatusEnum_expired;
  @BuiltValueEnumConst(wireName: r'failed')
  static const AnalystProposalStatusEnum failed =
      _$analystProposalStatusEnum_failed;

  static Serializer<AnalystProposalStatusEnum> get serializer =>
      _$analystProposalStatusEnumSerializer;

  const AnalystProposalStatusEnum._(String name) : super(name);

  static BuiltSet<AnalystProposalStatusEnum> get values =>
      _$analystProposalStatusEnumValues;
  static AnalystProposalStatusEnum valueOf(String name) =>
      _$analystProposalStatusEnumValueOf(name);
}
