//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ais_gap_payload.g.dart';

/// Kind `ais-gap` (`derived-ais-gap`): a moving vessel stopped reporting while ≥ 3 nearby vessels from the same source kept reporting
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [mmsi]
/// * [entityId]
/// * [gapStart]
/// * [lastSog]
/// * [lastCog]
/// * [open]
/// * [gapEnd]
/// * [gapMinutes]
/// * [displacementKm]
/// * [impliedKn]
@BuiltValue()
abstract class AisGapPayload
    implements Built<AisGapPayload, AisGapPayloadBuilder> {
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
  AisGapPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'mmsi')
  String get mmsi;

  @BuiltValueField(wireName: r'entityId')
  String? get entityId;

  @BuiltValueField(wireName: r'gapStart')
  DateTime get gapStart;

  @BuiltValueField(wireName: r'lastSog')
  num? get lastSog;

  @BuiltValueField(wireName: r'lastCog')
  num? get lastCog;

  @BuiltValueField(wireName: r'open')
  bool get open;

  @BuiltValueField(wireName: r'gapEnd')
  DateTime? get gapEnd;

  @BuiltValueField(wireName: r'gapMinutes')
  num? get gapMinutes;

  @BuiltValueField(wireName: r'displacementKm')
  num? get displacementKm;

  @BuiltValueField(wireName: r'impliedKn')
  num? get impliedKn;

  AisGapPayload._();

  factory AisGapPayload([void updates(AisGapPayloadBuilder b)]) =
      _$AisGapPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AisGapPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AisGapPayload> get serializer =>
      _$AisGapPayloadSerializer();
}

class _$AisGapPayloadSerializer implements PrimitiveSerializer<AisGapPayload> {
  @override
  final Iterable<Type> types = const [AisGapPayload, _$AisGapPayload];

  @override
  final String wireName = r'AisGapPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AisGapPayload object, {
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
      specifiedType: const FullType(AisGapPayloadStatusEnum),
    );
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType:
            const FullType(BuiltList, [FullType(DerivedEvidenceRef)]),
      );
    }
    yield r'mmsi';
    yield serializers.serialize(
      object.mmsi,
      specifiedType: const FullType(String),
    );
    if (object.entityId != null) {
      yield r'entityId';
      yield serializers.serialize(
        object.entityId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'gapStart';
    yield serializers.serialize(
      object.gapStart,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastSog != null) {
      yield r'lastSog';
      yield serializers.serialize(
        object.lastSog,
        specifiedType: const FullType(num),
      );
    }
    if (object.lastCog != null) {
      yield r'lastCog';
      yield serializers.serialize(
        object.lastCog,
        specifiedType: const FullType(num),
      );
    }
    yield r'open';
    yield serializers.serialize(
      object.open,
      specifiedType: const FullType(bool),
    );
    if (object.gapEnd != null) {
      yield r'gapEnd';
      yield serializers.serialize(
        object.gapEnd,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.gapMinutes != null) {
      yield r'gapMinutes';
      yield serializers.serialize(
        object.gapMinutes,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.displacementKm != null) {
      yield r'displacementKm';
      yield serializers.serialize(
        object.displacementKm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.impliedKn != null) {
      yield r'impliedKn';
      yield serializers.serialize(
        object.impliedKn,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AisGapPayload object, {
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
    required AisGapPayloadBuilder result,
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
            specifiedType: const FullType(AisGapPayloadStatusEnum),
          ) as AisGapPayloadStatusEnum;
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
        case r'mmsi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mmsi = valueDes;
          break;
        case r'entityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entityId = valueDes;
          break;
        case r'gapStart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.gapStart = valueDes;
          break;
        case r'lastSog':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lastSog = valueDes;
          break;
        case r'lastCog':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lastCog = valueDes;
          break;
        case r'open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.open = valueDes;
          break;
        case r'gapEnd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.gapEnd = valueDes;
          break;
        case r'gapMinutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.gapMinutes = valueDes;
          break;
        case r'displacementKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.displacementKm = valueDes;
          break;
        case r'impliedKn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.impliedKn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AisGapPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AisGapPayloadBuilder();
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

class AisGapPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const AisGapPayloadStatusEnum ok = _$aisGapPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const AisGapPayloadStatusEnum insufficientData =
      _$aisGapPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const AisGapPayloadStatusEnum noCoverage =
      _$aisGapPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const AisGapPayloadStatusEnum degradedInput =
      _$aisGapPayloadStatusEnum_degradedInput;

  static Serializer<AisGapPayloadStatusEnum> get serializer =>
      _$aisGapPayloadStatusEnumSerializer;

  const AisGapPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<AisGapPayloadStatusEnum> get values =>
      _$aisGapPayloadStatusEnumValues;
  static AisGapPayloadStatusEnum valueOf(String name) =>
      _$aisGapPayloadStatusEnumValueOf(name);
}
