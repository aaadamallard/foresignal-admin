//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/analyst_profile_schedule.dart';
import 'package:foresignal_api/src/model/analyst_profile_scope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_profile.g.dart';

/// A scheduled analyst profile with scope, model, budgets, action permissions and delivery
///
/// Properties:
/// * [id] - ULID identifier
/// * [name]
/// * [enabled]
/// * [schedule]
/// * [scope]
/// * [lookback] - Default: since the last run, capped at 7d; history tools may reach back 90d
/// * [instructions]
/// * [providerId] - LLM provider; null uses the chat role
/// * [effort]
/// * [maxRunsPerDay]
/// * [maxTokensPerRun]
/// * [maxToolCalls]
/// * [maxWallSeconds]
/// * [allowActions] - Requires the caller to hold agent scope; restricted tokens cannot own an action-enabled profile
/// * [allowedActions] - Extensible (128 adds proposal types)
/// * [maxAutoActionsPerDay]
/// * [channelIds]
/// * [notifyMinPriority]
/// * [ownerTokenId]
/// * [nextRunAt]
/// * [lastRunAt]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class AnalystProfile
    implements Built<AnalystProfile, AnalystProfileBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'schedule')
  AnalystProfileSchedule get schedule;

  @BuiltValueField(wireName: r'scope')
  AnalystProfileScope? get scope;

  /// Default: since the last run, capped at 7d; history tools may reach back 90d
  @BuiltValueField(wireName: r'lookback')
  String? get lookback;

  @BuiltValueField(wireName: r'instructions')
  String? get instructions;

  /// LLM provider; null uses the chat role
  @BuiltValueField(wireName: r'providerId')
  String? get providerId;

  @BuiltValueField(wireName: r'effort')
  AnalystProfileEffortEnum get effort;
  // enum effortEnum {  low,  medium,  };

  @BuiltValueField(wireName: r'maxRunsPerDay')
  int? get maxRunsPerDay;

  @BuiltValueField(wireName: r'maxTokensPerRun')
  int? get maxTokensPerRun;

  @BuiltValueField(wireName: r'maxToolCalls')
  int? get maxToolCalls;

  @BuiltValueField(wireName: r'maxWallSeconds')
  int? get maxWallSeconds;

  /// Requires the caller to hold agent scope; restricted tokens cannot own an action-enabled profile
  @BuiltValueField(wireName: r'allowActions')
  bool get allowActions;

  /// Extensible (128 adds proposal types)
  @BuiltValueField(wireName: r'allowedActions')
  BuiltList<AnalystProfileAllowedActionsEnum>? get allowedActions;
  // enum allowedActionsEnum {  propose_watch,  propose_intel_event,  propose_investigation_item,  annotate_event,  propose_hypothesis_set,  propose_indicator,  propose_question,  propose_situation_merge,  propose_chronicle,  };

  @BuiltValueField(wireName: r'maxAutoActionsPerDay')
  int? get maxAutoActionsPerDay;

  @BuiltValueField(wireName: r'channelIds')
  BuiltList<String>? get channelIds;

  @BuiltValueField(wireName: r'notifyMinPriority')
  AnalystProfileNotifyMinPriorityEnum? get notifyMinPriority;
  // enum notifyMinPriorityEnum {  low,  normal,  high,  };

  @BuiltValueField(wireName: r'ownerTokenId')
  String get ownerTokenId;

  @BuiltValueField(wireName: r'nextRunAt')
  DateTime? get nextRunAt;

  @BuiltValueField(wireName: r'lastRunAt')
  DateTime? get lastRunAt;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  AnalystProfile._();

  factory AnalystProfile([void updates(AnalystProfileBuilder b)]) =
      _$AnalystProfile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystProfileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystProfile> get serializer =>
      _$AnalystProfileSerializer();
}

