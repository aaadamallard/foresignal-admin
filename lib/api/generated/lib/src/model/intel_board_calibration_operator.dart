//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_board_calibration_operator.g.dart';

/// Operator (≥ 20 resolved forecasts)
///
/// Properties:
/// * [brierSkill]
/// * [calibration]
/// * [n]
@BuiltValue()
abstract class IntelBoardCalibrationOperator
    implements
        Built<
          IntelBoardCalibrationOperator,
          IntelBoardCalibrationOperatorBuilder
        > {
  @BuiltValueField(wireName: r'brierSkill')
  num? get brierSkill;

  @BuiltValueField(wireName: r'calibration')
  String? get calibration;

  @BuiltValueField(wireName: r'n')
  int get n;

  IntelBoardCalibrationOperator._();

  factory IntelBoardCalibrationOperator([
    void updates(IntelBoardCalibrationOperatorBuilder b),
  ]) = _$IntelBoardCalibrationOperator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelBoardCalibrationOperatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelBoardCalibrationOperator> get serializer =>
      _$IntelBoardCalibrationOperatorSerializer();
}

class _$IntelBoardCalibrationOperatorSerializer
    implements PrimitiveSerializer<IntelBoardCalibrationOperator> {
  @override
  final Iterable<Type> types = const [
    IntelBoardCalibrationOperator,
    _$IntelBoardCalibrationOperator,
  ];

  @override
  final String wireName = r'IntelBoardCalibrationOperator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelBoardCalibrationOperator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.brierSkill != null) {
      yield r'brierSkill';
      yield serializers.serialize(
        object.brierSkill,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.calibration != null) {
      yield r'calibration';
      yield serializers.serialize(
        object.calibration,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'n';
    yield serializers.serialize(object.n, specifiedType: const FullType(int));
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelBoardCalibrationOperator object, {
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
    required IntelBoardCalibrationOperatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'brierSkill':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.brierSkill = valueDes;
          break;
        case r'calibration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.calibration = valueDes;
          break;
        case r'n':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.n = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelBoardCalibrationOperator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelBoardCalibrationOperatorBuilder();
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
