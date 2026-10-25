//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'narrative_log_entry.g.dart';

/// A narrative history entry (merges and splits follow 118 rules)
///
/// Properties:
/// * [at]
/// * [action] - What happened. The list grows as the server adds actions; a client shows an action it does not know as its text.
/// * [by] - `system` or principal id
/// * [relatedNarrativeIds]
/// * [from]
/// * [to]
/// * [reason]
@BuiltValue()
abstract class NarrativeLogEntry
    implements Built<NarrativeLogEntry, NarrativeLogEntryBuilder> {
  @BuiltValueField(wireName: r'at')
  DateTime get at;

  /// What happened. The list grows as the server adds actions; a client shows an action it does not know as its text.
  @BuiltValueField(wireName: r'action')
  String get action;

  /// `system` or principal id
  @BuiltValueField(wireName: r'by')
  String get by;

  @BuiltValueField(wireName: r'relatedNarrativeIds')
  BuiltList<String>? get relatedNarrativeIds;

  @BuiltValueField(wireName: r'from')
  String? get from;

  @BuiltValueField(wireName: r'to')
  String? get to;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  NarrativeLogEntry._();

  factory NarrativeLogEntry([void updates(NarrativeLogEntryBuilder b)]) =
      _$NarrativeLogEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NarrativeLogEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NarrativeLogEntry> get serializer =>
      _$NarrativeLogEntrySerializer();
}

class _$NarrativeLogEntrySerializer
    implements PrimitiveSerializer<NarrativeLogEntry> {
  @override
  final Iterable<Type> types = const [NarrativeLogEntry, _$NarrativeLogEntry];

  @override
  final String wireName = r'NarrativeLogEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NarrativeLogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
    yield r'by';
    yield serializers.serialize(
      object.by,
      specifiedType: const FullType(String),
    );
    if (object.relatedNarrativeIds != null) {
      yield r'relatedNarrativeIds';
      yield serializers.serialize(
        object.relatedNarrativeIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NarrativeLogEntry object, {
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
    required NarrativeLogEntryBuilder result,
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
        case r'action':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.action = valueDes;
          break;
        case r'by':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.by = valueDes;
          break;
        case r'relatedNarrativeIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.relatedNarrativeIds.replace(valueDes);
          break;
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NarrativeLogEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NarrativeLogEntryBuilder();
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
