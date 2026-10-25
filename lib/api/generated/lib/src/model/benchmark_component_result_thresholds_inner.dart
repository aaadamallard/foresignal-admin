//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_component_result_thresholds_inner.g.dart';

/// One threshold check
///
/// Properties:
/// * [metric]
/// * [comparator]
/// * [threshold]
/// * [observed]
/// * [status] - Result against the documented thresholds
/// * [warn] - The warn threshold; outside it the check fails (null: outside the pass threshold fails)
/// * [scenario] - The scenario (or `historical`) the check applies to
/// * [note] - What the threshold means
@BuiltValue()
abstract class BenchmarkComponentResultThresholdsInner
    implements
        Built<
          BenchmarkComponentResultThresholdsInner,
          BenchmarkComponentResultThresholdsInnerBuilder
        > {
  @BuiltValueField(wireName: r'metric')
  String get metric;

  @BuiltValueField(wireName: r'comparator')
  BenchmarkComponentResultThresholdsInnerComparatorEnum get comparator;
  // enum comparatorEnum {  le,  ge,  eq,  within,  };

  @BuiltValueField(wireName: r'threshold')
  num get threshold;

  @BuiltValueField(wireName: r'observed')
  num? get observed;

  /// Result against the documented thresholds
  @BuiltValueField(wireName: r'status')
  BenchmarkComponentResultThresholdsInnerStatusEnum get status;
  // enum statusEnum {  pass,  warn,  fail,  };

  /// The warn threshold; outside it the check fails (null: outside the pass threshold fails)
  @BuiltValueField(wireName: r'warn')
  num? get warn;

  /// The scenario (or `historical`) the check applies to
  @BuiltValueField(wireName: r'scenario')
  String? get scenario;

  /// What the threshold means
  @BuiltValueField(wireName: r'note')
  String? get note;

  BenchmarkComponentResultThresholdsInner._();

  factory BenchmarkComponentResultThresholdsInner([
    void updates(BenchmarkComponentResultThresholdsInnerBuilder b),
  ]) = _$BenchmarkComponentResultThresholdsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkComponentResultThresholdsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkComponentResultThresholdsInner> get serializer =>
      _$BenchmarkComponentResultThresholdsInnerSerializer();
}

class _$BenchmarkComponentResultThresholdsInnerSerializer
    implements PrimitiveSerializer<BenchmarkComponentResultThresholdsInner> {
  @override
  final Iterable<Type> types = const [
    BenchmarkComponentResultThresholdsInner,
    _$BenchmarkComponentResultThresholdsInner,
  ];

  @override
  final String wireName = r'BenchmarkComponentResultThresholdsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkComponentResultThresholdsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'metric';
    yield serializers.serialize(
      object.metric,
      specifiedType: const FullType(String),
    );
    yield r'comparator';
    yield serializers.serialize(
      object.comparator,
      specifiedType: const FullType(
        BenchmarkComponentResultThresholdsInnerComparatorEnum,
      ),
    );
    yield r'threshold';
    yield serializers.serialize(
      object.threshold,
      specifiedType: const FullType(num),
    );
    if (object.observed != null) {
      yield r'observed';
      yield serializers.serialize(
        object.observed,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(
        BenchmarkComponentResultThresholdsInnerStatusEnum,
      ),
    );
    if (object.warn != null) {
      yield r'warn';
      yield serializers.serialize(
        object.warn,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.scenario != null) {
      yield r'scenario';
      yield serializers.serialize(
        object.scenario,
        specifiedType: const FullType(String),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkComponentResultThresholdsInner object, {
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
    required BenchmarkComponentResultThresholdsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'metric':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.metric = valueDes;
          break;
        case r'comparator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      BenchmarkComponentResultThresholdsInnerComparatorEnum,
                    ),
                  )
                  as BenchmarkComponentResultThresholdsInnerComparatorEnum;
          result.comparator = valueDes;
          break;
        case r'threshold':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.threshold = valueDes;
          break;
        case r'observed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.observed = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      BenchmarkComponentResultThresholdsInnerStatusEnum,
                    ),
                  )
                  as BenchmarkComponentResultThresholdsInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'warn':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.warn = valueDes;
          break;
        case r'scenario':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.scenario = valueDes;
          break;
        case r'note':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkComponentResultThresholdsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkComponentResultThresholdsInnerBuilder();
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

class BenchmarkComponentResultThresholdsInnerComparatorEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'le')
  static const BenchmarkComponentResultThresholdsInnerComparatorEnum le =
      _$benchmarkComponentResultThresholdsInnerComparatorEnum_le;
  @BuiltValueEnumConst(wireName: r'ge')
  static const BenchmarkComponentResultThresholdsInnerComparatorEnum ge =
      _$benchmarkComponentResultThresholdsInnerComparatorEnum_ge;
  @BuiltValueEnumConst(wireName: r'eq')
  static const BenchmarkComponentResultThresholdsInnerComparatorEnum eq =
      _$benchmarkComponentResultThresholdsInnerComparatorEnum_eq;
  @BuiltValueEnumConst(wireName: r'within')
  static const BenchmarkComponentResultThresholdsInnerComparatorEnum within =
      _$benchmarkComponentResultThresholdsInnerComparatorEnum_within;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BenchmarkComponentResultThresholdsInnerComparatorEnum
  unknownDefaultOpenApi =
      _$benchmarkComponentResultThresholdsInnerComparatorEnum_unknownDefaultOpenApi;

  static Serializer<BenchmarkComponentResultThresholdsInnerComparatorEnum>
  get serializer =>
      _$benchmarkComponentResultThresholdsInnerComparatorEnumSerializer;

  const BenchmarkComponentResultThresholdsInnerComparatorEnum._(String name)
    : super(name);

  static BuiltSet<BenchmarkComponentResultThresholdsInnerComparatorEnum>
  get values => _$benchmarkComponentResultThresholdsInnerComparatorEnumValues;
  static BenchmarkComponentResultThresholdsInnerComparatorEnum valueOf(
    String name,
  ) => _$benchmarkComponentResultThresholdsInnerComparatorEnumValueOf(name);
}

/// Result against the documented thresholds
class BenchmarkComponentResultThresholdsInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pass')
  static const BenchmarkComponentResultThresholdsInnerStatusEnum pass =
      _$benchmarkComponentResultThresholdsInnerStatusEnum_pass;
  @BuiltValueEnumConst(wireName: r'warn')
  static const BenchmarkComponentResultThresholdsInnerStatusEnum warn =
      _$benchmarkComponentResultThresholdsInnerStatusEnum_warn;
  @BuiltValueEnumConst(wireName: r'fail')
  static const BenchmarkComponentResultThresholdsInnerStatusEnum fail =
      _$benchmarkComponentResultThresholdsInnerStatusEnum_fail;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BenchmarkComponentResultThresholdsInnerStatusEnum
  unknownDefaultOpenApi =
      _$benchmarkComponentResultThresholdsInnerStatusEnum_unknownDefaultOpenApi;

  static Serializer<BenchmarkComponentResultThresholdsInnerStatusEnum>
  get serializer =>
      _$benchmarkComponentResultThresholdsInnerStatusEnumSerializer;

  const BenchmarkComponentResultThresholdsInnerStatusEnum._(String name)
    : super(name);

  static BuiltSet<BenchmarkComponentResultThresholdsInnerStatusEnum>
  get values => _$benchmarkComponentResultThresholdsInnerStatusEnumValues;
  static BenchmarkComponentResultThresholdsInnerStatusEnum valueOf(
    String name,
  ) => _$benchmarkComponentResultThresholdsInnerStatusEnumValueOf(name);
}
