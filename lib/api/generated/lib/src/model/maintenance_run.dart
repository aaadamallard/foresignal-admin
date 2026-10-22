//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/maintenance_run_steps_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'maintenance_run.g.dart';

/// Monthly maintenance: ordered jobs, each outcome recorded without stopping later steps
///
/// Properties:
/// * [id] - ULID identifier
/// * [trigger] - monthly-cycle (the monthly cycle run), manual (runAnalysisMaintenance) or schedule (the 1st at 03:30 UTC when no monthly cycle is enabled)
/// * [status]
/// * [startedAt]
/// * [finishedAt]
/// * [steps]
@BuiltValue()
abstract class MaintenanceRun
    implements Built<MaintenanceRun, MaintenanceRunBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// monthly-cycle (the monthly cycle run), manual (runAnalysisMaintenance) or schedule (the 1st at 03:30 UTC when no monthly cycle is enabled)
  @BuiltValueField(wireName: r'trigger')
  MaintenanceRunTriggerEnum get trigger;
  // enum triggerEnum {  monthly-cycle,  manual,  schedule,  };

  @BuiltValueField(wireName: r'status')
  MaintenanceRunStatusEnum get status;
  // enum statusEnum {  running,  done,  partial,  failed,  };

  @BuiltValueField(wireName: r'startedAt')
  DateTime get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'steps')
  BuiltList<MaintenanceRunStepsInner> get steps;

  MaintenanceRun._();

  factory MaintenanceRun([void updates(MaintenanceRunBuilder b)]) =
      _$MaintenanceRun;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MaintenanceRunBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MaintenanceRun> get serializer =>
      _$MaintenanceRunSerializer();
}

class _$MaintenanceRunSerializer
    implements PrimitiveSerializer<MaintenanceRun> {
  @override
  final Iterable<Type> types = const [MaintenanceRun, _$MaintenanceRun];

  @override
  final String wireName = r'MaintenanceRun';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MaintenanceRun object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'trigger';
    yield serializers.serialize(
      object.trigger,
      specifiedType: const FullType(MaintenanceRunTriggerEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(MaintenanceRunStatusEnum),
    );
    yield r'startedAt';
    yield serializers.serialize(
      object.startedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'steps';
    yield serializers.serialize(
      object.steps,
      specifiedType:
          const FullType(BuiltList, [FullType(MaintenanceRunStepsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MaintenanceRun object, {
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
    required MaintenanceRunBuilder result,
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
        case r'trigger':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MaintenanceRunTriggerEnum),
          ) as MaintenanceRunTriggerEnum;
          result.trigger = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MaintenanceRunStatusEnum),
          ) as MaintenanceRunStatusEnum;
          result.status = valueDes;
          break;
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
          break;
        case r'steps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(MaintenanceRunStepsInner)]),
          ) as BuiltList<MaintenanceRunStepsInner>;
          result.steps.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MaintenanceRun deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaintenanceRunBuilder();
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

/// monthly-cycle (the monthly cycle run), manual (runAnalysisMaintenance) or schedule (the 1st at 03:30 UTC when no monthly cycle is enabled)
class MaintenanceRunTriggerEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'monthly-cycle')
  static const MaintenanceRunTriggerEnum monthlyCycle =
      _$maintenanceRunTriggerEnum_monthlyCycle;
  @BuiltValueEnumConst(wireName: r'manual')
  static const MaintenanceRunTriggerEnum manual =
      _$maintenanceRunTriggerEnum_manual;
  @BuiltValueEnumConst(wireName: r'schedule')
  static const MaintenanceRunTriggerEnum schedule =
      _$maintenanceRunTriggerEnum_schedule;

  static Serializer<MaintenanceRunTriggerEnum> get serializer =>
      _$maintenanceRunTriggerEnumSerializer;

  const MaintenanceRunTriggerEnum._(String name) : super(name);

  static BuiltSet<MaintenanceRunTriggerEnum> get values =>
      _$maintenanceRunTriggerEnumValues;
  static MaintenanceRunTriggerEnum valueOf(String name) =>
      _$maintenanceRunTriggerEnumValueOf(name);
}

class MaintenanceRunStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'running')
  static const MaintenanceRunStatusEnum running =
      _$maintenanceRunStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const MaintenanceRunStatusEnum done = _$maintenanceRunStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'partial')
  static const MaintenanceRunStatusEnum partial =
      _$maintenanceRunStatusEnum_partial;
  @BuiltValueEnumConst(wireName: r'failed')
  static const MaintenanceRunStatusEnum failed =
      _$maintenanceRunStatusEnum_failed;

  static Serializer<MaintenanceRunStatusEnum> get serializer =>
      _$maintenanceRunStatusEnumSerializer;

  const MaintenanceRunStatusEnum._(String name) : super(name);

  static BuiltSet<MaintenanceRunStatusEnum> get values =>
      _$maintenanceRunStatusEnumValues;
  static MaintenanceRunStatusEnum valueOf(String name) =>
      _$maintenanceRunStatusEnumValueOf(name);
}
