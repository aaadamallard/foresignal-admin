//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/trigger_rule_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tuning_log_entry.g.dart';

/// An applied rule change from a tuning suggestion, undoable while the rule is unchanged (115)
///
/// Properties:
/// * [id] - ULID identifier
/// * [ruleId]
/// * [suggestionId]
/// * [before]
/// * [after]
/// * [note]
/// * [appliedBy]
/// * [appliedAt]
/// * [undoneBy]
/// * [undoneAt]
@BuiltValue()
abstract class TuningLogEntry
    implements Built<TuningLogEntry, TuningLogEntryBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'suggestionId')
  String? get suggestionId;

  @BuiltValueField(wireName: r'before')
  TriggerRuleInput get before;

  @BuiltValueField(wireName: r'after')
  TriggerRuleInput get after;

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'appliedBy')
  String get appliedBy;

  @BuiltValueField(wireName: r'appliedAt')
  DateTime get appliedAt;

  @BuiltValueField(wireName: r'undoneBy')
  String? get undoneBy;

  @BuiltValueField(wireName: r'undoneAt')
  DateTime? get undoneAt;

  TuningLogEntry._();

  factory TuningLogEntry([void updates(TuningLogEntryBuilder b)]) =
      _$TuningLogEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TuningLogEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TuningLogEntry> get serializer =>
      _$TuningLogEntrySerializer();
}

class _$TuningLogEntrySerializer
    implements PrimitiveSerializer<TuningLogEntry> {
  @override
  final Iterable<Type> types = const [TuningLogEntry, _$TuningLogEntry];

  @override
  final String wireName = r'TuningLogEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TuningLogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    if (object.suggestionId != null) {
      yield r'suggestionId';
      yield serializers.serialize(
        object.suggestionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'before';
    yield serializers.serialize(
      object.before,
      specifiedType: const FullType(TriggerRuleInput),
    );
    yield r'after';
    yield serializers.serialize(
      object.after,
      specifiedType: const FullType(TriggerRuleInput),
    );
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'appliedBy';
    yield serializers.serialize(
      object.appliedBy,
      specifiedType: const FullType(String),
    );
    yield r'appliedAt';
    yield serializers.serialize(
      object.appliedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.undoneBy != null) {
      yield r'undoneBy';
      yield serializers.serialize(
        object.undoneBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.undoneAt != null) {
      yield r'undoneAt';
      yield serializers.serialize(
        object.undoneAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TuningLogEntry object, {
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
    required TuningLogEntryBuilder result,
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
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleId = valueDes;
          break;
        case r'suggestionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.suggestionId = valueDes;
          break;
        case r'before':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TriggerRuleInput),
          ) as TriggerRuleInput;
          result.before.replace(valueDes);
          break;
        case r'after':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TriggerRuleInput),
          ) as TriggerRuleInput;
          result.after.replace(valueDes);
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'appliedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appliedBy = valueDes;
          break;
        case r'appliedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.appliedAt = valueDes;
          break;
        case r'undoneBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.undoneBy = valueDes;
          break;
        case r'undoneAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.undoneAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TuningLogEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TuningLogEntryBuilder();
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
