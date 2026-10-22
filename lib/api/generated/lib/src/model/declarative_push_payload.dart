//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/declarative_push_payload_notification.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'declarative_push_payload.g.dart';

/// WebKit Declarative Web Push payload (Safari 18.4+, `payloadFormat=declarative`) (031). Members checked against WebKit's 'Meet Declarative Web Push' (2025): required `web_push: 8030`, `notification.title` and `notification.navigate`; optional `body`, `lang`, `dir`, `silent`, `tag`, `data` and other NotificationOptions members, and `notification.app_badge`. Foresignal never sends `app_badge` (a crash was reported in Safari 18.5) or `dir`. The verification push of a declarative subscription is a declarative notification whose body carries the code and whose `data` is the verify payload.
///
/// Properties:
/// * [webPush]
/// * [notification]
@BuiltValue()
abstract class DeclarativePushPayload
    implements Built<DeclarativePushPayload, DeclarativePushPayloadBuilder> {
  @BuiltValueField(wireName: r'web_push')
  DeclarativePushPayloadWebPushEnum get webPush;
  // enum webPushEnum {  8030,  };

  @BuiltValueField(wireName: r'notification')
  DeclarativePushPayloadNotification get notification;

  DeclarativePushPayload._();

  factory DeclarativePushPayload([
    void updates(DeclarativePushPayloadBuilder b),
  ]) = _$DeclarativePushPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeclarativePushPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeclarativePushPayload> get serializer =>
      _$DeclarativePushPayloadSerializer();
}

class _$DeclarativePushPayloadSerializer
    implements PrimitiveSerializer<DeclarativePushPayload> {
  @override
  final Iterable<Type> types = const [
    DeclarativePushPayload,
    _$DeclarativePushPayload,
  ];

  @override
  final String wireName = r'DeclarativePushPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeclarativePushPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'web_push';
    yield serializers.serialize(
      object.webPush,
      specifiedType: const FullType(DeclarativePushPayloadWebPushEnum),
    );
    yield r'notification';
    yield serializers.serialize(
      object.notification,
      specifiedType: const FullType(DeclarativePushPayloadNotification),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeclarativePushPayload object, {
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
    required DeclarativePushPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'web_push':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      DeclarativePushPayloadWebPushEnum,
                    ),
                  )
                  as DeclarativePushPayloadWebPushEnum;
          result.webPush = valueDes;
          break;
        case r'notification':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      DeclarativePushPayloadNotification,
                    ),
                  )
                  as DeclarativePushPayloadNotification;
          result.notification.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeclarativePushPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeclarativePushPayloadBuilder();
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

class DeclarativePushPayloadWebPushEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 8030)
  static const DeclarativePushPayloadWebPushEnum number8030 =
      _$declarativePushPayloadWebPushEnum_number8030;

  static Serializer<DeclarativePushPayloadWebPushEnum> get serializer =>
      _$declarativePushPayloadWebPushEnumSerializer;

  const DeclarativePushPayloadWebPushEnum._(String name) : super(name);

  static BuiltSet<DeclarativePushPayloadWebPushEnum> get values =>
      _$declarativePushPayloadWebPushEnumValues;
  static DeclarativePushPayloadWebPushEnum valueOf(String name) =>
      _$declarativePushPayloadWebPushEnumValueOf(name);
}
