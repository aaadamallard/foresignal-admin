//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/native_push_payload_fcm_message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'native_push_payload_fcm.g.dart';

/// FCM HTTP v1 message (data message; HIGH for warning/critical)
///
/// Properties:
/// * [message]
@BuiltValue()
abstract class NativePushPayloadFcm
    implements Built<NativePushPayloadFcm, NativePushPayloadFcmBuilder> {
  @BuiltValueField(wireName: r'message')
  NativePushPayloadFcmMessage? get message;

  NativePushPayloadFcm._();

  factory NativePushPayloadFcm([void updates(NativePushPayloadFcmBuilder b)]) =
      _$NativePushPayloadFcm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NativePushPayloadFcmBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NativePushPayloadFcm> get serializer =>
      _$NativePushPayloadFcmSerializer();
}

class _$NativePushPayloadFcmSerializer
    implements PrimitiveSerializer<NativePushPayloadFcm> {
  @override
  final Iterable<Type> types = const [
    NativePushPayloadFcm,
    _$NativePushPayloadFcm
  ];

  @override
  final String wireName = r'NativePushPayloadFcm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NativePushPayloadFcm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(NativePushPayloadFcmMessage),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadFcm object, {
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
    required NativePushPayloadFcmBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NativePushPayloadFcmMessage),
          ) as NativePushPayloadFcmMessage?;
          if (valueDes == null) continue;
          result.message.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NativePushPayloadFcm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NativePushPayloadFcmBuilder();
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
