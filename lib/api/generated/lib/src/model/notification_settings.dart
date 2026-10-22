//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/notification_settings_chatops.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_settings.g.dart';

/// Global notification pause (`app_setting['notifications']`)
///
/// Properties:
/// * [pausedUntil] - Pause all deliveries until this time; paused deliveries are released as digests
/// * [pauseBypassSeverity]
/// * [chatops]
/// * [imageLinks] - 108: add feed-key image links to map attachments for channels that cannot take attachments; requires an https publicBaseUrl (400 IMAGE_LINKS_REQUIRE_HTTPS)
/// * [defaultLanguage] - 141 (`notify.defaultLanguage`): BCP 47 language notifications are written in; a channel whose `language` differs gets the title and body translated
@BuiltValue()
abstract class NotificationSettings
    implements Built<NotificationSettings, NotificationSettingsBuilder> {
  /// Pause all deliveries until this time; paused deliveries are released as digests
  @BuiltValueField(wireName: r'pausedUntil')
  DateTime? get pausedUntil;

  @BuiltValueField(wireName: r'pauseBypassSeverity')
  NotificationSettingsPauseBypassSeverityEnum? get pauseBypassSeverity;
  // enum pauseBypassSeverityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'chatops')
  NotificationSettingsChatops? get chatops;

  /// 108: add feed-key image links to map attachments for channels that cannot take attachments; requires an https publicBaseUrl (400 IMAGE_LINKS_REQUIRE_HTTPS)
  @BuiltValueField(wireName: r'imageLinks')
  bool? get imageLinks;

  /// 141 (`notify.defaultLanguage`): BCP 47 language notifications are written in; a channel whose `language` differs gets the title and body translated
  @BuiltValueField(wireName: r'defaultLanguage')
  String? get defaultLanguage;

  NotificationSettings._();

  factory NotificationSettings([void updates(NotificationSettingsBuilder b)]) =
      _$NotificationSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationSettings> get serializer =>
      _$NotificationSettingsSerializer();
}

class _$NotificationSettingsSerializer
    implements PrimitiveSerializer<NotificationSettings> {
  @override
  final Iterable<Type> types = const [
    NotificationSettings,
    _$NotificationSettings,
  ];

  @override
  final String wireName = r'NotificationSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pausedUntil != null) {
      yield r'pausedUntil';
      yield serializers.serialize(
        object.pausedUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.pauseBypassSeverity != null) {
      yield r'pauseBypassSeverity';
      yield serializers.serialize(
        object.pauseBypassSeverity,
        specifiedType: const FullType.nullable(
          NotificationSettingsPauseBypassSeverityEnum,
        ),
      );
    }
    if (object.chatops != null) {
      yield r'chatops';
      yield serializers.serialize(
        object.chatops,
        specifiedType: const FullType(NotificationSettingsChatops),
      );
    }
    if (object.imageLinks != null) {
      yield r'imageLinks';
      yield serializers.serialize(
        object.imageLinks,
        specifiedType: const FullType(bool),
      );
    }
    if (object.defaultLanguage != null) {
      yield r'defaultLanguage';
      yield serializers.serialize(
        object.defaultLanguage,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationSettings object, {
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
    required NotificationSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pausedUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.pausedUntil = valueDes;
          break;
        case r'pauseBypassSeverity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NotificationSettingsPauseBypassSeverityEnum,
                    ),
                  )
                  as NotificationSettingsPauseBypassSeverityEnum?;
          if (valueDes == null) continue;
          result.pauseBypassSeverity = valueDes;
          break;
        case r'chatops':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NotificationSettingsChatops,
                    ),
                  )
                  as NotificationSettingsChatops?;
          if (valueDes == null) continue;
          result.chatops.replace(valueDes);
          break;
        case r'imageLinks':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.imageLinks = valueDes;
          break;
        case r'defaultLanguage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.defaultLanguage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationSettingsBuilder();
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

class NotificationSettingsPauseBypassSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const NotificationSettingsPauseBypassSeverityEnum info =
      _$notificationSettingsPauseBypassSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const NotificationSettingsPauseBypassSeverityEnum warning =
      _$notificationSettingsPauseBypassSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const NotificationSettingsPauseBypassSeverityEnum critical =
      _$notificationSettingsPauseBypassSeverityEnum_critical;

  static Serializer<NotificationSettingsPauseBypassSeverityEnum>
  get serializer => _$notificationSettingsPauseBypassSeverityEnumSerializer;

  const NotificationSettingsPauseBypassSeverityEnum._(String name)
    : super(name);

  static BuiltSet<NotificationSettingsPauseBypassSeverityEnum> get values =>
      _$notificationSettingsPauseBypassSeverityEnumValues;
  static NotificationSettingsPauseBypassSeverityEnum valueOf(String name) =>
      _$notificationSettingsPauseBypassSeverityEnumValueOf(name);
}
