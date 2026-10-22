//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/analyst_note.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_note_event.g.dart';

/// SSE payload `analyst.note` on topic `analyst`
///
/// Properties:
/// * [note]
@BuiltValue()
abstract class AnalystNoteEvent
    implements Built<AnalystNoteEvent, AnalystNoteEventBuilder> {
  @BuiltValueField(wireName: r'note')
  AnalystNote get note;

  AnalystNoteEvent._();

  factory AnalystNoteEvent([void updates(AnalystNoteEventBuilder b)]) =
      _$AnalystNoteEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystNoteEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystNoteEvent> get serializer =>
      _$AnalystNoteEventSerializer();
}

class _$AnalystNoteEventSerializer
    implements PrimitiveSerializer<AnalystNoteEvent> {
  @override
  final Iterable<Type> types = const [AnalystNoteEvent, _$AnalystNoteEvent];

  @override
  final String wireName = r'AnalystNoteEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystNoteEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'note';
    yield serializers.serialize(
      object.note,
      specifiedType: const FullType(AnalystNote),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystNoteEvent object, {
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
    required AnalystNoteEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'note':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AnalystNote),
                  )
                  as AnalystNote;
          result.note.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystNoteEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystNoteEventBuilder();
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
