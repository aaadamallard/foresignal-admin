//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_event_record_payload.g.dart';

/// Payload of `foresignal-intel` records of kind `intelligence-event` (externalId = event id); emitted only on change, tombstoned on dismiss or merge
///
/// Properties:
/// * [type]
/// * [severity]
/// * [status]
/// * [confidence]
/// * [label]
/// * [evidenceQuality]
/// * [memberCount]
/// * [signalFamilies]
/// * [title]
/// * [automated]
@BuiltValue()
abstract class IntelEventRecordPayload
    implements Built<IntelEventRecordPayload, IntelEventRecordPayloadBuilder> {
  @BuiltValueField(wireName: r'type')
  IntelEventRecordPayloadTypeEnum get type;
  // enum typeEnum {  maritime-disruption,  aviation-anomaly,  infrastructure-disruption,  weather-impact,  seismic,  custom,  };

  @BuiltValueField(wireName: r'severity')
  Severity get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'status')
  IntelEventRecordPayloadStatusEnum get status;
  // enum statusEnum {  emerging,  active,  resolved,  dismissed,  };

  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  @BuiltValueField(wireName: r'label')
  IntelEventRecordPayloadLabelEnum? get label;
  // enum labelEnum {  low,  moderate,  high,  };

  @BuiltValueField(wireName: r'evidenceQuality')
  IntelEventRecordPayloadEvidenceQualityEnum? get evidenceQuality;
  // enum evidenceQualityEnum {  strong,  moderate,  weak,  insufficient,  };

  @BuiltValueField(wireName: r'memberCount')
  int? get memberCount;

  @BuiltValueField(wireName: r'signalFamilies')
  BuiltList<String>? get signalFamilies;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'automated')
  bool get automated;

  IntelEventRecordPayload._();

  factory IntelEventRecordPayload(
          [void updates(IntelEventRecordPayloadBuilder b)]) =
      _$IntelEventRecordPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelEventRecordPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelEventRecordPayload> get serializer =>
      _$IntelEventRecordPayloadSerializer();
}

class _$IntelEventRecordPayloadSerializer
    implements PrimitiveSerializer<IntelEventRecordPayload> {
  @override
  final Iterable<Type> types = const [
    IntelEventRecordPayload,
    _$IntelEventRecordPayload
  ];

  @override
  final String wireName = r'IntelEventRecordPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelEventRecordPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(IntelEventRecordPayloadTypeEnum),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(Severity),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(IntelEventRecordPayloadStatusEnum),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(IntelEventRecordPayloadLabelEnum),
      );
    }
    if (object.evidenceQuality != null) {
      yield r'evidenceQuality';
      yield serializers.serialize(
        object.evidenceQuality,
        specifiedType:
            const FullType(IntelEventRecordPayloadEvidenceQualityEnum),
      );
    }
    if (object.memberCount != null) {
      yield r'memberCount';
      yield serializers.serialize(
        object.memberCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.signalFamilies != null) {
      yield r'signalFamilies';
      yield serializers.serialize(
        object.signalFamilies,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'automated';
    yield serializers.serialize(
      object.automated,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelEventRecordPayload object, {
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
    required IntelEventRecordPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntelEventRecordPayloadTypeEnum),
          ) as IntelEventRecordPayloadTypeEnum;
          result.type = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Severity),
          ) as Severity;
          result.severity = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntelEventRecordPayloadStatusEnum),
          ) as IntelEventRecordPayloadStatusEnum;
          result.status = valueDes;
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confidence = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(IntelEventRecordPayloadLabelEnum),
          ) as IntelEventRecordPayloadLabelEnum?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'evidenceQuality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                IntelEventRecordPayloadEvidenceQualityEnum),
          ) as IntelEventRecordPayloadEvidenceQualityEnum?;
          if (valueDes == null) continue;
          result.evidenceQuality = valueDes;
          break;
        case r'memberCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.memberCount = valueDes;
          break;
        case r'signalFamilies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.signalFamilies.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'automated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.automated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelEventRecordPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelEventRecordPayloadBuilder();
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

class IntelEventRecordPayloadTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'maritime-disruption')
  static const IntelEventRecordPayloadTypeEnum maritimeDisruption =
      _$intelEventRecordPayloadTypeEnum_maritimeDisruption;
  @BuiltValueEnumConst(wireName: r'aviation-anomaly')
  static const IntelEventRecordPayloadTypeEnum aviationAnomaly =
      _$intelEventRecordPayloadTypeEnum_aviationAnomaly;
  @BuiltValueEnumConst(wireName: r'infrastructure-disruption')
  static const IntelEventRecordPayloadTypeEnum infrastructureDisruption =
      _$intelEventRecordPayloadTypeEnum_infrastructureDisruption;
  @BuiltValueEnumConst(wireName: r'weather-impact')
  static const IntelEventRecordPayloadTypeEnum weatherImpact =
      _$intelEventRecordPayloadTypeEnum_weatherImpact;
  @BuiltValueEnumConst(wireName: r'seismic')
  static const IntelEventRecordPayloadTypeEnum seismic =
      _$intelEventRecordPayloadTypeEnum_seismic;
  @BuiltValueEnumConst(wireName: r'custom')
  static const IntelEventRecordPayloadTypeEnum custom =
      _$intelEventRecordPayloadTypeEnum_custom;

  static Serializer<IntelEventRecordPayloadTypeEnum> get serializer =>
      _$intelEventRecordPayloadTypeEnumSerializer;

  const IntelEventRecordPayloadTypeEnum._(String name) : super(name);

  static BuiltSet<IntelEventRecordPayloadTypeEnum> get values =>
      _$intelEventRecordPayloadTypeEnumValues;
  static IntelEventRecordPayloadTypeEnum valueOf(String name) =>
      _$intelEventRecordPayloadTypeEnumValueOf(name);
}

class IntelEventRecordPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'emerging')
  static const IntelEventRecordPayloadStatusEnum emerging =
      _$intelEventRecordPayloadStatusEnum_emerging;
  @BuiltValueEnumConst(wireName: r'active')
  static const IntelEventRecordPayloadStatusEnum active =
      _$intelEventRecordPayloadStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const IntelEventRecordPayloadStatusEnum resolved =
      _$intelEventRecordPayloadStatusEnum_resolved;
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const IntelEventRecordPayloadStatusEnum dismissed =
      _$intelEventRecordPayloadStatusEnum_dismissed;

  static Serializer<IntelEventRecordPayloadStatusEnum> get serializer =>
      _$intelEventRecordPayloadStatusEnumSerializer;

  const IntelEventRecordPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<IntelEventRecordPayloadStatusEnum> get values =>
      _$intelEventRecordPayloadStatusEnumValues;
  static IntelEventRecordPayloadStatusEnum valueOf(String name) =>
      _$intelEventRecordPayloadStatusEnumValueOf(name);
}

class IntelEventRecordPayloadLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const IntelEventRecordPayloadLabelEnum low =
      _$intelEventRecordPayloadLabelEnum_low;
  @BuiltValueEnumConst(wireName: r'moderate')
  static const IntelEventRecordPayloadLabelEnum moderate =
      _$intelEventRecordPayloadLabelEnum_moderate;
  @BuiltValueEnumConst(wireName: r'high')
  static const IntelEventRecordPayloadLabelEnum high =
      _$intelEventRecordPayloadLabelEnum_high;

  static Serializer<IntelEventRecordPayloadLabelEnum> get serializer =>
      _$intelEventRecordPayloadLabelEnumSerializer;

  const IntelEventRecordPayloadLabelEnum._(String name) : super(name);

  static BuiltSet<IntelEventRecordPayloadLabelEnum> get values =>
      _$intelEventRecordPayloadLabelEnumValues;
  static IntelEventRecordPayloadLabelEnum valueOf(String name) =>
      _$intelEventRecordPayloadLabelEnumValueOf(name);
}

class IntelEventRecordPayloadEvidenceQualityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'strong')
  static const IntelEventRecordPayloadEvidenceQualityEnum strong =
      _$intelEventRecordPayloadEvidenceQualityEnum_strong;
  @BuiltValueEnumConst(wireName: r'moderate')
  static const IntelEventRecordPayloadEvidenceQualityEnum moderate =
      _$intelEventRecordPayloadEvidenceQualityEnum_moderate;
  @BuiltValueEnumConst(wireName: r'weak')
  static const IntelEventRecordPayloadEvidenceQualityEnum weak =
      _$intelEventRecordPayloadEvidenceQualityEnum_weak;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const IntelEventRecordPayloadEvidenceQualityEnum insufficient =
      _$intelEventRecordPayloadEvidenceQualityEnum_insufficient;

  static Serializer<IntelEventRecordPayloadEvidenceQualityEnum>
      get serializer => _$intelEventRecordPayloadEvidenceQualityEnumSerializer;

  const IntelEventRecordPayloadEvidenceQualityEnum._(String name) : super(name);

  static BuiltSet<IntelEventRecordPayloadEvidenceQualityEnum> get values =>
      _$intelEventRecordPayloadEvidenceQualityEnumValues;
  static IntelEventRecordPayloadEvidenceQualityEnum valueOf(String name) =>
      _$intelEventRecordPayloadEvidenceQualityEnumValueOf(name);
}
