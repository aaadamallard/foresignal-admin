//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/deception_payload_checks_inner.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deception_payload.g.dart';

/// Kind `deception` (`derived-deception`): kinematic consistency checks that matched; states the check, never intent
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [entity] - 098 entity id when linked, otherwise the hex or MMSI
/// * [checks]
@BuiltValue()
abstract class DeceptionPayload
    implements Built<DeceptionPayload, DeceptionPayloadBuilder> {
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
  DeceptionPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  /// 098 entity id when linked, otherwise the hex or MMSI
  @BuiltValueField(wireName: r'entity')
  String get entity;

  @BuiltValueField(wireName: r'checks')
  BuiltList<DeceptionPayloadChecksInner> get checks;

  DeceptionPayload._();

  factory DeceptionPayload([void updates(DeceptionPayloadBuilder b)]) =
      _$DeceptionPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeceptionPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeceptionPayload> get serializer =>
      _$DeceptionPayloadSerializer();
}

class _$DeceptionPayloadSerializer
    implements PrimitiveSerializer<DeceptionPayload> {
  @override
  final Iterable<Type> types = const [DeceptionPayload, _$DeceptionPayload];

  @override
  final String wireName = r'DeceptionPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeceptionPayload object, {
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
      specifiedType: const FullType(DeceptionPayloadStatusEnum),
    );
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType:
            const FullType(BuiltList, [FullType(DerivedEvidenceRef)]),
      );
    }
    yield r'entity';
    yield serializers.serialize(
      object.entity,
      specifiedType: const FullType(String),
    );
    yield r'checks';
    yield serializers.serialize(
      object.checks,
      specifiedType:
          const FullType(BuiltList, [FullType(DeceptionPayloadChecksInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeceptionPayload object, {
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
    required DeceptionPayloadBuilder result,
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
            specifiedType: const FullType(DeceptionPayloadStatusEnum),
          ) as DeceptionPayloadStatusEnum;
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
        case r'entity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.entity = valueDes;
          break;
        case r'checks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(DeceptionPayloadChecksInner)]),
          ) as BuiltList<DeceptionPayloadChecksInner>;
          result.checks.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeceptionPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeceptionPayloadBuilder();
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

class DeceptionPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const DeceptionPayloadStatusEnum ok = _$deceptionPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const DeceptionPayloadStatusEnum insufficientData =
      _$deceptionPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const DeceptionPayloadStatusEnum noCoverage =
      _$deceptionPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const DeceptionPayloadStatusEnum degradedInput =
      _$deceptionPayloadStatusEnum_degradedInput;

  static Serializer<DeceptionPayloadStatusEnum> get serializer =>
      _$deceptionPayloadStatusEnumSerializer;

  const DeceptionPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<DeceptionPayloadStatusEnum> get values =>
      _$deceptionPayloadStatusEnumValues;
  static DeceptionPayloadStatusEnum valueOf(String name) =>
      _$deceptionPayloadStatusEnumValueOf(name);
}
