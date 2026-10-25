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
/// * [action] - What happened. The list grows as the server adds actions; a client shows an action it does not know as its text.
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

  /// What happened. The list grows as the server adds actions; a client shows an action it does not know as its text.
  @BuiltValueField(wireName: r'action')
  String get action;

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
      specifiedType: const FullType(String),
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
                    specifiedType: const FullType(String),
                  )
                  as String;
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
