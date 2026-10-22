//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'felt_report_estimate_payload.g.dart';

/// Kind `felt-report-estimate` (`derived-felt-locally`): estimated intensity at a place for an earthquake
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [eventId]
/// * [placeId]
/// * [mmi]
/// * [distanceKm]
/// * [feltLikely]
/// * [method]
/// * [coefficientSet]
@BuiltValue()
abstract class FeltReportEstimatePayload
    implements
        Built<FeltReportEstimatePayload, FeltReportEstimatePayloadBuilder> {
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
  FeltReportEstimatePayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'eventId')
  String get eventId;

  @BuiltValueField(wireName: r'placeId')
  String get placeId;

  @BuiltValueField(wireName: r'mmi')
  num get mmi;

  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  @BuiltValueField(wireName: r'feltLikely')
  bool? get feltLikely;

  @BuiltValueField(wireName: r'method')
  FeltReportEstimatePayloadMethodEnum get method;
  // enum methodEnum {  shakemap,  ipe-aw2007,  };

  @BuiltValueField(wireName: r'coefficientSet')
  FeltReportEstimatePayloadCoefficientSetEnum? get coefficientSet;
  // enum coefficientSetEnum {  california,  ceus,  };

  FeltReportEstimatePayload._();

  factory FeltReportEstimatePayload([
    void updates(FeltReportEstimatePayloadBuilder b),
  ]) = _$FeltReportEstimatePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeltReportEstimatePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeltReportEstimatePayload> get serializer =>
      _$FeltReportEstimatePayloadSerializer();
}

class _$FeltReportEstimatePayloadSerializer
    implements PrimitiveSerializer<FeltReportEstimatePayload> {
  @override
  final Iterable<Type> types = const [
    FeltReportEstimatePayload,
    _$FeltReportEstimatePayload,
  ];

  @override
  final String wireName = r'FeltReportEstimatePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeltReportEstimatePayload object, {
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
      specifiedType: const FullType(FeltReportEstimatePayloadStatusEnum),
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
    yield r'eventId';
    yield serializers.serialize(
      object.eventId,
      specifiedType: const FullType(String),
    );
    yield r'placeId';
    yield serializers.serialize(
      object.placeId,
      specifiedType: const FullType(String),
    );
    yield r'mmi';
    yield serializers.serialize(object.mmi, specifiedType: const FullType(num));
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.feltLikely != null) {
      yield r'feltLikely';
      yield serializers.serialize(
        object.feltLikely,
        specifiedType: const FullType(bool),
      );
    }
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(FeltReportEstimatePayloadMethodEnum),
    );
    if (object.coefficientSet != null) {
      yield r'coefficientSet';
      yield serializers.serialize(
        object.coefficientSet,
        specifiedType: const FullType.nullable(
          FeltReportEstimatePayloadCoefficientSetEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FeltReportEstimatePayload object, {
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
    required FeltReportEstimatePayloadBuilder result,
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
                      FeltReportEstimatePayloadStatusEnum,
                    ),
                  )
                  as FeltReportEstimatePayloadStatusEnum;
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
        case r'eventId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.eventId = valueDes;
          break;
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.placeId = valueDes;
          break;
        case r'mmi':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.mmi = valueDes;
          break;
        case r'distanceKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.distanceKm = valueDes;
          break;
        case r'feltLikely':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.feltLikely = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      FeltReportEstimatePayloadMethodEnum,
                    ),
                  )
                  as FeltReportEstimatePayloadMethodEnum;
          result.method = valueDes;
          break;
        case r'coefficientSet':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      FeltReportEstimatePayloadCoefficientSetEnum,
                    ),
                  )
                  as FeltReportEstimatePayloadCoefficientSetEnum?;
          if (valueDes == null) continue;
          result.coefficientSet = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FeltReportEstimatePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeltReportEstimatePayloadBuilder();
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

class FeltReportEstimatePayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const FeltReportEstimatePayloadStatusEnum ok =
      _$feltReportEstimatePayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const FeltReportEstimatePayloadStatusEnum insufficientData =
      _$feltReportEstimatePayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const FeltReportEstimatePayloadStatusEnum noCoverage =
      _$feltReportEstimatePayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const FeltReportEstimatePayloadStatusEnum degradedInput =
      _$feltReportEstimatePayloadStatusEnum_degradedInput;

  static Serializer<FeltReportEstimatePayloadStatusEnum> get serializer =>
      _$feltReportEstimatePayloadStatusEnumSerializer;

  const FeltReportEstimatePayloadStatusEnum._(String name) : super(name);

  static BuiltSet<FeltReportEstimatePayloadStatusEnum> get values =>
      _$feltReportEstimatePayloadStatusEnumValues;
  static FeltReportEstimatePayloadStatusEnum valueOf(String name) =>
      _$feltReportEstimatePayloadStatusEnumValueOf(name);
}

class FeltReportEstimatePayloadMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'shakemap')
  static const FeltReportEstimatePayloadMethodEnum shakemap =
      _$feltReportEstimatePayloadMethodEnum_shakemap;
  @BuiltValueEnumConst(wireName: r'ipe-aw2007')
  static const FeltReportEstimatePayloadMethodEnum ipeAw2007 =
      _$feltReportEstimatePayloadMethodEnum_ipeAw2007;

  static Serializer<FeltReportEstimatePayloadMethodEnum> get serializer =>
      _$feltReportEstimatePayloadMethodEnumSerializer;

  const FeltReportEstimatePayloadMethodEnum._(String name) : super(name);

  static BuiltSet<FeltReportEstimatePayloadMethodEnum> get values =>
      _$feltReportEstimatePayloadMethodEnumValues;
  static FeltReportEstimatePayloadMethodEnum valueOf(String name) =>
      _$feltReportEstimatePayloadMethodEnumValueOf(name);
}

class FeltReportEstimatePayloadCoefficientSetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'california')
  static const FeltReportEstimatePayloadCoefficientSetEnum california =
      _$feltReportEstimatePayloadCoefficientSetEnum_california;
  @BuiltValueEnumConst(wireName: r'ceus')
  static const FeltReportEstimatePayloadCoefficientSetEnum ceus =
      _$feltReportEstimatePayloadCoefficientSetEnum_ceus;

  static Serializer<FeltReportEstimatePayloadCoefficientSetEnum>
  get serializer => _$feltReportEstimatePayloadCoefficientSetEnumSerializer;

  const FeltReportEstimatePayloadCoefficientSetEnum._(String name)
    : super(name);

  static BuiltSet<FeltReportEstimatePayloadCoefficientSetEnum> get values =>
      _$feltReportEstimatePayloadCoefficientSetEnumValues;
  static FeltReportEstimatePayloadCoefficientSetEnum valueOf(String name) =>
      _$feltReportEstimatePayloadCoefficientSetEnumValueOf(name);
}
