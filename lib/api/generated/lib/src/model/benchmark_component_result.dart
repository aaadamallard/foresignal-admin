//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/benchmark_component_result_scenarios_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/benchmark_component_result_thresholds_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_component_result.g.dart';

/// Metrics, thresholds and status of one component in a benchmark run
///
/// Properties:
/// * [component] - Benchmarked component: `change-point`, `anomaly`, `event-study`, `co-occurrence`, `evidence`, `canonical-linking`, `precursor`, `situation-linker`, `forecaster:base-rate`, `forecaster:analog`, `forecaster:precursor` or `forecaster:ensemble`
/// * [componentVersion]
/// * [status] - Result against the documented thresholds
/// * [metrics] - Named metrics: `fdr`, `falseAlarmRate`, `recall`, `precision`, `delayMedianHours`, `delayP90Hours`, `correctUnknownShare`, `duplicateInflation`, `linkingPrecision`, `linkingRecall`, `spuriousMerges`, `falseValidationRate`, `lagRecoveredShare`, `rateRecoveredShare`, `brier`, `logScore`, `reliabilityMaxDeviation`, `skill`, …
/// * [thresholds]
/// * [scenarios]
/// * [caveats]
@BuiltValue()
abstract class BenchmarkComponentResult
    implements
        Built<BenchmarkComponentResult, BenchmarkComponentResultBuilder> {
  /// Benchmarked component: `change-point`, `anomaly`, `event-study`, `co-occurrence`, `evidence`, `canonical-linking`, `precursor`, `situation-linker`, `forecaster:base-rate`, `forecaster:analog`, `forecaster:precursor` or `forecaster:ensemble`
  @BuiltValueField(wireName: r'component')
  String get component;

  @BuiltValueField(wireName: r'componentVersion')
  String get componentVersion;

  /// Result against the documented thresholds
  @BuiltValueField(wireName: r'status')
  BenchmarkComponentResultStatusEnum get status;
  // enum statusEnum {  pass,  warn,  fail,  };

  /// Named metrics: `fdr`, `falseAlarmRate`, `recall`, `precision`, `delayMedianHours`, `delayP90Hours`, `correctUnknownShare`, `duplicateInflation`, `linkingPrecision`, `linkingRecall`, `spuriousMerges`, `falseValidationRate`, `lagRecoveredShare`, `rateRecoveredShare`, `brier`, `logScore`, `reliabilityMaxDeviation`, `skill`, …
  @BuiltValueField(wireName: r'metrics')
  BuiltMap<String, num?> get metrics;

  @BuiltValueField(wireName: r'thresholds')
  BuiltList<BenchmarkComponentResultThresholdsInner>? get thresholds;

  @BuiltValueField(wireName: r'scenarios')
  BuiltList<BenchmarkComponentResultScenariosInner>? get scenarios;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  BenchmarkComponentResult._();

  factory BenchmarkComponentResult([
    void updates(BenchmarkComponentResultBuilder b),
  ]) = _$BenchmarkComponentResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkComponentResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkComponentResult> get serializer =>
      _$BenchmarkComponentResultSerializer();
}

class _$BenchmarkComponentResultSerializer
    implements PrimitiveSerializer<BenchmarkComponentResult> {
  @override
  final Iterable<Type> types = const [
    BenchmarkComponentResult,
    _$BenchmarkComponentResult,
  ];

  @override
  final String wireName = r'BenchmarkComponentResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkComponentResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'component';
    yield serializers.serialize(
      object.component,
      specifiedType: const FullType(String),
    );
    yield r'componentVersion';
    yield serializers.serialize(
      object.componentVersion,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(BenchmarkComponentResultStatusEnum),
    );
    yield r'metrics';
    yield serializers.serialize(
      object.metrics,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(num),
      ]),
    );
    if (object.thresholds != null) {
      yield r'thresholds';
      yield serializers.serialize(
        object.thresholds,
        specifiedType: const FullType(BuiltList, [
          FullType(BenchmarkComponentResultThresholdsInner),
        ]),
      );
    }
    if (object.scenarios != null) {
      yield r'scenarios';
      yield serializers.serialize(
        object.scenarios,
        specifiedType: const FullType(BuiltList, [
          FullType(BenchmarkComponentResultScenariosInner),
        ]),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkComponentResult object, {
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
    required BenchmarkComponentResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'component':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.component = valueDes;
          break;
        case r'componentVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.componentVersion = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      BenchmarkComponentResultStatusEnum,
                    ),
                  )
                  as BenchmarkComponentResultStatusEnum;
          result.status = valueDes;
          break;
        case r'metrics':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType.nullable(num),
                    ]),
                  )
                  as BuiltMap<String, num?>;
          result.metrics.replace(valueDes);
          break;
        case r'thresholds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BenchmarkComponentResultThresholdsInner),
                    ]),
                  )
                  as BuiltList<BenchmarkComponentResultThresholdsInner>?;
          if (valueDes == null) continue;
          result.thresholds.replace(valueDes);
          break;
        case r'scenarios':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BenchmarkComponentResultScenariosInner),
                    ]),
                  )
                  as BuiltList<BenchmarkComponentResultScenariosInner>?;
          if (valueDes == null) continue;
          result.scenarios.replace(valueDes);
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Caveat),
                    ]),
                  )
                  as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkComponentResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkComponentResultBuilder();
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

/// Result against the documented thresholds
class BenchmarkComponentResultStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pass')
  static const BenchmarkComponentResultStatusEnum pass =
      _$benchmarkComponentResultStatusEnum_pass;
  @BuiltValueEnumConst(wireName: r'warn')
  static const BenchmarkComponentResultStatusEnum warn =
      _$benchmarkComponentResultStatusEnum_warn;
  @BuiltValueEnumConst(wireName: r'fail')
  static const BenchmarkComponentResultStatusEnum fail =
      _$benchmarkComponentResultStatusEnum_fail;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BenchmarkComponentResultStatusEnum unknownDefaultOpenApi =
      _$benchmarkComponentResultStatusEnum_unknownDefaultOpenApi;

  static Serializer<BenchmarkComponentResultStatusEnum> get serializer =>
      _$benchmarkComponentResultStatusEnumSerializer;

  const BenchmarkComponentResultStatusEnum._(String name) : super(name);

  static BuiltSet<BenchmarkComponentResultStatusEnum> get values =>
      _$benchmarkComponentResultStatusEnumValues;
  static BenchmarkComponentResultStatusEnum valueOf(String name) =>
      _$benchmarkComponentResultStatusEnumValueOf(name);
}
