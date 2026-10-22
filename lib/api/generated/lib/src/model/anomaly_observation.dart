//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/anomaly_observation_baseline.dart';
import 'package:foresignal_api/src/model/anomaly_observation_evidence.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anomaly_observation.g.dart';

/// One evaluated anomaly bucket. `pValue` assumes the stated count model; it is not the probability that something is happening.
///
/// Properties:
/// * [id]
/// * [ruleId]
/// * [groupKey]
/// * [bucketStart]
/// * [bucketEnd]
/// * [observed]
/// * [expected] - λ = slot mean × coverage ratio
/// * [exposure] - Coverage ratio applied to the expectation
/// * [pValue]
/// * [score] - Anscombe-transformed z
/// * [direction]
/// * [classification]
/// * [lowConfidence]
/// * [baseline]
/// * [detector]
/// * [evidence]
/// * [watermarkSeq]
/// * [alertId]
/// * [manifestId] - The analysis manifest of this output (prompt 116); null for outputs written before it
@BuiltValue()
abstract class AnomalyObservation
    implements Built<AnomalyObservation, AnomalyObservationBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'groupKey')
  String get groupKey;

  @BuiltValueField(wireName: r'bucketStart')
  DateTime get bucketStart;

  @BuiltValueField(wireName: r'bucketEnd')
  DateTime get bucketEnd;

  @BuiltValueField(wireName: r'observed')
  int get observed;

  /// λ = slot mean × coverage ratio
  @BuiltValueField(wireName: r'expected')
  num get expected;

  /// Coverage ratio applied to the expectation
  @BuiltValueField(wireName: r'exposure')
  num? get exposure;

  @BuiltValueField(wireName: r'pValue')
  num? get pValue;

  /// Anscombe-transformed z
  @BuiltValueField(wireName: r'score')
  num? get score;

  @BuiltValueField(wireName: r'direction')
  AnomalyObservationDirectionEnum? get direction;
  // enum directionEnum {  up,  down,  };

  @BuiltValueField(wireName: r'classification')
  AnomalyObservationClassificationEnum get classification;
  // enum classificationEnum {  activity-up,  activity-down,  coverage-drop,  insufficient-coverage,  learning,  normal,  };

  @BuiltValueField(wireName: r'lowConfidence')
  bool? get lowConfidence;

  @BuiltValueField(wireName: r'baseline')
  AnomalyObservationBaseline get baseline;

  @BuiltValueField(wireName: r'detector')
  DetectorRef get detector;

  @BuiltValueField(wireName: r'evidence')
  AnomalyObservationEvidence? get evidence;

  @BuiltValueField(wireName: r'watermarkSeq')
  int get watermarkSeq;

  @BuiltValueField(wireName: r'alertId')
  int? get alertId;

  /// The analysis manifest of this output (prompt 116); null for outputs written before it
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  AnomalyObservation._();

  factory AnomalyObservation([void updates(AnomalyObservationBuilder b)]) =
      _$AnomalyObservation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnomalyObservationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnomalyObservation> get serializer =>
      _$AnomalyObservationSerializer();
}

