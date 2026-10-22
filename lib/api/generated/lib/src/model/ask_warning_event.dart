//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ask_warning_event.g.dart';

/// Ask stream `warning` event (028): dropped citation, uncited claim, refusal
///
/// Properties:
/// * [message]
@BuiltValue()
abstract class AskWarningEvent
    implements Built<AskWarningEvent, AskWarningEventBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  AskWarningEvent._();

  factory AskWarningEvent([void updates(AskWarningEventBuilder b)]) =
      _$AskWarningEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AskWarningEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AskWarningEvent> get serializer =>
      _$AskWarningEventSerializer();
}

class _$AskWarningEventSerializer
    implements PrimitiveSerializer<AskWarningEvent> {
  @override
  final Iterable<Type> types = const [AskWarningEvent, _$AskWarningEvent];

  @override
  final String wireName = r'AskWarningEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AskWarningEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AskWarningEvent object, {
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
    required AskWarningEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AskWarningEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AskWarningEventBuilder();
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
