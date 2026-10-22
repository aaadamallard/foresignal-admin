//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'native_push_payload_apns_aps_alert.g.dart';

/// Visible text by content level
///
/// Properties:
/// * [title]
/// * [body]
@BuiltValue()
abstract class NativePushPayloadApnsApsAlert
    implements
        Built<NativePushPayloadApnsApsAlert,
            NativePushPayloadApnsApsAlertBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'body')
  String get body;

  NativePushPayloadApnsApsAlert._();

  factory NativePushPayloadApnsApsAlert(
          [void updates(NativePushPayloadApnsApsAlertBuilder b)]) =
      _$NativePushPayloadApnsApsAlert;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NativePushPayloadApnsApsAlertBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NativePushPayloadApnsApsAlert> get serializer =>
      _$NativePushPayloadApnsApsAlertSerializer();
}

class _$NativePushPayloadApnsApsAlertSerializer
    implements PrimitiveSerializer<NativePushPayloadApnsApsAlert> {
  @override
  final Iterable<Type> types = const [
    NativePushPayloadApnsApsAlert,
    _$NativePushPayloadApnsApsAlert
  ];

  @override
  final String wireName = r'NativePushPayloadApnsApsAlert';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NativePushPayloadApnsApsAlert object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadApnsApsAlert object, {
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
    required NativePushPayloadApnsApsAlertBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.body = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NativePushPayloadApnsApsAlert deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NativePushPayloadApnsApsAlertBuilder();
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
