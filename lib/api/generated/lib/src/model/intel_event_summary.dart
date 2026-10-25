//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_event_summary.g.dart';

/// Compact intelligence event for lists and SSE
///
/// Properties:
/// * [id] - ULID identifier
/// * [type]
/// * [title]
/// * [status]
/// * [severity]
/// * [confidence] - The calibrated probability when `calibrated` is true, otherwise the raw EventScorer score (capped at 0.95)
/// * [rawConfidence] - The uncalibrated EventScorer score behind `confidence` (151); equal to `confidence` until calibrated
/// * [confidenceLabel] - low < 0.4 ≤ moderate < 0.7 ≤ high
/// * [confidenceMethod]
/// * [calibrated] - True when `confidence` is a calibrated probability backed by resolved outcomes (151); until a scope has enough resolved history the raw score stands and this is false
/// * [evidenceQuality]
/// * [memberCount]
/// * [signalFamilies]
/// * [startTime]
/// * [endTime]
/// * [lastEvidenceAt]
/// * [centroid]
/// * [regionTags]
/// * [private]
/// * [origin]
/// * [mergedInto] - ULID identifier
/// * [version]
/// * [updatedAt]
@BuiltValue()
abstract class IntelEventSummary
    implements Built<IntelEventSummary, IntelEventSummaryBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  IntelEventSummaryTypeEnum get type;
  // enum typeEnum {  maritime-disruption,  aviation-anomaly,  infrastructure-disruption,  weather-impact,  seismic,  custom,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'status')
  IntelEventSummaryStatusEnum get status;
  // enum statusEnum {  emerging,  active,  resolved,  dismissed,  };

  @BuiltValueField(wireName: r'severity')
  Severity get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  /// The calibrated probability when `calibrated` is true, otherwise the raw EventScorer score (capped at 0.95)
  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  /// The uncalibrated EventScorer score behind `confidence` (151); equal to `confidence` until calibrated
  @BuiltValueField(wireName: r'rawConfidence')
  num? get rawConfidence;

  /// low < 0.4 ≤ moderate < 0.7 ≤ high
  @BuiltValueField(wireName: r'confidenceLabel')
  IntelEventSummaryConfidenceLabelEnum get confidenceLabel;
  // enum confidenceLabelEnum {  low,  moderate,  high,  };

  @BuiltValueField(wireName: r'confidenceMethod')
  String? get confidenceMethod;

  /// True when `confidence` is a calibrated probability backed by resolved outcomes (151); until a scope has enough resolved history the raw score stands and this is false
  @BuiltValueField(wireName: r'calibrated')
  bool? get calibrated;

  @BuiltValueField(wireName: r'evidenceQuality')
  IntelEventSummaryEvidenceQualityEnum get evidenceQuality;
  // enum evidenceQualityEnum {  strong,  moderate,  weak,  insufficient,  };

  @BuiltValueField(wireName: r'memberCount')
  int get memberCount;

  @BuiltValueField(wireName: r'signalFamilies')
  BuiltList<String>? get signalFamilies;

  @BuiltValueField(wireName: r'startTime')
  DateTime get startTime;

  @BuiltValueField(wireName: r'endTime')
  DateTime? get endTime;

  @BuiltValueField(wireName: r'lastEvidenceAt')
  DateTime? get lastEvidenceAt;

  @BuiltValueField(wireName: r'centroid')
  Geometry? get centroid;

  @BuiltValueField(wireName: r'regionTags')
  BuiltList<String>? get regionTags;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'origin')
  IntelEventSummaryOriginEnum? get origin;
  // enum originEnum {  recipe,  analyst,  agent,  operator,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'mergedInto')
  String? get mergedInto;

  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  IntelEventSummary._();

  factory IntelEventSummary([void updates(IntelEventSummaryBuilder b)]) =
      _$IntelEventSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelEventSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelEventSummary> get serializer =>
      _$IntelEventSummarySerializer();
}

