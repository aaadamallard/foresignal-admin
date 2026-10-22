//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_settings_chatops.g.dart';

/// Interactive chat commands (061)
///
/// Properties:
/// * [enabled] - Global kill switch for all interactive channels
@BuiltValue()
abstract class NotificationSettingsChatops
    implements
        Built<NotificationSettingsChatops, NotificationSettingsChatopsBuilder> {
  /// Global kill switch for all interactive channels
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  NotificationSettingsChatops._();

  factory NotificationSettingsChatops(
          [void updates(NotificationSettingsChatopsBuilder b)]) =
      _$NotificationSettingsChatops;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationSettingsChatopsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationSettingsChatops> get serializer =>
      _$NotificationSettingsChatopsSerializer();
}

class _$NotificationSettingsChatopsSerializer
    implements PrimitiveSerializer<NotificationSettingsChatops> {
  @override
  final Iterable<Type> types = const [
    NotificationSettingsChatops,
    _$NotificationSettingsChatops
  ];

  @override
  final String wireName = r'NotificationSettingsChatops';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationSettingsChatops object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationSettingsChatops object, {
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
    required NotificationSettingsChatopsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationSettingsChatops deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationSettingsChatopsBuilder();
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
