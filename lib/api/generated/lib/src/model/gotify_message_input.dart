//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gotify_message_input.g.dart';

/// Gotify message body (JSON or form) accepted by `POST /compat/gotify/message` (024)
///
/// Properties:
/// * [title]
/// * [message]
/// * [priority]
/// * [extras] - `extras[\"foresignal::record\"].externalId` sets the externalId
@BuiltValue()
abstract class GotifyMessageInput
    implements Built<GotifyMessageInput, GotifyMessageInputBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'priority')
  int? get priority;

  /// `extras[\"foresignal::record\"].externalId` sets the externalId
  @BuiltValueField(wireName: r'extras')
  BuiltMap<String, JsonObject?>? get extras;

  GotifyMessageInput._();

  factory GotifyMessageInput([void updates(GotifyMessageInputBuilder b)]) =
      _$GotifyMessageInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GotifyMessageInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GotifyMessageInput> get serializer =>
      _$GotifyMessageInputSerializer();
}

class _$GotifyMessageInputSerializer
    implements PrimitiveSerializer<GotifyMessageInput> {
  @override
  final Iterable<Type> types = const [GotifyMessageInput, _$GotifyMessageInput];

  @override
  final String wireName = r'GotifyMessageInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GotifyMessageInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType(int),
      );
    }
    if (object.extras != null) {
      yield r'extras';
      yield serializers.serialize(
        object.extras,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GotifyMessageInput object, {
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
    required GotifyMessageInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.message = valueDes;
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
        case r'extras':
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
          result.extras.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GotifyMessageInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GotifyMessageInputBuilder();
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
