//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecast_numeric_calibration_summary.dart';
import 'package:foresignal_api/src/model/forecast_numeric_calibration_quantile_reliability_inner.dart';
import 'package:foresignal_api/src/model/forecast_numeric_calibration_pit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_numeric_calibration.g.dart';

/// Numeric calibration (152): the quantile-reliability diagram, PIT histogram and calibration-error summary over resolved numeric questions
///
/// Properties:
/// * [forecasterId]
/// * [category]
/// * [type]
/// * [n] - Resolved numeric questions with quantile coverage
/// * [label]
/// * [quantileReliability] - Empirical coverage P(y ≤ q) of each stated quantile vs its nominal level
/// * [pit]
/// * [summary]
/// * [scorerVersion]
/// * [computedAt]
@BuiltValue()
abstract class ForecastNumericCalibration
    implements
        Built<ForecastNumericCalibration, ForecastNumericCalibrationBuilder> {
  @BuiltValueField(wireName: r'forecasterId')
  String? get forecasterId;

  @BuiltValueField(wireName: r'category')
  String? get category;

  @BuiltValueField(wireName: r'type')
  ForecastNumericCalibrationTypeEnum get type;
  // enum typeEnum {  numeric,  };

  /// Resolved numeric questions with quantile coverage
  @BuiltValueField(wireName: r'n')
  int get n;

  @BuiltValueField(wireName: r'label')
  ForecastNumericCalibrationLabelEnum get label;
  // enum labelEnum {  ok,  insufficient,  };

  /// Empirical coverage P(y ≤ q) of each stated quantile vs its nominal level
  @BuiltValueField(wireName: r'quantileReliability')
  BuiltList<ForecastNumericCalibrationQuantileReliabilityInner>
  get quantileReliability;

  @BuiltValueField(wireName: r'pit')
  ForecastNumericCalibrationPit get pit;

  @BuiltValueField(wireName: r'summary')
  ForecastNumericCalibrationSummary? get summary;

  @BuiltValueField(wireName: r'scorerVersion')
  String get scorerVersion;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  ForecastNumericCalibration._();

  factory ForecastNumericCalibration([
    void updates(ForecastNumericCalibrationBuilder b),
  ]) = _$ForecastNumericCalibration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastNumericCalibrationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastNumericCalibration> get serializer =>
      _$ForecastNumericCalibrationSerializer();
}

class _$ForecastNumericCalibrationSerializer
    implements PrimitiveSerializer<ForecastNumericCalibration> {
  @override
  final Iterable<Type> types = const [
    ForecastNumericCalibration,
    _$ForecastNumericCalibration,
  ];

  @override
  final String wireName = r'ForecastNumericCalibration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastNumericCalibration object, {
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
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ForecastNumericCalibrationTypeEnum),
    );
    yield r'n';
    yield serializers.serialize(object.n, specifiedType: const FullType(int));
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(ForecastNumericCalibrationLabelEnum),
    );
    yield r'quantileReliability';
    yield serializers.serialize(
      object.quantileReliability,
      specifiedType: const FullType(BuiltList, [
        FullType(ForecastNumericCalibrationQuantileReliabilityInner),
      ]),
    );
    yield r'pit';
    yield serializers.serialize(
      object.pit,
      specifiedType: const FullType(ForecastNumericCalibrationPit),
    );
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(ForecastNumericCalibrationSummary),
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
    ForecastNumericCalibration object, {
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
    required ForecastNumericCalibrationBuilder result,
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ForecastNumericCalibrationTypeEnum,
                    ),
                  )
                  as ForecastNumericCalibrationTypeEnum;
          result.type = valueDes;
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
                    specifiedType: const FullType(
                      ForecastNumericCalibrationLabelEnum,
                    ),
                  )
                  as ForecastNumericCalibrationLabelEnum;
          result.label = valueDes;
          break;
        case r'quantileReliability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(
                        ForecastNumericCalibrationQuantileReliabilityInner,
                      ),
                    ]),
                  )
                  as BuiltList<
                    ForecastNumericCalibrationQuantileReliabilityInner
                  >;
          result.quantileReliability.replace(valueDes);
          break;
        case r'pit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ForecastNumericCalibrationPit,
                    ),
                  )
                  as ForecastNumericCalibrationPit;
          result.pit.replace(valueDes);
          break;
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ForecastNumericCalibrationSummary,
                    ),
                  )
                  as ForecastNumericCalibrationSummary?;
          if (valueDes == null) continue;
          result.summary.replace(valueDes);
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
  ForecastNumericCalibration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastNumericCalibrationBuilder();
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

class ForecastNumericCalibrationTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'numeric')
  static const ForecastNumericCalibrationTypeEnum numeric =
      _$forecastNumericCalibrationTypeEnum_numeric;

  static Serializer<ForecastNumericCalibrationTypeEnum> get serializer =>
      _$forecastNumericCalibrationTypeEnumSerializer;

  const ForecastNumericCalibrationTypeEnum._(String name) : super(name);

  static BuiltSet<ForecastNumericCalibrationTypeEnum> get values =>
      _$forecastNumericCalibrationTypeEnumValues;
  static ForecastNumericCalibrationTypeEnum valueOf(String name) =>
      _$forecastNumericCalibrationTypeEnumValueOf(name);
}

class ForecastNumericCalibrationLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ForecastNumericCalibrationLabelEnum ok =
      _$forecastNumericCalibrationLabelEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const ForecastNumericCalibrationLabelEnum insufficient =
      _$forecastNumericCalibrationLabelEnum_insufficient;

  static Serializer<ForecastNumericCalibrationLabelEnum> get serializer =>
      _$forecastNumericCalibrationLabelEnumSerializer;

  const ForecastNumericCalibrationLabelEnum._(String name) : super(name);

  static BuiltSet<ForecastNumericCalibrationLabelEnum> get values =>
      _$forecastNumericCalibrationLabelEnumValues;
  static ForecastNumericCalibrationLabelEnum valueOf(String name) =>
      _$forecastNumericCalibrationLabelEnumValueOf(name);
}
