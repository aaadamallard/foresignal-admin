//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ntfy_message.g.dart';

/// ntfy-style message object returned by the compat publish endpoints (024)
///
/// Properties:
/// * [id]
/// * [time] - Epoch seconds
/// * [event]
/// * [topic]
/// * [message]
/// * [title]
/// * [priority]
/// * [tags]
/// * [click]
@BuiltValue()
abstract class NtfyMessage implements Built<NtfyMessage, NtfyMessageBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Epoch seconds
  @BuiltValueField(wireName: r'time')
  int get time;

  @BuiltValueField(wireName: r'event')
  NtfyMessageEventEnum get event;
  // enum eventEnum {  message,  };

  @BuiltValueField(wireName: r'topic')
  String get topic;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'priority')
  int? get priority;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'click')
  String? get click;

  NtfyMessage._();

  factory NtfyMessage([void updates(NtfyMessageBuilder b)]) = _$NtfyMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NtfyMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NtfyMessage> get serializer => _$NtfyMessageSerializer();
}

class _$NtfyMessageSerializer implements PrimitiveSerializer<NtfyMessage> {
  @override
  final Iterable<Type> types = const [NtfyMessage, _$NtfyMessage];

  @override
  final String wireName = r'NtfyMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NtfyMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(int),
    );
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(NtfyMessageEventEnum),
    );
    yield r'topic';
    yield serializers.serialize(
      object.topic,
      specifiedType: const FullType(String),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType(int),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.click != null) {
      yield r'click';
      yield serializers.serialize(
        object.click,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NtfyMessage object, {
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
    required NtfyMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'time':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.time = valueDes;
          break;
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NtfyMessageEventEnum),
                  )
                  as NtfyMessageEventEnum;
          result.event = valueDes;
          break;
        case r'topic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.topic = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'priority':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.priority = valueDes;
          break;
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'click':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.click = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NtfyMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NtfyMessageBuilder();
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

class NtfyMessageEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'message')
  static const NtfyMessageEventEnum message = _$ntfyMessageEventEnum_message;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NtfyMessageEventEnum unknownDefaultOpenApi =
      _$ntfyMessageEventEnum_unknownDefaultOpenApi;

  static Serializer<NtfyMessageEventEnum> get serializer =>
      _$ntfyMessageEventEnumSerializer;

  const NtfyMessageEventEnum._(String name) : super(name);

  static BuiltSet<NtfyMessageEventEnum> get values =>
      _$ntfyMessageEventEnumValues;
  static NtfyMessageEventEnum valueOf(String name) =>
      _$ntfyMessageEventEnumValueOf(name);
}
