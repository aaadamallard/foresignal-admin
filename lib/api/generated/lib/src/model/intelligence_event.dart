//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/intel_event_log_entry.dart';
import 'package:foresignal_api/src/model/intelligence_event_speculation.dart';
import 'package:foresignal_api/src/model/severity.dart';
import 'package:foresignal_api/src/model/exposure.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/intelligence_event_evidence.dart';
import 'package:foresignal_api/src/model/intelligence_event_context.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:foresignal_api/src/model/intelligence_event_inference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intelligence_event.g.dart';

/// A typed, located, time-bounded finding from deterministic recipes, with evidence, inference and speculation in separate sections
///
/// Properties:
/// * [id] - ULID identifier
/// * [type]
/// * [title]
/// * [status]
/// * [severity]
/// * [severityOverridden]
/// * [private] - True when any member comes from a private source
/// * [origin]
/// * [recipeId]
/// * [recipeVersion]
/// * [detector]
/// * [mergedInto] - ULID identifier
/// * [notes] - Operator or agent notes (markdown)
/// * [version] - Optimistic-lock version; send it as If-Match on PATCH
/// * [createdAt]
/// * [updatedAt]
/// * [evidence]
/// * [inference]
/// * [speculation]
/// * [context]
/// * [exposure]
/// * [log]
/// * [manifestId] - The analysis manifest of this output (prompt 116); null for outputs written before it
@BuiltValue()
abstract class IntelligenceEvent
    implements Built<IntelligenceEvent, IntelligenceEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  IntelligenceEventTypeEnum get type;
  // enum typeEnum {  maritime-disruption,  aviation-anomaly,  infrastructure-disruption,  weather-impact,  seismic,  custom,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'status')
  IntelligenceEventStatusEnum get status;
  // enum statusEnum {  emerging,  active,  resolved,  dismissed,  };

  @BuiltValueField(wireName: r'severity')
  Severity get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'severityOverridden')
  bool? get severityOverridden;

  /// True when any member comes from a private source
  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'origin')
  IntelligenceEventOriginEnum get origin;
  // enum originEnum {  recipe,  analyst,  agent,  operator,  };

  @BuiltValueField(wireName: r'recipeId')
  String? get recipeId;

  @BuiltValueField(wireName: r'recipeVersion')
  int? get recipeVersion;

  @BuiltValueField(wireName: r'detector')
  DetectorRef get detector;

  /// ULID identifier
  @BuiltValueField(wireName: r'mergedInto')
  String? get mergedInto;

  /// Operator or agent notes (markdown)
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  /// Optimistic-lock version; send it as If-Match on PATCH
  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'evidence')
  IntelligenceEventEvidence get evidence;

  @BuiltValueField(wireName: r'inference')
  IntelligenceEventInference get inference;

  @BuiltValueField(wireName: r'speculation')
  IntelligenceEventSpeculation get speculation;

  @BuiltValueField(wireName: r'context')
  IntelligenceEventContext? get context;

  @BuiltValueField(wireName: r'exposure')
  Exposure? get exposure;

  @BuiltValueField(wireName: r'log')
  BuiltList<IntelEventLogEntry>? get log;

  /// The analysis manifest of this output (prompt 116); null for outputs written before it
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  IntelligenceEvent._();

  factory IntelligenceEvent([void updates(IntelligenceEventBuilder b)]) =
      _$IntelligenceEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelligenceEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelligenceEvent> get serializer =>
      _$IntelligenceEventSerializer();
}

class _$IntelligenceEventSerializer
    implements PrimitiveSerializer<IntelligenceEvent> {
  @override
  final Iterable<Type> types = const [IntelligenceEvent, _$IntelligenceEvent];

  @override
  final String wireName = r'IntelligenceEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelligenceEvent object, {
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
      specifiedType: const FullType(IntelligenceEventTypeEnum),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(IntelligenceEventStatusEnum),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(Severity),
    );
    if (object.severityOverridden != null) {
      yield r'severityOverridden';
      yield serializers.serialize(
        object.severityOverridden,
        specifiedType: const FullType(bool),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(IntelligenceEventOriginEnum),
    );
    if (object.recipeId != null) {
      yield r'recipeId';
      yield serializers.serialize(
        object.recipeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.recipeVersion != null) {
      yield r'recipeVersion';
      yield serializers.serialize(
        object.recipeVersion,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'detector';
    yield serializers.serialize(
      object.detector,
      specifiedType: const FullType(DetectorRef),
    );
    if (object.mergedInto != null) {
      yield r'mergedInto';
      yield serializers.serialize(
        object.mergedInto,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'evidence';
    yield serializers.serialize(
      object.evidence,
      specifiedType: const FullType(IntelligenceEventEvidence),
    );
    yield r'inference';
    yield serializers.serialize(
      object.inference,
      specifiedType: const FullType(IntelligenceEventInference),
    );
    yield r'speculation';
    yield serializers.serialize(
      object.speculation,
      specifiedType: const FullType(IntelligenceEventSpeculation),
    );
    if (object.context != null) {
      yield r'context';
      yield serializers.serialize(
        object.context,
        specifiedType: const FullType(IntelligenceEventContext),
      );
    }
    if (object.exposure != null) {
      yield r'exposure';
      yield serializers.serialize(
        object.exposure,
        specifiedType: const FullType.nullable(Exposure),
      );
    }
    if (object.log != null) {
      yield r'log';
      yield serializers.serialize(
        object.log,
        specifiedType:
            const FullType(BuiltList, [FullType(IntelEventLogEntry)]),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelligenceEvent object, {
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
    required IntelligenceEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligenceEventTypeEnum),
          ) as IntelligenceEventTypeEnum;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligenceEventStatusEnum),
          ) as IntelligenceEventStatusEnum;
          result.status = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Severity),
          ) as Severity;
          result.severity = valueDes;
          break;
        case r'severityOverridden':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.severityOverridden = valueDes;
          break;
        case r'private':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligenceEventOriginEnum),
          ) as IntelligenceEventOriginEnum;
          result.origin = valueDes;
          break;
        case r'recipeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.recipeId = valueDes;
          break;
        case r'recipeVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.recipeVersion = valueDes;
          break;
        case r'detector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DetectorRef),
          ) as DetectorRef;
          result.detector.replace(valueDes);
          break;
        case r'mergedInto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mergedInto = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'evidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligenceEventEvidence),
          ) as IntelligenceEventEvidence;
          result.evidence.replace(valueDes);
          break;
        case r'inference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligenceEventInference),
          ) as IntelligenceEventInference;
          result.inference.replace(valueDes);
          break;
        case r'speculation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligenceEventSpeculation),
          ) as IntelligenceEventSpeculation;
          result.speculation.replace(valueDes);
          break;
        case r'context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IntelligenceEventContext),
          ) as IntelligenceEventContext?;
          if (valueDes == null) continue;
          result.context.replace(valueDes);
          break;
        case r'exposure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Exposure),
          ) as Exposure?;
          if (valueDes == null) continue;
          result.exposure.replace(valueDes);
          break;
        case r'log':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(IntelEventLogEntry)]),
          ) as BuiltList<IntelEventLogEntry>?;
          if (valueDes == null) continue;
          result.log.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelligenceEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelligenceEventBuilder();
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

class IntelligenceEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'maritime-disruption')
  static const IntelligenceEventTypeEnum maritimeDisruption =
      _$intelligenceEventTypeEnum_maritimeDisruption;
  @BuiltValueEnumConst(wireName: r'aviation-anomaly')
  static const IntelligenceEventTypeEnum aviationAnomaly =
      _$intelligenceEventTypeEnum_aviationAnomaly;
  @BuiltValueEnumConst(wireName: r'infrastructure-disruption')
  static const IntelligenceEventTypeEnum infrastructureDisruption =
      _$intelligenceEventTypeEnum_infrastructureDisruption;
  @BuiltValueEnumConst(wireName: r'weather-impact')
  static const IntelligenceEventTypeEnum weatherImpact =
      _$intelligenceEventTypeEnum_weatherImpact;
  @BuiltValueEnumConst(wireName: r'seismic')
  static const IntelligenceEventTypeEnum seismic =
      _$intelligenceEventTypeEnum_seismic;
  @BuiltValueEnumConst(wireName: r'custom')
  static const IntelligenceEventTypeEnum custom =
      _$intelligenceEventTypeEnum_custom;

  static Serializer<IntelligenceEventTypeEnum> get serializer =>
      _$intelligenceEventTypeEnumSerializer;

  const IntelligenceEventTypeEnum._(String name) : super(name);

  static BuiltSet<IntelligenceEventTypeEnum> get values =>
      _$intelligenceEventTypeEnumValues;
  static IntelligenceEventTypeEnum valueOf(String name) =>
      _$intelligenceEventTypeEnumValueOf(name);
}

class IntelligenceEventStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'emerging')
  static const IntelligenceEventStatusEnum emerging =
      _$intelligenceEventStatusEnum_emerging;
  @BuiltValueEnumConst(wireName: r'active')
  static const IntelligenceEventStatusEnum active =
      _$intelligenceEventStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const IntelligenceEventStatusEnum resolved =
      _$intelligenceEventStatusEnum_resolved;
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const IntelligenceEventStatusEnum dismissed =
      _$intelligenceEventStatusEnum_dismissed;

  static Serializer<IntelligenceEventStatusEnum> get serializer =>
      _$intelligenceEventStatusEnumSerializer;

  const IntelligenceEventStatusEnum._(String name) : super(name);

  static BuiltSet<IntelligenceEventStatusEnum> get values =>
      _$intelligenceEventStatusEnumValues;
  static IntelligenceEventStatusEnum valueOf(String name) =>
      _$intelligenceEventStatusEnumValueOf(name);
}

class IntelligenceEventOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'recipe')
  static const IntelligenceEventOriginEnum recipe =
      _$intelligenceEventOriginEnum_recipe;
  @BuiltValueEnumConst(wireName: r'analyst')
  static const IntelligenceEventOriginEnum analyst =
      _$intelligenceEventOriginEnum_analyst;
  @BuiltValueEnumConst(wireName: r'agent')
  static const IntelligenceEventOriginEnum agent =
      _$intelligenceEventOriginEnum_agent;
  @BuiltValueEnumConst(wireName: r'operator')
  static const IntelligenceEventOriginEnum operator_ =
      _$intelligenceEventOriginEnum_operator_;

  static Serializer<IntelligenceEventOriginEnum> get serializer =>
      _$intelligenceEventOriginEnumSerializer;

  const IntelligenceEventOriginEnum._(String name) : super(name);

  static BuiltSet<IntelligenceEventOriginEnum> get values =>
      _$intelligenceEventOriginEnumValues;
  static IntelligenceEventOriginEnum valueOf(String name) =>
      _$intelligenceEventOriginEnumValueOf(name);
}
