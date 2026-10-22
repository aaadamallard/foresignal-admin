//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_board_calibration_ensemble.g.dart';

/// Ensemble
///
/// Properties:
/// * [brierSkill]
/// * [calibration]
/// * [n]
@BuiltValue()
abstract class IntelBoardCalibrationEnsemble
    implements
        Built<
          IntelBoardCalibrationEnsemble,
          IntelBoardCalibrationEnsembleBuilder
        > {
  @BuiltValueField(wireName: r'brierSkill')
  num? get brierSkill;

  @BuiltValueField(wireName: r'calibration')
  String? get calibration;

  @BuiltValueField(wireName: r'n')
  int get n;

  IntelBoardCalibrationEnsemble._();

  factory IntelBoardCalibrationEnsemble([
    void updates(IntelBoardCalibrationEnsembleBuilder b),
  ]) = _$IntelBoardCalibrationEnsemble;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelBoardCalibrationEnsembleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelBoardCalibrationEnsemble> get serializer =>
      _$IntelBoardCalibrationEnsembleSerializer();
}

class _$IntelBoardCalibrationEnsembleSerializer
    implements PrimitiveSerializer<IntelBoardCalibrationEnsemble> {
  @override
  final Iterable<Type> types = const [
    IntelBoardCalibrationEnsemble,
    _$IntelBoardCalibrationEnsemble,
  ];

  @override
  final String wireName = r'IntelBoardCalibrationEnsemble';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelBoardCalibrationEnsemble object, {
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
    IntelBoardCalibrationEnsemble object, {
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
    required IntelBoardCalibrationEnsembleBuilder result,
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
  IntelBoardCalibrationEnsemble deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelBoardCalibrationEnsembleBuilder();
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
