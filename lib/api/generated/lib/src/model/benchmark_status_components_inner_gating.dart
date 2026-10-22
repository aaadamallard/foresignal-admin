//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_status_components_inner_gating.g.dart';

/// Effect on autonomous features
///
/// Properties:
/// * [proposerAutoExecution]
/// * [llmEnsembleWeight]
/// * [findingCaveat] - `BENCHMARK_FAIL` while failing
@BuiltValue()
abstract class BenchmarkStatusComponentsInnerGating
    implements
        Built<
          BenchmarkStatusComponentsInnerGating,
          BenchmarkStatusComponentsInnerGatingBuilder
        > {
  @BuiltValueField(wireName: r'proposerAutoExecution')
  BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum?
  get proposerAutoExecution;
  // enum proposerAutoExecutionEnum {  allowed,  degraded,  };

  @BuiltValueField(wireName: r'llmEnsembleWeight')
  BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum?
  get llmEnsembleWeight;
  // enum llmEnsembleWeightEnum {  allowed,  degraded,  };

  /// `BENCHMARK_FAIL` while failing
  @BuiltValueField(wireName: r'findingCaveat')
  String? get findingCaveat;

  BenchmarkStatusComponentsInnerGating._();

  factory BenchmarkStatusComponentsInnerGating([
    void updates(BenchmarkStatusComponentsInnerGatingBuilder b),
  ]) = _$BenchmarkStatusComponentsInnerGating;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkStatusComponentsInnerGatingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkStatusComponentsInnerGating> get serializer =>
      _$BenchmarkStatusComponentsInnerGatingSerializer();
}

class _$BenchmarkStatusComponentsInnerGatingSerializer
    implements PrimitiveSerializer<BenchmarkStatusComponentsInnerGating> {
  @override
  final Iterable<Type> types = const [
    BenchmarkStatusComponentsInnerGating,
    _$BenchmarkStatusComponentsInnerGating,
  ];

  @override
  final String wireName = r'BenchmarkStatusComponentsInnerGating';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkStatusComponentsInnerGating object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.proposerAutoExecution != null) {
      yield r'proposerAutoExecution';
      yield serializers.serialize(
        object.proposerAutoExecution,
        specifiedType: const FullType(
          BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum,
        ),
      );
    }
    if (object.llmEnsembleWeight != null) {
      yield r'llmEnsembleWeight';
      yield serializers.serialize(
        object.llmEnsembleWeight,
        specifiedType: const FullType(
          BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum,
        ),
      );
    }
    if (object.findingCaveat != null) {
      yield r'findingCaveat';
      yield serializers.serialize(
        object.findingCaveat,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkStatusComponentsInnerGating object, {
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
    required BenchmarkStatusComponentsInnerGatingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'proposerAutoExecution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum,
                    ),
                  )
                  as BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum?;
          if (valueDes == null) continue;
          result.proposerAutoExecution = valueDes;
          break;
        case r'llmEnsembleWeight':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum,
                    ),
                  )
                  as BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum?;
          if (valueDes == null) continue;
          result.llmEnsembleWeight = valueDes;
          break;
        case r'findingCaveat':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.findingCaveat = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkStatusComponentsInnerGating deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkStatusComponentsInnerGatingBuilder();
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

class BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum
    extends EnumClass {
  @BuiltValueEnumConst(wireName: r'allowed')
  static const BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum
  allowed =
      _$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum_allowed;
  @BuiltValueEnumConst(wireName: r'degraded')
  static const BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum
  degraded =
      _$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum_degraded;

  static Serializer<
    BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum
  >
  get serializer =>
      _$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnumSerializer;

  const BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum._(
    String name,
  ) : super(name);

  static BuiltSet<BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum>
  get values =>
      _$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnumValues;
  static BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum valueOf(
    String name,
  ) => _$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnumValueOf(
    name,
  );
}

class BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum
    extends EnumClass {
  @BuiltValueEnumConst(wireName: r'allowed')
  static const BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum
  allowed = _$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum_allowed;
  @BuiltValueEnumConst(wireName: r'degraded')
  static const BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum
  degraded =
      _$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum_degraded;

  static Serializer<BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum>
  get serializer =>
      _$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnumSerializer;

  const BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum._(String name)
    : super(name);

  static BuiltSet<BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum>
  get values =>
      _$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnumValues;
  static BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum valueOf(
    String name,
  ) => _$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnumValueOf(name);
}
