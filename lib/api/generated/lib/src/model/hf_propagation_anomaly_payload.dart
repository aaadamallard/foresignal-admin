//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hf_propagation_anomaly_payload.g.dart';

/// Kind `hf-propagation-anomaly` (`derived-hf-blackout`): FT8 spot or SNR drop on sunlit paths against a 14-day same-hour baseline
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [band]
/// * [pathClass]
/// * [utcHour]
/// * [spotCount]
/// * [baselineSpotCount]
/// * [spotDropPct]
/// * [medianSnrDb]
/// * [baselineMedianSnrDb]
/// * [snrDropDb]
/// * [sunlit]
/// * [flareConcurrent] - Concurrent SWPC X-ray class when known
@BuiltValue()
abstract class HfPropagationAnomalyPayload
    implements
        Built<HfPropagationAnomalyPayload, HfPropagationAnomalyPayloadBuilder> {
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
  HfPropagationAnomalyPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'band')
  String get band;

  @BuiltValueField(wireName: r'pathClass')
  String get pathClass;

  @BuiltValueField(wireName: r'utcHour')
  DateTime get utcHour;

  @BuiltValueField(wireName: r'spotCount')
  int? get spotCount;

  @BuiltValueField(wireName: r'baselineSpotCount')
  num? get baselineSpotCount;

  @BuiltValueField(wireName: r'spotDropPct')
  num? get spotDropPct;

  @BuiltValueField(wireName: r'medianSnrDb')
  num? get medianSnrDb;

  @BuiltValueField(wireName: r'baselineMedianSnrDb')
  num? get baselineMedianSnrDb;

  @BuiltValueField(wireName: r'snrDropDb')
  num? get snrDropDb;

  @BuiltValueField(wireName: r'sunlit')
  bool? get sunlit;

  /// Concurrent SWPC X-ray class when known
  @BuiltValueField(wireName: r'flareConcurrent')
  String? get flareConcurrent;

  HfPropagationAnomalyPayload._();

  factory HfPropagationAnomalyPayload([
    void updates(HfPropagationAnomalyPayloadBuilder b),
  ]) = _$HfPropagationAnomalyPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HfPropagationAnomalyPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HfPropagationAnomalyPayload> get serializer =>
      _$HfPropagationAnomalyPayloadSerializer();
}

class _$HfPropagationAnomalyPayloadSerializer
    implements PrimitiveSerializer<HfPropagationAnomalyPayload> {
  @override
  final Iterable<Type> types = const [
    HfPropagationAnomalyPayload,
    _$HfPropagationAnomalyPayload,
  ];

  @override
  final String wireName = r'HfPropagationAnomalyPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HfPropagationAnomalyPayload object, {
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
      specifiedType: const FullType(HfPropagationAnomalyPayloadStatusEnum),
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
    yield r'band';
    yield serializers.serialize(
      object.band,
      specifiedType: const FullType(String),
    );
    yield r'pathClass';
    yield serializers.serialize(
      object.pathClass,
      specifiedType: const FullType(String),
    );
    yield r'utcHour';
    yield serializers.serialize(
      object.utcHour,
      specifiedType: const FullType(DateTime),
    );
    if (object.spotCount != null) {
      yield r'spotCount';
      yield serializers.serialize(
        object.spotCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.baselineSpotCount != null) {
      yield r'baselineSpotCount';
      yield serializers.serialize(
        object.baselineSpotCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.spotDropPct != null) {
      yield r'spotDropPct';
      yield serializers.serialize(
        object.spotDropPct,
        specifiedType: const FullType(num),
      );
    }
    if (object.medianSnrDb != null) {
      yield r'medianSnrDb';
      yield serializers.serialize(
        object.medianSnrDb,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.baselineMedianSnrDb != null) {
      yield r'baselineMedianSnrDb';
      yield serializers.serialize(
        object.baselineMedianSnrDb,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.snrDropDb != null) {
      yield r'snrDropDb';
      yield serializers.serialize(
        object.snrDropDb,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.sunlit != null) {
      yield r'sunlit';
      yield serializers.serialize(
        object.sunlit,
        specifiedType: const FullType(bool),
      );
    }
    if (object.flareConcurrent != null) {
      yield r'flareConcurrent';
      yield serializers.serialize(
        object.flareConcurrent,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HfPropagationAnomalyPayload object, {
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
    required HfPropagationAnomalyPayloadBuilder result,
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
                      HfPropagationAnomalyPayloadStatusEnum,
                    ),
                  )
                  as HfPropagationAnomalyPayloadStatusEnum;
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
        case r'band':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.band = valueDes;
          break;
        case r'pathClass':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.pathClass = valueDes;
          break;
        case r'utcHour':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.utcHour = valueDes;
          break;
        case r'spotCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.spotCount = valueDes;
          break;
        case r'baselineSpotCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.baselineSpotCount = valueDes;
          break;
        case r'spotDropPct':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.spotDropPct = valueDes;
          break;
        case r'medianSnrDb':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.medianSnrDb = valueDes;
          break;
        case r'baselineMedianSnrDb':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.baselineMedianSnrDb = valueDes;
          break;
        case r'snrDropDb':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.snrDropDb = valueDes;
          break;
        case r'sunlit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.sunlit = valueDes;
          break;
        case r'flareConcurrent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.flareConcurrent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HfPropagationAnomalyPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HfPropagationAnomalyPayloadBuilder();
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

class HfPropagationAnomalyPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const HfPropagationAnomalyPayloadStatusEnum ok =
      _$hfPropagationAnomalyPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const HfPropagationAnomalyPayloadStatusEnum insufficientData =
      _$hfPropagationAnomalyPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const HfPropagationAnomalyPayloadStatusEnum noCoverage =
      _$hfPropagationAnomalyPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const HfPropagationAnomalyPayloadStatusEnum degradedInput =
      _$hfPropagationAnomalyPayloadStatusEnum_degradedInput;

  static Serializer<HfPropagationAnomalyPayloadStatusEnum> get serializer =>
      _$hfPropagationAnomalyPayloadStatusEnumSerializer;

  const HfPropagationAnomalyPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<HfPropagationAnomalyPayloadStatusEnum> get values =>
      _$hfPropagationAnomalyPayloadStatusEnumValues;
  static HfPropagationAnomalyPayloadStatusEnum valueOf(String name) =>
      _$hfPropagationAnomalyPayloadStatusEnumValueOf(name);
}
