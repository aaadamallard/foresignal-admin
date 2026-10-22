//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_action_params.g.dart';

/// Action parameters
///
/// Properties:
/// * [duration] - snooze 15m–24h (default 1h); mute 1h–7d (default 4h)
@BuiltValue()
abstract class NotificationActionParams
    implements
        Built<NotificationActionParams, NotificationActionParamsBuilder> {
  /// snooze 15m–24h (default 1h); mute 1h–7d (default 4h)
  @BuiltValueField(wireName: r'duration')
  String? get duration;

  NotificationActionParams._();

  factory NotificationActionParams([
    void updates(NotificationActionParamsBuilder b),
  ]) = _$NotificationActionParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationActionParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationActionParams> get serializer =>
      _$NotificationActionParamsSerializer();
}

class _$NotificationActionParamsSerializer
    implements PrimitiveSerializer<NotificationActionParams> {
  @override
  final Iterable<Type> types = const [
    NotificationActionParams,
    _$NotificationActionParams,
  ];

  @override
  final String wireName = r'NotificationActionParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationActionParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationActionParams object, {
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
    required NotificationActionParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'duration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.duration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationActionParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationActionParamsBuilder();
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
