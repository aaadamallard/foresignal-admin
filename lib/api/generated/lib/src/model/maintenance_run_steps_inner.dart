//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'maintenance_run_steps_inner.g.dart';

/// One maintenance step
///
/// Properties:
/// * [step]
/// * [status]
/// * [startedAt]
/// * [finishedAt]
/// * [jobId]
/// * [result]
/// * [error]
@BuiltValue()
abstract class MaintenanceRunStepsInner
    implements
        Built<MaintenanceRunStepsInner, MaintenanceRunStepsInnerBuilder> {
  @BuiltValueField(wireName: r'step')
  MaintenanceRunStepsInnerStepEnum get step;
  // enum stepEnum {  observability-reestimation,  benchmark-historical,  base-rate-refresh,  precursor-retest,  platt-refit,  ensemble-weights,  extremizing-check,  index-weight-fit,  series-method-reselection,  hypothesis-archival-proposals,  llm-retrospective-evaluation,  };

  @BuiltValueField(wireName: r'status')
  MaintenanceRunStepsInnerStatusEnum get status;
  // enum statusEnum {  pending,  running,  done,  failed,  skipped,  };

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'jobId')
  String? get jobId;

  @BuiltValueField(wireName: r'result')
  JsonObject? get result;

  @BuiltValueField(wireName: r'error')
  String? get error;

  MaintenanceRunStepsInner._();

  factory MaintenanceRunStepsInner([
    void updates(MaintenanceRunStepsInnerBuilder b),
  ]) = _$MaintenanceRunStepsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MaintenanceRunStepsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MaintenanceRunStepsInner> get serializer =>
      _$MaintenanceRunStepsInnerSerializer();
}

class _$MaintenanceRunStepsInnerSerializer
    implements PrimitiveSerializer<MaintenanceRunStepsInner> {
  @override
  final Iterable<Type> types = const [
    MaintenanceRunStepsInner,
    _$MaintenanceRunStepsInner,
  ];

  @override
  final String wireName = r'MaintenanceRunStepsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MaintenanceRunStepsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'step';
    yield serializers.serialize(
      object.step,
      specifiedType: const FullType(MaintenanceRunStepsInnerStepEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(MaintenanceRunStepsInnerStatusEnum),
    );
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.jobId != null) {
      yield r'jobId';
      yield serializers.serialize(
        object.jobId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MaintenanceRunStepsInner object, {
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
    required MaintenanceRunStepsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'step':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      MaintenanceRunStepsInnerStepEnum,
                    ),
                  )
                  as MaintenanceRunStepsInnerStepEnum;
          result.step = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      MaintenanceRunStepsInnerStatusEnum,
                    ),
                  )
                  as MaintenanceRunStepsInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
          break;
        case r'jobId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.jobId = valueDes;
          break;
        case r'result':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.result = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MaintenanceRunStepsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaintenanceRunStepsInnerBuilder();
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

class MaintenanceRunStepsInnerStepEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'observability-reestimation')
  static const MaintenanceRunStepsInnerStepEnum observabilityReestimation =
      _$maintenanceRunStepsInnerStepEnum_observabilityReestimation;
  @BuiltValueEnumConst(wireName: r'benchmark-historical')
  static const MaintenanceRunStepsInnerStepEnum benchmarkHistorical =
      _$maintenanceRunStepsInnerStepEnum_benchmarkHistorical;
  @BuiltValueEnumConst(wireName: r'base-rate-refresh')
  static const MaintenanceRunStepsInnerStepEnum baseRateRefresh =
      _$maintenanceRunStepsInnerStepEnum_baseRateRefresh;
  @BuiltValueEnumConst(wireName: r'precursor-retest')
  static const MaintenanceRunStepsInnerStepEnum precursorRetest =
      _$maintenanceRunStepsInnerStepEnum_precursorRetest;
  @BuiltValueEnumConst(wireName: r'platt-refit')
  static const MaintenanceRunStepsInnerStepEnum plattRefit =
      _$maintenanceRunStepsInnerStepEnum_plattRefit;
  @BuiltValueEnumConst(wireName: r'ensemble-weights')
  static const MaintenanceRunStepsInnerStepEnum ensembleWeights =
      _$maintenanceRunStepsInnerStepEnum_ensembleWeights;
  @BuiltValueEnumConst(wireName: r'extremizing-check')
  static const MaintenanceRunStepsInnerStepEnum extremizingCheck =
      _$maintenanceRunStepsInnerStepEnum_extremizingCheck;
  @BuiltValueEnumConst(wireName: r'index-weight-fit')
  static const MaintenanceRunStepsInnerStepEnum indexWeightFit =
      _$maintenanceRunStepsInnerStepEnum_indexWeightFit;
  @BuiltValueEnumConst(wireName: r'series-method-reselection')
  static const MaintenanceRunStepsInnerStepEnum seriesMethodReselection =
      _$maintenanceRunStepsInnerStepEnum_seriesMethodReselection;
  @BuiltValueEnumConst(wireName: r'hypothesis-archival-proposals')
  static const MaintenanceRunStepsInnerStepEnum hypothesisArchivalProposals =
      _$maintenanceRunStepsInnerStepEnum_hypothesisArchivalProposals;
  @BuiltValueEnumConst(wireName: r'llm-retrospective-evaluation')
  static const MaintenanceRunStepsInnerStepEnum llmRetrospectiveEvaluation =
      _$maintenanceRunStepsInnerStepEnum_llmRetrospectiveEvaluation;

  static Serializer<MaintenanceRunStepsInnerStepEnum> get serializer =>
      _$maintenanceRunStepsInnerStepEnumSerializer;

  const MaintenanceRunStepsInnerStepEnum._(String name) : super(name);

  static BuiltSet<MaintenanceRunStepsInnerStepEnum> get values =>
      _$maintenanceRunStepsInnerStepEnumValues;
  static MaintenanceRunStepsInnerStepEnum valueOf(String name) =>
      _$maintenanceRunStepsInnerStepEnumValueOf(name);
}

class MaintenanceRunStepsInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const MaintenanceRunStepsInnerStatusEnum pending =
      _$maintenanceRunStepsInnerStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'running')
  static const MaintenanceRunStepsInnerStatusEnum running =
      _$maintenanceRunStepsInnerStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const MaintenanceRunStepsInnerStatusEnum done =
      _$maintenanceRunStepsInnerStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'failed')
  static const MaintenanceRunStepsInnerStatusEnum failed =
      _$maintenanceRunStepsInnerStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'skipped')
  static const MaintenanceRunStepsInnerStatusEnum skipped =
      _$maintenanceRunStepsInnerStatusEnum_skipped;

  static Serializer<MaintenanceRunStepsInnerStatusEnum> get serializer =>
      _$maintenanceRunStepsInnerStatusEnumSerializer;

  const MaintenanceRunStepsInnerStatusEnum._(String name) : super(name);

  static BuiltSet<MaintenanceRunStepsInnerStatusEnum> get values =>
      _$maintenanceRunStepsInnerStatusEnumValues;
  static MaintenanceRunStepsInnerStatusEnum valueOf(String name) =>
      _$maintenanceRunStepsInnerStatusEnumValueOf(name);
}
