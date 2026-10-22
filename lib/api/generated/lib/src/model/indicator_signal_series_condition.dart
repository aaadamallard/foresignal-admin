//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indicator_signal_series_condition.g.dart';

/// Threshold on the series value
///
/// Properties:
/// * [op]
/// * [value]
@BuiltValue()
abstract class IndicatorSignalSeriesCondition
    implements
        Built<
          IndicatorSignalSeriesCondition,
          IndicatorSignalSeriesConditionBuilder
        > {
  @BuiltValueField(wireName: r'op')
  IndicatorSignalSeriesConditionOpEnum get op;
  // enum opEnum {  gt,  gte,  lt,  lte,  };

  @BuiltValueField(wireName: r'value')
  num get value;

  IndicatorSignalSeriesCondition._();

  factory IndicatorSignalSeriesCondition([
    void updates(IndicatorSignalSeriesConditionBuilder b),
  ]) = _$IndicatorSignalSeriesCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndicatorSignalSeriesConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndicatorSignalSeriesCondition> get serializer =>
      _$IndicatorSignalSeriesConditionSerializer();
}

class _$IndicatorSignalSeriesConditionSerializer
    implements PrimitiveSerializer<IndicatorSignalSeriesCondition> {
  @override
  final Iterable<Type> types = const [
    IndicatorSignalSeriesCondition,
    _$IndicatorSignalSeriesCondition,
  ];

  @override
  final String wireName = r'IndicatorSignalSeriesCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndicatorSignalSeriesCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'op';
    yield serializers.serialize(
      object.op,
      specifiedType: const FullType(IndicatorSignalSeriesConditionOpEnum),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IndicatorSignalSeriesCondition object, {
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
    required IndicatorSignalSeriesConditionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'op':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      IndicatorSignalSeriesConditionOpEnum,
                    ),
                  )
                  as IndicatorSignalSeriesConditionOpEnum;
          result.op = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndicatorSignalSeriesCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndicatorSignalSeriesConditionBuilder();
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

class IndicatorSignalSeriesConditionOpEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'gt')
  static const IndicatorSignalSeriesConditionOpEnum gt =
      _$indicatorSignalSeriesConditionOpEnum_gt;
  @BuiltValueEnumConst(wireName: r'gte')
  static const IndicatorSignalSeriesConditionOpEnum gte =
      _$indicatorSignalSeriesConditionOpEnum_gte;
  @BuiltValueEnumConst(wireName: r'lt')
  static const IndicatorSignalSeriesConditionOpEnum lt =
      _$indicatorSignalSeriesConditionOpEnum_lt;
  @BuiltValueEnumConst(wireName: r'lte')
  static const IndicatorSignalSeriesConditionOpEnum lte =
      _$indicatorSignalSeriesConditionOpEnum_lte;

  static Serializer<IndicatorSignalSeriesConditionOpEnum> get serializer =>
      _$indicatorSignalSeriesConditionOpEnumSerializer;

  const IndicatorSignalSeriesConditionOpEnum._(String name) : super(name);

  static BuiltSet<IndicatorSignalSeriesConditionOpEnum> get values =>
      _$indicatorSignalSeriesConditionOpEnumValues;
  static IndicatorSignalSeriesConditionOpEnum valueOf(String name) =>
      _$indicatorSignalSeriesConditionOpEnumValueOf(name);
}
