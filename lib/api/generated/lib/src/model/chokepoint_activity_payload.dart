//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chokepoint_activity_payload.g.dart';

/// Kind `chokepoint-activity` (`derived-chokepoint`): hourly banded counts per chokepoint with coverage status
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [chokepointId]
/// * [name]
/// * [hourStart]
/// * [transits]
/// * [uTurns]
/// * [stopped]
/// * [coverageStatus]
@BuiltValue()
abstract class ChokepointActivityPayload
    implements
        Built<ChokepointActivityPayload, ChokepointActivityPayloadBuilder> {
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
  ChokepointActivityPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'chokepointId')
  String get chokepointId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'hourStart')
  DateTime get hourStart;

  @BuiltValueField(wireName: r'transits')
  int? get transits;

  @BuiltValueField(wireName: r'uTurns')
  int? get uTurns;

  @BuiltValueField(wireName: r'stopped')
  int? get stopped;

  @BuiltValueField(wireName: r'coverageStatus')
  ChokepointActivityPayloadCoverageStatusEnum? get coverageStatus;
  // enum coverageStatusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  ChokepointActivityPayload._();

  factory ChokepointActivityPayload(
          [void updates(ChokepointActivityPayloadBuilder b)]) =
      _$ChokepointActivityPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChokepointActivityPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChokepointActivityPayload> get serializer =>
      _$ChokepointActivityPayloadSerializer();
}

class _$ChokepointActivityPayloadSerializer
    implements PrimitiveSerializer<ChokepointActivityPayload> {
  @override
  final Iterable<Type> types = const [
    ChokepointActivityPayload,
    _$ChokepointActivityPayload
  ];

  @override
  final String wireName = r'ChokepointActivityPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChokepointActivityPayload object, {
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
      specifiedType: const FullType(ChokepointActivityPayloadStatusEnum),
    );
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType:
            const FullType(BuiltList, [FullType(DerivedEvidenceRef)]),
      );
    }
    yield r'chokepointId';
    yield serializers.serialize(
      object.chokepointId,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    yield r'hourStart';
    yield serializers.serialize(
      object.hourStart,
      specifiedType: const FullType(DateTime),
    );
    if (object.transits != null) {
      yield r'transits';
      yield serializers.serialize(
        object.transits,
        specifiedType: const FullType(int),
      );
    }
    if (object.uTurns != null) {
      yield r'uTurns';
      yield serializers.serialize(
        object.uTurns,
        specifiedType: const FullType(int),
      );
    }
    if (object.stopped != null) {
      yield r'stopped';
      yield serializers.serialize(
        object.stopped,
        specifiedType: const FullType(int),
      );
    }
    if (object.coverageStatus != null) {
      yield r'coverageStatus';
      yield serializers.serialize(
        object.coverageStatus,
        specifiedType:
            const FullType(ChokepointActivityPayloadCoverageStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChokepointActivityPayload object, {
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
    required ChokepointActivityPayloadBuilder result,
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
            specifiedType: const FullType(ChokepointActivityPayloadStatusEnum),
          ) as ChokepointActivityPayloadStatusEnum;
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
        case r'chokepointId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.chokepointId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'hourStart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.hourStart = valueDes;
          break;
        case r'transits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.transits = valueDes;
          break;
        case r'uTurns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.uTurns = valueDes;
          break;
        case r'stopped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.stopped = valueDes;
          break;
        case r'coverageStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                ChokepointActivityPayloadCoverageStatusEnum),
          ) as ChokepointActivityPayloadCoverageStatusEnum?;
          if (valueDes == null) continue;
          result.coverageStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChokepointActivityPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChokepointActivityPayloadBuilder();
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

class ChokepointActivityPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ChokepointActivityPayloadStatusEnum ok =
      _$chokepointActivityPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const ChokepointActivityPayloadStatusEnum insufficientData =
      _$chokepointActivityPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const ChokepointActivityPayloadStatusEnum noCoverage =
      _$chokepointActivityPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const ChokepointActivityPayloadStatusEnum degradedInput =
      _$chokepointActivityPayloadStatusEnum_degradedInput;

  static Serializer<ChokepointActivityPayloadStatusEnum> get serializer =>
      _$chokepointActivityPayloadStatusEnumSerializer;

  const ChokepointActivityPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<ChokepointActivityPayloadStatusEnum> get values =>
      _$chokepointActivityPayloadStatusEnumValues;
  static ChokepointActivityPayloadStatusEnum valueOf(String name) =>
      _$chokepointActivityPayloadStatusEnumValueOf(name);
}

class ChokepointActivityPayloadCoverageStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ChokepointActivityPayloadCoverageStatusEnum ok =
      _$chokepointActivityPayloadCoverageStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const ChokepointActivityPayloadCoverageStatusEnum insufficientData =
      _$chokepointActivityPayloadCoverageStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const ChokepointActivityPayloadCoverageStatusEnum noCoverage =
      _$chokepointActivityPayloadCoverageStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const ChokepointActivityPayloadCoverageStatusEnum degradedInput =
      _$chokepointActivityPayloadCoverageStatusEnum_degradedInput;

  static Serializer<ChokepointActivityPayloadCoverageStatusEnum>
      get serializer => _$chokepointActivityPayloadCoverageStatusEnumSerializer;

  const ChokepointActivityPayloadCoverageStatusEnum._(String name)
      : super(name);

  static BuiltSet<ChokepointActivityPayloadCoverageStatusEnum> get values =>
      _$chokepointActivityPayloadCoverageStatusEnumValues;
  static ChokepointActivityPayloadCoverageStatusEnum valueOf(String name) =>
      _$chokepointActivityPayloadCoverageStatusEnumValueOf(name);
}
