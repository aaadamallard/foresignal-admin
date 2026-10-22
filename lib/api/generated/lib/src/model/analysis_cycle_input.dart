//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/analysis_cycle_input_schedule.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/cycle_scope.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_cycle_input.g.dart';

/// Create or replace an analysis cycle
///
/// Properties:
/// * [name]
/// * [cadence]
/// * [schedule]
/// * [scope]
/// * [analystProfileId] - ULID identifier
/// * [roles]
/// * [forecasterProviders] - Provider ids for the forecaster role; default the profile's
/// * [samples]
/// * [maxQuestions] - Default 15 daily, 40 weekly, 60 monthly
/// * [maxTokensPerCycle] - Default 300k daily, 1.2M weekly, 2M monthly
/// * [channelIds]
/// * [notifyMinPriority]
/// * [enabled]
@BuiltValue()
abstract class AnalysisCycleInput
    implements Built<AnalysisCycleInput, AnalysisCycleInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'cadence')
  AnalysisCycleInputCadenceEnum get cadence;
  // enum cadenceEnum {  daily,  weekly,  monthly,  };

  @BuiltValueField(wireName: r'schedule')
  AnalysisCycleInputSchedule get schedule;

  @BuiltValueField(wireName: r'scope')
  CycleScope? get scope;

  /// ULID identifier
  @BuiltValueField(wireName: r'analystProfileId')
  String? get analystProfileId;

  @BuiltValueField(wireName: r'roles')
  BuiltSet<AnalysisCycleInputRolesEnum>? get roles;
  // enum rolesEnum {  analyst,  red-team,  forecaster,  proposer,  };

  /// Provider ids for the forecaster role; default the profile's
  @BuiltValueField(wireName: r'forecasterProviders')
  BuiltList<String>? get forecasterProviders;

  @BuiltValueField(wireName: r'samples')
  int? get samples;

  /// Default 15 daily, 40 weekly, 60 monthly
  @BuiltValueField(wireName: r'maxQuestions')
  int? get maxQuestions;

  /// Default 300k daily, 1.2M weekly, 2M monthly
  @BuiltValueField(wireName: r'maxTokensPerCycle')
  int? get maxTokensPerCycle;

  @BuiltValueField(wireName: r'channelIds')
  BuiltList<String>? get channelIds;

  @BuiltValueField(wireName: r'notifyMinPriority')
  AnalysisCycleInputNotifyMinPriorityEnum? get notifyMinPriority;
  // enum notifyMinPriorityEnum {  low,  normal,  high,  };

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  AnalysisCycleInput._();

  factory AnalysisCycleInput([void updates(AnalysisCycleInputBuilder b)]) =
      _$AnalysisCycleInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisCycleInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisCycleInput> get serializer =>
      _$AnalysisCycleInputSerializer();
}

