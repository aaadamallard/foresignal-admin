//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/native_push_payload_fcm_message_android.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/native_push_payload_fcm_message_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'native_push_payload_fcm_message.g.dart';

/// FCM message
///
/// Properties:
/// * [token] - The FCM registration token (the v1 API's discovery document marks `token` deprecated in favor of `fid` but still accepts it)
/// * [data]
/// * [android]
/// * [apns] - For iOS/macOS devices registered via FCM: the APNs headers and aps payload
@BuiltValue()
abstract class NativePushPayloadFcmMessage
    implements
        Built<NativePushPayloadFcmMessage, NativePushPayloadFcmMessageBuilder> {
  /// The FCM registration token (the v1 API's discovery document marks `token` deprecated in favor of `fid` but still accepts it)
  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'data')
  NativePushPayloadFcmMessageData get data;

  @BuiltValueField(wireName: r'android')
  NativePushPayloadFcmMessageAndroid? get android;

  /// For iOS/macOS devices registered via FCM: the APNs headers and aps payload
  @BuiltValueField(wireName: r'apns')
  BuiltMap<String, JsonObject?>? get apns;

  NativePushPayloadFcmMessage._();

  factory NativePushPayloadFcmMessage(
          [void updates(NativePushPayloadFcmMessageBuilder b)]) =
      _$NativePushPayloadFcmMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NativePushPayloadFcmMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NativePushPayloadFcmMessage> get serializer =>
      _$NativePushPayloadFcmMessageSerializer();
}

class _$NativePushPayloadFcmMessageSerializer
    implements PrimitiveSerializer<NativePushPayloadFcmMessage> {
  @override
  final Iterable<Type> types = const [
    NativePushPayloadFcmMessage,
    _$NativePushPayloadFcmMessage
  ];

  @override
  final String wireName = r'NativePushPayloadFcmMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NativePushPayloadFcmMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(NativePushPayloadFcmMessageData),
    );
    if (object.android != null) {
      yield r'android';
      yield serializers.serialize(
        object.android,
        specifiedType: const FullType(NativePushPayloadFcmMessageAndroid),
      );
    }
    if (object.apns != null) {
      yield r'apns';
      yield serializers.serialize(
        object.apns,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadFcmMessage object, {
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
    required NativePushPayloadFcmMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NativePushPayloadFcmMessageData),
          ) as NativePushPayloadFcmMessageData;
          result.data.replace(valueDes);
          break;
        case r'android':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(NativePushPayloadFcmMessageAndroid),
          ) as NativePushPayloadFcmMessageAndroid?;
          if (valueDes == null) continue;
          result.android.replace(valueDes);
          break;
        case r'apns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.apns.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NativePushPayloadFcmMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NativePushPayloadFcmMessageBuilder();
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
