//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/series_forecast_model_backtest_results_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_forecast_model_backtest.g.dart';

/// Rolling-origin backtest (last 8 weekly origins)
///
/// Properties:
/// * [origins]
/// * [spacing]
/// * [selectionHorizon]
/// * [results]
@BuiltValue()
abstract class SeriesForecastModelBacktest
    implements
        Built<SeriesForecastModelBacktest, SeriesForecastModelBacktestBuilder> {
  @BuiltValueField(wireName: r'origins')
  int get origins;

  @BuiltValueField(wireName: r'spacing')
  String? get spacing;

  @BuiltValueField(wireName: r'selectionHorizon')
  int? get selectionHorizon;

  @BuiltValueField(wireName: r'results')
  BuiltList<SeriesForecastModelBacktestResultsInner> get results;

  SeriesForecastModelBacktest._();

  factory SeriesForecastModelBacktest(
          [void updates(SeriesForecastModelBacktestBuilder b)]) =
      _$SeriesForecastModelBacktest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesForecastModelBacktestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesForecastModelBacktest> get serializer =>
      _$SeriesForecastModelBacktestSerializer();
}

class _$SeriesForecastModelBacktestSerializer
    implements PrimitiveSerializer<SeriesForecastModelBacktest> {
  @override
  final Iterable<Type> types = const [
    SeriesForecastModelBacktest,
    _$SeriesForecastModelBacktest
  ];

  @override
  final String wireName = r'SeriesForecastModelBacktest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesForecastModelBacktest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'origins';
    yield serializers.serialize(
      object.origins,
      specifiedType: const FullType(int),
    );
    if (object.spacing != null) {
      yield r'spacing';
      yield serializers.serialize(
        object.spacing,
        specifiedType: const FullType(String),
      );
    }
    if (object.selectionHorizon != null) {
      yield r'selectionHorizon';
      yield serializers.serialize(
        object.selectionHorizon,
        specifiedType: const FullType(int),
      );
    }
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(
          BuiltList, [FullType(SeriesForecastModelBacktestResultsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesForecastModelBacktest object, {
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
    required SeriesForecastModelBacktestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'origins':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.origins = valueDes;
          break;
        case r'spacing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.spacing = valueDes;
          break;
        case r'selectionHorizon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.selectionHorizon = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(SeriesForecastModelBacktestResultsInner)]),
          ) as BuiltList<SeriesForecastModelBacktestResultsInner>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesForecastModelBacktest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesForecastModelBacktestBuilder();
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
