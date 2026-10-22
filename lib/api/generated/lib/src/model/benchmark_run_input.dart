//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_run_input.g.dart';

/// Request to start a benchmark run (a 103 job of type `benchmark`)
///
/// Properties:
/// * [suite]
/// * [components] - Components to benchmark; default all built components
/// * [seed] - Scenario seed; default the suite's fixed seed
@BuiltValue()
abstract class BenchmarkRunInput
    implements Built<BenchmarkRunInput, BenchmarkRunInputBuilder> {
  @BuiltValueField(wireName: r'suite')
  BenchmarkRunInputSuiteEnum get suite;
  // enum suiteEnum {  synthetic,  historical,  all,  };

  /// Components to benchmark; default all built components
  @BuiltValueField(wireName: r'components')
  BuiltList<String>? get components;

  /// Scenario seed; default the suite's fixed seed
  @BuiltValueField(wireName: r'seed')
  int? get seed;

  BenchmarkRunInput._();

  factory BenchmarkRunInput([void updates(BenchmarkRunInputBuilder b)]) =
      _$BenchmarkRunInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkRunInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkRunInput> get serializer =>
      _$BenchmarkRunInputSerializer();
}

class _$BenchmarkRunInputSerializer
    implements PrimitiveSerializer<BenchmarkRunInput> {
  @override
  final Iterable<Type> types = const [BenchmarkRunInput, _$BenchmarkRunInput];

  @override
  final String wireName = r'BenchmarkRunInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkRunInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'suite';
    yield serializers.serialize(
      object.suite,
      specifiedType: const FullType(BenchmarkRunInputSuiteEnum),
    );
    if (object.components != null) {
      yield r'components';
      yield serializers.serialize(
        object.components,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.seed != null) {
      yield r'seed';
      yield serializers.serialize(
        object.seed,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkRunInput object, {
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
    required BenchmarkRunInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'suite':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BenchmarkRunInputSuiteEnum),
                  )
                  as BenchmarkRunInputSuiteEnum;
          result.suite = valueDes;
          break;
        case r'components':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.components.replace(valueDes);
          break;
        case r'seed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.seed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkRunInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkRunInputBuilder();
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

class BenchmarkRunInputSuiteEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'synthetic')
  static const BenchmarkRunInputSuiteEnum synthetic =
      _$benchmarkRunInputSuiteEnum_synthetic;
  @BuiltValueEnumConst(wireName: r'historical')
  static const BenchmarkRunInputSuiteEnum historical =
      _$benchmarkRunInputSuiteEnum_historical;
  @BuiltValueEnumConst(wireName: r'all')
  static const BenchmarkRunInputSuiteEnum all =
      _$benchmarkRunInputSuiteEnum_all;

  static Serializer<BenchmarkRunInputSuiteEnum> get serializer =>
      _$benchmarkRunInputSuiteEnumSerializer;

  const BenchmarkRunInputSuiteEnum._(String name) : super(name);

  static BuiltSet<BenchmarkRunInputSuiteEnum> get values =>
      _$benchmarkRunInputSuiteEnumValues;
  static BenchmarkRunInputSuiteEnum valueOf(String name) =>
      _$benchmarkRunInputSuiteEnumValueOf(name);
}
