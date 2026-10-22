//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/analysis_cycle_input_schedule.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/cycle_scope.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_cycle.g.dart';

/// A daily, weekly or monthly analysis cycle
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
/// * [id] - ULID identifier
/// * [builtIn]
/// * [nextRunAt]
/// * [lastRunId] - ULID identifier
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class AnalysisCycle
    implements Built<AnalysisCycle, AnalysisCycleBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'cadence')
  AnalysisCycleCadenceEnum get cadence;
  // enum cadenceEnum {  daily,  weekly,  monthly,  };

  @BuiltValueField(wireName: r'schedule')
  AnalysisCycleInputSchedule get schedule;

  @BuiltValueField(wireName: r'scope')
  CycleScope get scope;

  /// ULID identifier
  @BuiltValueField(wireName: r'analystProfileId')
  String? get analystProfileId;

  @BuiltValueField(wireName: r'roles')
  BuiltSet<AnalysisCycleRolesEnum> get roles;
  // enum rolesEnum {  analyst,  red-team,  forecaster,  proposer,  };

  /// Provider ids for the forecaster role; default the profile's
  @BuiltValueField(wireName: r'forecasterProviders')
  BuiltList<String>? get forecasterProviders;

  @BuiltValueField(wireName: r'samples')
  int get samples;

  /// Default 15 daily, 40 weekly, 60 monthly
  @BuiltValueField(wireName: r'maxQuestions')
  int? get maxQuestions;

  /// Default 300k daily, 1.2M weekly, 2M monthly
  @BuiltValueField(wireName: r'maxTokensPerCycle')
  int? get maxTokensPerCycle;

  @BuiltValueField(wireName: r'channelIds')
  BuiltList<String>? get channelIds;

  @BuiltValueField(wireName: r'notifyMinPriority')
  AnalysisCycleNotifyMinPriorityEnum? get notifyMinPriority;
  // enum notifyMinPriorityEnum {  low,  normal,  high,  };

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'builtIn')
  bool? get builtIn;

  @BuiltValueField(wireName: r'nextRunAt')
  DateTime? get nextRunAt;

  /// ULID identifier
  @BuiltValueField(wireName: r'lastRunId')
  String? get lastRunId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  AnalysisCycle._();

  factory AnalysisCycle([void updates(AnalysisCycleBuilder b)]) =
      _$AnalysisCycle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisCycleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisCycle> get serializer =>
      _$AnalysisCycleSerializer();
}

class _$AnalysisCycleSerializer implements PrimitiveSerializer<AnalysisCycle> {
  @override
  final Iterable<Type> types = const [AnalysisCycle, _$AnalysisCycle];

  @override
  final String wireName = r'AnalysisCycle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisCycle object, {
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
      specifiedType: const FullType(AnalysisCycleCadenceEnum),
    );
    yield r'schedule';
    yield serializers.serialize(
      object.schedule,
      specifiedType: const FullType(AnalysisCycleInputSchedule),
    );
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(CycleScope),
    );
    if (object.analystProfileId != null) {
      yield r'analystProfileId';
      yield serializers.serialize(
        object.analystProfileId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'roles';
    yield serializers.serialize(
      object.roles,
      specifiedType:
          const FullType(BuiltSet, [FullType(AnalysisCycleRolesEnum)]),
    );
    if (object.forecasterProviders != null) {
      yield r'forecasterProviders';
      yield serializers.serialize(
        object.forecasterProviders,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'samples';
    yield serializers.serialize(
      object.samples,
      specifiedType: const FullType(int),
    );
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
        specifiedType: const FullType(AnalysisCycleNotifyMinPriorityEnum),
      );
    }
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.builtIn != null) {
      yield r'builtIn';
      yield serializers.serialize(
        object.builtIn,
        specifiedType: const FullType(bool),
      );
    }
    if (object.nextRunAt != null) {
      yield r'nextRunAt';
      yield serializers.serialize(
        object.nextRunAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastRunId != null) {
      yield r'lastRunId';
      yield serializers.serialize(
        object.lastRunId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalysisCycle object, {
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
    required AnalysisCycleBuilder result,
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
            specifiedType: const FullType(AnalysisCycleCadenceEnum),
          ) as AnalysisCycleCadenceEnum;
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
            specifiedType: const FullType(CycleScope),
          ) as CycleScope;
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
            specifiedType:
                const FullType(BuiltSet, [FullType(AnalysisCycleRolesEnum)]),
          ) as BuiltSet<AnalysisCycleRolesEnum>;
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
            specifiedType: const FullType(int),
          ) as int;
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
            specifiedType:
                const FullType.nullable(AnalysisCycleNotifyMinPriorityEnum),
          ) as AnalysisCycleNotifyMinPriorityEnum?;
          if (valueDes == null) continue;
          result.notifyMinPriority = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'builtIn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.builtIn = valueDes;
          break;
        case r'nextRunAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.nextRunAt = valueDes;
          break;
        case r'lastRunId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastRunId = valueDes;
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
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
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
  AnalysisCycle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisCycleBuilder();
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

class AnalysisCycleCadenceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'daily')
  static const AnalysisCycleCadenceEnum daily =
      _$analysisCycleCadenceEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const AnalysisCycleCadenceEnum weekly =
      _$analysisCycleCadenceEnum_weekly;
  @BuiltValueEnumConst(wireName: r'monthly')
  static const AnalysisCycleCadenceEnum monthly =
      _$analysisCycleCadenceEnum_monthly;

  static Serializer<AnalysisCycleCadenceEnum> get serializer =>
      _$analysisCycleCadenceEnumSerializer;

  const AnalysisCycleCadenceEnum._(String name) : super(name);

  static BuiltSet<AnalysisCycleCadenceEnum> get values =>
      _$analysisCycleCadenceEnumValues;
  static AnalysisCycleCadenceEnum valueOf(String name) =>
      _$analysisCycleCadenceEnumValueOf(name);
}

class AnalysisCycleRolesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'analyst')
  static const AnalysisCycleRolesEnum analyst =
      _$analysisCycleRolesEnum_analyst;
  @BuiltValueEnumConst(wireName: r'red-team')
  static const AnalysisCycleRolesEnum redTeam =
      _$analysisCycleRolesEnum_redTeam;
  @BuiltValueEnumConst(wireName: r'forecaster')
  static const AnalysisCycleRolesEnum forecaster =
      _$analysisCycleRolesEnum_forecaster;
  @BuiltValueEnumConst(wireName: r'proposer')
  static const AnalysisCycleRolesEnum proposer =
      _$analysisCycleRolesEnum_proposer;

  static Serializer<AnalysisCycleRolesEnum> get serializer =>
      _$analysisCycleRolesEnumSerializer;

  const AnalysisCycleRolesEnum._(String name) : super(name);

  static BuiltSet<AnalysisCycleRolesEnum> get values =>
      _$analysisCycleRolesEnumValues;
  static AnalysisCycleRolesEnum valueOf(String name) =>
      _$analysisCycleRolesEnumValueOf(name);
}

class AnalysisCycleNotifyMinPriorityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const AnalysisCycleNotifyMinPriorityEnum low =
      _$analysisCycleNotifyMinPriorityEnum_low;
  @BuiltValueEnumConst(wireName: r'normal')
  static const AnalysisCycleNotifyMinPriorityEnum normal =
      _$analysisCycleNotifyMinPriorityEnum_normal;
  @BuiltValueEnumConst(wireName: r'high')
  static const AnalysisCycleNotifyMinPriorityEnum high =
      _$analysisCycleNotifyMinPriorityEnum_high;

  static Serializer<AnalysisCycleNotifyMinPriorityEnum> get serializer =>
      _$analysisCycleNotifyMinPriorityEnumSerializer;

  const AnalysisCycleNotifyMinPriorityEnum._(String name) : super(name);

  static BuiltSet<AnalysisCycleNotifyMinPriorityEnum> get values =>
      _$analysisCycleNotifyMinPriorityEnumValues;
  static AnalysisCycleNotifyMinPriorityEnum valueOf(String name) =>
      _$analysisCycleNotifyMinPriorityEnumValueOf(name);
}
