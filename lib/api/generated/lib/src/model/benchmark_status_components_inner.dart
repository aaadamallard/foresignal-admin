//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/benchmark_status_components_inner_gating.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_status_components_inner.g.dart';

/// Latest status of one component
///
/// Properties:
/// * [component] - Benchmarked component: `change-point`, `anomaly`, `event-study`, `co-occurrence`, `evidence`, `canonical-linking`, `precursor`, `situation-linker`, `forecaster:base-rate`, `forecaster:analog`, `forecaster:precursor` or `forecaster:ensemble`
/// * [componentVersion]
/// * [status] - `unknown` when never benchmarked
/// * [runId] - ULID identifier
/// * [suite]
/// * [finishedAt]
/// * [versionChanged] - The component's version differs from the one last benchmarked
/// * [gating]
@BuiltValue()
abstract class BenchmarkStatusComponentsInner
    implements
        Built<
          BenchmarkStatusComponentsInner,
          BenchmarkStatusComponentsInnerBuilder
        > {
  /// Benchmarked component: `change-point`, `anomaly`, `event-study`, `co-occurrence`, `evidence`, `canonical-linking`, `precursor`, `situation-linker`, `forecaster:base-rate`, `forecaster:analog`, `forecaster:precursor` or `forecaster:ensemble`
  @BuiltValueField(wireName: r'component')
  String get component;

  @BuiltValueField(wireName: r'componentVersion')
  String? get componentVersion;

  /// `unknown` when never benchmarked
  @BuiltValueField(wireName: r'status')
  BenchmarkStatusComponentsInnerStatusEnum get status;
  // enum statusEnum {  pass,  warn,  fail,  unknown,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'runId')
  String? get runId;

  @BuiltValueField(wireName: r'suite')
  BenchmarkStatusComponentsInnerSuiteEnum? get suite;
  // enum suiteEnum {  synthetic,  historical,  all,  };

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  /// The component's version differs from the one last benchmarked
  @BuiltValueField(wireName: r'versionChanged')
  bool? get versionChanged;

  @BuiltValueField(wireName: r'gating')
  BenchmarkStatusComponentsInnerGating? get gating;

  BenchmarkStatusComponentsInner._();

  factory BenchmarkStatusComponentsInner([
    void updates(BenchmarkStatusComponentsInnerBuilder b),
  ]) = _$BenchmarkStatusComponentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkStatusComponentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkStatusComponentsInner> get serializer =>
      _$BenchmarkStatusComponentsInnerSerializer();
}

class _$BenchmarkStatusComponentsInnerSerializer
    implements PrimitiveSerializer<BenchmarkStatusComponentsInner> {
  @override
  final Iterable<Type> types = const [
    BenchmarkStatusComponentsInner,
    _$BenchmarkStatusComponentsInner,
  ];

  @override
  final String wireName = r'BenchmarkStatusComponentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkStatusComponentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'component';
    yield serializers.serialize(
      object.component,
      specifiedType: const FullType(String),
    );
    if (object.componentVersion != null) {
      yield r'componentVersion';
      yield serializers.serialize(
        object.componentVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(BenchmarkStatusComponentsInnerStatusEnum),
    );
    if (object.runId != null) {
      yield r'runId';
      yield serializers.serialize(
        object.runId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.suite != null) {
      yield r'suite';
      yield serializers.serialize(
        object.suite,
        specifiedType: const FullType.nullable(
          BenchmarkStatusComponentsInnerSuiteEnum,
        ),
      );
    }
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.versionChanged != null) {
      yield r'versionChanged';
      yield serializers.serialize(
        object.versionChanged,
        specifiedType: const FullType(bool),
      );
    }
    if (object.gating != null) {
      yield r'gating';
      yield serializers.serialize(
        object.gating,
        specifiedType: const FullType(BenchmarkStatusComponentsInnerGating),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkStatusComponentsInner object, {
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
    required BenchmarkStatusComponentsInnerBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.componentVersion = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      BenchmarkStatusComponentsInnerStatusEnum,
                    ),
                  )
                  as BenchmarkStatusComponentsInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'runId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.runId = valueDes;
          break;
        case r'suite':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      BenchmarkStatusComponentsInnerSuiteEnum,
                    ),
                  )
                  as BenchmarkStatusComponentsInnerSuiteEnum?;
          if (valueDes == null) continue;
          result.suite = valueDes;
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
        case r'versionChanged':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.versionChanged = valueDes;
          break;
        case r'gating':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      BenchmarkStatusComponentsInnerGating,
                    ),
                  )
                  as BenchmarkStatusComponentsInnerGating?;
          if (valueDes == null) continue;
          result.gating.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkStatusComponentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkStatusComponentsInnerBuilder();
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

/// `unknown` when never benchmarked
class BenchmarkStatusComponentsInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pass')
  static const BenchmarkStatusComponentsInnerStatusEnum pass =
      _$benchmarkStatusComponentsInnerStatusEnum_pass;
  @BuiltValueEnumConst(wireName: r'warn')
  static const BenchmarkStatusComponentsInnerStatusEnum warn =
      _$benchmarkStatusComponentsInnerStatusEnum_warn;
  @BuiltValueEnumConst(wireName: r'fail')
  static const BenchmarkStatusComponentsInnerStatusEnum fail =
      _$benchmarkStatusComponentsInnerStatusEnum_fail;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const BenchmarkStatusComponentsInnerStatusEnum unknown =
      _$benchmarkStatusComponentsInnerStatusEnum_unknown;

  static Serializer<BenchmarkStatusComponentsInnerStatusEnum> get serializer =>
      _$benchmarkStatusComponentsInnerStatusEnumSerializer;

  const BenchmarkStatusComponentsInnerStatusEnum._(String name) : super(name);

  static BuiltSet<BenchmarkStatusComponentsInnerStatusEnum> get values =>
      _$benchmarkStatusComponentsInnerStatusEnumValues;
  static BenchmarkStatusComponentsInnerStatusEnum valueOf(String name) =>
      _$benchmarkStatusComponentsInnerStatusEnumValueOf(name);
}

class BenchmarkStatusComponentsInnerSuiteEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'synthetic')
  static const BenchmarkStatusComponentsInnerSuiteEnum synthetic =
      _$benchmarkStatusComponentsInnerSuiteEnum_synthetic;
  @BuiltValueEnumConst(wireName: r'historical')
  static const BenchmarkStatusComponentsInnerSuiteEnum historical =
      _$benchmarkStatusComponentsInnerSuiteEnum_historical;
  @BuiltValueEnumConst(wireName: r'all')
  static const BenchmarkStatusComponentsInnerSuiteEnum all =
      _$benchmarkStatusComponentsInnerSuiteEnum_all;

  static Serializer<BenchmarkStatusComponentsInnerSuiteEnum> get serializer =>
      _$benchmarkStatusComponentsInnerSuiteEnumSerializer;

  const BenchmarkStatusComponentsInnerSuiteEnum._(String name) : super(name);

  static BuiltSet<BenchmarkStatusComponentsInnerSuiteEnum> get values =>
      _$benchmarkStatusComponentsInnerSuiteEnumValues;
  static BenchmarkStatusComponentsInnerSuiteEnum valueOf(String name) =>
      _$benchmarkStatusComponentsInnerSuiteEnumValueOf(name);
}
