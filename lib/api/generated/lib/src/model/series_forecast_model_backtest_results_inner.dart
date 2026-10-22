//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_forecast_model_backtest_results_inner.g.dart';

/// Score of one method at one horizon
///
/// Properties:
/// * [method]
/// * [horizon]
/// * [meanPinballLoss]
/// * [intervalCoverageP05P95]
@BuiltValue()
abstract class SeriesForecastModelBacktestResultsInner
    implements
        Built<SeriesForecastModelBacktestResultsInner,
            SeriesForecastModelBacktestResultsInnerBuilder> {
  @BuiltValueField(wireName: r'method')
  SeriesForecastModelBacktestResultsInnerMethodEnum get method;
  // enum methodEnum {  seasonal-naive,  ets-ann,  ets-aaa,  nb-glm,  damped-trend,  };

  @BuiltValueField(wireName: r'horizon')
  int get horizon;

  @BuiltValueField(wireName: r'meanPinballLoss')
  num get meanPinballLoss;

  @BuiltValueField(wireName: r'intervalCoverageP05P95')
  num? get intervalCoverageP05P95;

  SeriesForecastModelBacktestResultsInner._();

  factory SeriesForecastModelBacktestResultsInner(
          [void updates(SeriesForecastModelBacktestResultsInnerBuilder b)]) =
      _$SeriesForecastModelBacktestResultsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesForecastModelBacktestResultsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesForecastModelBacktestResultsInner> get serializer =>
      _$SeriesForecastModelBacktestResultsInnerSerializer();
}

class _$SeriesForecastModelBacktestResultsInnerSerializer
    implements PrimitiveSerializer<SeriesForecastModelBacktestResultsInner> {
  @override
  final Iterable<Type> types = const [
    SeriesForecastModelBacktestResultsInner,
    _$SeriesForecastModelBacktestResultsInner
  ];

  @override
  final String wireName = r'SeriesForecastModelBacktestResultsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesForecastModelBacktestResultsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType:
          const FullType(SeriesForecastModelBacktestResultsInnerMethodEnum),
    );
    yield r'horizon';
    yield serializers.serialize(
      object.horizon,
      specifiedType: const FullType(int),
    );
    yield r'meanPinballLoss';
    yield serializers.serialize(
      object.meanPinballLoss,
      specifiedType: const FullType(num),
    );
    if (object.intervalCoverageP05P95 != null) {
      yield r'intervalCoverageP05P95';
      yield serializers.serialize(
        object.intervalCoverageP05P95,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesForecastModelBacktestResultsInner object, {
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
    required SeriesForecastModelBacktestResultsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                SeriesForecastModelBacktestResultsInnerMethodEnum),
          ) as SeriesForecastModelBacktestResultsInnerMethodEnum;
          result.method = valueDes;
          break;
        case r'horizon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.horizon = valueDes;
          break;
        case r'meanPinballLoss':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.meanPinballLoss = valueDes;
          break;
        case r'intervalCoverageP05P95':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.intervalCoverageP05P95 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesForecastModelBacktestResultsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesForecastModelBacktestResultsInnerBuilder();
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

class SeriesForecastModelBacktestResultsInnerMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'seasonal-naive')
  static const SeriesForecastModelBacktestResultsInnerMethodEnum seasonalNaive =
      _$seriesForecastModelBacktestResultsInnerMethodEnum_seasonalNaive;
  @BuiltValueEnumConst(wireName: r'ets-ann')
  static const SeriesForecastModelBacktestResultsInnerMethodEnum etsAnn =
      _$seriesForecastModelBacktestResultsInnerMethodEnum_etsAnn;
  @BuiltValueEnumConst(wireName: r'ets-aaa')
  static const SeriesForecastModelBacktestResultsInnerMethodEnum etsAaa =
      _$seriesForecastModelBacktestResultsInnerMethodEnum_etsAaa;
  @BuiltValueEnumConst(wireName: r'nb-glm')
  static const SeriesForecastModelBacktestResultsInnerMethodEnum nbGlm =
      _$seriesForecastModelBacktestResultsInnerMethodEnum_nbGlm;
  @BuiltValueEnumConst(wireName: r'damped-trend')
  static const SeriesForecastModelBacktestResultsInnerMethodEnum dampedTrend =
      _$seriesForecastModelBacktestResultsInnerMethodEnum_dampedTrend;

  static Serializer<SeriesForecastModelBacktestResultsInnerMethodEnum>
      get serializer =>
          _$seriesForecastModelBacktestResultsInnerMethodEnumSerializer;

  const SeriesForecastModelBacktestResultsInnerMethodEnum._(String name)
      : super(name);

  static BuiltSet<SeriesForecastModelBacktestResultsInnerMethodEnum>
      get values => _$seriesForecastModelBacktestResultsInnerMethodEnumValues;
  static SeriesForecastModelBacktestResultsInnerMethodEnum valueOf(
          String name) =>
      _$seriesForecastModelBacktestResultsInnerMethodEnumValueOf(name);
}
