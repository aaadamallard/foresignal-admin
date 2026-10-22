//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:foresignal_api/src/model/holding_pattern_payload_nearest_airport.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holding_pattern_payload.g.dart';

/// Kind `holding-pattern` (`derived-holding`): sustained turning at steady altitude
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [hex]
/// * [turnsDeg]
/// * [durationMin]
/// * [altitudeFt]
/// * [nearestAirport]
@BuiltValue()
abstract class HoldingPatternPayload
    implements Built<HoldingPatternPayload, HoldingPatternPayloadBuilder> {
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
  HoldingPatternPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'hex')
  String get hex;

  @BuiltValueField(wireName: r'turnsDeg')
  num get turnsDeg;

  @BuiltValueField(wireName: r'durationMin')
  num? get durationMin;

  @BuiltValueField(wireName: r'altitudeFt')
  num? get altitudeFt;

  @BuiltValueField(wireName: r'nearestAirport')
  HoldingPatternPayloadNearestAirport? get nearestAirport;

  HoldingPatternPayload._();

  factory HoldingPatternPayload(
      [void updates(HoldingPatternPayloadBuilder b)]) = _$HoldingPatternPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldingPatternPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldingPatternPayload> get serializer =>
      _$HoldingPatternPayloadSerializer();
}

class _$HoldingPatternPayloadSerializer
    implements PrimitiveSerializer<HoldingPatternPayload> {
  @override
  final Iterable<Type> types = const [
    HoldingPatternPayload,
    _$HoldingPatternPayload
  ];

  @override
  final String wireName = r'HoldingPatternPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldingPatternPayload object, {
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
      specifiedType: const FullType(HoldingPatternPayloadStatusEnum),
    );
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType:
            const FullType(BuiltList, [FullType(DerivedEvidenceRef)]),
      );
    }
    yield r'hex';
    yield serializers.serialize(
      object.hex,
      specifiedType: const FullType(String),
    );
    yield r'turnsDeg';
    yield serializers.serialize(
      object.turnsDeg,
      specifiedType: const FullType(num),
    );
    if (object.durationMin != null) {
      yield r'durationMin';
      yield serializers.serialize(
        object.durationMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.altitudeFt != null) {
      yield r'altitudeFt';
      yield serializers.serialize(
        object.altitudeFt,
        specifiedType: const FullType(num),
      );
    }
    if (object.nearestAirport != null) {
      yield r'nearestAirport';
      yield serializers.serialize(
        object.nearestAirport,
        specifiedType:
            const FullType.nullable(HoldingPatternPayloadNearestAirport),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HoldingPatternPayload object, {
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
    required HoldingPatternPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'automated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.automated = valueDes;
          break;
        case r'notAWarning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.notAWarning = valueDes;
          break;
        case r'detector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AircraftFusionPayloadDetector),
          ) as AircraftFusionPayloadDetector;
          result.detector.replace(valueDes);
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.confidence = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HoldingPatternPayloadStatusEnum),
          ) as HoldingPatternPayloadStatusEnum;
          result.status = valueDes;
          break;
        case r'evidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(DerivedEvidenceRef)]),
          ) as BuiltList<DerivedEvidenceRef>?;
          if (valueDes == null) continue;
          result.evidence.replace(valueDes);
          break;
        case r'hex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hex = valueDes;
          break;
        case r'turnsDeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.turnsDeg = valueDes;
          break;
        case r'durationMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.durationMin = valueDes;
          break;
        case r'altitudeFt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.altitudeFt = valueDes;
          break;
        case r'nearestAirport':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(HoldingPatternPayloadNearestAirport),
          ) as HoldingPatternPayloadNearestAirport?;
          if (valueDes == null) continue;
          result.nearestAirport.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HoldingPatternPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldingPatternPayloadBuilder();
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

class HoldingPatternPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const HoldingPatternPayloadStatusEnum ok =
      _$holdingPatternPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const HoldingPatternPayloadStatusEnum insufficientData =
      _$holdingPatternPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const HoldingPatternPayloadStatusEnum noCoverage =
      _$holdingPatternPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const HoldingPatternPayloadStatusEnum degradedInput =
      _$holdingPatternPayloadStatusEnum_degradedInput;

  static Serializer<HoldingPatternPayloadStatusEnum> get serializer =>
      _$holdingPatternPayloadStatusEnumSerializer;

  const HoldingPatternPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<HoldingPatternPayloadStatusEnum> get values =>
      _$holdingPatternPayloadStatusEnumValues;
  static HoldingPatternPayloadStatusEnum valueOf(String name) =>
      _$holdingPatternPayloadStatusEnumValueOf(name);
}
