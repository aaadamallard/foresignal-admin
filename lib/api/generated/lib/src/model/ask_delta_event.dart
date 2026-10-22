//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ask_delta_event.g.dart';

/// Ask stream `delta` event: unverified answer text (028); render `done` as the final answer
///
/// Properties:
/// * [text]
@BuiltValue()
abstract class AskDeltaEvent
    implements Built<AskDeltaEvent, AskDeltaEventBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  AskDeltaEvent._();

  factory AskDeltaEvent([void updates(AskDeltaEventBuilder b)]) =
      _$AskDeltaEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AskDeltaEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AskDeltaEvent> get serializer =>
      _$AskDeltaEventSerializer();
}

class _$AskDeltaEventSerializer implements PrimitiveSerializer<AskDeltaEvent> {
  @override
  final Iterable<Type> types = const [AskDeltaEvent, _$AskDeltaEvent];

  @override
  final String wireName = r'AskDeltaEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AskDeltaEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AskDeltaEvent object, {
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
    required AskDeltaEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AskDeltaEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AskDeltaEventBuilder();
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
