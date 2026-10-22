//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/notification_preference_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_preferences_input.g.dart';

/// Replace the calling principal's notification preferences
///
/// Properties:
/// * [items]
@BuiltValue()
abstract class NotificationPreferencesInput
    implements
        Built<NotificationPreferencesInput,
            NotificationPreferencesInputBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<NotificationPreferenceInput> get items;

  NotificationPreferencesInput._();

  factory NotificationPreferencesInput(
          [void updates(NotificationPreferencesInputBuilder b)]) =
      _$NotificationPreferencesInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationPreferencesInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationPreferencesInput> get serializer =>
      _$NotificationPreferencesInputSerializer();
}

class _$NotificationPreferencesInputSerializer
    implements PrimitiveSerializer<NotificationPreferencesInput> {
  @override
  final Iterable<Type> types = const [
    NotificationPreferencesInput,
    _$NotificationPreferencesInput
  ];

  @override
  final String wireName = r'NotificationPreferencesInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationPreferencesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType:
          const FullType(BuiltList, [FullType(NotificationPreferenceInput)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationPreferencesInput object, {
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
    required NotificationPreferencesInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(NotificationPreferenceInput)]),
          ) as BuiltList<NotificationPreferenceInput>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationPreferencesInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationPreferencesInputBuilder();
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
