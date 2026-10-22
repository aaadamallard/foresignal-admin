//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assessment_published_event.g.dart';

/// SSE payload for `assessment.published` (topic `assessments`)
///
/// Properties:
/// * [assessmentId] - ULID identifier
/// * [cycleId] - ULID identifier
/// * [situationId] - ULID identifier
/// * [cadence]
/// * [status]
/// * [periodStart]
/// * [periodEnd]
/// * [headline]
/// * [private]
/// * [at]
@BuiltValue()
abstract class AssessmentPublishedEvent
    implements
        Built<AssessmentPublishedEvent, AssessmentPublishedEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'assessmentId')
  String get assessmentId;

  /// ULID identifier
  @BuiltValueField(wireName: r'cycleId')
  String? get cycleId;

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  @BuiltValueField(wireName: r'cadence')
  AssessmentPublishedEventCadenceEnum get cadence;
  // enum cadenceEnum {  daily,  weekly,  monthly,  on-demand,  };

  @BuiltValueField(wireName: r'status')
  AssessmentPublishedEventStatusEnum get status;
  // enum statusEnum {  ok,  partial,  digest-only,  failed,  };

  @BuiltValueField(wireName: r'periodStart')
  DateTime? get periodStart;

  @BuiltValueField(wireName: r'periodEnd')
  DateTime? get periodEnd;

  @BuiltValueField(wireName: r'headline')
  String? get headline;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  AssessmentPublishedEvent._();

  factory AssessmentPublishedEvent(
          [void updates(AssessmentPublishedEventBuilder b)]) =
      _$AssessmentPublishedEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssessmentPublishedEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssessmentPublishedEvent> get serializer =>
      _$AssessmentPublishedEventSerializer();
}

class _$AssessmentPublishedEventSerializer
    implements PrimitiveSerializer<AssessmentPublishedEvent> {
  @override
  final Iterable<Type> types = const [
    AssessmentPublishedEvent,
    _$AssessmentPublishedEvent
  ];

  @override
  final String wireName = r'AssessmentPublishedEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssessmentPublishedEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assessmentId';
    yield serializers.serialize(
      object.assessmentId,
      specifiedType: const FullType(String),
    );
    if (object.cycleId != null) {
      yield r'cycleId';
      yield serializers.serialize(
        object.cycleId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'cadence';
    yield serializers.serialize(
      object.cadence,
      specifiedType: const FullType(AssessmentPublishedEventCadenceEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AssessmentPublishedEventStatusEnum),
    );
    if (object.periodStart != null) {
      yield r'periodStart';
      yield serializers.serialize(
        object.periodStart,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.periodEnd != null) {
      yield r'periodEnd';
      yield serializers.serialize(
        object.periodEnd,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.headline != null) {
      yield r'headline';
      yield serializers.serialize(
        object.headline,
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
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AssessmentPublishedEvent object, {
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
    required AssessmentPublishedEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assessmentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.assessmentId = valueDes;
          break;
        case r'cycleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cycleId = valueDes;
          break;
        case r'situationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
          break;
        case r'cadence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssessmentPublishedEventCadenceEnum),
          ) as AssessmentPublishedEventCadenceEnum;
          result.cadence = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssessmentPublishedEventStatusEnum),
          ) as AssessmentPublishedEventStatusEnum;
          result.status = valueDes;
          break;
        case r'periodStart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.periodStart = valueDes;
          break;
        case r'periodEnd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.periodEnd = valueDes;
          break;
        case r'headline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.headline = valueDes;
          break;
        case r'private':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssessmentPublishedEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssessmentPublishedEventBuilder();
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

class AssessmentPublishedEventCadenceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'daily')
  static const AssessmentPublishedEventCadenceEnum daily =
      _$assessmentPublishedEventCadenceEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const AssessmentPublishedEventCadenceEnum weekly =
      _$assessmentPublishedEventCadenceEnum_weekly;
  @BuiltValueEnumConst(wireName: r'monthly')
  static const AssessmentPublishedEventCadenceEnum monthly =
      _$assessmentPublishedEventCadenceEnum_monthly;
  @BuiltValueEnumConst(wireName: r'on-demand')
  static const AssessmentPublishedEventCadenceEnum onDemand =
      _$assessmentPublishedEventCadenceEnum_onDemand;

  static Serializer<AssessmentPublishedEventCadenceEnum> get serializer =>
      _$assessmentPublishedEventCadenceEnumSerializer;

  const AssessmentPublishedEventCadenceEnum._(String name) : super(name);

  static BuiltSet<AssessmentPublishedEventCadenceEnum> get values =>
      _$assessmentPublishedEventCadenceEnumValues;
  static AssessmentPublishedEventCadenceEnum valueOf(String name) =>
      _$assessmentPublishedEventCadenceEnumValueOf(name);
}

class AssessmentPublishedEventStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const AssessmentPublishedEventStatusEnum ok =
      _$assessmentPublishedEventStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'partial')
  static const AssessmentPublishedEventStatusEnum partial =
      _$assessmentPublishedEventStatusEnum_partial;
  @BuiltValueEnumConst(wireName: r'digest-only')
  static const AssessmentPublishedEventStatusEnum digestOnly =
      _$assessmentPublishedEventStatusEnum_digestOnly;
  @BuiltValueEnumConst(wireName: r'failed')
  static const AssessmentPublishedEventStatusEnum failed =
      _$assessmentPublishedEventStatusEnum_failed;

  static Serializer<AssessmentPublishedEventStatusEnum> get serializer =>
      _$assessmentPublishedEventStatusEnumSerializer;

  const AssessmentPublishedEventStatusEnum._(String name) : super(name);

  static BuiltSet<AssessmentPublishedEventStatusEnum> get values =>
      _$assessmentPublishedEventStatusEnumValues;
  static AssessmentPublishedEventStatusEnum valueOf(String name) =>
      _$assessmentPublishedEventStatusEnumValueOf(name);
}
