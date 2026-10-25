//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/forecast_calibration_bins_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecast_calibration.dart';
import 'package:foresignal_api/src/model/forecast_calibration_decomposition.dart';
import 'package:foresignal_api/src/model/forecast_numeric_calibration_summary.dart';
import 'package:foresignal_api/src/model/forecast_numeric_calibration_quantile_reliability_inner.dart';
import 'package:foresignal_api/src/model/forecast_calibration_curve_inner.dart';
import 'package:foresignal_api/src/model/forecast_numeric_calibration.dart';
import 'package:foresignal_api/src/model/forecast_numeric_calibration_pit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'get_forecast_calibration200_response.g.dart';

/// GetForecastCalibration200Response
///
/// Properties:
/// * [forecasterId]
/// * [category]
/// * [n] - Resolved numeric questions with quantile coverage
/// * [label]
/// * [method] - `corp`, or `bins` when n < 50
/// * [curve]
/// * [bins]
/// * [decomposition]
/// * [sharpness]
/// * [scorerVersion]
/// * [computedAt]
/// * [type]
/// * [quantileReliability] - Empirical coverage P(y ≤ q) of each stated quantile vs its nominal level
/// * [pit]
/// * [summary]
@BuiltValue()
abstract class GetForecastCalibration200Response
    implements
        Built<
          GetForecastCalibration200Response,
          GetForecastCalibration200ResponseBuilder
        > {
  /// One Of [ForecastCalibration], [ForecastNumericCalibration]
  OneOf get oneOf;

  GetForecastCalibration200Response._();

  factory GetForecastCalibration200Response([
    void updates(GetForecastCalibration200ResponseBuilder b),
  ]) = _$GetForecastCalibration200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetForecastCalibration200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetForecastCalibration200Response> get serializer =>
      _$GetForecastCalibration200ResponseSerializer();
}

class _$GetForecastCalibration200ResponseSerializer
    implements PrimitiveSerializer<GetForecastCalibration200Response> {
  @override
  final Iterable<Type> types = const [
    GetForecastCalibration200Response,
    _$GetForecastCalibration200Response,
  ];

  @override
  final String wireName = r'GetForecastCalibration200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetForecastCalibration200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    GetForecastCalibration200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  GetForecastCalibration200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetForecastCalibration200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(ForecastCalibration),
      FullType(ForecastNumericCalibration),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf =
        serializers.deserialize(oneOfDataSrc, specifiedType: targetType)
            as OneOf;
    return result.build();
  }
}

class GetForecastCalibration200ResponseLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const GetForecastCalibration200ResponseLabelEnum ok =
      _$getForecastCalibration200ResponseLabelEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const GetForecastCalibration200ResponseLabelEnum insufficient =
      _$getForecastCalibration200ResponseLabelEnum_insufficient;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const GetForecastCalibration200ResponseLabelEnum
  unknownDefaultOpenApi =
      _$getForecastCalibration200ResponseLabelEnum_unknownDefaultOpenApi;

  static Serializer<GetForecastCalibration200ResponseLabelEnum>
  get serializer => _$getForecastCalibration200ResponseLabelEnumSerializer;

  const GetForecastCalibration200ResponseLabelEnum._(String name) : super(name);

  static BuiltSet<GetForecastCalibration200ResponseLabelEnum> get values =>
      _$getForecastCalibration200ResponseLabelEnumValues;
  static GetForecastCalibration200ResponseLabelEnum valueOf(String name) =>
      _$getForecastCalibration200ResponseLabelEnumValueOf(name);
}

/// `corp`, or `bins` when n < 50
class GetForecastCalibration200ResponseMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'corp')
  static const GetForecastCalibration200ResponseMethodEnum corp =
      _$getForecastCalibration200ResponseMethodEnum_corp;
  @BuiltValueEnumConst(wireName: r'bins')
  static const GetForecastCalibration200ResponseMethodEnum bins =
      _$getForecastCalibration200ResponseMethodEnum_bins;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const GetForecastCalibration200ResponseMethodEnum
  unknownDefaultOpenApi =
      _$getForecastCalibration200ResponseMethodEnum_unknownDefaultOpenApi;

  static Serializer<GetForecastCalibration200ResponseMethodEnum>
  get serializer => _$getForecastCalibration200ResponseMethodEnumSerializer;

  const GetForecastCalibration200ResponseMethodEnum._(String name)
    : super(name);

  static BuiltSet<GetForecastCalibration200ResponseMethodEnum> get values =>
      _$getForecastCalibration200ResponseMethodEnumValues;
  static GetForecastCalibration200ResponseMethodEnum valueOf(String name) =>
      _$getForecastCalibration200ResponseMethodEnumValueOf(name);
}

class GetForecastCalibration200ResponseTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'numeric')
  static const GetForecastCalibration200ResponseTypeEnum numeric =
      _$getForecastCalibration200ResponseTypeEnum_numeric;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const GetForecastCalibration200ResponseTypeEnum unknownDefaultOpenApi =
      _$getForecastCalibration200ResponseTypeEnum_unknownDefaultOpenApi;

  static Serializer<GetForecastCalibration200ResponseTypeEnum> get serializer =>
      _$getForecastCalibration200ResponseTypeEnumSerializer;

  const GetForecastCalibration200ResponseTypeEnum._(String name) : super(name);

  static BuiltSet<GetForecastCalibration200ResponseTypeEnum> get values =>
      _$getForecastCalibration200ResponseTypeEnumValues;
  static GetForecastCalibration200ResponseTypeEnum valueOf(String name) =>
      _$getForecastCalibration200ResponseTypeEnumValueOf(name);
}
