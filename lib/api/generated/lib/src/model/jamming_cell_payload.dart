//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/aircraft_fusion_payload_detector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/derived_evidence_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'jamming_cell_payload.g.dart';

/// Kind `jamming-cell` (`derived-gps-jamming`): share of ADS-B aircraft with degraded NACp/NIC in a cell over a 15-min window
///
/// Properties:
/// * [automated]
/// * [notAWarning]
/// * [detector]
/// * [confidence] - Banded to 0.1; a score, not a calibrated probability
/// * [status]
/// * [evidence]
/// * [level]
/// * [grid]
/// * [cell]
/// * [aircraft] - Distinct airborne ADS-B aircraft in the window
/// * [badAircraft] - Aircraft with NACp < 8 or NIC < 7
/// * [ratio]
/// * [windowMinutes]
@BuiltValue()
abstract class JammingCellPayload
    implements Built<JammingCellPayload, JammingCellPayloadBuilder> {
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
  JammingCellPayloadStatusEnum get status;
  // enum statusEnum {  ok,  insufficient-data,  no-coverage,  degraded-input,  };

  @BuiltValueField(wireName: r'evidence')
  BuiltList<DerivedEvidenceRef>? get evidence;

  @BuiltValueField(wireName: r'level')
  JammingCellPayloadLevelEnum get level;
  // enum levelEnum {  medium,  high,  };

  @BuiltValueField(wireName: r'grid')
  JammingCellPayloadGridEnum? get grid;
  // enum gridEnum {  h3,  deg1,  };

  @BuiltValueField(wireName: r'cell')
  String get cell;

  /// Distinct airborne ADS-B aircraft in the window
  @BuiltValueField(wireName: r'aircraft')
  int? get aircraft;

  /// Aircraft with NACp < 8 or NIC < 7
  @BuiltValueField(wireName: r'badAircraft')
  int? get badAircraft;

  @BuiltValueField(wireName: r'ratio')
  num? get ratio;

  @BuiltValueField(wireName: r'windowMinutes')
  int? get windowMinutes;

  JammingCellPayload._();

  factory JammingCellPayload([void updates(JammingCellPayloadBuilder b)]) =
      _$JammingCellPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JammingCellPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JammingCellPayload> get serializer =>
      _$JammingCellPayloadSerializer();
}

class _$JammingCellPayloadSerializer
    implements PrimitiveSerializer<JammingCellPayload> {
  @override
  final Iterable<Type> types = const [JammingCellPayload, _$JammingCellPayload];

  @override
  final String wireName = r'JammingCellPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JammingCellPayload object, {
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
      specifiedType: const FullType(JammingCellPayloadStatusEnum),
    );
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType:
            const FullType(BuiltList, [FullType(DerivedEvidenceRef)]),
      );
    }
    yield r'level';
    yield serializers.serialize(
      object.level,
      specifiedType: const FullType(JammingCellPayloadLevelEnum),
    );
    if (object.grid != null) {
      yield r'grid';
      yield serializers.serialize(
        object.grid,
        specifiedType: const FullType(JammingCellPayloadGridEnum),
      );
    }
    yield r'cell';
    yield serializers.serialize(
      object.cell,
      specifiedType: const FullType(String),
    );
    if (object.aircraft != null) {
      yield r'aircraft';
      yield serializers.serialize(
        object.aircraft,
        specifiedType: const FullType(int),
      );
    }
    if (object.badAircraft != null) {
      yield r'badAircraft';
      yield serializers.serialize(
        object.badAircraft,
        specifiedType: const FullType(int),
      );
    }
    if (object.ratio != null) {
      yield r'ratio';
      yield serializers.serialize(
        object.ratio,
        specifiedType: const FullType(num),
      );
    }
    if (object.windowMinutes != null) {
      yield r'windowMinutes';
      yield serializers.serialize(
        object.windowMinutes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    JammingCellPayload object, {
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
    required JammingCellPayloadBuilder result,
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
            specifiedType: const FullType(JammingCellPayloadStatusEnum),
          ) as JammingCellPayloadStatusEnum;
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
        case r'level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JammingCellPayloadLevelEnum),
          ) as JammingCellPayloadLevelEnum;
          result.level = valueDes;
          break;
        case r'grid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JammingCellPayloadGridEnum),
          ) as JammingCellPayloadGridEnum?;
          if (valueDes == null) continue;
          result.grid = valueDes;
          break;
        case r'cell':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cell = valueDes;
          break;
        case r'aircraft':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.aircraft = valueDes;
          break;
        case r'badAircraft':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.badAircraft = valueDes;
          break;
        case r'ratio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratio = valueDes;
          break;
        case r'windowMinutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.windowMinutes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JammingCellPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JammingCellPayloadBuilder();
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

class JammingCellPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const JammingCellPayloadStatusEnum ok =
      _$jammingCellPayloadStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient-data')
  static const JammingCellPayloadStatusEnum insufficientData =
      _$jammingCellPayloadStatusEnum_insufficientData;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const JammingCellPayloadStatusEnum noCoverage =
      _$jammingCellPayloadStatusEnum_noCoverage;
  @BuiltValueEnumConst(wireName: r'degraded-input')
  static const JammingCellPayloadStatusEnum degradedInput =
      _$jammingCellPayloadStatusEnum_degradedInput;

  static Serializer<JammingCellPayloadStatusEnum> get serializer =>
      _$jammingCellPayloadStatusEnumSerializer;

  const JammingCellPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<JammingCellPayloadStatusEnum> get values =>
      _$jammingCellPayloadStatusEnumValues;
  static JammingCellPayloadStatusEnum valueOf(String name) =>
      _$jammingCellPayloadStatusEnumValueOf(name);
}

class JammingCellPayloadLevelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'medium')
  static const JammingCellPayloadLevelEnum medium =
      _$jammingCellPayloadLevelEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const JammingCellPayloadLevelEnum high =
      _$jammingCellPayloadLevelEnum_high;

  static Serializer<JammingCellPayloadLevelEnum> get serializer =>
      _$jammingCellPayloadLevelEnumSerializer;

  const JammingCellPayloadLevelEnum._(String name) : super(name);

  static BuiltSet<JammingCellPayloadLevelEnum> get values =>
      _$jammingCellPayloadLevelEnumValues;
  static JammingCellPayloadLevelEnum valueOf(String name) =>
      _$jammingCellPayloadLevelEnumValueOf(name);
}

class JammingCellPayloadGridEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'h3')
  static const JammingCellPayloadGridEnum h3 = _$jammingCellPayloadGridEnum_h3;
  @BuiltValueEnumConst(wireName: r'deg1')
  static const JammingCellPayloadGridEnum deg1 =
      _$jammingCellPayloadGridEnum_deg1;

  static Serializer<JammingCellPayloadGridEnum> get serializer =>
      _$jammingCellPayloadGridEnumSerializer;

  const JammingCellPayloadGridEnum._(String name) : super(name);

  static BuiltSet<JammingCellPayloadGridEnum> get values =>
      _$jammingCellPayloadGridEnumValues;
  static JammingCellPayloadGridEnum valueOf(String name) =>
      _$jammingCellPayloadGridEnumValueOf(name);
}
