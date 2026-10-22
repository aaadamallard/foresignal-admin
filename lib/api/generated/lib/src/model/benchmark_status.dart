//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/benchmark_status_components_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_status.g.dart';

/// Latest benchmark status per component, used by `BenchmarkGate`
///
/// Properties:
/// * [generatedAt]
/// * [overall]
/// * [components]
@BuiltValue()
abstract class BenchmarkStatus
    implements Built<BenchmarkStatus, BenchmarkStatusBuilder> {
  @BuiltValueField(wireName: r'generatedAt')
  DateTime get generatedAt;

  @BuiltValueField(wireName: r'overall')
  BenchmarkStatusOverallEnum get overall;
  // enum overallEnum {  pass,  warn,  fail,  unknown,  };

  @BuiltValueField(wireName: r'components')
  BuiltList<BenchmarkStatusComponentsInner> get components;

  BenchmarkStatus._();

  factory BenchmarkStatus([void updates(BenchmarkStatusBuilder b)]) =
      _$BenchmarkStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkStatus> get serializer =>
      _$BenchmarkStatusSerializer();
}

class _$BenchmarkStatusSerializer
    implements PrimitiveSerializer<BenchmarkStatus> {
  @override
  final Iterable<Type> types = const [BenchmarkStatus, _$BenchmarkStatus];

  @override
  final String wireName = r'BenchmarkStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'generatedAt';
    yield serializers.serialize(
      object.generatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'overall';
    yield serializers.serialize(
      object.overall,
      specifiedType: const FullType(BenchmarkStatusOverallEnum),
    );
    yield r'components';
    yield serializers.serialize(
      object.components,
      specifiedType: const FullType(BuiltList, [
        FullType(BenchmarkStatusComponentsInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkStatus object, {
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
    required BenchmarkStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'generatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.generatedAt = valueDes;
          break;
        case r'overall':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BenchmarkStatusOverallEnum),
                  )
                  as BenchmarkStatusOverallEnum;
          result.overall = valueDes;
          break;
        case r'components':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(BenchmarkStatusComponentsInner),
                    ]),
                  )
                  as BuiltList<BenchmarkStatusComponentsInner>;
          result.components.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkStatusBuilder();
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

class BenchmarkStatusOverallEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pass')
  static const BenchmarkStatusOverallEnum pass =
      _$benchmarkStatusOverallEnum_pass;
  @BuiltValueEnumConst(wireName: r'warn')
  static const BenchmarkStatusOverallEnum warn =
      _$benchmarkStatusOverallEnum_warn;
  @BuiltValueEnumConst(wireName: r'fail')
  static const BenchmarkStatusOverallEnum fail =
      _$benchmarkStatusOverallEnum_fail;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const BenchmarkStatusOverallEnum unknown =
      _$benchmarkStatusOverallEnum_unknown;

  static Serializer<BenchmarkStatusOverallEnum> get serializer =>
      _$benchmarkStatusOverallEnumSerializer;

  const BenchmarkStatusOverallEnum._(String name) : super(name);

  static BuiltSet<BenchmarkStatusOverallEnum> get values =>
      _$benchmarkStatusOverallEnumValues;
  static BenchmarkStatusOverallEnum valueOf(String name) =>
      _$benchmarkStatusOverallEnumValueOf(name);
}
