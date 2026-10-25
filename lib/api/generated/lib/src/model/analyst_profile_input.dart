//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/analyst_profile_schedule.dart';
import 'package:foresignal_api/src/model/analyst_profile_scope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_profile_input.g.dart';

/// Analyst profile create or replace body
///
/// Properties:
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
@BuiltValue()
abstract class AnalystProfileInput
    implements Built<AnalystProfileInput, AnalystProfileInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'schedule')
  AnalystProfileSchedule? get schedule;

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
  AnalystProfileInputEffortEnum? get effort;
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
  bool? get allowActions;

  /// Extensible (128 adds proposal types)
  @BuiltValueField(wireName: r'allowedActions')
  BuiltList<AnalystProfileInputAllowedActionsEnum>? get allowedActions;
  // enum allowedActionsEnum {  propose_watch,  propose_intel_event,  propose_investigation_item,  annotate_event,  propose_hypothesis_set,  propose_indicator,  propose_question,  propose_situation_merge,  propose_chronicle,  };

  @BuiltValueField(wireName: r'maxAutoActionsPerDay')
  int? get maxAutoActionsPerDay;

  @BuiltValueField(wireName: r'channelIds')
  BuiltList<String>? get channelIds;

  @BuiltValueField(wireName: r'notifyMinPriority')
  AnalystProfileInputNotifyMinPriorityEnum? get notifyMinPriority;
  // enum notifyMinPriorityEnum {  low,  normal,  high,  };

  AnalystProfileInput._();

  factory AnalystProfileInput([void updates(AnalystProfileInputBuilder b)]) =
      _$AnalystProfileInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystProfileInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystProfileInput> get serializer =>
      _$AnalystProfileInputSerializer();
}

class _$AnalystProfileInputSerializer
    implements PrimitiveSerializer<AnalystProfileInput> {
  @override
  final Iterable<Type> types = const [
    AnalystProfileInput,
    _$AnalystProfileInput,
  ];

  @override
  final String wireName = r'AnalystProfileInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystProfileInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.schedule != null) {
      yield r'schedule';
      yield serializers.serialize(
        object.schedule,
        specifiedType: const FullType(AnalystProfileSchedule),
      );
    }
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
    if (object.effort != null) {
      yield r'effort';
      yield serializers.serialize(
        object.effort,
        specifiedType: const FullType(AnalystProfileInputEffortEnum),
      );
    }
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
    if (object.allowActions != null) {
      yield r'allowActions';
      yield serializers.serialize(
        object.allowActions,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowedActions != null) {
      yield r'allowedActions';
      yield serializers.serialize(
        object.allowedActions,
        specifiedType: const FullType(BuiltList, [
          FullType(AnalystProfileInputAllowedActionsEnum),
        ]),
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
        specifiedType: const FullType(AnalystProfileInputNotifyMinPriorityEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystProfileInput object, {
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
    required AnalystProfileInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'schedule':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AnalystProfileSchedule,
                    ),
                  )
                  as AnalystProfileSchedule?;
          if (valueDes == null) continue;
          result.schedule.replace(valueDes);
          break;
        case r'scope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AnalystProfileScope),
                  )
                  as AnalystProfileScope?;
          if (valueDes == null) continue;
          result.scope.replace(valueDes);
          break;
        case r'lookback':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lookback = valueDes;
          break;
        case r'instructions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.instructions = valueDes;
          break;
        case r'providerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.providerId = valueDes;
          break;
        case r'effort':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AnalystProfileInputEffortEnum,
                    ),
                  )
                  as AnalystProfileInputEffortEnum?;
          if (valueDes == null) continue;
          result.effort = valueDes;
          break;
        case r'maxRunsPerDay':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxRunsPerDay = valueDes;
          break;
        case r'maxTokensPerRun':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxTokensPerRun = valueDes;
          break;
        case r'maxToolCalls':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxToolCalls = valueDes;
          break;
        case r'maxWallSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxWallSeconds = valueDes;
          break;
        case r'allowActions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.allowActions = valueDes;
          break;
        case r'allowedActions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AnalystProfileInputAllowedActionsEnum),
                    ]),
                  )
                  as BuiltList<AnalystProfileInputAllowedActionsEnum>?;
          if (valueDes == null) continue;
          result.allowedActions.replace(valueDes);
          break;
        case r'maxAutoActionsPerDay':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxAutoActionsPerDay = valueDes;
          break;
        case r'channelIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.channelIds.replace(valueDes);
          break;
        case r'notifyMinPriority':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AnalystProfileInputNotifyMinPriorityEnum,
                    ),
                  )
                  as AnalystProfileInputNotifyMinPriorityEnum?;
          if (valueDes == null) continue;
          result.notifyMinPriority = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystProfileInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystProfileInputBuilder();
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

class AnalystProfileInputEffortEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const AnalystProfileInputEffortEnum low =
      _$analystProfileInputEffortEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const AnalystProfileInputEffortEnum medium =
      _$analystProfileInputEffortEnum_medium;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AnalystProfileInputEffortEnum unknownDefaultOpenApi =
      _$analystProfileInputEffortEnum_unknownDefaultOpenApi;

  static Serializer<AnalystProfileInputEffortEnum> get serializer =>
      _$analystProfileInputEffortEnumSerializer;

  const AnalystProfileInputEffortEnum._(String name) : super(name);

  static BuiltSet<AnalystProfileInputEffortEnum> get values =>
      _$analystProfileInputEffortEnumValues;
  static AnalystProfileInputEffortEnum valueOf(String name) =>
      _$analystProfileInputEffortEnumValueOf(name);
}

class AnalystProfileInputAllowedActionsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'propose_watch')
  static const AnalystProfileInputAllowedActionsEnum proposeWatch =
      _$analystProfileInputAllowedActionsEnum_proposeWatch;
  @BuiltValueEnumConst(wireName: r'propose_intel_event')
  static const AnalystProfileInputAllowedActionsEnum proposeIntelEvent =
      _$analystProfileInputAllowedActionsEnum_proposeIntelEvent;
  @BuiltValueEnumConst(wireName: r'propose_investigation_item')
  static const AnalystProfileInputAllowedActionsEnum proposeInvestigationItem =
      _$analystProfileInputAllowedActionsEnum_proposeInvestigationItem;
  @BuiltValueEnumConst(wireName: r'annotate_event')
  static const AnalystProfileInputAllowedActionsEnum annotateEvent =
      _$analystProfileInputAllowedActionsEnum_annotateEvent;
  @BuiltValueEnumConst(wireName: r'propose_hypothesis_set')
  static const AnalystProfileInputAllowedActionsEnum proposeHypothesisSet =
      _$analystProfileInputAllowedActionsEnum_proposeHypothesisSet;
  @BuiltValueEnumConst(wireName: r'propose_indicator')
  static const AnalystProfileInputAllowedActionsEnum proposeIndicator =
      _$analystProfileInputAllowedActionsEnum_proposeIndicator;
  @BuiltValueEnumConst(wireName: r'propose_question')
  static const AnalystProfileInputAllowedActionsEnum proposeQuestion =
      _$analystProfileInputAllowedActionsEnum_proposeQuestion;
  @BuiltValueEnumConst(wireName: r'propose_situation_merge')
  static const AnalystProfileInputAllowedActionsEnum proposeSituationMerge =
      _$analystProfileInputAllowedActionsEnum_proposeSituationMerge;
  @BuiltValueEnumConst(wireName: r'propose_chronicle')
  static const AnalystProfileInputAllowedActionsEnum proposeChronicle =
      _$analystProfileInputAllowedActionsEnum_proposeChronicle;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AnalystProfileInputAllowedActionsEnum unknownDefaultOpenApi =
      _$analystProfileInputAllowedActionsEnum_unknownDefaultOpenApi;

  static Serializer<AnalystProfileInputAllowedActionsEnum> get serializer =>
      _$analystProfileInputAllowedActionsEnumSerializer;

  const AnalystProfileInputAllowedActionsEnum._(String name) : super(name);

  static BuiltSet<AnalystProfileInputAllowedActionsEnum> get values =>
      _$analystProfileInputAllowedActionsEnumValues;
  static AnalystProfileInputAllowedActionsEnum valueOf(String name) =>
      _$analystProfileInputAllowedActionsEnumValueOf(name);
}

class AnalystProfileInputNotifyMinPriorityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const AnalystProfileInputNotifyMinPriorityEnum low =
      _$analystProfileInputNotifyMinPriorityEnum_low;
  @BuiltValueEnumConst(wireName: r'normal')
  static const AnalystProfileInputNotifyMinPriorityEnum normal =
      _$analystProfileInputNotifyMinPriorityEnum_normal;
  @BuiltValueEnumConst(wireName: r'high')
  static const AnalystProfileInputNotifyMinPriorityEnum high =
      _$analystProfileInputNotifyMinPriorityEnum_high;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AnalystProfileInputNotifyMinPriorityEnum unknownDefaultOpenApi =
      _$analystProfileInputNotifyMinPriorityEnum_unknownDefaultOpenApi;

  static Serializer<AnalystProfileInputNotifyMinPriorityEnum> get serializer =>
      _$analystProfileInputNotifyMinPriorityEnumSerializer;

  const AnalystProfileInputNotifyMinPriorityEnum._(String name) : super(name);

  static BuiltSet<AnalystProfileInputNotifyMinPriorityEnum> get values =>
      _$analystProfileInputNotifyMinPriorityEnumValues;
  static AnalystProfileInputNotifyMinPriorityEnum valueOf(String name) =>
      _$analystProfileInputNotifyMinPriorityEnumValueOf(name);
}
