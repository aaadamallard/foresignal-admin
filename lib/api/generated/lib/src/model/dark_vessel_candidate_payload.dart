//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dark_vessel_candidate_payload.g.dart';

/// Kind `dark-vessel-candidate` (`derived-dark-vessel-match`): AIS gap joined with an unmatched SAR detection. A candidate; SAR detections are not identifications.
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [mmsi]
/// * [gapStart]
/// * [detectionId]
/// * [distanceKm]
/// * [timeOffsetMin]
/// * [detectionLengthM]
/// * [matchScore]
/// * [label]
@BuiltValue()
abstract class DarkVesselCandidatePayload
    implements
        Built<DarkVesselCandidatePayload, DarkVesselCandidatePayloadBuilder> {
  @BuiltValueField(wireName: r'automated')
  bool get automated;

  @BuiltValueField(wireName: r'notAWarning')
  bool get notAWarning;

  @BuiltValueField(wireName: r'detector')
  AircraftFusionPayloadDetector get detector;

  /// Banded to 0.1; a score, not a calibrated probability
  @BuiltValueField(wireName: r'confidence')
  num? get confidence;

  @BuiltValueField(wireName: r'status')
  DarkVesselCandidatePayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'mmsi')
  String get mmsi;

  @BuiltValueField(wireName: r'gapStart')
  DateTime get gapStart;

  @BuiltValueField(wireName: r'detectionId')
  String get detectionId;

  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  @BuiltValueField(wireName: r'timeOffsetMin')
  num? get timeOffsetMin;

  @BuiltValueField(wireName: r'detectionLengthM')
  num? get detectionLengthM;

  @BuiltValueField(wireName: r'matchScore')
  num get matchScore;

  @BuiltValueField(wireName: r'label')
  String? get label;

  DarkVesselCandidatePayload._();

  factory DarkVesselCandidatePayload([
    void updates(DarkVesselCandidatePayloadBuilder b),
  ]) = _$DarkVesselCandidatePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DarkVesselCandidatePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DarkVesselCandidatePayload> get serializer =>
      _$DarkVesselCandidatePayloadSerializer();
}

class _$DarkVesselCandidatePayloadSerializer
    implements PrimitiveSerializer<DarkVesselCandidatePayload> {
  @override
  final Iterable<Type> types = const [
    DarkVesselCandidatePayload,
    _$DarkVesselCandidatePayload,
  ];

  @override
  final String wireName = r'DarkVesselCandidatePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DarkVesselCandidatePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'automated';
    yield serializers.serialize(
      object.automated,
      specifiedType: const FullType(bool),
    );
    yield r'notAWarning';
    yield serializers.serialize(
      object.notAWarning,
      specifiedType: const FullType(bool),
    );
    yield r'detector';
    yield serializers.serialize(
      object.detector,
      specifiedType: const FullType(AircraftFusionPayloadDetector),
    );
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType(num),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DarkVesselCandidatePayloadStatusEnum),
    );
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType: const FullType(BuiltList, [
          FullType(DerivedEvidenceRef),
        ]),
      );
    }
    yield r'mmsi';
    yield serializers.serialize(
      object.mmsi,
      specifiedType: const FullType(String),
    );
    yield r'gapStart';
    yield serializers.serialize(
      object.gapStart,
      specifiedType: const FullType(DateTime),
    );
    yield r'detectionId';
    yield serializers.serialize(
      object.detectionId,
      specifiedType: const FullType(String),
    );
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.timeOffsetMin != null) {
      yield r'timeOffsetMin';
      yield serializers.serialize(
        object.timeOffsetMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.detectionLengthM != null) {
      yield r'detectionLengthM';
      yield serializers.serialize(
        object.detectionLengthM,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'matchScore';
    yield serializers.serialize(
      object.matchScore,
      specifiedType: const FullType(num),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DarkVesselCandidatePayload object, {
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
    required DarkVesselCandidatePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'automated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.automated = valueDes;
          break;
        case r'notAWarning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.notAWarning = valueDes;
          break;
        case r'detector':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AircraftFusionPayloadDetector,
                    ),
                  )
                  as AircraftFusionPayloadDetector;
          result.detector.replace(valueDes);
          break;
        case r'confidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.confidence = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      DarkVesselCandidatePayloadStatusEnum,
                    ),
                  )
                  as DarkVesselCandidatePayloadStatusEnum;
          result.status = valueDes;
          break;
        case r'evidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(DerivedEvidenceRef),
                    ]),
                  )
                  as BuiltList<DerivedEvidenceRef>?;
          if (valueDes == null) continue;
          result.evidence.replace(valueDes);
          break;
        case r'mmsi':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.mmsi = valueDes;
          break;
        case r'gapStart':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.gapStart = valueDes;
          break;
        case r'detectionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.detectionId = valueDes;
          break;
        case r'distanceKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.distanceKm = valueDes;
          break;
        case r'timeOffsetMin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.timeOffsetMin = valueDes;
          break;
        case r'detectionLengthM':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.detectionLengthM = valueDes;
          break;
        case r'matchScore':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.matchScore = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DarkVesselCandidatePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DarkVesselCandidatePayloadBuilder();
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

class DarkVesselCandidatePayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const DarkVesselCandidatePayloadStatusEnum ok =
      _$darkVesselCandidatePayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const DarkVesselCandidatePayloadStatusEnum insufficientData =
      _$darkVesselCandidatePayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const DarkVesselCandidatePayloadStatusEnum noCoverage =
      _$darkVesselCandidatePayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const DarkVesselCandidatePayloadStatusEnum degradedInput =
      _$darkVesselCandidatePayloadStatusEnum_degradedInput;

  static Serializer<DarkVesselCandidatePayloadStatusEnum> get serializer =>
      _$darkVesselCandidatePayloadStatusEnumSerializer;

  const DarkVesselCandidatePayloadStatusEnum._(String name) : super(name);

  static BuiltSet<DarkVesselCandidatePayloadStatusEnum> get values =>
      _$darkVesselCandidatePayloadStatusEnumValues;
  static DarkVesselCandidatePayloadStatusEnum valueOf(String name) =>
      _$darkVesselCandidatePayloadStatusEnumValueOf(name);
}
