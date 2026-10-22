//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rendezvous_payload.g.dart';

/// Kind `rendezvous` (`derived-rendezvous`): two slow vessels within 0.5 nm for ≥ 15 min away from ports
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [vessels] - Sorted entity ids or MMSIs
/// * [distanceNm]
/// * [startedAt]
/// * [durationMin]
/// * [nearestPortKm]
@BuiltValue()
abstract class RendezvousPayload
    implements Built<RendezvousPayload, RendezvousPayloadBuilder> {
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
  RendezvousPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  /// Sorted entity ids or MMSIs
  @BuiltValueField(wireName: r'vessels')
  BuiltList<String> get vessels;

  @BuiltValueField(wireName: r'distanceNm')
  num? get distanceNm;

  @BuiltValueField(wireName: r'startedAt')
  DateTime get startedAt;

  @BuiltValueField(wireName: r'durationMin')
  num? get durationMin;

  @BuiltValueField(wireName: r'nearestPortKm')
  num? get nearestPortKm;

  RendezvousPayload._();

  factory RendezvousPayload([void updates(RendezvousPayloadBuilder b)]) =
      _$RendezvousPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RendezvousPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RendezvousPayload> get serializer =>
      _$RendezvousPayloadSerializer();
}

class _$RendezvousPayloadSerializer
    implements PrimitiveSerializer<RendezvousPayload> {
  @override
  final Iterable<Type> types = const [RendezvousPayload, _$RendezvousPayload];

  @override
  final String wireName = r'RendezvousPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RendezvousPayload object, {
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
      specifiedType: const FullType(RendezvousPayloadStatusEnum),
    );
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType:
            const FullType(BuiltList, [FullType(DerivedEvidenceRef)]),
      );
    }
    yield r'vessels';
    yield serializers.serialize(
      object.vessels,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.distanceNm != null) {
      yield r'distanceNm';
      yield serializers.serialize(
        object.distanceNm,
        specifiedType: const FullType(num),
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
    if (object.nearestPortKm != null) {
      yield r'nearestPortKm';
      yield serializers.serialize(
        object.nearestPortKm,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RendezvousPayload object, {
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
    required RendezvousPayloadBuilder result,
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
            specifiedType: const FullType(RendezvousPayloadStatusEnum),
          ) as RendezvousPayloadStatusEnum;
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
        case r'vessels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.vessels.replace(valueDes);
          break;
        case r'distanceNm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.distanceNm = valueDes;
          break;
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startedAt = valueDes;
          break;
        case r'durationMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.durationMin = valueDes;
          break;
        case r'nearestPortKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.nearestPortKm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RendezvousPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RendezvousPayloadBuilder();
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

class RendezvousPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const RendezvousPayloadStatusEnum ok =
      _$rendezvousPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const RendezvousPayloadStatusEnum insufficientData =
      _$rendezvousPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const RendezvousPayloadStatusEnum noCoverage =
      _$rendezvousPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const RendezvousPayloadStatusEnum degradedInput =
      _$rendezvousPayloadStatusEnum_degradedInput;

  static Serializer<RendezvousPayloadStatusEnum> get serializer =>
      _$rendezvousPayloadStatusEnumSerializer;

  const RendezvousPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<RendezvousPayloadStatusEnum> get values =>
      _$rendezvousPayloadStatusEnumValues;
  static RendezvousPayloadStatusEnum valueOf(String name) =>
      _$rendezvousPayloadStatusEnumValueOf(name);
}
