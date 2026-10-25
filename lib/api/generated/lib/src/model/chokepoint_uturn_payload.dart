//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chokepoint_uturn_payload.g.dart';

/// Kind `chokepoint-uturn` (`derived-chokepoint`): course change, U-turn or sharp slowdown inside a chokepoint
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [mmsi]
/// * [chokepointId]
/// * [at]
/// * [manoeuvre]
/// * [courseChangeDeg]
/// * [speedDropPct]
@BuiltValue()
abstract class ChokepointUturnPayload
    implements Built<ChokepointUturnPayload, ChokepointUturnPayloadBuilder> {
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
  ChokepointUturnPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'mmsi')
  String get mmsi;

  @BuiltValueField(wireName: r'chokepointId')
  String get chokepointId;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'manoeuvre')
  ChokepointUturnPayloadManoeuvreEnum get manoeuvre;
  // enum manoeuvreEnum {  course-change,  u-turn,  speed-drop,  };

  @BuiltValueField(wireName: r'courseChangeDeg')
  num? get courseChangeDeg;

  @BuiltValueField(wireName: r'speedDropPct')
  num? get speedDropPct;

  ChokepointUturnPayload._();

  factory ChokepointUturnPayload([
    void updates(ChokepointUturnPayloadBuilder b),
  ]) = _$ChokepointUturnPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChokepointUturnPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChokepointUturnPayload> get serializer =>
      _$ChokepointUturnPayloadSerializer();
}

class _$ChokepointUturnPayloadSerializer
    implements PrimitiveSerializer<ChokepointUturnPayload> {
  @override
  final Iterable<Type> types = const [
    ChokepointUturnPayload,
    _$ChokepointUturnPayload,
  ];

  @override
  final String wireName = r'ChokepointUturnPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChokepointUturnPayload object, {
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
      specifiedType: const FullType(ChokepointUturnPayloadStatusEnum),
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
    yield r'chokepointId';
    yield serializers.serialize(
      object.chokepointId,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'manoeuvre';
    yield serializers.serialize(
      object.manoeuvre,
      specifiedType: const FullType(ChokepointUturnPayloadManoeuvreEnum),
    );
    if (object.courseChangeDeg != null) {
      yield r'courseChangeDeg';
      yield serializers.serialize(
        object.courseChangeDeg,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.speedDropPct != null) {
      yield r'speedDropPct';
      yield serializers.serialize(
        object.speedDropPct,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChokepointUturnPayload object, {
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
    required ChokepointUturnPayloadBuilder result,
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
                      ChokepointUturnPayloadStatusEnum,
                    ),
                  )
                  as ChokepointUturnPayloadStatusEnum;
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
        case r'chokepointId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.chokepointId = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'manoeuvre':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ChokepointUturnPayloadManoeuvreEnum,
                    ),
                  )
                  as ChokepointUturnPayloadManoeuvreEnum;
          result.manoeuvre = valueDes;
          break;
        case r'courseChangeDeg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.courseChangeDeg = valueDes;
          break;
        case r'speedDropPct':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.speedDropPct = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChokepointUturnPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChokepointUturnPayloadBuilder();
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

class ChokepointUturnPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ChokepointUturnPayloadStatusEnum ok =
      _$chokepointUturnPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const ChokepointUturnPayloadStatusEnum insufficientData =
      _$chokepointUturnPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const ChokepointUturnPayloadStatusEnum noCoverage =
      _$chokepointUturnPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const ChokepointUturnPayloadStatusEnum degradedInput =
      _$chokepointUturnPayloadStatusEnum_degradedInput;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChokepointUturnPayloadStatusEnum unknownDefaultOpenApi =
      _$chokepointUturnPayloadStatusEnum_unknownDefaultOpenApi;

  static Serializer<ChokepointUturnPayloadStatusEnum> get serializer =>
      _$chokepointUturnPayloadStatusEnumSerializer;

  const ChokepointUturnPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<ChokepointUturnPayloadStatusEnum> get values =>
      _$chokepointUturnPayloadStatusEnumValues;
  static ChokepointUturnPayloadStatusEnum valueOf(String name) =>
      _$chokepointUturnPayloadStatusEnumValueOf(name);
}

class ChokepointUturnPayloadManoeuvreEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'course-change')
  static const ChokepointUturnPayloadManoeuvreEnum courseChange =
      _$chokepointUturnPayloadManoeuvreEnum_courseChange;
  @BuiltValueEnumConst(wireName: r'u-turn')
  static const ChokepointUturnPayloadManoeuvreEnum uTurn =
      _$chokepointUturnPayloadManoeuvreEnum_uTurn;
  @BuiltValueEnumConst(wireName: r'speed-drop')
  static const ChokepointUturnPayloadManoeuvreEnum speedDrop =
      _$chokepointUturnPayloadManoeuvreEnum_speedDrop;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChokepointUturnPayloadManoeuvreEnum unknownDefaultOpenApi =
      _$chokepointUturnPayloadManoeuvreEnum_unknownDefaultOpenApi;

  static Serializer<ChokepointUturnPayloadManoeuvreEnum> get serializer =>
      _$chokepointUturnPayloadManoeuvreEnumSerializer;

  const ChokepointUturnPayloadManoeuvreEnum._(String name) : super(name);

  static BuiltSet<ChokepointUturnPayloadManoeuvreEnum> get values =>
      _$chokepointUturnPayloadManoeuvreEnumValues;
  static ChokepointUturnPayloadManoeuvreEnum valueOf(String name) =>
      _$chokepointUturnPayloadManoeuvreEnumValueOf(name);
}
