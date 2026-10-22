//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/native_push_payload_apns_e.dart';
import 'package:foresignal_api/src/model/native_push_payload_apns_aps.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'native_push_payload_apns.g.dart';

/// APNs request body (≤ 4096 bytes); headers apns-push-type alert, apns-priority 10 (5 under quiet-hours downgrade), apns-expiration, apns-collapse-id, apns-id
///
/// Properties:
/// * [aps]
/// * [e]
@BuiltValue()
abstract class NativePushPayloadApns
    implements Built<NativePushPayloadApns, NativePushPayloadApnsBuilder> {
  @BuiltValueField(wireName: r'aps')
  NativePushPayloadApnsAps? get aps;

  @BuiltValueField(wireName: r'e')
  NativePushPayloadApnsE? get e;

  NativePushPayloadApns._();

  factory NativePushPayloadApns([
    void updates(NativePushPayloadApnsBuilder b),
  ]) = _$NativePushPayloadApns;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NativePushPayloadApnsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NativePushPayloadApns> get serializer =>
      _$NativePushPayloadApnsSerializer();
}

class _$NativePushPayloadApnsSerializer
    implements PrimitiveSerializer<NativePushPayloadApns> {
  @override
  final Iterable<Type> types = const [
    NativePushPayloadApns,
    _$NativePushPayloadApns,
  ];

  @override
  final String wireName = r'NativePushPayloadApns';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NativePushPayloadApns object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.aps != null) {
      yield r'aps';
      yield serializers.serialize(
        object.aps,
        specifiedType: const FullType(NativePushPayloadApnsAps),
      );
    }
    if (object.e != null) {
      yield r'e';
      yield serializers.serialize(
        object.e,
        specifiedType: const FullType(NativePushPayloadApnsE),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadApns object, {
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
    required NativePushPayloadApnsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'aps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NativePushPayloadApnsAps,
                    ),
                  )
                  as NativePushPayloadApnsAps?;
          if (valueDes == null) continue;
          result.aps.replace(valueDes);
          break;
        case r'e':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NativePushPayloadApnsE,
                    ),
                  )
                  as NativePushPayloadApnsE?;
          if (valueDes == null) continue;
          result.e.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NativePushPayloadApns deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NativePushPayloadApnsBuilder();
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
