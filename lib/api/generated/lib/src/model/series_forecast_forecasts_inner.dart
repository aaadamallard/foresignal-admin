//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/quantiles.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_forecast_forecasts_inner.g.dart';

/// Forecast for one horizon
///
/// Properties:
/// * [horizon] - Days ahead
/// * [targetPeriod]
/// * [quantiles]
@BuiltValue()
abstract class SeriesForecastForecastsInner
    implements
        Built<
          SeriesForecastForecastsInner,
          SeriesForecastForecastsInnerBuilder
        > {
  /// Days ahead
  @BuiltValueField(wireName: r'horizon')
  SeriesForecastForecastsInnerHorizonEnum get horizon;
  // enum horizonEnum {  1,  7,  28,  };

  @BuiltValueField(wireName: r'targetPeriod')
  TimeRange get targetPeriod;

  @BuiltValueField(wireName: r'quantiles')
  Quantiles get quantiles;

  SeriesForecastForecastsInner._();

  factory SeriesForecastForecastsInner([
    void updates(SeriesForecastForecastsInnerBuilder b),
  ]) = _$SeriesForecastForecastsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesForecastForecastsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesForecastForecastsInner> get serializer =>
      _$SeriesForecastForecastsInnerSerializer();
}

class _$SeriesForecastForecastsInnerSerializer
    implements PrimitiveSerializer<SeriesForecastForecastsInner> {
  @override
  final Iterable<Type> types = const [
    SeriesForecastForecastsInner,
    _$SeriesForecastForecastsInner,
  ];

  @override
  final String wireName = r'SeriesForecastForecastsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesForecastForecastsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'horizon';
    yield serializers.serialize(
      object.horizon,
      specifiedType: const FullType(SeriesForecastForecastsInnerHorizonEnum),
    );
    yield r'targetPeriod';
    yield serializers.serialize(
      object.targetPeriod,
      specifiedType: const FullType(TimeRange),
    );
    yield r'quantiles';
    yield serializers.serialize(
      object.quantiles,
      specifiedType: const FullType(Quantiles),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesForecastForecastsInner object, {
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
    required SeriesForecastForecastsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'horizon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SeriesForecastForecastsInnerHorizonEnum,
                    ),
                  )
                  as SeriesForecastForecastsInnerHorizonEnum;
          result.horizon = valueDes;
          break;
        case r'targetPeriod':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TimeRange),
                  )
                  as TimeRange;
          result.targetPeriod.replace(valueDes);
          break;
        case r'quantiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Quantiles),
                  )
                  as Quantiles;
          result.quantiles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesForecastForecastsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesForecastForecastsInnerBuilder();
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

/// Days ahead
class SeriesForecastForecastsInnerHorizonEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 1)
  static const SeriesForecastForecastsInnerHorizonEnum number1 =
      _$seriesForecastForecastsInnerHorizonEnum_number1;
  @BuiltValueEnumConst(wireNumber: 7)
  static const SeriesForecastForecastsInnerHorizonEnum number7 =
      _$seriesForecastForecastsInnerHorizonEnum_number7;
  @BuiltValueEnumConst(wireNumber: 28)
  static const SeriesForecastForecastsInnerHorizonEnum number28 =
      _$seriesForecastForecastsInnerHorizonEnum_number28;

  static Serializer<SeriesForecastForecastsInnerHorizonEnum> get serializer =>
      _$seriesForecastForecastsInnerHorizonEnumSerializer;

  const SeriesForecastForecastsInnerHorizonEnum._(String name) : super(name);

  static BuiltSet<SeriesForecastForecastsInnerHorizonEnum> get values =>
      _$seriesForecastForecastsInnerHorizonEnumValues;
  static SeriesForecastForecastsInnerHorizonEnum valueOf(String name) =>
      _$seriesForecastForecastsInnerHorizonEnumValueOf(name);
}
