//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'port_call_payload.g.dart';

/// Kind `port-call` (`derived-port-calls`): arrival and departure at a World Port Index port
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [mmsi]
/// * [portNumber]
/// * [portName]
/// * [arrival]
/// * [departure]
/// * [durationH]
/// * [departureUnknown] - True when the departure time could not be observed; never guessed
@BuiltValue()
abstract class PortCallPayload
    implements Built<PortCallPayload, PortCallPayloadBuilder> {
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
  PortCallPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'mmsi')
  String get mmsi;

  @BuiltValueField(wireName: r'portNumber')
  String get portNumber;

  @BuiltValueField(wireName: r'portName')
  String? get portName;

  @BuiltValueField(wireName: r'arrival')
  DateTime get arrival;

  @BuiltValueField(wireName: r'departure')
  DateTime? get departure;

  @BuiltValueField(wireName: r'durationH')
  num? get durationH;

  /// True when the departure time could not be observed; never guessed
  @BuiltValueField(wireName: r'departureUnknown')
  bool? get departureUnknown;

  PortCallPayload._();

  factory PortCallPayload([void updates(PortCallPayloadBuilder b)]) =
      _$PortCallPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PortCallPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PortCallPayload> get serializer =>
      _$PortCallPayloadSerializer();
}

class _$PortCallPayloadSerializer
    implements PrimitiveSerializer<PortCallPayload> {
  @override
  final Iterable<Type> types = const [PortCallPayload, _$PortCallPayload];

  @override
  final String wireName = r'PortCallPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PortCallPayload object, {
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
      specifiedType: const FullType(PortCallPayloadStatusEnum),
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
    yield r'portNumber';
    yield serializers.serialize(
      object.portNumber,
      specifiedType: const FullType(String),
    );
    if (object.portName != null) {
      yield r'portName';
      yield serializers.serialize(
        object.portName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'arrival';
    yield serializers.serialize(
      object.arrival,
      specifiedType: const FullType(DateTime),
    );
    if (object.departure != null) {
      yield r'departure';
      yield serializers.serialize(
        object.departure,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.durationH != null) {
      yield r'durationH';
      yield serializers.serialize(
        object.durationH,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.departureUnknown != null) {
      yield r'departureUnknown';
      yield serializers.serialize(
        object.departureUnknown,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PortCallPayload object, {
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
    required PortCallPayloadBuilder result,
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
                    specifiedType: const FullType(PortCallPayloadStatusEnum),
                  )
                  as PortCallPayloadStatusEnum;
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
        case r'portNumber':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.portNumber = valueDes;
          break;
        case r'portName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.portName = valueDes;
          break;
        case r'arrival':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.arrival = valueDes;
          break;
        case r'departure':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.departure = valueDes;
          break;
        case r'durationH':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.durationH = valueDes;
          break;
        case r'departureUnknown':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.departureUnknown = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PortCallPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PortCallPayloadBuilder();
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

class PortCallPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const PortCallPayloadStatusEnum ok = _$portCallPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const PortCallPayloadStatusEnum insufficientData =
      _$portCallPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const PortCallPayloadStatusEnum noCoverage =
      _$portCallPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const PortCallPayloadStatusEnum degradedInput =
      _$portCallPayloadStatusEnum_degradedInput;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PortCallPayloadStatusEnum unknownDefaultOpenApi =
      _$portCallPayloadStatusEnum_unknownDefaultOpenApi;

  static Serializer<PortCallPayloadStatusEnum> get serializer =>
      _$portCallPayloadStatusEnumSerializer;

  const PortCallPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<PortCallPayloadStatusEnum> get values =>
      _$portCallPayloadStatusEnumValues;
  static PortCallPayloadStatusEnum valueOf(String name) =>
      _$portCallPayloadStatusEnumValueOf(name);
}
