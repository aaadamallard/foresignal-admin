//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mil_naval_cooccurrence_payload.g.dart';

/// Kind `mil-naval-cooccurrence` (`derived-mil-naval`): military aircraft and naval vessels in the same res-3 cell within 30 min
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [cell]
/// * [aircraftCount]
/// * [vesselCount]
/// * [aircraft]
/// * [vessels]
@BuiltValue()
abstract class MilNavalCooccurrencePayload
    implements
        Built<MilNavalCooccurrencePayload, MilNavalCooccurrencePayloadBuilder> {
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
  MilNavalCooccurrencePayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'cell')
  String get cell;

  @BuiltValueField(wireName: r'aircraftCount')
  int get aircraftCount;

  @BuiltValueField(wireName: r'vesselCount')
  int get vesselCount;

  @BuiltValueField(wireName: r'aircraft')
  BuiltList<String>? get aircraft;

  @BuiltValueField(wireName: r'vessels')
  BuiltList<String>? get vessels;

  MilNavalCooccurrencePayload._();

  factory MilNavalCooccurrencePayload([
    void updates(MilNavalCooccurrencePayloadBuilder b),
  ]) = _$MilNavalCooccurrencePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MilNavalCooccurrencePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MilNavalCooccurrencePayload> get serializer =>
      _$MilNavalCooccurrencePayloadSerializer();
}

class _$MilNavalCooccurrencePayloadSerializer
    implements PrimitiveSerializer<MilNavalCooccurrencePayload> {
  @override
  final Iterable<Type> types = const [
    MilNavalCooccurrencePayload,
    _$MilNavalCooccurrencePayload,
  ];

  @override
  final String wireName = r'MilNavalCooccurrencePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MilNavalCooccurrencePayload object, {
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
      specifiedType: const FullType(MilNavalCooccurrencePayloadStatusEnum),
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
    yield r'cell';
    yield serializers.serialize(
      object.cell,
      specifiedType: const FullType(String),
    );
    yield r'aircraftCount';
    yield serializers.serialize(
      object.aircraftCount,
      specifiedType: const FullType(int),
    );
    yield r'vesselCount';
    yield serializers.serialize(
      object.vesselCount,
      specifiedType: const FullType(int),
    );
    if (object.aircraft != null) {
      yield r'aircraft';
      yield serializers.serialize(
        object.aircraft,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.vessels != null) {
      yield r'vessels';
      yield serializers.serialize(
        object.vessels,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MilNavalCooccurrencePayload object, {
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
    required MilNavalCooccurrencePayloadBuilder result,
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
                      MilNavalCooccurrencePayloadStatusEnum,
                    ),
                  )
                  as MilNavalCooccurrencePayloadStatusEnum;
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
        case r'cell':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.cell = valueDes;
          break;
        case r'aircraftCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.aircraftCount = valueDes;
          break;
        case r'vesselCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.vesselCount = valueDes;
          break;
        case r'aircraft':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.aircraft.replace(valueDes);
          break;
        case r'vessels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.vessels.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MilNavalCooccurrencePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MilNavalCooccurrencePayloadBuilder();
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

class MilNavalCooccurrencePayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const MilNavalCooccurrencePayloadStatusEnum ok =
      _$milNavalCooccurrencePayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const MilNavalCooccurrencePayloadStatusEnum insufficientData =
      _$milNavalCooccurrencePayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const MilNavalCooccurrencePayloadStatusEnum noCoverage =
      _$milNavalCooccurrencePayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const MilNavalCooccurrencePayloadStatusEnum degradedInput =
      _$milNavalCooccurrencePayloadStatusEnum_degradedInput;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MilNavalCooccurrencePayloadStatusEnum unknownDefaultOpenApi =
      _$milNavalCooccurrencePayloadStatusEnum_unknownDefaultOpenApi;

  static Serializer<MilNavalCooccurrencePayloadStatusEnum> get serializer =>
      _$milNavalCooccurrencePayloadStatusEnumSerializer;

  const MilNavalCooccurrencePayloadStatusEnum._(String name) : super(name);

  static BuiltSet<MilNavalCooccurrencePayloadStatusEnum> get values =>
      _$milNavalCooccurrencePayloadStatusEnumValues;
  static MilNavalCooccurrencePayloadStatusEnum valueOf(String name) =>
      _$milNavalCooccurrencePayloadStatusEnumValueOf(name);
}
