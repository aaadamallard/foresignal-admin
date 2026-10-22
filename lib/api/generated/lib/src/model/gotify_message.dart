//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gotify_message.g.dart';

/// Gotify-style message object returned by the compat endpoint (024)
///
/// Properties:
/// * [id]
/// * [appid]
/// * [date]
/// * [title]
/// * [message]
/// * [priority]
/// * [extras]
@BuiltValue()
abstract class GotifyMessage
    implements Built<GotifyMessage, GotifyMessageBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'appid')
  GotifyMessageAppidEnum get appid;
  // enum appidEnum {  1,  };

  @BuiltValueField(wireName: r'date')
  DateTime get date;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'priority')
  int? get priority;

  @BuiltValueField(wireName: r'extras')
  BuiltMap<String, JsonObject?>? get extras;

  GotifyMessage._();

  factory GotifyMessage([void updates(GotifyMessageBuilder b)]) =
      _$GotifyMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GotifyMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GotifyMessage> get serializer =>
      _$GotifyMessageSerializer();
}

class _$GotifyMessageSerializer implements PrimitiveSerializer<GotifyMessage> {
  @override
  final Iterable<Type> types = const [GotifyMessage, _$GotifyMessage];

  @override
  final String wireName = r'GotifyMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GotifyMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'appid';
    yield serializers.serialize(
      object.appid,
      specifiedType: const FullType(GotifyMessageAppidEnum),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(DateTime),
    );
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
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GotifyMessage object, {
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
    required GotifyMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'appid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GotifyMessageAppidEnum),
          ) as GotifyMessageAppidEnum;
          result.appid = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.priority = valueDes;
          break;
        case r'extras':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
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
  GotifyMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GotifyMessageBuilder();
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

class GotifyMessageAppidEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 1)
  static const GotifyMessageAppidEnum number1 =
      _$gotifyMessageAppidEnum_number1;

  static Serializer<GotifyMessageAppidEnum> get serializer =>
      _$gotifyMessageAppidEnumSerializer;

  const GotifyMessageAppidEnum._(String name) : super(name);

  static BuiltSet<GotifyMessageAppidEnum> get values =>
      _$gotifyMessageAppidEnumValues;
  static GotifyMessageAppidEnum valueOf(String name) =>
      _$gotifyMessageAppidEnumValueOf(name);
}
