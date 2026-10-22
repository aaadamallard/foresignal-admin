//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/forecast_calibration_bins_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecast_calibration_decomposition.dart';
import 'package:foresignal_api/src/model/forecast_calibration_curve_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_calibration.g.dart';

/// CORP reliability curve (isotonic regression by PAV) with decomposition; 10-bin table fallback
///
/// Properties:
/// * [forecasterId]
/// * [category]
/// * [n]
/// * [label]
/// * [method] - `corp`, or `bins` when n < 50
/// * [curve]
/// * [bins]
/// * [decomposition]
/// * [sharpness]
/// * [scorerVersion]
/// * [computedAt]
@BuiltValue()
abstract class ForecastCalibration
    implements Built<ForecastCalibration, ForecastCalibrationBuilder> {
  @BuiltValueField(wireName: r'forecasterId')
  String? get forecasterId;

  @BuiltValueField(wireName: r'category')
  String? get category;

  @BuiltValueField(wireName: r'n')
  int get n;

  @BuiltValueField(wireName: r'label')
  ForecastCalibrationLabelEnum get label;
  // enum labelEnum {  ok,  insufficient,  };

  /// `corp`, or `bins` when n < 50
  @BuiltValueField(wireName: r'method')
  ForecastCalibrationMethodEnum get method;
  // enum methodEnum {  corp,  bins,  };

  @BuiltValueField(wireName: r'curve')
  BuiltList<ForecastCalibrationCurveInner> get curve;

  @BuiltValueField(wireName: r'bins')
  BuiltList<ForecastCalibrationBinsInner> get bins;

  @BuiltValueField(wireName: r'decomposition')
  ForecastCalibrationDecomposition? get decomposition;

  @BuiltValueField(wireName: r'sharpness')
  num? get sharpness;

  @BuiltValueField(wireName: r'scorerVersion')
  String get scorerVersion;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  ForecastCalibration._();

  factory ForecastCalibration([void updates(ForecastCalibrationBuilder b)]) =
      _$ForecastCalibration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastCalibrationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastCalibration> get serializer =>
      _$ForecastCalibrationSerializer();
}

class _$ForecastCalibrationSerializer
    implements PrimitiveSerializer<ForecastCalibration> {
  @override
  final Iterable<Type> types = const [
    ForecastCalibration,
    _$ForecastCalibration,
  ];

  @override
  final String wireName = r'ForecastCalibration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastCalibration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.forecasterId != null) {
      yield r'forecasterId';
      yield serializers.serialize(
        object.forecasterId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'n';
    yield serializers.serialize(object.n, specifiedType: const FullType(int));
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(ForecastCalibrationLabelEnum),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(ForecastCalibrationMethodEnum),
    );
    yield r'curve';
    yield serializers.serialize(
      object.curve,
      specifiedType: const FullType(BuiltList, [
        FullType(ForecastCalibrationCurveInner),
      ]),
    );
    yield r'bins';
    yield serializers.serialize(
      object.bins,
      specifiedType: const FullType(BuiltList, [
        FullType(ForecastCalibrationBinsInner),
      ]),
    );
    if (object.decomposition != null) {
      yield r'decomposition';
      yield serializers.serialize(
        object.decomposition,
        specifiedType: const FullType.nullable(
          ForecastCalibrationDecomposition,
        ),
      );
    }
    if (object.sharpness != null) {
      yield r'sharpness';
      yield serializers.serialize(
        object.sharpness,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'scorerVersion';
    yield serializers.serialize(
      object.scorerVersion,
      specifiedType: const FullType(String),
    );
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastCalibration object, {
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
    required ForecastCalibrationBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.forecasterId = valueDes;
          break;
        case r'category':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        case r'n':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.n = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecastCalibrationLabelEnum),
                  )
                  as ForecastCalibrationLabelEnum;
          result.label = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ForecastCalibrationMethodEnum,
                    ),
                  )
                  as ForecastCalibrationMethodEnum;
          result.method = valueDes;
          break;
        case r'curve':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ForecastCalibrationCurveInner),
                    ]),
                  )
                  as BuiltList<ForecastCalibrationCurveInner>;
          result.curve.replace(valueDes);
          break;
        case r'bins':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ForecastCalibrationBinsInner),
                    ]),
                  )
                  as BuiltList<ForecastCalibrationBinsInner>;
          result.bins.replace(valueDes);
          break;
        case r'decomposition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ForecastCalibrationDecomposition,
                    ),
                  )
                  as ForecastCalibrationDecomposition?;
          if (valueDes == null) continue;
          result.decomposition.replace(valueDes);
          break;
        case r'sharpness':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.sharpness = valueDes;
          break;
        case r'scorerVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.scorerVersion = valueDes;
          break;
        case r'computedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.computedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastCalibration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastCalibrationBuilder();
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

class ForecastCalibrationLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ForecastCalibrationLabelEnum ok =
      _$forecastCalibrationLabelEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const ForecastCalibrationLabelEnum insufficient =
      _$forecastCalibrationLabelEnum_insufficient;

  static Serializer<ForecastCalibrationLabelEnum> get serializer =>
      _$forecastCalibrationLabelEnumSerializer;

  const ForecastCalibrationLabelEnum._(String name) : super(name);

  static BuiltSet<ForecastCalibrationLabelEnum> get values =>
      _$forecastCalibrationLabelEnumValues;
  static ForecastCalibrationLabelEnum valueOf(String name) =>
      _$forecastCalibrationLabelEnumValueOf(name);
}

/// `corp`, or `bins` when n < 50
class ForecastCalibrationMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'corp')
  static const ForecastCalibrationMethodEnum corp =
      _$forecastCalibrationMethodEnum_corp;
  @BuiltValueEnumConst(wireName: r'bins')
  static const ForecastCalibrationMethodEnum bins =
      _$forecastCalibrationMethodEnum_bins;

  static Serializer<ForecastCalibrationMethodEnum> get serializer =>
      _$forecastCalibrationMethodEnumSerializer;

  const ForecastCalibrationMethodEnum._(String name) : super(name);

  static BuiltSet<ForecastCalibrationMethodEnum> get values =>
      _$forecastCalibrationMethodEnumValues;
  static ForecastCalibrationMethodEnum valueOf(String name) =>
      _$forecastCalibrationMethodEnumValueOf(name);
}