class _$IntelEventSummarySerializer
    implements PrimitiveSerializer<IntelEventSummary> {
  @override
  final Iterable<Type> types = const [IntelEventSummary, _$IntelEventSummary];

  @override
  final String wireName = r'IntelEventSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelEventSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(IntelEventSummaryTypeEnum),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(IntelEventSummaryStatusEnum),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(Severity),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    if (object.rawConfidence != null) {
      yield r'rawConfidence';
      yield serializers.serialize(
        object.rawConfidence,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'confidenceLabel';
    yield serializers.serialize(
      object.confidenceLabel,
      specifiedType: const FullType(IntelEventSummaryConfidenceLabelEnum),
    );
    if (object.confidenceMethod != null) {
      yield r'confidenceMethod';
      yield serializers.serialize(
        object.confidenceMethod,
        specifiedType: const FullType(String),
      );
    }
    if (object.calibrated != null) {
      yield r'calibrated';
      yield serializers.serialize(
        object.calibrated,
        specifiedType: const FullType(bool),
      );
    }
    yield r'evidenceQuality';
    yield serializers.serialize(
      object.evidenceQuality,
      specifiedType: const FullType(IntelEventSummaryEvidenceQualityEnum),
    );
    yield r'memberCount';
    yield serializers.serialize(
      object.memberCount,
      specifiedType: const FullType(int),
    );
    if (object.signalFamilies != null) {
      yield r'signalFamilies';
      yield serializers.serialize(
        object.signalFamilies,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'startTime';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastEvidenceAt != null) {
      yield r'lastEvidenceAt';
      yield serializers.serialize(
        object.lastEvidenceAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.centroid != null) {
      yield r'centroid';
      yield serializers.serialize(
        object.centroid,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.regionTags != null) {
      yield r'regionTags';
      yield serializers.serialize(
        object.regionTags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(IntelEventSummaryOriginEnum),
      );
    }
    if (object.mergedInto != null) {
      yield r'mergedInto';
      yield serializers.serialize(
        object.mergedInto,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelEventSummary object, {
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
    required IntelEventSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntelEventSummaryTypeEnum),
                  )
                  as IntelEventSummaryTypeEnum;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntelEventSummaryStatusEnum),
                  )
                  as IntelEventSummaryStatusEnum;
          result.status = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Severity),
                  )
                  as Severity;
          result.severity = valueDes;
          break;
        case r'confidence':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.confidence = valueDes;
          break;
        case r'rawConfidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.rawConfidence = valueDes;
          break;
        case r'confidenceLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      IntelEventSummaryConfidenceLabelEnum,
                    ),
                  )
                  as IntelEventSummaryConfidenceLabelEnum;
          result.confidenceLabel = valueDes;
          break;
        case r'confidenceMethod':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.confidenceMethod = valueDes;
          break;
        case r'calibrated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.calibrated = valueDes;
          break;
        case r'evidenceQuality':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      IntelEventSummaryEvidenceQualityEnum,
                    ),
                  )
                  as IntelEventSummaryEvidenceQualityEnum;
          result.evidenceQuality = valueDes;
          break;
        case r'memberCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.memberCount = valueDes;
          break;
        case r'signalFamilies':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.signalFamilies.replace(valueDes);
          break;
        case r'startTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.startTime = valueDes;
          break;
        case r'endTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        case r'lastEvidenceAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastEvidenceAt = valueDes;
          break;
        case r'centroid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.centroid.replace(valueDes);
          break;
        case r'regionTags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionTags.replace(valueDes);
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IntelEventSummaryOriginEnum,
                    ),
                  )
                  as IntelEventSummaryOriginEnum?;
          if (valueDes == null) continue;
          result.origin = valueDes;
          break;
        case r'mergedInto':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mergedInto = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelEventSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelEventSummaryBuilder();
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

class IntelEventSummaryTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'maritime-disruption')
  static const IntelEventSummaryTypeEnum maritimeDisruption =
      _$intelEventSummaryTypeEnum_maritimeDisruption;
  @BuiltValueEnumConst(wireName: r'aviation-anomaly')
  static const IntelEventSummaryTypeEnum aviationAnomaly =
      _$intelEventSummaryTypeEnum_aviationAnomaly;
  @BuiltValueEnumConst(wireName: r'infrastructure-disruption')
  static const IntelEventSummaryTypeEnum infrastructureDisruption =
      _$intelEventSummaryTypeEnum_infrastructureDisruption;
  @BuiltValueEnumConst(wireName: r'weather-impact')
  static const IntelEventSummaryTypeEnum weatherImpact =
      _$intelEventSummaryTypeEnum_weatherImpact;
  @BuiltValueEnumConst(wireName: r'seismic')
  static const IntelEventSummaryTypeEnum seismic =
      _$intelEventSummaryTypeEnum_seismic;
  @BuiltValueEnumConst(wireName: r'custom')
  static const IntelEventSummaryTypeEnum custom =
      _$intelEventSummaryTypeEnum_custom;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IntelEventSummaryTypeEnum unknownDefaultOpenApi =
      _$intelEventSummaryTypeEnum_unknownDefaultOpenApi;

  static Serializer<IntelEventSummaryTypeEnum> get serializer =>
      _$intelEventSummaryTypeEnumSerializer;

  const IntelEventSummaryTypeEnum._(String name) : super(name);

  static BuiltSet<IntelEventSummaryTypeEnum> get values =>
      _$intelEventSummaryTypeEnumValues;
  static IntelEventSummaryTypeEnum valueOf(String name) =>
      _$intelEventSummaryTypeEnumValueOf(name);
}

class IntelEventSummaryStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'emerging')
  static const IntelEventSummaryStatusEnum emerging =
      _$intelEventSummaryStatusEnum_emerging;
  @BuiltValueEnumConst(wireName: r'active')
  static const IntelEventSummaryStatusEnum active =
      _$intelEventSummaryStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const IntelEventSummaryStatusEnum resolved =
      _$intelEventSummaryStatusEnum_resolved;
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const IntelEventSummaryStatusEnum dismissed =
      _$intelEventSummaryStatusEnum_dismissed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IntelEventSummaryStatusEnum unknownDefaultOpenApi =
      _$intelEventSummaryStatusEnum_unknownDefaultOpenApi;

  static Serializer<IntelEventSummaryStatusEnum> get serializer =>
      _$intelEventSummaryStatusEnumSerializer;

  const IntelEventSummaryStatusEnum._(String name) : super(name);

  static BuiltSet<IntelEventSummaryStatusEnum> get values =>
      _$intelEventSummaryStatusEnumValues;
  static IntelEventSummaryStatusEnum valueOf(String name) =>
      _$intelEventSummaryStatusEnumValueOf(name);
}

/// low < 0.4 ≤ moderate < 0.7 ≤ high
class IntelEventSummaryConfidenceLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const IntelEventSummaryConfidenceLabelEnum low =
      _$intelEventSummaryConfidenceLabelEnum_low;
  @BuiltValueEnumConst(wireName: r'moderate')
  static const IntelEventSummaryConfidenceLabelEnum moderate =
      _$intelEventSummaryConfidenceLabelEnum_moderate;
  @BuiltValueEnumConst(wireName: r'high')
  static const IntelEventSummaryConfidenceLabelEnum high =
      _$intelEventSummaryConfidenceLabelEnum_high;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IntelEventSummaryConfidenceLabelEnum unknownDefaultOpenApi =
      _$intelEventSummaryConfidenceLabelEnum_unknownDefaultOpenApi;

  static Serializer<IntelEventSummaryConfidenceLabelEnum> get serializer =>
      _$intelEventSummaryConfidenceLabelEnumSerializer;

  const IntelEventSummaryConfidenceLabelEnum._(String name) : super(name);

  static BuiltSet<IntelEventSummaryConfidenceLabelEnum> get values =>
      _$intelEventSummaryConfidenceLabelEnumValues;
  static IntelEventSummaryConfidenceLabelEnum valueOf(String name) =>
      _$intelEventSummaryConfidenceLabelEnumValueOf(name);
}

class IntelEventSummaryEvidenceQualityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'strong')
  static const IntelEventSummaryEvidenceQualityEnum strong =
      _$intelEventSummaryEvidenceQualityEnum_strong;
  @BuiltValueEnumConst(wireName: r'moderate')
  static const IntelEventSummaryEvidenceQualityEnum moderate =
      _$intelEventSummaryEvidenceQualityEnum_moderate;
  @BuiltValueEnumConst(wireName: r'weak')
  static const IntelEventSummaryEvidenceQualityEnum weak =
      _$intelEventSummaryEvidenceQualityEnum_weak;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const IntelEventSummaryEvidenceQualityEnum insufficient =
      _$intelEventSummaryEvidenceQualityEnum_insufficient;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IntelEventSummaryEvidenceQualityEnum unknownDefaultOpenApi =
      _$intelEventSummaryEvidenceQualityEnum_unknownDefaultOpenApi;

  static Serializer<IntelEventSummaryEvidenceQualityEnum> get serializer =>
      _$intelEventSummaryEvidenceQualityEnumSerializer;

  const IntelEventSummaryEvidenceQualityEnum._(String name) : super(name);

  static BuiltSet<IntelEventSummaryEvidenceQualityEnum> get values =>
      _$intelEventSummaryEvidenceQualityEnumValues;
  static IntelEventSummaryEvidenceQualityEnum valueOf(String name) =>
      _$intelEventSummaryEvidenceQualityEnumValueOf(name);
}

class IntelEventSummaryOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'recipe')
  static const IntelEventSummaryOriginEnum recipe =
      _$intelEventSummaryOriginEnum_recipe;
  @BuiltValueEnumConst(wireName: r'analyst')
  static const IntelEventSummaryOriginEnum analyst =
      _$intelEventSummaryOriginEnum_analyst;
  @BuiltValueEnumConst(wireName: r'agent')
  static const IntelEventSummaryOriginEnum agent =
      _$intelEventSummaryOriginEnum_agent;
  @BuiltValueEnumConst(wireName: r'operator')
  static const IntelEventSummaryOriginEnum operator_ =
      _$intelEventSummaryOriginEnum_operator_;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IntelEventSummaryOriginEnum unknownDefaultOpenApi =
      _$intelEventSummaryOriginEnum_unknownDefaultOpenApi;

  static Serializer<IntelEventSummaryOriginEnum> get serializer =>
      _$intelEventSummaryOriginEnumSerializer;

  const IntelEventSummaryOriginEnum._(String name) : super(name);

  static BuiltSet<IntelEventSummaryOriginEnum> get values =>
      _$intelEventSummaryOriginEnumValues;
  static IntelEventSummaryOriginEnum valueOf(String name) =>
      _$intelEventSummaryOriginEnumValueOf(name);
}
