//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/benchmark_component_result_thresholds_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_component_result_scenarios_inner.g.dart';

/// Per-scenario (or per-case) result
///
/// Properties:
/// * [scenario] - Synthetic scenario (`bench-scenarios` 1.0.0) or `historical` for a corpus case
/// * [caseId] - ULID identifier
/// * [seed]
/// * [status] - Result against the documented thresholds
/// * [metrics] - Named metrics: `fdr`, `falseAlarmRate`, `recall`, `precision`, `delayMedianHours`, `delayP90Hours`, `correctUnknownShare`, `duplicateInflation`, `linkingPrecision`, `linkingRecall`, `spuriousMerges`, `falseValidationRate`, `lagRecoveredShare`, `rateRecoveredShare`, `brier`, `logScore`, `reliabilityMaxDeviation`, `skill`, …
/// * [thresholds]
/// * [truth] - Planted truth record (times, sizes, lags, groups) or case expectations
/// * [notes]
@BuiltValue()
abstract class BenchmarkComponentResultScenariosInner
    implements
        Built<BenchmarkComponentResultScenariosInner,
            BenchmarkComponentResultScenariosInnerBuilder> {
  /// Synthetic scenario (`bench-scenarios` 1.0.0) or `historical` for a corpus case
  @BuiltValueField(wireName: r'scenario')
  BenchmarkComponentResultScenariosInnerScenarioEnum get scenario;
  // enum scenarioEnum {  null-seasonal,  step-change,  spike,  coverage-outage,  duplicate-echo,  late-revision,  common-driver,  true-precursor,  base-rate-drift,  pre-event-move,  historical,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'caseId')
  String? get caseId;

  @BuiltValueField(wireName: r'seed')
  int? get seed;

  /// Result against the documented thresholds
  @BuiltValueField(wireName: r'status')
  BenchmarkComponentResultScenariosInnerStatusEnum get status;
  // enum statusEnum {  pass,  warn,  fail,  };

  /// Named metrics: `fdr`, `falseAlarmRate`, `recall`, `precision`, `delayMedianHours`, `delayP90Hours`, `correctUnknownShare`, `duplicateInflation`, `linkingPrecision`, `linkingRecall`, `spuriousMerges`, `falseValidationRate`, `lagRecoveredShare`, `rateRecoveredShare`, `brier`, `logScore`, `reliabilityMaxDeviation`, `skill`, …
  @BuiltValueField(wireName: r'metrics')
  BuiltMap<String, num?> get metrics;

  @BuiltValueField(wireName: r'thresholds')
  BuiltList<BenchmarkComponentResultThresholdsInner>? get thresholds;

  /// Planted truth record (times, sizes, lags, groups) or case expectations
  @BuiltValueField(wireName: r'truth')
  BuiltMap<String, JsonObject?>? get truth;

  @BuiltValueField(wireName: r'notes')
  BuiltList<String>? get notes;

  BenchmarkComponentResultScenariosInner._();

  factory BenchmarkComponentResultScenariosInner(
          [void updates(BenchmarkComponentResultScenariosInnerBuilder b)]) =
      _$BenchmarkComponentResultScenariosInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkComponentResultScenariosInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkComponentResultScenariosInner> get serializer =>
      _$BenchmarkComponentResultScenariosInnerSerializer();
}

