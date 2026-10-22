//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aircraft_fusion_payload.g.dart';

/// Kind `aircraft` (`derived-aircraft`): fusion by hex; the freshest observation wins. Also carries the winning readsb fields.
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [hex]
/// * [sources]
/// * [primarySource]
/// * [positionSource]
@BuiltValue()
abstract class AircraftFusionPayload
    implements Built<AircraftFusionPayload, AircraftFusionPayloadBuilder> {
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
  AircraftFusionPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'hex')
  String get hex;

  @BuiltValueField(wireName: r'sources')
  BuiltList<String> get sources;

  @BuiltValueField(wireName: r'primarySource')
  String get primarySource;

  @BuiltValueField(wireName: r'positionSource')
  AircraftFusionPayloadPositionSourceEnum? get positionSource;
  // enum positionSourceEnum {  adsb,  mlat,  tisb,  other,  };

  AircraftFusionPayload._();

  factory AircraftFusionPayload(
      [void updates(AircraftFusionPayloadBuilder b)]) = _$AircraftFusionPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AircraftFusionPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AircraftFusionPayload> get serializer =>
      _$AircraftFusionPayloadSerializer();
}

class _$AircraftFusionPayloadSerializer
    implements PrimitiveSerializer<AircraftFusionPayload> {
  @override
  final Iterable<Type> types = const [
    AircraftFusionPayload,
    _$AircraftFusionPayload
  ];

  @override
  final String wireName = r'AircraftFusionPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AircraftFusionPayload object, {
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
      specifiedType: const FullType(AircraftFusionPayloadStatusEnum),
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
    yield r'sources';
    yield serializers.serialize(
      object.sources,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'primarySource';
    yield serializers.serialize(
      object.primarySource,
      specifiedType: const FullType(String),
    );
    if (object.positionSource != null) {
      yield r'positionSource';
      yield serializers.serialize(
        object.positionSource,
        specifiedType: const FullType(AircraftFusionPayloadPositionSourceEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AircraftFusionPayload object, {
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
    required AircraftFusionPayloadBuilder result,
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
            specifiedType: const FullType(AircraftFusionPayloadStatusEnum),
          ) as AircraftFusionPayloadStatusEnum;
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
        case r'sources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.sources.replace(valueDes);
          break;
        case r'primarySource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.primarySource = valueDes;
          break;
        case r'positionSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                AircraftFusionPayloadPositionSourceEnum),
          ) as AircraftFusionPayloadPositionSourceEnum?;
          if (valueDes == null) continue;
          result.positionSource = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AircraftFusionPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AircraftFusionPayloadBuilder();
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

class AircraftFusionPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const AircraftFusionPayloadStatusEnum ok =
      _$aircraftFusionPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const AircraftFusionPayloadStatusEnum insufficientData =
      _$aircraftFusionPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const AircraftFusionPayloadStatusEnum noCoverage =
      _$aircraftFusionPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const AircraftFusionPayloadStatusEnum degradedInput =
      _$aircraftFusionPayloadStatusEnum_degradedInput;

  static Serializer<AircraftFusionPayloadStatusEnum> get serializer =>
      _$aircraftFusionPayloadStatusEnumSerializer;

  const AircraftFusionPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<AircraftFusionPayloadStatusEnum> get values =>
      _$aircraftFusionPayloadStatusEnumValues;
  static AircraftFusionPayloadStatusEnum valueOf(String name) =>
      _$aircraftFusionPayloadStatusEnumValueOf(name);
}

class AircraftFusionPayloadPositionSourceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'adsb')
  static const AircraftFusionPayloadPositionSourceEnum adsb =
      _$aircraftFusionPayloadPositionSourceEnum_adsb;
  @BuiltValueEnumConst(wireName: r'mlat')
  static const AircraftFusionPayloadPositionSourceEnum mlat =
      _$aircraftFusionPayloadPositionSourceEnum_mlat;
  @BuiltValueEnumConst(wireName: r'tisb')
  static const AircraftFusionPayloadPositionSourceEnum tisb =
      _$aircraftFusionPayloadPositionSourceEnum_tisb;
  @BuiltValueEnumConst(wireName: r'other')
  static const AircraftFusionPayloadPositionSourceEnum other =
      _$aircraftFusionPayloadPositionSourceEnum_other;

  static Serializer<AircraftFusionPayloadPositionSourceEnum> get serializer =>
      _$aircraftFusionPayloadPositionSourceEnumSerializer;

  const AircraftFusionPayloadPositionSourceEnum._(String name) : super(name);

  static BuiltSet<AircraftFusionPayloadPositionSourceEnum> get values =>
      _$aircraftFusionPayloadPositionSourceEnumValues;
  static AircraftFusionPayloadPositionSourceEnum valueOf(String name) =>
      _$aircraftFusionPayloadPositionSourceEnumValueOf(name);
}
