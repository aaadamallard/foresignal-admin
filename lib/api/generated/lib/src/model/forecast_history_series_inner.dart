//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecast_history_series_inner_points_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_history_series_inner.g.dart';

/// One forecaster's standing forecast per step
///
/// Properties:
/// * [forecasterId]
/// * [points]
@BuiltValue()
abstract class ForecastHistorySeriesInner
    implements
        Built<ForecastHistorySeriesInner, ForecastHistorySeriesInnerBuilder> {
  @BuiltValueField(wireName: r'forecasterId')
  String get forecasterId;

  @BuiltValueField(wireName: r'points')
  BuiltList<ForecastHistorySeriesInnerPointsInner> get points;

  ForecastHistorySeriesInner._();

  factory ForecastHistorySeriesInner([
    void updates(ForecastHistorySeriesInnerBuilder b),
  ]) = _$ForecastHistorySeriesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastHistorySeriesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastHistorySeriesInner> get serializer =>
      _$ForecastHistorySeriesInnerSerializer();
}

class _$ForecastHistorySeriesInnerSerializer
    implements PrimitiveSerializer<ForecastHistorySeriesInner> {
  @override
  final Iterable<Type> types = const [
    ForecastHistorySeriesInner,
    _$ForecastHistorySeriesInner,
  ];

  @override
  final String wireName = r'ForecastHistorySeriesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastHistorySeriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'forecasterId';
    yield serializers.serialize(
      object.forecasterId,
      specifiedType: const FullType(String),
    );
    yield r'points';
    yield serializers.serialize(
      object.points,
      specifiedType: const FullType(BuiltList, [
        FullType(ForecastHistorySeriesInnerPointsInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastHistorySeriesInner object, {
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
    required ForecastHistorySeriesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'forecasterId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.forecasterId = valueDes;
          break;
        case r'points':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ForecastHistorySeriesInnerPointsInner),
                    ]),
                  )
                  as BuiltList<ForecastHistorySeriesInnerPointsInner>;
          result.points.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastHistorySeriesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastHistorySeriesInnerBuilder();
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
