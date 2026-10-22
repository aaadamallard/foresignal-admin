//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/intel_board_calibration_operator.dart';
import 'package:foresignal_api/src/model/intel_board_calibration_ensemble.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_board_calibration.g.dart';

/// Brier skill and calibration over the last 90 days, operator vs machine
///
/// Properties:
/// * [window]
/// * [ensemble]
/// * [operator_]
@BuiltValue()
abstract class IntelBoardCalibration
    implements Built<IntelBoardCalibration, IntelBoardCalibrationBuilder> {
  @BuiltValueField(wireName: r'window')
  String? get window;

  @BuiltValueField(wireName: r'ensemble')
  IntelBoardCalibrationEnsemble? get ensemble;

  @BuiltValueField(wireName: r'operator')
  IntelBoardCalibrationOperator? get operator_;

  IntelBoardCalibration._();

  factory IntelBoardCalibration(
      [void updates(IntelBoardCalibrationBuilder b)]) = _$IntelBoardCalibration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelBoardCalibrationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelBoardCalibration> get serializer =>
      _$IntelBoardCalibrationSerializer();
}

class _$IntelBoardCalibrationSerializer
    implements PrimitiveSerializer<IntelBoardCalibration> {
  @override
  final Iterable<Type> types = const [
    IntelBoardCalibration,
    _$IntelBoardCalibration
  ];

  @override
  final String wireName = r'IntelBoardCalibration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelBoardCalibration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType: const FullType(String),
      );
    }
    if (object.ensemble != null) {
      yield r'ensemble';
      yield serializers.serialize(
        object.ensemble,
        specifiedType: const FullType.nullable(IntelBoardCalibrationEnsemble),
      );
    }
    if (object.operator_ != null) {
      yield r'operator';
      yield serializers.serialize(
        object.operator_,
        specifiedType: const FullType.nullable(IntelBoardCalibrationOperator),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelBoardCalibration object, {
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
    required IntelBoardCalibrationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.window = valueDes;
          break;
        case r'ensemble':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(IntelBoardCalibrationEnsemble),
          ) as IntelBoardCalibrationEnsemble?;
          if (valueDes == null) continue;
          result.ensemble.replace(valueDes);
          break;
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(IntelBoardCalibrationOperator),
          ) as IntelBoardCalibrationOperator?;
          if (valueDes == null) continue;
          result.operator_.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelBoardCalibration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelBoardCalibrationBuilder();
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
