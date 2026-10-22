//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intelligence_event_inference.g.dart';

/// What the detector derived
///
/// Properties:
/// * [confidence] - The calibrated probability when `calibrated` is true, otherwise the raw EventScorer score (capped at 0.95)
/// * [rawConfidence] - The uncalibrated EventScorer score behind `confidence` (151); equal to `confidence` until calibrated
/// * [confidenceLabel] - low < 0.4 ≤ moderate < 0.7 ≤ high
/// * [confidenceMethod]
/// * [calibrated] - True when `confidence` is a calibrated probability backed by resolved outcomes (151); until a scope has enough resolved history the raw score stands and this is false
/// * [evidenceQuality]
/// * [startTime]
/// * [endTime] - null while open
/// * [lastEvidenceAt]
/// * [geometry]
/// * [centroid]
/// * [regionTags]
/// * [explanation] - Deterministic templated text citing members
@BuiltValue()
abstract class IntelligenceEventInference
    implements
        Built<IntelligenceEventInference, IntelligenceEventInferenceBuilder> {
  /// The calibrated probability when `calibrated` is true, otherwise the raw EventScorer score (capped at 0.95)
  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  /// The uncalibrated EventScorer score behind `confidence` (151); equal to `confidence` until calibrated
  @BuiltValueField(wireName: r'rawConfidence')
  num? get rawConfidence;

  /// low < 0.4 ≤ moderate < 0.7 ≤ high
  @BuiltValueField(wireName: r'confidenceLabel')
  IntelligenceEventInferenceConfidenceLabelEnum get confidenceLabel;
  // enum confidenceLabelEnum {  low,  moderate,  high,  };

  @BuiltValueField(wireName: r'confidenceMethod')
  String get confidenceMethod;

  /// True when `confidence` is a calibrated probability backed by resolved outcomes (151); until a scope has enough resolved history the raw score stands and this is false
  @BuiltValueField(wireName: r'calibrated')
  bool get calibrated;

  @BuiltValueField(wireName: r'evidenceQuality')
  IntelligenceEventInferenceEvidenceQualityEnum get evidenceQuality;
  // enum evidenceQualityEnum {  strong,  moderate,  weak,  insufficient,  };

  @BuiltValueField(wireName: r'startTime')
  DateTime get startTime;

  /// null while open
  @BuiltValueField(wireName: r'endTime')
  DateTime? get endTime;

  @BuiltValueField(wireName: r'lastEvidenceAt')
  DateTime? get lastEvidenceAt;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'centroid')
  Geometry? get centroid;

  @BuiltValueField(wireName: r'regionTags')
  BuiltList<String>? get regionTags;

  /// Deterministic templated text citing members
  @BuiltValueField(wireName: r'explanation')
  String get explanation;

  IntelligenceEventInference._();

  factory IntelligenceEventInference(
          [void updates(IntelligenceEventInferenceBuilder b)]) =
      _$IntelligenceEventInference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelligenceEventInferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelligenceEventInference> get serializer =>
      _$IntelligenceEventInferenceSerializer();
}

