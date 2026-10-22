//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/tuning_suggestion_expected_effect.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tuning_suggestion_record.g.dart';

/// A persisted tuning suggestion with lifecycle (extends 103's TuningSuggestion) (115)
///
/// Properties:
/// * [id]
/// * [kind]
/// * [rationale]
/// * [patch_] - Partial TriggerRuleInput ready to apply as an ordinary rule update
/// * [expectedEffect]
/// * [caveats]
/// * [ruleId]
/// * [ruleRev] - The rule's definition hash when the suggestion was generated
/// * [status]
/// * [createdAt]
/// * [decidedBy]
/// * [decidedAt]
/// * [decisionReason]
/// * [explanation] - Plain-language summary from the chat role when explain=true and the caller is authenticated (never edits the patch)
@BuiltValue()
abstract class TuningSuggestionRecord
    implements Built<TuningSuggestionRecord, TuningSuggestionRecordBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'kind')
  TuningSuggestionRecordKindEnum get kind;
  // enum kindEnum {  raise-threshold,  lower-threshold,  add-cooldown,  switch-to-enter,  add-edge-min-interval,  shrink-geofence,  lower-anomaly-sensitivity,  ACTIVE_WINDOW,  SEVERITY_UP,  SEVERITY_DOWN,  };

  @BuiltValueField(wireName: r'rationale')
  String get rationale;

  /// Partial TriggerRuleInput ready to apply as an ordinary rule update
  @BuiltValueField(wireName: r'patch')
  BuiltMap<String, JsonObject?> get patch_;

  @BuiltValueField(wireName: r'expectedEffect')
  TuningSuggestionExpectedEffect? get expectedEffect;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  /// The rule's definition hash when the suggestion was generated
  @BuiltValueField(wireName: r'ruleRev')
  String get ruleRev;

  @BuiltValueField(wireName: r'status')
  TuningSuggestionRecordStatusEnum get status;
  // enum statusEnum {  OPEN,  APPLIED,  DISMISSED,  STALE,  };

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'decidedBy')
  String? get decidedBy;

  @BuiltValueField(wireName: r'decidedAt')
  DateTime? get decidedAt;

  @BuiltValueField(wireName: r'decisionReason')
  String? get decisionReason;

  /// Plain-language summary from the chat role when explain=true and the caller is authenticated (never edits the patch)
  @BuiltValueField(wireName: r'explanation')
  String? get explanation;

  TuningSuggestionRecord._();

  factory TuningSuggestionRecord(
          [void updates(TuningSuggestionRecordBuilder b)]) =
      _$TuningSuggestionRecord;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TuningSuggestionRecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TuningSuggestionRecord> get serializer =>
      _$TuningSuggestionRecordSerializer();
}

