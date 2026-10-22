//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holdover_fire_risk_payload.g.dart';

/// Kind `holdover-fire-risk` (`derived-lightning-holdover`): GLM flashes over dry ground, watched 72 h for ignition
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [cell]
/// * [utcDay]
/// * [flashCount]
/// * [qpe72hMm]
/// * [precipSource]
/// * [relativeHumidityPct]
/// * [ignitionConfirmed]
/// * [ignitionDelayH]
/// * [watchUntil]
/// * [severity]
@BuiltValue()
abstract class HoldoverFireRiskPayload
    implements Built<HoldoverFireRiskPayload, HoldoverFireRiskPayloadBuilder> {
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
  HoldoverFireRiskPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'cell')
  String get cell;

  @BuiltValueField(wireName: r'utcDay')
  Date get utcDay;

  @BuiltValueField(wireName: r'flashCount')
  int get flashCount;

  @BuiltValueField(wireName: r'qpe72hMm')
  num? get qpe72hMm;

  @BuiltValueField(wireName: r'precipSource')
  HoldoverFireRiskPayloadPrecipSourceEnum? get precipSource;
  // enum precipSourceEnum {  mrms,  model,  };

  @BuiltValueField(wireName: r'relativeHumidityPct')
  num? get relativeHumidityPct;

  @BuiltValueField(wireName: r'ignitionConfirmed')
  bool get ignitionConfirmed;

  @BuiltValueField(wireName: r'ignitionDelayH')
  num? get ignitionDelayH;

  @BuiltValueField(wireName: r'watchUntil')
  DateTime? get watchUntil;

  @BuiltValueField(wireName: r'severity')
  Severity? get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  HoldoverFireRiskPayload._();

  factory HoldoverFireRiskPayload(
          [void updates(HoldoverFireRiskPayloadBuilder b)]) =
      _$HoldoverFireRiskPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldoverFireRiskPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldoverFireRiskPayload> get serializer =>
      _$HoldoverFireRiskPayloadSerializer();
}

class _$HoldoverFireRiskPayloadSerializer
    implements PrimitiveSerializer<HoldoverFireRiskPayload> {
  @override
  final Iterable<Type> types = const [
    HoldoverFireRiskPayload,
    _$HoldoverFireRiskPayload
  ];

  @override
  final String wireName = r'HoldoverFireRiskPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldoverFireRiskPayload object, {
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
      specifiedType: const FullType(HoldoverFireRiskPayloadStatusEnum),
    );
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType:
            const FullType(BuiltList, [FullType(DerivedEvidenceRef)]),
      );
    }
    yield r'cell';
    yield serializers.serialize(
      object.cell,
      specifiedType: const FullType(String),
    );
    yield r'utcDay';
    yield serializers.serialize(
      object.utcDay,
      specifiedType: const FullType(Date),
    );
    yield r'flashCount';
    yield serializers.serialize(
      object.flashCount,
      specifiedType: const FullType(int),
    );
    if (object.qpe72hMm != null) {
      yield r'qpe72hMm';
      yield serializers.serialize(
        object.qpe72hMm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.precipSource != null) {
      yield r'precipSource';
      yield serializers.serialize(
        object.precipSource,
        specifiedType: const FullType(HoldoverFireRiskPayloadPrecipSourceEnum),
      );
    }
    if (object.relativeHumidityPct != null) {
      yield r'relativeHumidityPct';
      yield serializers.serialize(
        object.relativeHumidityPct,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'ignitionConfirmed';
    yield serializers.serialize(
      object.ignitionConfirmed,
      specifiedType: const FullType(bool),
    );
    if (object.ignitionDelayH != null) {
      yield r'ignitionDelayH';
      yield serializers.serialize(
        object.ignitionDelayH,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.watchUntil != null) {
      yield r'watchUntil';
      yield serializers.serialize(
        object.watchUntil,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType(Severity),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HoldoverFireRiskPayload object, {
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
    required HoldoverFireRiskPayloadBuilder result,
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
            specifiedType: const FullType(HoldoverFireRiskPayloadStatusEnum),
          ) as HoldoverFireRiskPayloadStatusEnum;
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
        case r'cell':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cell = valueDes;
          break;
        case r'utcDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.utcDay = valueDes;
          break;
        case r'flashCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.flashCount = valueDes;
          break;
        case r'qpe72hMm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.qpe72hMm = valueDes;
          break;
        case r'precipSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                HoldoverFireRiskPayloadPrecipSourceEnum),
          ) as HoldoverFireRiskPayloadPrecipSourceEnum?;
          if (valueDes == null) continue;
          result.precipSource = valueDes;
          break;
        case r'relativeHumidityPct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.relativeHumidityPct = valueDes;
          break;
        case r'ignitionConfirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignitionConfirmed = valueDes;
          break;
        case r'ignitionDelayH':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ignitionDelayH = valueDes;
          break;
        case r'watchUntil':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.watchUntil = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Severity),
          ) as Severity?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HoldoverFireRiskPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldoverFireRiskPayloadBuilder();
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

class HoldoverFireRiskPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const HoldoverFireRiskPayloadStatusEnum ok =
      _$holdoverFireRiskPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const HoldoverFireRiskPayloadStatusEnum insufficientData =
      _$holdoverFireRiskPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const HoldoverFireRiskPayloadStatusEnum noCoverage =
      _$holdoverFireRiskPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const HoldoverFireRiskPayloadStatusEnum degradedInput =
      _$holdoverFireRiskPayloadStatusEnum_degradedInput;

  static Serializer<HoldoverFireRiskPayloadStatusEnum> get serializer =>
      _$holdoverFireRiskPayloadStatusEnumSerializer;

  const HoldoverFireRiskPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<HoldoverFireRiskPayloadStatusEnum> get values =>
      _$holdoverFireRiskPayloadStatusEnumValues;
  static HoldoverFireRiskPayloadStatusEnum valueOf(String name) =>
      _$holdoverFireRiskPayloadStatusEnumValueOf(name);
}

class HoldoverFireRiskPayloadPrecipSourceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mrms')
  static const HoldoverFireRiskPayloadPrecipSourceEnum mrms =
      _$holdoverFireRiskPayloadPrecipSourceEnum_mrms;
  @BuiltValueEnumConst(wireName: r'model')
  static const HoldoverFireRiskPayloadPrecipSourceEnum model =
      _$holdoverFireRiskPayloadPrecipSourceEnum_model;

  static Serializer<HoldoverFireRiskPayloadPrecipSourceEnum> get serializer =>
      _$holdoverFireRiskPayloadPrecipSourceEnumSerializer;

  const HoldoverFireRiskPayloadPrecipSourceEnum._(String name) : super(name);

  static BuiltSet<HoldoverFireRiskPayloadPrecipSourceEnum> get values =>
      _$holdoverFireRiskPayloadPrecipSourceEnumValues;
  static HoldoverFireRiskPayloadPrecipSourceEnum valueOf(String name) =>
      _$holdoverFireRiskPayloadPrecipSourceEnumValueOf(name);
}