class _$IntelligenceEventInferenceSerializer
    implements PrimitiveSerializer<IntelligenceEventInference> {
  @override
  final Iterable<Type> types = const [
    IntelligenceEventInference,
    _$IntelligenceEventInference
  ];

  @override
  final String wireName = r'IntelligenceEventInference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelligenceEventInference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    if (object.rawConfidence != null) {
      yield r'rawConfidence';
      yield serializers.serialize(
        object.rawConfidence,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'confidenceLabel';
    yield serializers.serialize(
      object.confidenceLabel,
      specifiedType:
          const FullType(IntelligenceEventInferenceConfidenceLabelEnum),
    );
    yield r'confidenceMethod';
    yield serializers.serialize(
      object.confidenceMethod,
      specifiedType: const FullType(String),
    );
    yield r'calibrated';
    yield serializers.serialize(
      object.calibrated,
      specifiedType: const FullType(bool),
    );
    yield r'evidenceQuality';
    yield serializers.serialize(
      object.evidenceQuality,
      specifiedType:
          const FullType(IntelligenceEventInferenceEvidenceQualityEnum),
    );
    yield r'startTime';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastEvidenceAt != null) {
      yield r'lastEvidenceAt';
      yield serializers.serialize(
        object.lastEvidenceAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.centroid != null) {
      yield r'centroid';
      yield serializers.serialize(
        object.centroid,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.regionTags != null) {
      yield r'regionTags';
      yield serializers.serialize(
        object.regionTags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'explanation';
    yield serializers.serialize(
      object.explanation,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelligenceEventInference object, {
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
    required IntelligenceEventInferenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confidence = valueDes;
          break;
        case r'rawConfidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.rawConfidence = valueDes;
          break;
        case r'confidenceLabel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(IntelligenceEventInferenceConfidenceLabelEnum),
          ) as IntelligenceEventInferenceConfidenceLabelEnum;
          result.confidenceLabel = valueDes;
          break;
        case r'confidenceMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.confidenceMethod = valueDes;
          break;
        case r'calibrated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.calibrated = valueDes;
          break;
        case r'evidenceQuality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(IntelligenceEventInferenceEvidenceQualityEnum),
          ) as IntelligenceEventInferenceEvidenceQualityEnum;
          result.evidenceQuality = valueDes;
          break;
        case r'startTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startTime = valueDes;
          break;
        case r'endTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        case r'lastEvidenceAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastEvidenceAt = valueDes;
          break;
        case r'geometry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'centroid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.centroid.replace(valueDes);
          break;
        case r'regionTags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionTags.replace(valueDes);
          break;
        case r'explanation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  IntelligenceEventInference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelligenceEventInferenceBuilder();
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

/// low < 0.4 ≤ moderate < 0.7 ≤ high
class IntelligenceEventInferenceConfidenceLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const IntelligenceEventInferenceConfidenceLabelEnum low =
      _$intelligenceEventInferenceConfidenceLabelEnum_low;
  @BuiltValueEnumConst(wireName: r'moderate')
  static const IntelligenceEventInferenceConfidenceLabelEnum moderate =
      _$intelligenceEventInferenceConfidenceLabelEnum_moderate;
  @BuiltValueEnumConst(wireName: r'high')
  static const IntelligenceEventInferenceConfidenceLabelEnum high =
      _$intelligenceEventInferenceConfidenceLabelEnum_high;

  static Serializer<IntelligenceEventInferenceConfidenceLabelEnum>
      get serializer =>
          _$intelligenceEventInferenceConfidenceLabelEnumSerializer;

  const IntelligenceEventInferenceConfidenceLabelEnum._(String name)
      : super(name);

  static BuiltSet<IntelligenceEventInferenceConfidenceLabelEnum> get values =>
      _$intelligenceEventInferenceConfidenceLabelEnumValues;
  static IntelligenceEventInferenceConfidenceLabelEnum valueOf(String name) =>
      _$intelligenceEventInferenceConfidenceLabelEnumValueOf(name);
}

class IntelligenceEventInferenceEvidenceQualityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'strong')
  static const IntelligenceEventInferenceEvidenceQualityEnum strong =
      _$intelligenceEventInferenceEvidenceQualityEnum_strong;
  @BuiltValueEnumConst(wireName: r'moderate')
  static const IntelligenceEventInferenceEvidenceQualityEnum moderate =
      _$intelligenceEventInferenceEvidenceQualityEnum_moderate;
  @BuiltValueEnumConst(wireName: r'weak')
  static const IntelligenceEventInferenceEvidenceQualityEnum weak =
      _$intelligenceEventInferenceEvidenceQualityEnum_weak;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const IntelligenceEventInferenceEvidenceQualityEnum insufficient =
      _$intelligenceEventInferenceEvidenceQualityEnum_insufficient;

  static Serializer<IntelligenceEventInferenceEvidenceQualityEnum>
      get serializer =>
          _$intelligenceEventInferenceEvidenceQualityEnumSerializer;

  const IntelligenceEventInferenceEvidenceQualityEnum._(String name)
      : super(name);

  static BuiltSet<IntelligenceEventInferenceEvidenceQualityEnum> get values =>
      _$intelligenceEventInferenceEvidenceQualityEnumValues;
  static IntelligenceEventInferenceEvidenceQualityEnum valueOf(String name) =>
      _$intelligenceEventInferenceEvidenceQualityEnumValueOf(name);
}