class _$AnomalyObservationSerializer
    implements PrimitiveSerializer<AnomalyObservation> {
  @override
  final Iterable<Type> types = const [AnomalyObservation, _$AnomalyObservation];

  @override
  final String wireName = r'AnomalyObservation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnomalyObservation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'groupKey';
    yield serializers.serialize(
      object.groupKey,
      specifiedType: const FullType(String),
    );
    yield r'bucketStart';
    yield serializers.serialize(
      object.bucketStart,
      specifiedType: const FullType(DateTime),
    );
    yield r'bucketEnd';
    yield serializers.serialize(
      object.bucketEnd,
      specifiedType: const FullType(DateTime),
    );
    yield r'observed';
    yield serializers.serialize(
      object.observed,
      specifiedType: const FullType(int),
    );
    yield r'expected';
    yield serializers.serialize(
      object.expected,
      specifiedType: const FullType(num),
    );
    if (object.exposure != null) {
      yield r'exposure';
      yield serializers.serialize(
        object.exposure,
        specifiedType: const FullType(num),
      );
    }
    if (object.pValue != null) {
      yield r'pValue';
      yield serializers.serialize(
        object.pValue,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType.nullable(AnomalyObservationDirectionEnum),
      );
    }
    yield r'classification';
    yield serializers.serialize(
      object.classification,
      specifiedType: const FullType(AnomalyObservationClassificationEnum),
    );
    if (object.lowConfidence != null) {
      yield r'lowConfidence';
      yield serializers.serialize(
        object.lowConfidence,
        specifiedType: const FullType(bool),
      );
    }
    yield r'baseline';
    yield serializers.serialize(
      object.baseline,
      specifiedType: const FullType(AnomalyObservationBaseline),
    );
    yield r'detector';
    yield serializers.serialize(
      object.detector,
      specifiedType: const FullType(DetectorRef),
    );
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType: const FullType(AnomalyObservationEvidence),
      );
    }
    yield r'watermarkSeq';
    yield serializers.serialize(
      object.watermarkSeq,
      specifiedType: const FullType(int),
    );
    if (object.alertId != null) {
      yield r'alertId';
      yield serializers.serialize(
        object.alertId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnomalyObservation object, {
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
    required AnomalyObservationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleId = valueDes;
          break;
        case r'groupKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.groupKey = valueDes;
          break;
        case r'bucketStart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.bucketStart = valueDes;
          break;
        case r'bucketEnd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.bucketEnd = valueDes;
          break;
        case r'observed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.observed = valueDes;
          break;
        case r'expected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.expected = valueDes;
          break;
        case r'exposure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.exposure = valueDes;
          break;
        case r'pValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.pValue = valueDes;
          break;
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.score = valueDes;
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(AnomalyObservationDirectionEnum),
          ) as AnomalyObservationDirectionEnum?;
          if (valueDes == null) continue;
          result.direction = valueDes;
          break;
        case r'classification':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnomalyObservationClassificationEnum),
          ) as AnomalyObservationClassificationEnum;
          result.classification = valueDes;
          break;
        case r'lowConfidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.lowConfidence = valueDes;
          break;
        case r'baseline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnomalyObservationBaseline),
          ) as AnomalyObservationBaseline;
          result.baseline.replace(valueDes);
          break;
        case r'detector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DetectorRef),
          ) as DetectorRef;
          result.detector.replace(valueDes);
          break;
        case r'evidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AnomalyObservationEvidence),
          ) as AnomalyObservationEvidence?;
          if (valueDes == null) continue;
          result.evidence.replace(valueDes);
          break;
        case r'watermarkSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.watermarkSeq = valueDes;
          break;
        case r'alertId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.alertId = valueDes;
          break;
        case r'manifestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnomalyObservation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnomalyObservationBuilder();
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

class AnomalyObservationDirectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'up')
  static const AnomalyObservationDirectionEnum up =
      _$anomalyObservationDirectionEnum_up;
  @BuiltValueEnumConst(wireName: r'down')
  static const AnomalyObservationDirectionEnum down =
      _$anomalyObservationDirectionEnum_down;

  static Serializer<AnomalyObservationDirectionEnum> get serializer =>
      _$anomalyObservationDirectionEnumSerializer;

  const AnomalyObservationDirectionEnum._(String name) : super(name);

  static BuiltSet<AnomalyObservationDirectionEnum> get values =>
      _$anomalyObservationDirectionEnumValues;
  static AnomalyObservationDirectionEnum valueOf(String name) =>
      _$anomalyObservationDirectionEnumValueOf(name);
}

class AnomalyObservationClassificationEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'activity-up')
  static const AnomalyObservationClassificationEnum activityUp =
      _$anomalyObservationClassificationEnum_activityUp;
  @BuiltValueEnumConst(wireName: r'activity-down')
  static const AnomalyObservationClassificationEnum activityDown =
      _$anomalyObservationClassificationEnum_activityDown;
  @BuiltValueEnumConst(wireName: r'coverage-drop')
  static const AnomalyObservationClassificationEnum coverageDrop =
      _$anomalyObservationClassificationEnum_coverageDrop;
  @BuiltValueEnumConst(wireName: r'insufficient-coverage')
  static const AnomalyObservationClassificationEnum insufficientCoverage =
      _$anomalyObservationClassificationEnum_insufficientCoverage;
  @BuiltValueEnumConst(wireName: r'learning')
  static const AnomalyObservationClassificationEnum learning =
      _$anomalyObservationClassificationEnum_learning;
  @BuiltValueEnumConst(wireName: r'normal')
  static const AnomalyObservationClassificationEnum normal =
      _$anomalyObservationClassificationEnum_normal;

  static Serializer<AnomalyObservationClassificationEnum> get serializer =>
      _$anomalyObservationClassificationEnumSerializer;

  const AnomalyObservationClassificationEnum._(String name) : super(name);

  static BuiltSet<AnomalyObservationClassificationEnum> get values =>
      _$anomalyObservationClassificationEnumValues;
  static AnomalyObservationClassificationEnum valueOf(String name) =>
      _$anomalyObservationClassificationEnumValueOf(name);
}
