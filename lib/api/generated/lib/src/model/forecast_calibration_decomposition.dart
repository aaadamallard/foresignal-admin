//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_calibration_decomposition.g.dart';

/// CORP decomposition
///
/// Properties:
/// * [score]
/// * [miscalibration]
/// * [discrimination]
/// * [uncertainty]
@BuiltValue()
abstract class ForecastCalibrationDecomposition
    implements
        Built<ForecastCalibrationDecomposition,
            ForecastCalibrationDecompositionBuilder> {
  @BuiltValueField(wireName: r'score')
  num get score;

  @BuiltValueField(wireName: r'miscalibration')
  num get miscalibration;

  @BuiltValueField(wireName: r'discrimination')
  num get discrimination;

  @BuiltValueField(wireName: r'uncertainty')
  num get uncertainty;

  ForecastCalibrationDecomposition._();

  factory ForecastCalibrationDecomposition(
          [void updates(ForecastCalibrationDecompositionBuilder b)]) =
      _$ForecastCalibrationDecomposition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastCalibrationDecompositionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastCalibrationDecomposition> get serializer =>
      _$ForecastCalibrationDecompositionSerializer();
}

class _$ForecastCalibrationDecompositionSerializer
    implements PrimitiveSerializer<ForecastCalibrationDecomposition> {
  @override
  final Iterable<Type> types = const [
    ForecastCalibrationDecomposition,
    _$ForecastCalibrationDecomposition
  ];

  @override
  final String wireName = r'ForecastCalibrationDecomposition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastCalibrationDecomposition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'score';
    yield serializers.serialize(
      object.score,
      specifiedType: const FullType(num),
    );
    yield r'miscalibration';
    yield serializers.serialize(
      object.miscalibration,
      specifiedType: const FullType(num),
    );
    yield r'discrimination';
    yield serializers.serialize(
      object.discrimination,
      specifiedType: const FullType(num),
    );
    yield r'uncertainty';
    yield serializers.serialize(
      object.uncertainty,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastCalibrationDecomposition object, {
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
    required ForecastCalibrationDecompositionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.score = valueDes;
          break;
        case r'miscalibration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.miscalibration = valueDes;
          break;
        case r'discrimination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.discrimination = valueDes;
          break;
        case r'uncertainty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.uncertainty = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastCalibrationDecomposition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastCalibrationDecompositionBuilder();
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
