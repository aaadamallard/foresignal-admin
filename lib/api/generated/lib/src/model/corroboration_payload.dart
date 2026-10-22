//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'corroboration_payload.g.dart';

/// Kind `corroboration` (`derived-corroboration`): cluster of event records across independent sources with Admiralty credibility
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [kindFamily]
/// * [members]
/// * [independentSources]
/// * [credibility] - Admiralty information credibility; 6 means unknown, never false
/// * [reliability] - Source reliability from 109 grades; F means unknown
@BuiltValue()
abstract class CorroborationPayload
    implements Built<CorroborationPayload, CorroborationPayloadBuilder> {
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
  CorroborationPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'kindFamily')
  CorroborationPayloadKindFamilyEnum get kindFamily;
  // enum kindFamilyEnum {  earthquake,  fire,  conflict,  outage,  };

  @BuiltValueField(wireName: r'members')
  BuiltList<DerivedEvidenceRef> get members;

  @BuiltValueField(wireName: r'independentSources')
  int get independentSources;

  /// Admiralty information credibility; 6 means unknown, never false
  @BuiltValueField(wireName: r'credibility')
  int get credibility;

  /// Source reliability from 109 grades; F means unknown
  @BuiltValueField(wireName: r'reliability')
  CorroborationPayloadReliabilityEnum? get reliability;
  // enum reliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  CorroborationPayload._();

  factory CorroborationPayload([void updates(CorroborationPayloadBuilder b)]) =
      _$CorroborationPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorroborationPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorroborationPayload> get serializer =>
      _$CorroborationPayloadSerializer();
}

class _$CorroborationPayloadSerializer
    implements PrimitiveSerializer<CorroborationPayload> {
  @override
  final Iterable<Type> types = const [
    CorroborationPayload,
    _$CorroborationPayload
  ];

  @override
  final String wireName = r'CorroborationPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorroborationPayload object, {
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
      specifiedType: const FullType(CorroborationPayloadStatusEnum),
    );
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType:
            const FullType(BuiltList, [FullType(DerivedEvidenceRef)]),
      );
    }
    yield r'kindFamily';
    yield serializers.serialize(
      object.kindFamily,
      specifiedType: const FullType(CorroborationPayloadKindFamilyEnum),
    );
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [FullType(DerivedEvidenceRef)]),
    );
    yield r'independentSources';
    yield serializers.serialize(
      object.independentSources,
      specifiedType: const FullType(int),
    );
    yield r'credibility';
    yield serializers.serialize(
      object.credibility,
      specifiedType: const FullType(int),
    );
    if (object.reliability != null) {
      yield r'reliability';
      yield serializers.serialize(
        object.reliability,
        specifiedType: const FullType(CorroborationPayloadReliabilityEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorroborationPayload object, {
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
    required CorroborationPayloadBuilder result,
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
            specifiedType: const FullType(CorroborationPayloadStatusEnum),
          ) as CorroborationPayloadStatusEnum;
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
        case r'kindFamily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CorroborationPayloadKindFamilyEnum),
          ) as CorroborationPayloadKindFamilyEnum;
          result.kindFamily = valueDes;
          break;
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(DerivedEvidenceRef)]),
          ) as BuiltList<DerivedEvidenceRef>;
          result.members.replace(valueDes);
          break;
        case r'independentSources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.independentSources = valueDes;
          break;
        case r'credibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.credibility = valueDes;
          break;
        case r'reliability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(CorroborationPayloadReliabilityEnum),
          ) as CorroborationPayloadReliabilityEnum?;
          if (valueDes == null) continue;
          result.reliability = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorroborationPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorroborationPayloadBuilder();
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

class CorroborationPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const CorroborationPayloadStatusEnum ok =
      _$corroborationPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const CorroborationPayloadStatusEnum insufficientData =
      _$corroborationPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const CorroborationPayloadStatusEnum noCoverage =
      _$corroborationPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const CorroborationPayloadStatusEnum degradedInput =
      _$corroborationPayloadStatusEnum_degradedInput;

  static Serializer<CorroborationPayloadStatusEnum> get serializer =>
      _$corroborationPayloadStatusEnumSerializer;

  const CorroborationPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<CorroborationPayloadStatusEnum> get values =>
      _$corroborationPayloadStatusEnumValues;
  static CorroborationPayloadStatusEnum valueOf(String name) =>
      _$corroborationPayloadStatusEnumValueOf(name);
}

class CorroborationPayloadKindFamilyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'earthquake')
  static const CorroborationPayloadKindFamilyEnum earthquake =
      _$corroborationPayloadKindFamilyEnum_earthquake;
  @BuiltValueEnumConst(wireName: r'fire')
  static const CorroborationPayloadKindFamilyEnum fire =
      _$corroborationPayloadKindFamilyEnum_fire;
  @BuiltValueEnumConst(wireName: r'conflict')
  static const CorroborationPayloadKindFamilyEnum conflict =
      _$corroborationPayloadKindFamilyEnum_conflict;
  @BuiltValueEnumConst(wireName: r'outage')
  static const CorroborationPayloadKindFamilyEnum outage =
      _$corroborationPayloadKindFamilyEnum_outage;

  static Serializer<CorroborationPayloadKindFamilyEnum> get serializer =>
      _$corroborationPayloadKindFamilyEnumSerializer;

  const CorroborationPayloadKindFamilyEnum._(String name) : super(name);

  static BuiltSet<CorroborationPayloadKindFamilyEnum> get values =>
      _$corroborationPayloadKindFamilyEnumValues;
  static CorroborationPayloadKindFamilyEnum valueOf(String name) =>
      _$corroborationPayloadKindFamilyEnumValueOf(name);
}

/// Source reliability from 109 grades; F means unknown
class CorroborationPayloadReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const CorroborationPayloadReliabilityEnum A =
      _$corroborationPayloadReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const CorroborationPayloadReliabilityEnum B =
      _$corroborationPayloadReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const CorroborationPayloadReliabilityEnum C =
      _$corroborationPayloadReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const CorroborationPayloadReliabilityEnum D =
      _$corroborationPayloadReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const CorroborationPayloadReliabilityEnum E =
      _$corroborationPayloadReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const CorroborationPayloadReliabilityEnum F =
      _$corroborationPayloadReliabilityEnum_F;

  static Serializer<CorroborationPayloadReliabilityEnum> get serializer =>
      _$corroborationPayloadReliabilityEnumSerializer;

  const CorroborationPayloadReliabilityEnum._(String name) : super(name);

  static BuiltSet<CorroborationPayloadReliabilityEnum> get values =>
      _$corroborationPayloadReliabilityEnumValues;
  static CorroborationPayloadReliabilityEnum valueOf(String name) =>
      _$corroborationPayloadReliabilityEnumValueOf(name);
}
