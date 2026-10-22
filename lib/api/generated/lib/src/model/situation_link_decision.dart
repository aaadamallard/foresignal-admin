//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_join_reason.dart';
import 'package:foresignal_api/src/model/situation_link_decision_candidates_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_link_decision.g.dart';

/// What the linker would do with one input
///
/// Properties:
/// * [seq]
/// * [inputRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [memberType]
/// * [signalFamily]
/// * [action]
/// * [situationId] - Joined situation, or the would-be id of a seeded one
/// * [seedTitle] - Deterministic title of a seeded situation
/// * [score]
/// * [joinReason]
/// * [candidates]
@BuiltValue()
abstract class SituationLinkDecision
    implements Built<SituationLinkDecision, SituationLinkDecisionBuilder> {
  @BuiltValueField(wireName: r'seq')
  int get seq;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'inputRef')
  String get inputRef;

  @BuiltValueField(wireName: r'memberType')
  SituationLinkDecisionMemberTypeEnum? get memberType;
  // enum memberTypeEnum {  intel_event,  finding,  alert,  anomaly,  record,  investigation,  };

  @BuiltValueField(wireName: r'signalFamily')
  String? get signalFamily;

  @BuiltValueField(wireName: r'action')
  SituationLinkDecisionActionEnum get action;
  // enum actionEnum {  join,  seed,  skip,  already-member,  };

  /// Joined situation, or the would-be id of a seeded one
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  /// Deterministic title of a seeded situation
  @BuiltValueField(wireName: r'seedTitle')
  String? get seedTitle;

  @BuiltValueField(wireName: r'score')
  num? get score;

  @BuiltValueField(wireName: r'joinReason')
  SituationJoinReason? get joinReason;

  @BuiltValueField(wireName: r'candidates')
  BuiltList<SituationLinkDecisionCandidatesInner>? get candidates;

  SituationLinkDecision._();

  factory SituationLinkDecision([
    void updates(SituationLinkDecisionBuilder b),
  ]) = _$SituationLinkDecision;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationLinkDecisionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationLinkDecision> get serializer =>
      _$SituationLinkDecisionSerializer();
}

class _$SituationLinkDecisionSerializer
    implements PrimitiveSerializer<SituationLinkDecision> {
  @override
  final Iterable<Type> types = const [
    SituationLinkDecision,
    _$SituationLinkDecision,
  ];

  @override
  final String wireName = r'SituationLinkDecision';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationLinkDecision object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'seq';
    yield serializers.serialize(object.seq, specifiedType: const FullType(int));
    yield r'inputRef';
    yield serializers.serialize(
      object.inputRef,
      specifiedType: const FullType(String),
    );
    if (object.memberType != null) {
      yield r'memberType';
      yield serializers.serialize(
        object.memberType,
        specifiedType: const FullType(SituationLinkDecisionMemberTypeEnum),
      );
    }
    if (object.signalFamily != null) {
      yield r'signalFamily';
      yield serializers.serialize(
        object.signalFamily,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(SituationLinkDecisionActionEnum),
    );
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seedTitle != null) {
      yield r'seedTitle';
      yield serializers.serialize(
        object.seedTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.joinReason != null) {
      yield r'joinReason';
      yield serializers.serialize(
        object.joinReason,
        specifiedType: const FullType.nullable(SituationJoinReason),
      );
    }
    if (object.candidates != null) {
      yield r'candidates';
      yield serializers.serialize(
        object.candidates,
        specifiedType: const FullType(BuiltList, [
          FullType(SituationLinkDecisionCandidatesInner),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationLinkDecision object, {
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
    required SituationLinkDecisionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.seq = valueDes;
          break;
        case r'inputRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.inputRef = valueDes;
          break;
        case r'memberType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SituationLinkDecisionMemberTypeEnum,
                    ),
                  )
                  as SituationLinkDecisionMemberTypeEnum?;
          if (valueDes == null) continue;
          result.memberType = valueDes;
          break;
        case r'signalFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.signalFamily = valueDes;
          break;
        case r'action':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SituationLinkDecisionActionEnum,
                    ),
                  )
                  as SituationLinkDecisionActionEnum;
          result.action = valueDes;
          break;
        case r'situationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
          break;
        case r'seedTitle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.seedTitle = valueDes;
          break;
        case r'score':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.score = valueDes;
          break;
        case r'joinReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SituationJoinReason),
                  )
                  as SituationJoinReason?;
          if (valueDes == null) continue;
          result.joinReason.replace(valueDes);
          break;
        case r'candidates':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SituationLinkDecisionCandidatesInner),
                    ]),
                  )
                  as BuiltList<SituationLinkDecisionCandidatesInner>?;
          if (valueDes == null) continue;
          result.candidates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationLinkDecision deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationLinkDecisionBuilder();
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

class SituationLinkDecisionMemberTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'intel_event')
  static const SituationLinkDecisionMemberTypeEnum intelEvent =
      _$situationLinkDecisionMemberTypeEnum_intelEvent;
  @BuiltValueEnumConst(wireName: r'finding')
  static const SituationLinkDecisionMemberTypeEnum finding =
      _$situationLinkDecisionMemberTypeEnum_finding;
  @BuiltValueEnumConst(wireName: r'alert')
  static const SituationLinkDecisionMemberTypeEnum alert =
      _$situationLinkDecisionMemberTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const SituationLinkDecisionMemberTypeEnum anomaly =
      _$situationLinkDecisionMemberTypeEnum_anomaly;
  @BuiltValueEnumConst(wireName: r'record')
  static const SituationLinkDecisionMemberTypeEnum record =
      _$situationLinkDecisionMemberTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'investigation')
  static const SituationLinkDecisionMemberTypeEnum investigation =
      _$situationLinkDecisionMemberTypeEnum_investigation;

  static Serializer<SituationLinkDecisionMemberTypeEnum> get serializer =>
      _$situationLinkDecisionMemberTypeEnumSerializer;

  const SituationLinkDecisionMemberTypeEnum._(String name) : super(name);

  static BuiltSet<SituationLinkDecisionMemberTypeEnum> get values =>
      _$situationLinkDecisionMemberTypeEnumValues;
  static SituationLinkDecisionMemberTypeEnum valueOf(String name) =>
      _$situationLinkDecisionMemberTypeEnumValueOf(name);
}

class SituationLinkDecisionActionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'join')
  static const SituationLinkDecisionActionEnum join =
      _$situationLinkDecisionActionEnum_join;
  @BuiltValueEnumConst(wireName: r'seed')
  static const SituationLinkDecisionActionEnum seed =
      _$situationLinkDecisionActionEnum_seed;
  @BuiltValueEnumConst(wireName: r'skip')
  static const SituationLinkDecisionActionEnum skip =
      _$situationLinkDecisionActionEnum_skip;
  @BuiltValueEnumConst(wireName: r'already-member')
  static const SituationLinkDecisionActionEnum alreadyMember =
      _$situationLinkDecisionActionEnum_alreadyMember;

  static Serializer<SituationLinkDecisionActionEnum> get serializer =>
      _$situationLinkDecisionActionEnumSerializer;

  const SituationLinkDecisionActionEnum._(String name) : super(name);

  static BuiltSet<SituationLinkDecisionActionEnum> get values =>
      _$situationLinkDecisionActionEnumValues;
  static SituationLinkDecisionActionEnum valueOf(String name) =>
      _$situationLinkDecisionActionEnumValueOf(name);
}