class _$BenchmarkComponentResultScenariosInnerSerializer
    implements PrimitiveSerializer<BenchmarkComponentResultScenariosInner> {
  @override
  final Iterable<Type> types = const [
    BenchmarkComponentResultScenariosInner,
    _$BenchmarkComponentResultScenariosInner
  ];

  @override
  final String wireName = r'BenchmarkComponentResultScenariosInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkComponentResultScenariosInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'scenario';
    yield serializers.serialize(
      object.scenario,
      specifiedType:
          const FullType(BenchmarkComponentResultScenariosInnerScenarioEnum),
    );
    if (object.caseId != null) {
      yield r'caseId';
      yield serializers.serialize(
        object.caseId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seed != null) {
      yield r'seed';
      yield serializers.serialize(
        object.seed,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType:
          const FullType(BenchmarkComponentResultScenariosInnerStatusEnum),
    );
    yield r'metrics';
    yield serializers.serialize(
      object.metrics,
      specifiedType:
          const FullType(BuiltMap, [FullType(String), FullType.nullable(num)]),
    );
    if (object.thresholds != null) {
      yield r'thresholds';
      yield serializers.serialize(
        object.thresholds,
        specifiedType: const FullType(
            BuiltList, [FullType(BenchmarkComponentResultThresholdsInner)]),
      );
    }
    if (object.truth != null) {
      yield r'truth';
      yield serializers.serialize(
        object.truth,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkComponentResultScenariosInner object, {
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
    required BenchmarkComponentResultScenariosInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'scenario':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BenchmarkComponentResultScenariosInnerScenarioEnum),
          ) as BenchmarkComponentResultScenariosInnerScenarioEnum;
          result.scenario = valueDes;
          break;
        case r'caseId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.caseId = valueDes;
          break;
        case r'seed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.seed = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BenchmarkComponentResultScenariosInnerStatusEnum),
          ) as BenchmarkComponentResultScenariosInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'metrics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(num)]),
          ) as BuiltMap<String, num?>;
          result.metrics.replace(valueDes);
          break;
        case r'thresholds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(BenchmarkComponentResultThresholdsInner)]),
          ) as BuiltList<BenchmarkComponentResultThresholdsInner>?;
          if (valueDes == null) continue;
          result.thresholds.replace(valueDes);
          break;
        case r'truth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.truth.replace(valueDes);
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.notes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkComponentResultScenariosInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkComponentResultScenariosInnerBuilder();
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

/// Synthetic scenario (`bench-scenarios` 1.0.0) or `historical` for a corpus case
class BenchmarkComponentResultScenariosInnerScenarioEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'null-seasonal')
  static const BenchmarkComponentResultScenariosInnerScenarioEnum nullSeasonal =
      _$benchmarkComponentResultScenariosInnerScenarioEnum_nullSeasonal;
  @BuiltValueEnumConst(wireName: r'step-change')
  static const BenchmarkComponentResultScenariosInnerScenarioEnum stepChange =
      _$benchmarkComponentResultScenariosInnerScenarioEnum_stepChange;
  @BuiltValueEnumConst(wireName: r'spike')
  static const BenchmarkComponentResultScenariosInnerScenarioEnum spike =
      _$benchmarkComponentResultScenariosInnerScenarioEnum_spike;
  @BuiltValueEnumConst(wireName: r'coverage-outage')
  static const BenchmarkComponentResultScenariosInnerScenarioEnum
      coverageOutage =
      _$benchmarkComponentResultScenariosInnerScenarioEnum_coverageOutage;
  @BuiltValueEnumConst(wireName: r'duplicate-echo')
  static const BenchmarkComponentResultScenariosInnerScenarioEnum
      duplicateEcho =
      _$benchmarkComponentResultScenariosInnerScenarioEnum_duplicateEcho;
  @BuiltValueEnumConst(wireName: r'late-revision')
  static const BenchmarkComponentResultScenariosInnerScenarioEnum lateRevision =
      _$benchmarkComponentResultScenariosInnerScenarioEnum_lateRevision;
  @BuiltValueEnumConst(wireName: r'common-driver')
  static const BenchmarkComponentResultScenariosInnerScenarioEnum commonDriver =
      _$benchmarkComponentResultScenariosInnerScenarioEnum_commonDriver;
  @BuiltValueEnumConst(wireName: r'true-precursor')
  static const BenchmarkComponentResultScenariosInnerScenarioEnum
      truePrecursor =
      _$benchmarkComponentResultScenariosInnerScenarioEnum_truePrecursor;
  @BuiltValueEnumConst(wireName: r'base-rate-drift')
  static const BenchmarkComponentResultScenariosInnerScenarioEnum
      baseRateDrift =
      _$benchmarkComponentResultScenariosInnerScenarioEnum_baseRateDrift;
  @BuiltValueEnumConst(wireName: r'pre-event-move')
  static const BenchmarkComponentResultScenariosInnerScenarioEnum preEventMove =
      _$benchmarkComponentResultScenariosInnerScenarioEnum_preEventMove;
  @BuiltValueEnumConst(wireName: r'historical')
  static const BenchmarkComponentResultScenariosInnerScenarioEnum historical =
      _$benchmarkComponentResultScenariosInnerScenarioEnum_historical;

  static Serializer<BenchmarkComponentResultScenariosInnerScenarioEnum>
      get serializer =>
          _$benchmarkComponentResultScenariosInnerScenarioEnumSerializer;

  const BenchmarkComponentResultScenariosInnerScenarioEnum._(String name)
      : super(name);

  static BuiltSet<BenchmarkComponentResultScenariosInnerScenarioEnum>
      get values => _$benchmarkComponentResultScenariosInnerScenarioEnumValues;
  static BenchmarkComponentResultScenariosInnerScenarioEnum valueOf(
          String name) =>
      _$benchmarkComponentResultScenariosInnerScenarioEnumValueOf(name);
}

/// Result against the documented thresholds
class BenchmarkComponentResultScenariosInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pass')
  static const BenchmarkComponentResultScenariosInnerStatusEnum pass =
      _$benchmarkComponentResultScenariosInnerStatusEnum_pass;
  @BuiltValueEnumConst(wireName: r'warn')
  static const BenchmarkComponentResultScenariosInnerStatusEnum warn =
      _$benchmarkComponentResultScenariosInnerStatusEnum_warn;
  @BuiltValueEnumConst(wireName: r'fail')
  static const BenchmarkComponentResultScenariosInnerStatusEnum fail =
      _$benchmarkComponentResultScenariosInnerStatusEnum_fail;

  static Serializer<BenchmarkComponentResultScenariosInnerStatusEnum>
      get serializer =>
          _$benchmarkComponentResultScenariosInnerStatusEnumSerializer;

  const BenchmarkComponentResultScenariosInnerStatusEnum._(String name)
      : super(name);

  static BuiltSet<BenchmarkComponentResultScenariosInnerStatusEnum>
      get values => _$benchmarkComponentResultScenariosInnerStatusEnumValues;
  static BenchmarkComponentResultScenariosInnerStatusEnum valueOf(
          String name) =>
      _$benchmarkComponentResultScenariosInnerStatusEnumValueOf(name);
}
