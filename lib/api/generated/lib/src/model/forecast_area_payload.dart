//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecast_area_payload_threshold.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_area_payload.g.dart';

/// Kind `forecast-area` (`wx-forecast-areas`): union polygon of forecast threshold exceedance over the horizon for one model run; `validFrom`/`validUntil` are explicit
///
/// Properties:
/// * [model]
/// * [field]
/// * [threshold]
/// * [firstExceedAt]
/// * [peakValue]
/// * [peakAt]
/// * [areaKm2]
/// * [run]
/// * [attribution] - ECMWF CC BY 4.0 attribution with the changes-made line; present on IFS- and AIFS-derived areas. `run` is volatile: a newer run with the same area writes no version
/// * [automated]
/// * [notAWarning]
@BuiltValue()
abstract class ForecastAreaPayload
    implements Built<ForecastAreaPayload, ForecastAreaPayloadBuilder> {
  @BuiltValueField(wireName: r'model')
  ForecastAreaPayloadModelEnum get model;
  // enum modelEnum {  gfs,  hrrr,  ifs,  aifs,  };

  @BuiltValueField(wireName: r'field')
  String get field;

  @BuiltValueField(wireName: r'threshold')
  ForecastAreaPayloadThreshold get threshold;

  @BuiltValueField(wireName: r'firstExceedAt')
  DateTime get firstExceedAt;

  @BuiltValueField(wireName: r'peakValue')
  num? get peakValue;

  @BuiltValueField(wireName: r'peakAt')
  DateTime? get peakAt;

  @BuiltValueField(wireName: r'areaKm2')
  num? get areaKm2;

  @BuiltValueField(wireName: r'run')
  DateTime get run;

  /// ECMWF CC BY 4.0 attribution with the changes-made line; present on IFS- and AIFS-derived areas. `run` is volatile: a newer run with the same area writes no version
  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  @BuiltValueField(wireName: r'automated')
  bool? get automated;

  @BuiltValueField(wireName: r'notAWarning')
  bool? get notAWarning;

  ForecastAreaPayload._();

  factory ForecastAreaPayload([void updates(ForecastAreaPayloadBuilder b)]) =
      _$ForecastAreaPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastAreaPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastAreaPayload> get serializer =>
      _$ForecastAreaPayloadSerializer();
}

class _$ForecastAreaPayloadSerializer
    implements PrimitiveSerializer<ForecastAreaPayload> {
  @override
  final Iterable<Type> types = const [
    ForecastAreaPayload,
    _$ForecastAreaPayload,
  ];

  @override
  final String wireName = r'ForecastAreaPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastAreaPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(ForecastAreaPayloadModelEnum),
    );
    yield r'field';
    yield serializers.serialize(
      object.field,
      specifiedType: const FullType(String),
    );
    yield r'threshold';
    yield serializers.serialize(
      object.threshold,
      specifiedType: const FullType(ForecastAreaPayloadThreshold),
    );
    yield r'firstExceedAt';
    yield serializers.serialize(
      object.firstExceedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.peakValue != null) {
      yield r'peakValue';
      yield serializers.serialize(
        object.peakValue,
        specifiedType: const FullType(num),
      );
    }
    if (object.peakAt != null) {
      yield r'peakAt';
      yield serializers.serialize(
        object.peakAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.areaKm2 != null) {
      yield r'areaKm2';
      yield serializers.serialize(
        object.areaKm2,
        specifiedType: const FullType(num),
      );
    }
    yield r'run';
    yield serializers.serialize(
      object.run,
      specifiedType: const FullType(DateTime),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(String),
      );
    }
    if (object.automated != null) {
      yield r'automated';
      yield serializers.serialize(
        object.automated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.notAWarning != null) {
      yield r'notAWarning';
      yield serializers.serialize(
        object.notAWarning,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastAreaPayload object, {
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
    required ForecastAreaPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'model':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecastAreaPayloadModelEnum),
                  )
                  as ForecastAreaPayloadModelEnum;
          result.model = valueDes;
          break;
        case r'field':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.field = valueDes;
          break;
        case r'threshold':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecastAreaPayloadThreshold),
                  )
                  as ForecastAreaPayloadThreshold;
          result.threshold.replace(valueDes);
          break;
        case r'firstExceedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.firstExceedAt = valueDes;
          break;
        case r'peakValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.peakValue = valueDes;
          break;
        case r'peakAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.peakAt = valueDes;
          break;
        case r'areaKm2':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.areaKm2 = valueDes;
          break;
        case r'run':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.run = valueDes;
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.attribution = valueDes;
          break;
        case r'automated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.automated = valueDes;
          break;
        case r'notAWarning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.notAWarning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastAreaPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastAreaPayloadBuilder();
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

class ForecastAreaPayloadModelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'gfs')
  static const ForecastAreaPayloadModelEnum gfs =
      _$forecastAreaPayloadModelEnum_gfs;
  @BuiltValueEnumConst(wireName: r'hrrr')
  static const ForecastAreaPayloadModelEnum hrrr =
      _$forecastAreaPayloadModelEnum_hrrr;
  @BuiltValueEnumConst(wireName: r'ifs')
  static const ForecastAreaPayloadModelEnum ifs =
      _$forecastAreaPayloadModelEnum_ifs;
  @BuiltValueEnumConst(wireName: r'aifs')
  static const ForecastAreaPayloadModelEnum aifs =
      _$forecastAreaPayloadModelEnum_aifs;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ForecastAreaPayloadModelEnum unknownDefaultOpenApi =
      _$forecastAreaPayloadModelEnum_unknownDefaultOpenApi;

  static Serializer<ForecastAreaPayloadModelEnum> get serializer =>
      _$forecastAreaPayloadModelEnumSerializer;

  const ForecastAreaPayloadModelEnum._(String name) : super(name);

  static BuiltSet<ForecastAreaPayloadModelEnum> get values =>
      _$forecastAreaPayloadModelEnumValues;
  static ForecastAreaPayloadModelEnum valueOf(String name) =>
      _$forecastAreaPayloadModelEnumValueOf(name);
}
