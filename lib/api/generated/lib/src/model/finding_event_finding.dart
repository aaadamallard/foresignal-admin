//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/finding_severity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'finding_event_finding.g.dart';

/// Finding summary
///
/// Properties:
/// * [id] - ULID identifier
/// * [findingType]
/// * [title]
/// * [severity]
/// * [status]
/// * [regionCodes]
/// * [detectedAt]
/// * [situationId] - ULID identifier
/// * [private]
@BuiltValue()
abstract class FindingEventFinding
    implements Built<FindingEventFinding, FindingEventFindingBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'findingType')
  FindingEventFindingFindingTypeEnum get findingType;
  // enum findingTypeEnum {  change-point,  pre-event-signal,  unexplained-move,  co-occurrence,  precursor-active,  forecast-exceedance,  outlook-exceedance,  projected-impact,  social-velocity,  media-reuse,  social-coordination,  attention-gap,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'severity')
  FindingSeverity get severity;
  // enum severityEnum {  info,  notable,  significant,  };

  @BuiltValueField(wireName: r'status')
  FindingEventFindingStatusEnum get status;
  // enum statusEnum {  open,  superseded,  dismissed,  };

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'detectedAt')
  DateTime get detectedAt;

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  FindingEventFinding._();

  factory FindingEventFinding([void updates(FindingEventFindingBuilder b)]) =
      _$FindingEventFinding;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FindingEventFindingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FindingEventFinding> get serializer =>
      _$FindingEventFindingSerializer();
}

class _$FindingEventFindingSerializer
    implements PrimitiveSerializer<FindingEventFinding> {
  @override
  final Iterable<Type> types = const [
    FindingEventFinding,
    _$FindingEventFinding,
  ];

  @override
  final String wireName = r'FindingEventFinding';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FindingEventFinding object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'findingType';
    yield serializers.serialize(
      object.findingType,
      specifiedType: const FullType(FindingEventFindingFindingTypeEnum),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(FindingSeverity),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(FindingEventFindingStatusEnum),
    );
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'detectedAt';
    yield serializers.serialize(
      object.detectedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FindingEventFinding object, {
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
    required FindingEventFindingBuilder result,
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
        case r'findingType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      FindingEventFindingFindingTypeEnum,
                    ),
                  )
                  as FindingEventFindingFindingTypeEnum;
          result.findingType = valueDes;
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
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(FindingSeverity),
                  )
                  as FindingSeverity;
          result.severity = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      FindingEventFindingStatusEnum,
                    ),
                  )
                  as FindingEventFindingStatusEnum;
          result.status = valueDes;
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'detectedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.detectedAt = valueDes;
          break;
        case r'situationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FindingEventFinding deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FindingEventFindingBuilder();
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

class FindingEventFindingFindingTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'change-point')
  static const FindingEventFindingFindingTypeEnum changePoint =
      _$findingEventFindingFindingTypeEnum_changePoint;
  @BuiltValueEnumConst(wireName: r'pre-event-signal')
  static const FindingEventFindingFindingTypeEnum preEventSignal =
      _$findingEventFindingFindingTypeEnum_preEventSignal;
  @BuiltValueEnumConst(wireName: r'unexplained-move')
  static const FindingEventFindingFindingTypeEnum unexplainedMove =
      _$findingEventFindingFindingTypeEnum_unexplainedMove;
  @BuiltValueEnumConst(wireName: r'co-occurrence')
  static const FindingEventFindingFindingTypeEnum coOccurrence =
      _$findingEventFindingFindingTypeEnum_coOccurrence;
  @BuiltValueEnumConst(wireName: r'precursor-active')
  static const FindingEventFindingFindingTypeEnum precursorActive =
      _$findingEventFindingFindingTypeEnum_precursorActive;
  @BuiltValueEnumConst(wireName: r'forecast-exceedance')
  static const FindingEventFindingFindingTypeEnum forecastExceedance =
      _$findingEventFindingFindingTypeEnum_forecastExceedance;
  @BuiltValueEnumConst(wireName: r'outlook-exceedance')
  static const FindingEventFindingFindingTypeEnum outlookExceedance =
      _$findingEventFindingFindingTypeEnum_outlookExceedance;
  @BuiltValueEnumConst(wireName: r'projected-impact')
  static const FindingEventFindingFindingTypeEnum projectedImpact =
      _$findingEventFindingFindingTypeEnum_projectedImpact;
  @BuiltValueEnumConst(wireName: r'social-velocity')
  static const FindingEventFindingFindingTypeEnum socialVelocity =
      _$findingEventFindingFindingTypeEnum_socialVelocity;
  @BuiltValueEnumConst(wireName: r'media-reuse')
  static const FindingEventFindingFindingTypeEnum mediaReuse =
      _$findingEventFindingFindingTypeEnum_mediaReuse;
  @BuiltValueEnumConst(wireName: r'social-coordination')
  static const FindingEventFindingFindingTypeEnum socialCoordination =
      _$findingEventFindingFindingTypeEnum_socialCoordination;
  @BuiltValueEnumConst(wireName: r'attention-gap')
  static const FindingEventFindingFindingTypeEnum attentionGap =
      _$findingEventFindingFindingTypeEnum_attentionGap;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const FindingEventFindingFindingTypeEnum unknownDefaultOpenApi =
      _$findingEventFindingFindingTypeEnum_unknownDefaultOpenApi;

  static Serializer<FindingEventFindingFindingTypeEnum> get serializer =>
      _$findingEventFindingFindingTypeEnumSerializer;

  const FindingEventFindingFindingTypeEnum._(String name) : super(name);

  static BuiltSet<FindingEventFindingFindingTypeEnum> get values =>
      _$findingEventFindingFindingTypeEnumValues;
  static FindingEventFindingFindingTypeEnum valueOf(String name) =>
      _$findingEventFindingFindingTypeEnumValueOf(name);
}

class FindingEventFindingStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'open')
  static const FindingEventFindingStatusEnum open =
      _$findingEventFindingStatusEnum_open;
  @BuiltValueEnumConst(wireName: r'superseded')
  static const FindingEventFindingStatusEnum superseded =
      _$findingEventFindingStatusEnum_superseded;
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const FindingEventFindingStatusEnum dismissed =
      _$findingEventFindingStatusEnum_dismissed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const FindingEventFindingStatusEnum unknownDefaultOpenApi =
      _$findingEventFindingStatusEnum_unknownDefaultOpenApi;

  static Serializer<FindingEventFindingStatusEnum> get serializer =>
      _$findingEventFindingStatusEnumSerializer;

  const FindingEventFindingStatusEnum._(String name) : super(name);

  static BuiltSet<FindingEventFindingStatusEnum> get values =>
      _$findingEventFindingStatusEnumValues;
  static FindingEventFindingStatusEnum valueOf(String name) =>
      _$findingEventFindingStatusEnumValueOf(name);
}
