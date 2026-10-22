//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/native_push_payload_fcm.dart';
import 'package:foresignal_api/src/model/native_push_payload_apns.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'native_push_payload.g.dart';

/// Wire payloads of native pushes (032): visible alerts carrying ids, severity and minimal text only
///
/// Properties:
/// * [apns]
/// * [fcm]
/// * [exercise] - Exercise; never time-sensitive or critical
@BuiltValue()
abstract class NativePushPayload
    implements Built<NativePushPayload, NativePushPayloadBuilder> {
  @BuiltValueField(wireName: r'apns')
  NativePushPayloadApns? get apns;

  @BuiltValueField(wireName: r'fcm')
  NativePushPayloadFcm? get fcm;

  /// Exercise; never time-sensitive or critical
  @BuiltValueField(wireName: r'exercise')
  bool? get exercise;

  NativePushPayload._();

  factory NativePushPayload([void updates(NativePushPayloadBuilder b)]) =
      _$NativePushPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NativePushPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NativePushPayload> get serializer =>
      _$NativePushPayloadSerializer();
}

class _$NativePushPayloadSerializer
    implements PrimitiveSerializer<NativePushPayload> {
  @override
  final Iterable<Type> types = const [NativePushPayload, _$NativePushPayload];

  @override
  final String wireName = r'NativePushPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NativePushPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apns != null) {
      yield r'apns';
      yield serializers.serialize(
        object.apns,
        specifiedType: const FullType(NativePushPayloadApns),
      );
    }
    if (object.fcm != null) {
      yield r'fcm';
      yield serializers.serialize(
        object.fcm,
        specifiedType: const FullType(NativePushPayloadFcm),
      );
    }
    if (object.exercise != null) {
      yield r'exercise';
      yield serializers.serialize(
        object.exercise,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayload object, {
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
    required NativePushPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NativePushPayloadApns),
          ) as NativePushPayloadApns?;
          if (valueDes == null) continue;
          result.apns.replace(valueDes);
          break;
        case r'fcm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NativePushPayloadFcm),
          ) as NativePushPayloadFcm?;
          if (valueDes == null) continue;
          result.fcm.replace(valueDes);
          break;
        case r'exercise':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.exercise = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NativePushPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NativePushPayloadBuilder();
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