class _$AnalystProfileSerializer
    implements PrimitiveSerializer<AnalystProfile> {
  @override
  final Iterable<Type> types = const [AnalystProfile, _$AnalystProfile];

  @override
  final String wireName = r'AnalystProfile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'schedule';
    yield serializers.serialize(
      object.schedule,
      specifiedType: const FullType(AnalystProfileSchedule),
    );
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(AnalystProfileScope),
      );
    }
    if (object.lookback != null) {
      yield r'lookback';
      yield serializers.serialize(
        object.lookback,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.instructions != null) {
      yield r'instructions';
      yield serializers.serialize(
        object.instructions,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.providerId != null) {
      yield r'providerId';
      yield serializers.serialize(
        object.providerId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'effort';
    yield serializers.serialize(
      object.effort,
      specifiedType: const FullType(AnalystProfileEffortEnum),
    );
    if (object.maxRunsPerDay != null) {
      yield r'maxRunsPerDay';
      yield serializers.serialize(
        object.maxRunsPerDay,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxTokensPerRun != null) {
      yield r'maxTokensPerRun';
      yield serializers.serialize(
        object.maxTokensPerRun,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxToolCalls != null) {
      yield r'maxToolCalls';
      yield serializers.serialize(
        object.maxToolCalls,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxWallSeconds != null) {
      yield r'maxWallSeconds';
      yield serializers.serialize(
        object.maxWallSeconds,
        specifiedType: const FullType(int),
      );
    }
    yield r'allowActions';
    yield serializers.serialize(
      object.allowActions,
      specifiedType: const FullType(bool),
    );
    if (object.allowedActions != null) {
      yield r'allowedActions';
      yield serializers.serialize(
        object.allowedActions,
        specifiedType: const FullType(
            BuiltList, [FullType(AnalystProfileAllowedActionsEnum)]),
      );
    }
    if (object.maxAutoActionsPerDay != null) {
      yield r'maxAutoActionsPerDay';
      yield serializers.serialize(
        object.maxAutoActionsPerDay,
        specifiedType: const FullType(int),
      );
    }
    if (object.channelIds != null) {
      yield r'channelIds';
      yield serializers.serialize(
        object.channelIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.notifyMinPriority != null) {
      yield r'notifyMinPriority';
      yield serializers.serialize(
        object.notifyMinPriority,
        specifiedType: const FullType(AnalystProfileNotifyMinPriorityEnum),
      );
    }
    yield r'ownerTokenId';
    yield serializers.serialize(
      object.ownerTokenId,
      specifiedType: const FullType(String),
    );
    if (object.nextRunAt != null) {
      yield r'nextRunAt';
      yield serializers.serialize(
        object.nextRunAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastRunAt != null) {
      yield r'lastRunAt';
      yield serializers.serialize(
        object.lastRunAt,
        specifiedType: const FullType.nullable(DateTime),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystProfile object, {
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
    required AnalystProfileBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'schedule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalystProfileSchedule),
          ) as AnalystProfileSchedule;
          result.schedule.replace(valueDes);
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AnalystProfileScope),
          ) as AnalystProfileScope?;
          if (valueDes == null) continue;
          result.scope.replace(valueDes);
          break;
        case r'lookback':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lookback = valueDes;
          break;
        case r'instructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.instructions = valueDes;
          break;
        case r'providerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.providerId = valueDes;
          break;
        case r'effort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalystProfileEffortEnum),
          ) as AnalystProfileEffortEnum;
          result.effort = valueDes;
          break;
        case r'maxRunsPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxRunsPerDay = valueDes;
          break;
        case r'maxTokensPerRun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxTokensPerRun = valueDes;
          break;
        case r'maxToolCalls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxToolCalls = valueDes;
          break;
        case r'maxWallSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxWallSeconds = valueDes;
          break;
        case r'allowActions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowActions = valueDes;
          break;
        case r'allowedActions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(AnalystProfileAllowedActionsEnum)]),
          ) as BuiltList<AnalystProfileAllowedActionsEnum>?;
          if (valueDes == null) continue;
          result.allowedActions.replace(valueDes);
          break;
        case r'maxAutoActionsPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxAutoActionsPerDay = valueDes;
          break;
        case r'channelIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.channelIds.replace(valueDes);
          break;
        case r'notifyMinPriority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(AnalystProfileNotifyMinPriorityEnum),
          ) as AnalystProfileNotifyMinPriorityEnum?;
          if (valueDes == null) continue;
          result.notifyMinPriority = valueDes;
          break;
        case r'ownerTokenId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerTokenId = valueDes;
          break;
        case r'nextRunAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.nextRunAt = valueDes;
          break;
        case r'lastRunAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastRunAt = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystProfile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystProfileBuilder();
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

class AnalystProfileEffortEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const AnalystProfileEffortEnum low = _$analystProfileEffortEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const AnalystProfileEffortEnum medium =
      _$analystProfileEffortEnum_medium;

  static Serializer<AnalystProfileEffortEnum> get serializer =>
      _$analystProfileEffortEnumSerializer;

  const AnalystProfileEffortEnum._(String name) : super(name);

  static BuiltSet<AnalystProfileEffortEnum> get values =>
      _$analystProfileEffortEnumValues;
  static AnalystProfileEffortEnum valueOf(String name) =>
      _$analystProfileEffortEnumValueOf(name);
}

class AnalystProfileAllowedActionsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'propose_watch')
  static const AnalystProfileAllowedActionsEnum proposeWatch =
      _$analystProfileAllowedActionsEnum_proposeWatch;
  @BuiltValueEnumConst(wireName: r'propose_intel_event')
  static const AnalystProfileAllowedActionsEnum proposeIntelEvent =
      _$analystProfileAllowedActionsEnum_proposeIntelEvent;
  @BuiltValueEnumConst(wireName: r'propose_investigation_item')
  static const AnalystProfileAllowedActionsEnum proposeInvestigationItem =
      _$analystProfileAllowedActionsEnum_proposeInvestigationItem;
  @BuiltValueEnumConst(wireName: r'annotate_event')
  static const AnalystProfileAllowedActionsEnum annotateEvent =
      _$analystProfileAllowedActionsEnum_annotateEvent;
  @BuiltValueEnumConst(wireName: r'propose_hypothesis_set')
  static const AnalystProfileAllowedActionsEnum proposeHypothesisSet =
      _$analystProfileAllowedActionsEnum_proposeHypothesisSet;
  @BuiltValueEnumConst(wireName: r'propose_indicator')
  static const AnalystProfileAllowedActionsEnum proposeIndicator =
      _$analystProfileAllowedActionsEnum_proposeIndicator;
  @BuiltValueEnumConst(wireName: r'propose_question')
  static const AnalystProfileAllowedActionsEnum proposeQuestion =
      _$analystProfileAllowedActionsEnum_proposeQuestion;
  @BuiltValueEnumConst(wireName: r'propose_situation_merge')
  static const AnalystProfileAllowedActionsEnum proposeSituationMerge =
      _$analystProfileAllowedActionsEnum_proposeSituationMerge;
  @BuiltValueEnumConst(wireName: r'propose_chronicle')
  static const AnalystProfileAllowedActionsEnum proposeChronicle =
      _$analystProfileAllowedActionsEnum_proposeChronicle;

  static Serializer<AnalystProfileAllowedActionsEnum> get serializer =>
      _$analystProfileAllowedActionsEnumSerializer;

  const AnalystProfileAllowedActionsEnum._(String name) : super(name);

  static BuiltSet<AnalystProfileAllowedActionsEnum> get values =>
      _$analystProfileAllowedActionsEnumValues;
  static AnalystProfileAllowedActionsEnum valueOf(String name) =>
      _$analystProfileAllowedActionsEnumValueOf(name);
}

class AnalystProfileNotifyMinPriorityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const AnalystProfileNotifyMinPriorityEnum low =
      _$analystProfileNotifyMinPriorityEnum_low;
  @BuiltValueEnumConst(wireName: r'normal')
  static const AnalystProfileNotifyMinPriorityEnum normal =
      _$analystProfileNotifyMinPriorityEnum_normal;
  @BuiltValueEnumConst(wireName: r'high')
  static const AnalystProfileNotifyMinPriorityEnum high =
      _$analystProfileNotifyMinPriorityEnum_high;

  static Serializer<AnalystProfileNotifyMinPriorityEnum> get serializer =>
      _$analystProfileNotifyMinPriorityEnumSerializer;

  const AnalystProfileNotifyMinPriorityEnum._(String name) : super(name);

  static BuiltSet<AnalystProfileNotifyMinPriorityEnum> get values =>
      _$analystProfileNotifyMinPriorityEnumValues;
  static AnalystProfileNotifyMinPriorityEnum valueOf(String name) =>
      _$analystProfileNotifyMinPriorityEnumValueOf(name);
}
