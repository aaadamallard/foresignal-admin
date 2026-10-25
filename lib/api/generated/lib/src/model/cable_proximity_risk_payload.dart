//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cable_proximity_risk_payload.g.dart';

/// Kind `cable-proximity-risk` (`derived-cable-risk`): non-cable vessel anchored or slow near a submarine cable route
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [mmsi]
/// * [cableId]
/// * [cableName]
/// * [startedAt]
/// * [durationMin]
/// * [cablesWithin2Km]
/// * [possibleAnchorDrag]
/// * [aisGapNearCable]
/// * [severity]
@BuiltValue()
abstract class CableProximityRiskPayload
    implements
        Built<CableProximityRiskPayload, CableProximityRiskPayloadBuilder> {
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
  CableProximityRiskPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'mmsi')
  String get mmsi;

  @BuiltValueField(wireName: r'cableId')
  String get cableId;

  @BuiltValueField(wireName: r'cableName')
  String? get cableName;

  @BuiltValueField(wireName: r'startedAt')
  DateTime get startedAt;

  @BuiltValueField(wireName: r'durationMin')
  num? get durationMin;

  @BuiltValueField(wireName: r'cablesWithin2Km')
  int? get cablesWithin2Km;

  @BuiltValueField(wireName: r'possibleAnchorDrag')
  bool? get possibleAnchorDrag;

  @BuiltValueField(wireName: r'aisGapNearCable')
  bool? get aisGapNearCable;

  @BuiltValueField(wireName: r'severity')
  Severity? get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  CableProximityRiskPayload._();

  factory CableProximityRiskPayload([
    void updates(CableProximityRiskPayloadBuilder b),
  ]) = _$CableProximityRiskPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CableProximityRiskPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CableProximityRiskPayload> get serializer =>
      _$CableProximityRiskPayloadSerializer();
}

class _$CableProximityRiskPayloadSerializer
    implements PrimitiveSerializer<CableProximityRiskPayload> {
  @override
  final Iterable<Type> types = const [
    CableProximityRiskPayload,
    _$CableProximityRiskPayload,
  ];

  @override
  final String wireName = r'CableProximityRiskPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CableProximityRiskPayload object, {
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
      specifiedType: const FullType(CableProximityRiskPayloadStatusEnum),
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
    yield r'cableId';
    yield serializers.serialize(
      object.cableId,
      specifiedType: const FullType(String),
    );
    if (object.cableName != null) {
      yield r'cableName';
      yield serializers.serialize(
        object.cableName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'startedAt';
    yield serializers.serialize(
      object.startedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.durationMin != null) {
      yield r'durationMin';
      yield serializers.serialize(
        object.durationMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.cablesWithin2Km != null) {
      yield r'cablesWithin2Km';
      yield serializers.serialize(
        object.cablesWithin2Km,
        specifiedType: const FullType(int),
      );
    }
    if (object.possibleAnchorDrag != null) {
      yield r'possibleAnchorDrag';
      yield serializers.serialize(
        object.possibleAnchorDrag,
        specifiedType: const FullType(bool),
      );
    }
    if (object.aisGapNearCable != null) {
      yield r'aisGapNearCable';
      yield serializers.serialize(
        object.aisGapNearCable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType(Severity),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CableProximityRiskPayload object, {
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
    required CableProximityRiskPayloadBuilder result,
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
                      CableProximityRiskPayloadStatusEnum,
                    ),
                  )
                  as CableProximityRiskPayloadStatusEnum;
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
        case r'cableId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.cableId = valueDes;
          break;
        case r'cableName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.cableName = valueDes;
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.startedAt = valueDes;
          break;
        case r'durationMin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.durationMin = valueDes;
          break;
        case r'cablesWithin2Km':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.cablesWithin2Km = valueDes;
          break;
        case r'possibleAnchorDrag':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.possibleAnchorDrag = valueDes;
          break;
        case r'aisGapNearCable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.aisGapNearCable = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Severity),
                  )
                  as Severity?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CableProximityRiskPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CableProximityRiskPayloadBuilder();
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

class CableProximityRiskPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const CableProximityRiskPayloadStatusEnum ok =
      _$cableProximityRiskPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const CableProximityRiskPayloadStatusEnum insufficientData =
      _$cableProximityRiskPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const CableProximityRiskPayloadStatusEnum noCoverage =
      _$cableProximityRiskPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const CableProximityRiskPayloadStatusEnum degradedInput =
      _$cableProximityRiskPayloadStatusEnum_degradedInput;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CableProximityRiskPayloadStatusEnum unknownDefaultOpenApi =
      _$cableProximityRiskPayloadStatusEnum_unknownDefaultOpenApi;

  static Serializer<CableProximityRiskPayloadStatusEnum> get serializer =>
      _$cableProximityRiskPayloadStatusEnumSerializer;

  const CableProximityRiskPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<CableProximityRiskPayloadStatusEnum> get values =>
      _$cableProximityRiskPayloadStatusEnumValues;
  static CableProximityRiskPayloadStatusEnum valueOf(String name) =>
      _$cableProximityRiskPayloadStatusEnumValueOf(name);
}
