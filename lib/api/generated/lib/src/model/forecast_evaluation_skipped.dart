//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_evaluation_skipped.g.dart';

/// Skipped questions by reason
///
/// Properties:
/// * [leakageRisk] - Opened before the model's knowledgeCutoff (`LEAKAGE_RISK`)
/// * [other]
@BuiltValue()
abstract class ForecastEvaluationSkipped
    implements
        Built<ForecastEvaluationSkipped, ForecastEvaluationSkippedBuilder> {
  /// Opened before the model's knowledgeCutoff (`LEAKAGE_RISK`)
  @BuiltValueField(wireName: r'leakageRisk')
  int get leakageRisk;

  @BuiltValueField(wireName: r'other')
  int? get other;

  ForecastEvaluationSkipped._();

  factory ForecastEvaluationSkipped(
          [void updates(ForecastEvaluationSkippedBuilder b)]) =
      _$ForecastEvaluationSkipped;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastEvaluationSkippedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastEvaluationSkipped> get serializer =>
      _$ForecastEvaluationSkippedSerializer();
}

class _$ForecastEvaluationSkippedSerializer
    implements PrimitiveSerializer<ForecastEvaluationSkipped> {
  @override
  final Iterable<Type> types = const [
    ForecastEvaluationSkipped,
    _$ForecastEvaluationSkipped
  ];

  @override
  final String wireName = r'ForecastEvaluationSkipped';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastEvaluationSkipped object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'leakageRisk';
    yield serializers.serialize(
      object.leakageRisk,
      specifiedType: const FullType(int),
    );
    if (object.other != null) {
      yield r'other';
      yield serializers.serialize(
        object.other,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastEvaluationSkipped object, {
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
    required ForecastEvaluationSkippedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'leakageRisk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.leakageRisk = valueDes;
          break;
        case r'other':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.other = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastEvaluationSkipped deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastEvaluationSkippedBuilder();
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
