//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/user_preferences_notifications.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_preferences.g.dart';

/// The calling user's preferences (timezone, UI and notification defaults, 175)
///
/// Properties:
/// * [timezone] - IANA zone; falls back to the server setting when null
/// * [locale]
/// * [theme]
/// * [notifications]
/// * [ui] - Free-form UI preferences
@BuiltValue()
abstract class UserPreferences
    implements Built<UserPreferences, UserPreferencesBuilder> {
  /// IANA zone; falls back to the server setting when null
  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'locale')
  String? get locale;

  @BuiltValueField(wireName: r'theme')
  String? get theme;

  @BuiltValueField(wireName: r'notifications')
  UserPreferencesNotifications? get notifications;

  /// Free-form UI preferences
  @BuiltValueField(wireName: r'ui')
  BuiltMap<String, JsonObject?>? get ui;

  UserPreferences._();

  factory UserPreferences([void updates(UserPreferencesBuilder b)]) =
      _$UserPreferences;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserPreferencesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserPreferences> get serializer =>
      _$UserPreferencesSerializer();
}

class _$UserPreferencesSerializer
    implements PrimitiveSerializer<UserPreferences> {
  @override
  final Iterable<Type> types = const [UserPreferences, _$UserPreferences];

  @override
  final String wireName = r'UserPreferences';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserPreferences object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.locale != null) {
      yield r'locale';
      yield serializers.serialize(
        object.locale,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.notifications != null) {
      yield r'notifications';
      yield serializers.serialize(
        object.notifications,
        specifiedType: const FullType(UserPreferencesNotifications),
      );
    }
    if (object.ui != null) {
      yield r'ui';
      yield serializers.serialize(
        object.ui,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserPreferences object, {
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
    required UserPreferencesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'timezone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'locale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.locale = valueDes;
          break;
        case r'theme':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.theme = valueDes;
          break;
        case r'notifications':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      UserPreferencesNotifications,
                    ),
                  )
                  as UserPreferencesNotifications?;
          if (valueDes == null) continue;
          result.notifications.replace(valueDes);
          break;
        case r'ui':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.ui.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserPreferences deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserPreferencesBuilder();
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