class _$TuningSuggestionRecordSerializer
    implements PrimitiveSerializer<TuningSuggestionRecord> {
  @override
  final Iterable<Type> types = const [
    TuningSuggestionRecord,
    _$TuningSuggestionRecord
  ];

  @override
  final String wireName = r'TuningSuggestionRecord';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TuningSuggestionRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(TuningSuggestionRecordKindEnum),
    );
    yield r'rationale';
    yield serializers.serialize(
      object.rationale,
      specifiedType: const FullType(String),
    );
    yield r'patch';
    yield serializers.serialize(
      object.patch_,
      specifiedType: const FullType(
          BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
    if (object.expectedEffect != null) {
      yield r'expectedEffect';
      yield serializers.serialize(
        object.expectedEffect,
        specifiedType: const FullType.nullable(TuningSuggestionExpectedEffect),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'ruleRev';
    yield serializers.serialize(
      object.ruleRev,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(TuningSuggestionRecordStatusEnum),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.decidedBy != null) {
      yield r'decidedBy';
      yield serializers.serialize(
        object.decidedBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.decidedAt != null) {
      yield r'decidedAt';
      yield serializers.serialize(
        object.decidedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.decisionReason != null) {
      yield r'decisionReason';
      yield serializers.serialize(
        object.decisionReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.explanation != null) {
      yield r'explanation';
      yield serializers.serialize(
        object.explanation,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TuningSuggestionRecord object, {
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
    required TuningSuggestionRecordBuilder result,
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
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TuningSuggestionRecordKindEnum),
          ) as TuningSuggestionRecordKindEnum;
          result.kind = valueDes;
          break;
        case r'rationale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rationale = valueDes;
          break;
        case r'patch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.patch_.replace(valueDes);
          break;
        case r'expectedEffect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(TuningSuggestionExpectedEffect),
          ) as TuningSuggestionExpectedEffect?;
          if (valueDes == null) continue;
          result.expectedEffect.replace(valueDes);
          break;
        case r'caveats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Caveat)]),
          ) as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleId = valueDes;
          break;
        case r'ruleRev':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleRev = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TuningSuggestionRecordStatusEnum),
          ) as TuningSuggestionRecordStatusEnum;
          result.status = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'decidedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.decidedBy = valueDes;
          break;
        case r'decidedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.decidedAt = valueDes;
          break;
        case r'decisionReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.decisionReason = valueDes;
          break;
        case r'explanation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.explanation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TuningSuggestionRecord deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TuningSuggestionRecordBuilder();
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

class TuningSuggestionRecordKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'raise-threshold')
  static const TuningSuggestionRecordKindEnum raiseThreshold =
      _$tuningSuggestionRecordKindEnum_raiseThreshold;
  @BuiltValueEnumConst(wireName: r'lower-threshold')
  static const TuningSuggestionRecordKindEnum lowerThreshold =
      _$tuningSuggestionRecordKindEnum_lowerThreshold;
  @BuiltValueEnumConst(wireName: r'add-cooldown')
  static const TuningSuggestionRecordKindEnum addCooldown =
      _$tuningSuggestionRecordKindEnum_addCooldown;
  @BuiltValueEnumConst(wireName: r'switch-to-enter')
  static const TuningSuggestionRecordKindEnum switchToEnter =
      _$tuningSuggestionRecordKindEnum_switchToEnter;
  @BuiltValueEnumConst(wireName: r'add-edge-min-interval')
  static const TuningSuggestionRecordKindEnum addEdgeMinInterval =
      _$tuningSuggestionRecordKindEnum_addEdgeMinInterval;
  @BuiltValueEnumConst(wireName: r'shrink-geofence')
  static const TuningSuggestionRecordKindEnum shrinkGeofence =
      _$tuningSuggestionRecordKindEnum_shrinkGeofence;
  @BuiltValueEnumConst(wireName: r'lower-anomaly-sensitivity')
  static const TuningSuggestionRecordKindEnum lowerAnomalySensitivity =
      _$tuningSuggestionRecordKindEnum_lowerAnomalySensitivity;
  @BuiltValueEnumConst(wireName: r'ACTIVE_WINDOW')
  static const TuningSuggestionRecordKindEnum ACTIVE_WINDOW =
      _$tuningSuggestionRecordKindEnum_ACTIVE_WINDOW;
  @BuiltValueEnumConst(wireName: r'SEVERITY_UP')
  static const TuningSuggestionRecordKindEnum SEVERITY_UP =
      _$tuningSuggestionRecordKindEnum_SEVERITY_UP;
  @BuiltValueEnumConst(wireName: r'SEVERITY_DOWN')
  static const TuningSuggestionRecordKindEnum SEVERITY_DOWN =
      _$tuningSuggestionRecordKindEnum_SEVERITY_DOWN;

  static Serializer<TuningSuggestionRecordKindEnum> get serializer =>
      _$tuningSuggestionRecordKindEnumSerializer;

  const TuningSuggestionRecordKindEnum._(String name) : super(name);

  static BuiltSet<TuningSuggestionRecordKindEnum> get values =>
      _$tuningSuggestionRecordKindEnumValues;
  static TuningSuggestionRecordKindEnum valueOf(String name) =>
      _$tuningSuggestionRecordKindEnumValueOf(name);
}

class TuningSuggestionRecordStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const TuningSuggestionRecordStatusEnum OPEN =
      _$tuningSuggestionRecordStatusEnum_OPEN;
  @BuiltValueEnumConst(wireName: r'APPLIED')
  static const TuningSuggestionRecordStatusEnum APPLIED =
      _$tuningSuggestionRecordStatusEnum_APPLIED;
  @BuiltValueEnumConst(wireName: r'DISMISSED')
  static const TuningSuggestionRecordStatusEnum DISMISSED =
      _$tuningSuggestionRecordStatusEnum_DISMISSED;
  @BuiltValueEnumConst(wireName: r'STALE')
  static const TuningSuggestionRecordStatusEnum STALE =
      _$tuningSuggestionRecordStatusEnum_STALE;

  static Serializer<TuningSuggestionRecordStatusEnum> get serializer =>
      _$tuningSuggestionRecordStatusEnumSerializer;

  const TuningSuggestionRecordStatusEnum._(String name) : super(name);

  static BuiltSet<TuningSuggestionRecordStatusEnum> get values =>
      _$tuningSuggestionRecordStatusEnumValues;
  static TuningSuggestionRecordStatusEnum valueOf(String name) =>
      _$tuningSuggestionRecordStatusEnumValueOf(name);
}
