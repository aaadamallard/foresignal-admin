//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'derived_payload_common.g.dart';

/// Fields common to every derived-layer record payload (099). Detections are automated and never accuse; `status` says when input was insufficient.
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
@BuiltValue()
abstract class DerivedPayloadCommon
    implements Built<DerivedPayloadCommon, DerivedPayloadCommonBuilder> {
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
  DerivedPayloadCommonStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  DerivedPayloadCommon._();

  factory DerivedPayloadCommon([void updates(DerivedPayloadCommonBuilder b)]) =
      _$DerivedPayloadCommon;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DerivedPayloadCommonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DerivedPayloadCommon> get serializer =>
      _$DerivedPayloadCommonSerializer();
}

class _$DerivedPayloadCommonSerializer
    implements PrimitiveSerializer<DerivedPayloadCommon> {
  @override
  final Iterable<Type> types = const [
    DerivedPayloadCommon,
    _$DerivedPayloadCommon
  ];

  @override
  final String wireName = r'DerivedPayloadCommon';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DerivedPayloadCommon object, {
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
      specifiedType: const FullType(DerivedPayloadCommonStatusEnum),
    );
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType:
            const FullType(BuiltList, [FullType(DerivedEvidenceRef)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DerivedPayloadCommon object, {
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
    required DerivedPayloadCommonBuilder result,
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
            specifiedType: const FullType(DerivedPayloadCommonStatusEnum),
          ) as DerivedPayloadCommonStatusEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DerivedPayloadCommon deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DerivedPayloadCommonBuilder();
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

class DerivedPayloadCommonStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const DerivedPayloadCommonStatusEnum ok =
      _$derivedPayloadCommonStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const DerivedPayloadCommonStatusEnum insufficientData =
      _$derivedPayloadCommonStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const DerivedPayloadCommonStatusEnum noCoverage =
      _$derivedPayloadCommonStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const DerivedPayloadCommonStatusEnum degradedInput =
      _$derivedPayloadCommonStatusEnum_degradedInput;

  static Serializer<DerivedPayloadCommonStatusEnum> get serializer =>
      _$derivedPayloadCommonStatusEnumSerializer;

  const DerivedPayloadCommonStatusEnum._(String name) : super(name);

  static BuiltSet<DerivedPayloadCommonStatusEnum> get values =>
      _$derivedPayloadCommonStatusEnumValues;
  static DerivedPayloadCommonStatusEnum valueOf(String name) =>
      _$derivedPayloadCommonStatusEnumValueOf(name);
}