class _$AnalysisCycleInputSerializer
    implements PrimitiveSerializer<AnalysisCycleInput> {
  @override
  final Iterable<Type> types = const [AnalysisCycleInput, _$AnalysisCycleInput];

  @override
  final String wireName = r'AnalysisCycleInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisCycleInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'cadence';
    yield serializers.serialize(
      object.cadence,
      specifiedType: const FullType(AnalysisCycleInputCadenceEnum),
    );
    yield r'schedule';
    yield serializers.serialize(
      object.schedule,
      specifiedType: const FullType(AnalysisCycleInputSchedule),
    );
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(CycleScope),
      );
    }
    if (object.analystProfileId != null) {
      yield r'analystProfileId';
      yield serializers.serialize(
        object.analystProfileId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.roles != null) {
      yield r'roles';
      yield serializers.serialize(
        object.roles,
        specifiedType:
            const FullType(BuiltSet, [FullType(AnalysisCycleInputRolesEnum)]),
      );
    }
    if (object.forecasterProviders != null) {
      yield r'forecasterProviders';
      yield serializers.serialize(
        object.forecasterProviders,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.samples != null) {
      yield r'samples';
      yield serializers.serialize(
        object.samples,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxQuestions != null) {
      yield r'maxQuestions';
      yield serializers.serialize(
        object.maxQuestions,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxTokensPerCycle != null) {
      yield r'maxTokensPerCycle';
      yield serializers.serialize(
        object.maxTokensPerCycle,
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
        specifiedType: const FullType(AnalysisCycleInputNotifyMinPriorityEnum),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalysisCycleInput object, {
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
    required AnalysisCycleInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'cadence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisCycleInputCadenceEnum),
          ) as AnalysisCycleInputCadenceEnum;
          result.cadence = valueDes;
          break;
        case r'schedule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisCycleInputSchedule),
          ) as AnalysisCycleInputSchedule;
          result.schedule.replace(valueDes);
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CycleScope),
          ) as CycleScope?;
          if (valueDes == null) continue;
          result.scope.replace(valueDes);
          break;
        case r'analystProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.analystProfileId = valueDes;
          break;
        case r'roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltSet, [FullType(AnalysisCycleInputRolesEnum)]),
          ) as BuiltSet<AnalysisCycleInputRolesEnum>?;
          if (valueDes == null) continue;
          result.roles.replace(valueDes);
          break;
        case r'forecasterProviders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.forecasterProviders.replace(valueDes);
          break;
        case r'samples':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.samples = valueDes;
          break;
        case r'maxQuestions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxQuestions = valueDes;
          break;
        case r'maxTokensPerCycle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxTokensPerCycle = valueDes;
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
            specifiedType: const FullType.nullable(
                AnalysisCycleInputNotifyMinPriorityEnum),
          ) as AnalysisCycleInputNotifyMinPriorityEnum?;
          if (valueDes == null) continue;
          result.notifyMinPriority = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalysisCycleInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisCycleInputBuilder();
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

class AnalysisCycleInputCadenceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'daily')
  static const AnalysisCycleInputCadenceEnum daily =
      _$analysisCycleInputCadenceEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const AnalysisCycleInputCadenceEnum weekly =
      _$analysisCycleInputCadenceEnum_weekly;
  @BuiltValueEnumConst(wireName: r'monthly')
  static const AnalysisCycleInputCadenceEnum monthly =
      _$analysisCycleInputCadenceEnum_monthly;

  static Serializer<AnalysisCycleInputCadenceEnum> get serializer =>
      _$analysisCycleInputCadenceEnumSerializer;

  const AnalysisCycleInputCadenceEnum._(String name) : super(name);

  static BuiltSet<AnalysisCycleInputCadenceEnum> get values =>
      _$analysisCycleInputCadenceEnumValues;
  static AnalysisCycleInputCadenceEnum valueOf(String name) =>
      _$analysisCycleInputCadenceEnumValueOf(name);
}

class AnalysisCycleInputRolesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'analyst')
  static const AnalysisCycleInputRolesEnum analyst =
      _$analysisCycleInputRolesEnum_analyst;
  @BuiltValueEnumConst(wireName: r'red-team')
  static const AnalysisCycleInputRolesEnum redTeam =
      _$analysisCycleInputRolesEnum_redTeam;
  @BuiltValueEnumConst(wireName: r'forecaster')
  static const AnalysisCycleInputRolesEnum forecaster =
      _$analysisCycleInputRolesEnum_forecaster;
  @BuiltValueEnumConst(wireName: r'proposer')
  static const AnalysisCycleInputRolesEnum proposer =
      _$analysisCycleInputRolesEnum_proposer;

  static Serializer<AnalysisCycleInputRolesEnum> get serializer =>
      _$analysisCycleInputRolesEnumSerializer;

  const AnalysisCycleInputRolesEnum._(String name) : super(name);

  static BuiltSet<AnalysisCycleInputRolesEnum> get values =>
      _$analysisCycleInputRolesEnumValues;
  static AnalysisCycleInputRolesEnum valueOf(String name) =>
      _$analysisCycleInputRolesEnumValueOf(name);
}

class AnalysisCycleInputNotifyMinPriorityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const AnalysisCycleInputNotifyMinPriorityEnum low =
      _$analysisCycleInputNotifyMinPriorityEnum_low;
  @BuiltValueEnumConst(wireName: r'normal')
  static const AnalysisCycleInputNotifyMinPriorityEnum normal =
      _$analysisCycleInputNotifyMinPriorityEnum_normal;
  @BuiltValueEnumConst(wireName: r'high')
  static const AnalysisCycleInputNotifyMinPriorityEnum high =
      _$analysisCycleInputNotifyMinPriorityEnum_high;

  static Serializer<AnalysisCycleInputNotifyMinPriorityEnum> get serializer =>
      _$analysisCycleInputNotifyMinPriorityEnumSerializer;

  const AnalysisCycleInputNotifyMinPriorityEnum._(String name) : super(name);

  static BuiltSet<AnalysisCycleInputNotifyMinPriorityEnum> get values =>
      _$analysisCycleInputNotifyMinPriorityEnumValues;
  static AnalysisCycleInputNotifyMinPriorityEnum valueOf(String name) =>
      _$analysisCycleInputNotifyMinPriorityEnumValueOf(name);
}
