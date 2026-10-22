//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'emergency_squawk_payload.g.dart';

/// Kind `emergency-squawk` (`derived-emergency-squawk`): 7500/7600/7700 or readsb emergency seen twice
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [hex]
/// * [squawk]
/// * [emergency]
/// * [meaning]
/// * [unverified]
@BuiltValue()
abstract class EmergencySquawkPayload
    implements Built<EmergencySquawkPayload, EmergencySquawkPayloadBuilder> {
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
  EmergencySquawkPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'hex')
  String get hex;

  @BuiltValueField(wireName: r'squawk')
  String? get squawk;

  @BuiltValueField(wireName: r'emergency')
  String? get emergency;

  @BuiltValueField(wireName: r'meaning')
  EmergencySquawkPayloadMeaningEnum get meaning;
  // enum meaningEnum {  unlawful interference,  radio failure,  emergency,  };

  @BuiltValueField(wireName: r'unverified')
  bool get unverified;

  EmergencySquawkPayload._();

  factory EmergencySquawkPayload(
          [void updates(EmergencySquawkPayloadBuilder b)]) =
      _$EmergencySquawkPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmergencySquawkPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmergencySquawkPayload> get serializer =>
      _$EmergencySquawkPayloadSerializer();
}

class _$EmergencySquawkPayloadSerializer
    implements PrimitiveSerializer<EmergencySquawkPayload> {
  @override
  final Iterable<Type> types = const [
    EmergencySquawkPayload,
    _$EmergencySquawkPayload
  ];

  @override
  final String wireName = r'EmergencySquawkPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmergencySquawkPayload object, {
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
      specifiedType: const FullType(EmergencySquawkPayloadStatusEnum),
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
    if (object.squawk != null) {
      yield r'squawk';
      yield serializers.serialize(
        object.squawk,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.emergency != null) {
      yield r'emergency';
      yield serializers.serialize(
        object.emergency,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'meaning';
    yield serializers.serialize(
      object.meaning,
      specifiedType: const FullType(EmergencySquawkPayloadMeaningEnum),
    );
    yield r'unverified';
    yield serializers.serialize(
      object.unverified,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EmergencySquawkPayload object, {
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
    required EmergencySquawkPayloadBuilder result,
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
            specifiedType: const FullType(EmergencySquawkPayloadStatusEnum),
          ) as EmergencySquawkPayloadStatusEnum;
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
        case r'squawk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.squawk = valueDes;
          break;
        case r'emergency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.emergency = valueDes;
          break;
        case r'meaning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EmergencySquawkPayloadMeaningEnum),
          ) as EmergencySquawkPayloadMeaningEnum;
          result.meaning = valueDes;
          break;
        case r'unverified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.unverified = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmergencySquawkPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmergencySquawkPayloadBuilder();
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

class EmergencySquawkPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const EmergencySquawkPayloadStatusEnum ok =
      _$emergencySquawkPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const EmergencySquawkPayloadStatusEnum insufficientData =
      _$emergencySquawkPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const EmergencySquawkPayloadStatusEnum noCoverage =
      _$emergencySquawkPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const EmergencySquawkPayloadStatusEnum degradedInput =
      _$emergencySquawkPayloadStatusEnum_degradedInput;

  static Serializer<EmergencySquawkPayloadStatusEnum> get serializer =>
      _$emergencySquawkPayloadStatusEnumSerializer;

  const EmergencySquawkPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<EmergencySquawkPayloadStatusEnum> get values =>
      _$emergencySquawkPayloadStatusEnumValues;
  static EmergencySquawkPayloadStatusEnum valueOf(String name) =>
      _$emergencySquawkPayloadStatusEnumValueOf(name);
}

class EmergencySquawkPayloadMeaningEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unlawful interference')
  static const EmergencySquawkPayloadMeaningEnum unlawfulInterference =
      _$emergencySquawkPayloadMeaningEnum_unlawfulInterference;
  @BuiltValueEnumConst(wireName: r'radio failure')
  static const EmergencySquawkPayloadMeaningEnum radioFailure =
      _$emergencySquawkPayloadMeaningEnum_radioFailure;
  @BuiltValueEnumConst(wireName: r'emergency')
  static const EmergencySquawkPayloadMeaningEnum emergency =
      _$emergencySquawkPayloadMeaningEnum_emergency;

  static Serializer<EmergencySquawkPayloadMeaningEnum> get serializer =>
      _$emergencySquawkPayloadMeaningEnumSerializer;

  const EmergencySquawkPayloadMeaningEnum._(String name) : super(name);

  static BuiltSet<EmergencySquawkPayloadMeaningEnum> get values =>
      _$emergencySquawkPayloadMeaningEnumValues;
  static EmergencySquawkPayloadMeaningEnum valueOf(String name) =>
      _$emergencySquawkPayloadMeaningEnumValueOf(name);
}
