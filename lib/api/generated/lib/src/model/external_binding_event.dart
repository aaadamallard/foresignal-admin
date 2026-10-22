//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_binding_event.g.dart';

/// SSE external.binding.disabled payload
///
/// Properties:
/// * [bindingId] - ULID identifier
/// * [sourceId]
/// * [reason]
/// * [at]
@BuiltValue()
abstract class ExternalBindingEvent
    implements Built<ExternalBindingEvent, ExternalBindingEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'bindingId')
  String get bindingId;

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  ExternalBindingEvent._();

  factory ExternalBindingEvent([void updates(ExternalBindingEventBuilder b)]) =
      _$ExternalBindingEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalBindingEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalBindingEvent> get serializer =>
      _$ExternalBindingEventSerializer();
}

class _$ExternalBindingEventSerializer
    implements PrimitiveSerializer<ExternalBindingEvent> {
  @override
  final Iterable<Type> types = const [
    ExternalBindingEvent,
    _$ExternalBindingEvent,
  ];

  @override
  final String wireName = r'ExternalBindingEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalBindingEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bindingId';
    yield serializers.serialize(
      object.bindingId,
      specifiedType: const FullType(String),
    );
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalBindingEvent object, {
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
    required ExternalBindingEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bindingId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.bindingId = valueDes;
          break;
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reason = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
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
  ExternalBindingEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalBindingEventBuilder();
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
