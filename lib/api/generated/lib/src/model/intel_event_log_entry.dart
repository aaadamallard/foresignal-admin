//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_event_log_entry.g.dart';

/// Audit entry of an intelligence event
///
/// Properties:
/// * [at]
/// * [actor] - Token id or `recipe:<id>`
/// * [action]
/// * [before]
/// * [after]
@BuiltValue()
abstract class IntelEventLogEntry
    implements Built<IntelEventLogEntry, IntelEventLogEntryBuilder> {
  @BuiltValueField(wireName: r'at')
  DateTime get at;

  /// Token id or `recipe:<id>`
  @BuiltValueField(wireName: r'actor')
  String get actor;

  @BuiltValueField(wireName: r'action')
  IntelEventLogEntryActionEnum get action;
  // enum actionEnum {  created,  member_added,  member_removed,  status,  merged,  edited,  reopened,  };

  @BuiltValueField(wireName: r'before')
  BuiltMap<String, JsonObject?>? get before;

  @BuiltValueField(wireName: r'after')
  BuiltMap<String, JsonObject?>? get after;

  IntelEventLogEntry._();

  factory IntelEventLogEntry([void updates(IntelEventLogEntryBuilder b)]) =
      _$IntelEventLogEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelEventLogEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelEventLogEntry> get serializer =>
      _$IntelEventLogEntrySerializer();
}

class _$IntelEventLogEntrySerializer
    implements PrimitiveSerializer<IntelEventLogEntry> {
  @override
  final Iterable<Type> types = const [IntelEventLogEntry, _$IntelEventLogEntry];

  @override
  final String wireName = r'IntelEventLogEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelEventLogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'actor';
    yield serializers.serialize(
      object.actor,
      specifiedType: const FullType(String),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(IntelEventLogEntryActionEnum),
    );
    if (object.before != null) {
      yield r'before';
      yield serializers.serialize(
        object.before,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.after != null) {
      yield r'after';
      yield serializers.serialize(
        object.after,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelEventLogEntry object, {
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
    required IntelEventLogEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'actor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.actor = valueDes;
          break;
        case r'action':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntelEventLogEntryActionEnum),
                  )
                  as IntelEventLogEntryActionEnum;
          result.action = valueDes;
          break;
        case r'before':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.before.replace(valueDes);
          break;
        case r'after':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
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
  IntelEventLogEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelEventLogEntryBuilder();
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

class IntelEventLogEntryActionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'created')
  static const IntelEventLogEntryActionEnum created =
      _$intelEventLogEntryActionEnum_created;
  @BuiltValueEnumConst(wireName: r'member_added')
  static const IntelEventLogEntryActionEnum memberAdded =
      _$intelEventLogEntryActionEnum_memberAdded;
  @BuiltValueEnumConst(wireName: r'member_removed')
  static const IntelEventLogEntryActionEnum memberRemoved =
      _$intelEventLogEntryActionEnum_memberRemoved;
  @BuiltValueEnumConst(wireName: r'status')
  static const IntelEventLogEntryActionEnum status =
      _$intelEventLogEntryActionEnum_status;
  @BuiltValueEnumConst(wireName: r'merged')
  static const IntelEventLogEntryActionEnum merged =
      _$intelEventLogEntryActionEnum_merged;
  @BuiltValueEnumConst(wireName: r'edited')
  static const IntelEventLogEntryActionEnum edited =
      _$intelEventLogEntryActionEnum_edited;
  @BuiltValueEnumConst(wireName: r'reopened')
  static const IntelEventLogEntryActionEnum reopened =
      _$intelEventLogEntryActionEnum_reopened;

  static Serializer<IntelEventLogEntryActionEnum> get serializer =>
      _$intelEventLogEntryActionEnumSerializer;

  const IntelEventLogEntryActionEnum._(String name) : super(name);

  static BuiltSet<IntelEventLogEntryActionEnum> get values =>
      _$intelEventLogEntryActionEnumValues;
  static IntelEventLogEntryActionEnum valueOf(String name) =>
      _$intelEventLogEntryActionEnumValueOf(name);
}
