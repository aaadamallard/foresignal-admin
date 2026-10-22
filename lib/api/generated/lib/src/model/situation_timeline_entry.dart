//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_member.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_timeline_entry.g.dart';

/// One timeline item: a member observation or a situation log entry, in time order
///
/// Properties:
/// * [at]
/// * [entryType]
/// * [member]
/// * [action] - Log action (log entries)
/// * [actor] - Token id, `linker:<version>` or `analyst:<profile>`
/// * [before]
/// * [after]
@BuiltValue()
abstract class SituationTimelineEntry
    implements Built<SituationTimelineEntry, SituationTimelineEntryBuilder> {
  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'entryType')
  SituationTimelineEntryEntryTypeEnum get entryType;
  // enum entryTypeEnum {  member,  log,  };

  @BuiltValueField(wireName: r'member')
  SituationMember? get member;

  /// Log action (log entries)
  @BuiltValueField(wireName: r'action')
  SituationTimelineEntryActionEnum? get action;
  // enum actionEnum {  created,  member_added,  member_removed,  status,  severity,  merged,  split,  renamed,  theme,  brief,  };

  /// Token id, `linker:<version>` or `analyst:<profile>`
  @BuiltValueField(wireName: r'actor')
  String? get actor;

  @BuiltValueField(wireName: r'before')
  BuiltMap<String, JsonObject?>? get before;

  @BuiltValueField(wireName: r'after')
  BuiltMap<String, JsonObject?>? get after;

  SituationTimelineEntry._();

  factory SituationTimelineEntry(
          [void updates(SituationTimelineEntryBuilder b)]) =
      _$SituationTimelineEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationTimelineEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationTimelineEntry> get serializer =>
      _$SituationTimelineEntrySerializer();
}

class _$SituationTimelineEntrySerializer
    implements PrimitiveSerializer<SituationTimelineEntry> {
  @override
  final Iterable<Type> types = const [
    SituationTimelineEntry,
    _$SituationTimelineEntry
  ];

  @override
  final String wireName = r'SituationTimelineEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationTimelineEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'entryType';
    yield serializers.serialize(
      object.entryType,
      specifiedType: const FullType(SituationTimelineEntryEntryTypeEnum),
    );
    if (object.member != null) {
      yield r'member';
      yield serializers.serialize(
        object.member,
        specifiedType: const FullType.nullable(SituationMember),
      );
    }
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType:
            const FullType.nullable(SituationTimelineEntryActionEnum),
      );
    }
    if (object.actor != null) {
      yield r'actor';
      yield serializers.serialize(
        object.actor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.before != null) {
      yield r'before';
      yield serializers.serialize(
        object.before,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.after != null) {
      yield r'after';
      yield serializers.serialize(
        object.after,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationTimelineEntry object, {
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
    required SituationTimelineEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        case r'entryType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SituationTimelineEntryEntryTypeEnum),
          ) as SituationTimelineEntryEntryTypeEnum;
          result.entryType = valueDes;
          break;
        case r'member':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SituationMember),
          ) as SituationMember?;
          if (valueDes == null) continue;
          result.member.replace(valueDes);
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(SituationTimelineEntryActionEnum),
          ) as SituationTimelineEntryActionEnum?;
          if (valueDes == null) continue;
          result.action = valueDes;
          break;
        case r'actor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.actor = valueDes;
          break;
        case r'before':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.before.replace(valueDes);
          break;
        case r'after':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.after.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationTimelineEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationTimelineEntryBuilder();
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

class SituationTimelineEntryEntryTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'member')
  static const SituationTimelineEntryEntryTypeEnum member =
      _$situationTimelineEntryEntryTypeEnum_member;
  @BuiltValueEnumConst(wireName: r'log')
  static const SituationTimelineEntryEntryTypeEnum log =
      _$situationTimelineEntryEntryTypeEnum_log;

  static Serializer<SituationTimelineEntryEntryTypeEnum> get serializer =>
      _$situationTimelineEntryEntryTypeEnumSerializer;

  const SituationTimelineEntryEntryTypeEnum._(String name) : super(name);

  static BuiltSet<SituationTimelineEntryEntryTypeEnum> get values =>
      _$situationTimelineEntryEntryTypeEnumValues;
  static SituationTimelineEntryEntryTypeEnum valueOf(String name) =>
      _$situationTimelineEntryEntryTypeEnumValueOf(name);
}

/// Log action (log entries)
class SituationTimelineEntryActionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'created')
  static const SituationTimelineEntryActionEnum created =
      _$situationTimelineEntryActionEnum_created;
  @BuiltValueEnumConst(wireName: r'member_added')
  static const SituationTimelineEntryActionEnum memberAdded =
      _$situationTimelineEntryActionEnum_memberAdded;
  @BuiltValueEnumConst(wireName: r'member_removed')
  static const SituationTimelineEntryActionEnum memberRemoved =
      _$situationTimelineEntryActionEnum_memberRemoved;
  @BuiltValueEnumConst(wireName: r'status')
  static const SituationTimelineEntryActionEnum status =
      _$situationTimelineEntryActionEnum_status;
  @BuiltValueEnumConst(wireName: r'severity')
  static const SituationTimelineEntryActionEnum severity =
      _$situationTimelineEntryActionEnum_severity;
  @BuiltValueEnumConst(wireName: r'merged')
  static const SituationTimelineEntryActionEnum merged =
      _$situationTimelineEntryActionEnum_merged;
  @BuiltValueEnumConst(wireName: r'split')
  static const SituationTimelineEntryActionEnum split =
      _$situationTimelineEntryActionEnum_split;
  @BuiltValueEnumConst(wireName: r'renamed')
  static const SituationTimelineEntryActionEnum renamed =
      _$situationTimelineEntryActionEnum_renamed;
  @BuiltValueEnumConst(wireName: r'theme')
  static const SituationTimelineEntryActionEnum theme =
      _$situationTimelineEntryActionEnum_theme;
  @BuiltValueEnumConst(wireName: r'brief')
  static const SituationTimelineEntryActionEnum brief =
      _$situationTimelineEntryActionEnum_brief;

  static Serializer<SituationTimelineEntryActionEnum> get serializer =>
      _$situationTimelineEntryActionEnumSerializer;

  const SituationTimelineEntryActionEnum._(String name) : super(name);

  static BuiltSet<SituationTimelineEntryActionEnum> get values =>
      _$situationTimelineEntryActionEnumValues;
  static SituationTimelineEntryActionEnum valueOf(String name) =>
      _$situationTimelineEntryActionEnumValueOf(name);
}
