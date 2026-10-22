//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/quantiles.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_history_series_inner_points_inner.g.dart';

/// Standing forecast on a day
///
/// Properties:
/// * [date]
/// * [probability] - Binary questions
/// * [distribution] - Multiple/ordered: outcome label → probability, summing to 1 ± 1e-6
/// * [quantiles] - Numeric: p05, p10, p25, p50, p75, p90, p95, monotone
/// * [forecastId] - ULID identifier
@BuiltValue()
abstract class ForecastHistorySeriesInnerPointsInner
    implements
        Built<
          ForecastHistorySeriesInnerPointsInner,
          ForecastHistorySeriesInnerPointsInnerBuilder
        > {
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Binary questions
  @BuiltValueField(wireName: r'probability')
  num? get probability;

  /// Multiple/ordered: outcome label → probability, summing to 1 ± 1e-6
  @BuiltValueField(wireName: r'distribution')
  BuiltMap<String, num>? get distribution;

  /// Numeric: p05, p10, p25, p50, p75, p90, p95, monotone
  @BuiltValueField(wireName: r'quantiles')
  Quantiles? get quantiles;

  /// ULID identifier
  @BuiltValueField(wireName: r'forecastId')
  String get forecastId;

  ForecastHistorySeriesInnerPointsInner._();

  factory ForecastHistorySeriesInnerPointsInner([
    void updates(ForecastHistorySeriesInnerPointsInnerBuilder b),
  ]) = _$ForecastHistorySeriesInnerPointsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastHistorySeriesInnerPointsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastHistorySeriesInnerPointsInner> get serializer =>
      _$ForecastHistorySeriesInnerPointsInnerSerializer();
}

class _$ForecastHistorySeriesInnerPointsInnerSerializer
    implements PrimitiveSerializer<ForecastHistorySeriesInnerPointsInner> {
  @override
  final Iterable<Type> types = const [
    ForecastHistorySeriesInnerPointsInner,
    _$ForecastHistorySeriesInnerPointsInner,
  ];

  @override
  final String wireName = r'ForecastHistorySeriesInnerPointsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastHistorySeriesInnerPointsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    if (object.probability != null) {
      yield r'probability';
      yield serializers.serialize(
        object.probability,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.distribution != null) {
      yield r'distribution';
      yield serializers.serialize(
        object.distribution,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType(num),
        ]),
      );
    }
    if (object.quantiles != null) {
      yield r'quantiles';
      yield serializers.serialize(
        object.quantiles,
        specifiedType: const FullType.nullable(Quantiles),
      );
    }
    yield r'forecastId';
    yield serializers.serialize(
      object.forecastId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastHistorySeriesInnerPointsInner object, {
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
    required ForecastHistorySeriesInnerPointsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Date),
                  )
                  as Date;
          result.date = valueDes;
          break;
        case r'probability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.probability = valueDes;
          break;
        case r'distribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(num),
                    ]),
                  )
                  as BuiltMap<String, num>?;
          if (valueDes == null) continue;
          result.distribution.replace(valueDes);
          break;
        case r'quantiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Quantiles),
                  )
                  as Quantiles?;
          if (valueDes == null) continue;
          result.quantiles.replace(valueDes);
          break;
        case r'forecastId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.forecastId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastHistorySeriesInnerPointsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastHistorySeriesInnerPointsInnerBuilder();
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
