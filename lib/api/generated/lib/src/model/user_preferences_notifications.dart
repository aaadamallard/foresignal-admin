//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_preferences_notifications.g.dart';

/// Per-user notification defaults
///
/// Properties:
/// * [emailEnabled]
/// * [pushEnabled]
/// * [quietHours] - e.g. `22:00-07:00` in the user's timezone
@BuiltValue()
abstract class UserPreferencesNotifications
    implements
        Built<
          UserPreferencesNotifications,
          UserPreferencesNotificationsBuilder
        > {
  @BuiltValueField(wireName: r'emailEnabled')
  bool? get emailEnabled;

  @BuiltValueField(wireName: r'pushEnabled')
  bool? get pushEnabled;

  /// e.g. `22:00-07:00` in the user's timezone
  @BuiltValueField(wireName: r'quietHours')
  String? get quietHours;

  UserPreferencesNotifications._();

  factory UserPreferencesNotifications([
    void updates(UserPreferencesNotificationsBuilder b),
  ]) = _$UserPreferencesNotifications;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserPreferencesNotificationsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserPreferencesNotifications> get serializer =>
      _$UserPreferencesNotificationsSerializer();
}

class _$UserPreferencesNotificationsSerializer
    implements PrimitiveSerializer<UserPreferencesNotifications> {
  @override
  final Iterable<Type> types = const [
    UserPreferencesNotifications,
    _$UserPreferencesNotifications,
  ];

  @override
  final String wireName = r'UserPreferencesNotifications';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserPreferencesNotifications object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.emailEnabled != null) {
      yield r'emailEnabled';
      yield serializers.serialize(
        object.emailEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.pushEnabled != null) {
      yield r'pushEnabled';
      yield serializers.serialize(
        object.pushEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.quietHours != null) {
      yield r'quietHours';
      yield serializers.serialize(
        object.quietHours,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserPreferencesNotifications object, {
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
    required UserPreferencesNotificationsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'emailEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.emailEnabled = valueDes;
          break;
        case r'pushEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.pushEnabled = valueDes;
          break;
        case r'quietHours':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.quietHours = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserPreferencesNotifications deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserPreferencesNotificationsBuilder();
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
