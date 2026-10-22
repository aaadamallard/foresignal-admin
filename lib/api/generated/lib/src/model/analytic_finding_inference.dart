//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/finding_base_rate.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analytic_finding_inference.g.dart';

/// Inference by a named, versioned detector
///
/// Properties:
/// * [detector]
/// * [stats] - Method numbers by type: change-point `{changeAt, levelBefore, levelAfter, effect, detectionDelay, bocpdPosterior}`; pre-event-signal `{car, z, placeboP, corradoP, window, linkedEventId}`; unexplained-move `{z, linkedEventId, leadDays}`; co-occurrence `{families, pValues, fisherP, adjustedP, expectedJointRate, lift}`; precursor-active `{precursorId, expectedFrom, expectedTo, probability}`
/// * [baseRate]
/// * [explanation] - Deterministic templated explanation
@BuiltValue()
abstract class AnalyticFindingInference
    implements
        Built<AnalyticFindingInference, AnalyticFindingInferenceBuilder> {
  @BuiltValueField(wireName: r'detector')
  DetectorRef get detector;

  /// Method numbers by type: change-point `{changeAt, levelBefore, levelAfter, effect, detectionDelay, bocpdPosterior}`; pre-event-signal `{car, z, placeboP, corradoP, window, linkedEventId}`; unexplained-move `{z, linkedEventId, leadDays}`; co-occurrence `{families, pValues, fisherP, adjustedP, expectedJointRate, lift}`; precursor-active `{precursorId, expectedFrom, expectedTo, probability}`
  @BuiltValueField(wireName: r'stats')
  BuiltMap<String, JsonObject?> get stats;

  @BuiltValueField(wireName: r'baseRate')
  FindingBaseRate get baseRate;

  /// Deterministic templated explanation
  @BuiltValueField(wireName: r'explanation')
  String get explanation;

  AnalyticFindingInference._();

  factory AnalyticFindingInference([
    void updates(AnalyticFindingInferenceBuilder b),
  ]) = _$AnalyticFindingInference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalyticFindingInferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalyticFindingInference> get serializer =>
      _$AnalyticFindingInferenceSerializer();
}

class _$AnalyticFindingInferenceSerializer
    implements PrimitiveSerializer<AnalyticFindingInference> {
  @override
  final Iterable<Type> types = const [
    AnalyticFindingInference,
    _$AnalyticFindingInference,
  ];

  @override
  final String wireName = r'AnalyticFindingInference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalyticFindingInference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'detector';
    yield serializers.serialize(
      object.detector,
      specifiedType: const FullType(DetectorRef),
    );
    yield r'stats';
    yield serializers.serialize(
      object.stats,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(JsonObject),
      ]),
    );
    yield r'baseRate';
    yield serializers.serialize(
      object.baseRate,
      specifiedType: const FullType(FindingBaseRate),
    );
    yield r'explanation';
    yield serializers.serialize(
      object.explanation,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalyticFindingInference object, {
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
    required AnalyticFindingInferenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'detector':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DetectorRef),
                  )
                  as DetectorRef;
          result.detector.replace(valueDes);
          break;
        case r'stats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>;
          result.stats.replace(valueDes);
          break;
        case r'baseRate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(FindingBaseRate),
                  )
                  as FindingBaseRate;
          result.baseRate.replace(valueDes);
          break;
        case r'explanation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.explanation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalyticFindingInference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalyticFindingInferenceBuilder();
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
