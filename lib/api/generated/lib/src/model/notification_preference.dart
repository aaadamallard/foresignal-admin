//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/notification_preference_channel.dart';
import 'package:foresignal_api/src/model/quiet_hours.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_preference.g.dart';

/// Where and when a principal receives personal notifications; delivered through 018's worker
///
/// Properties:
/// * [id] - ULID identifier
/// * [principalId] - ULID identifier
/// * [eventTypes]
/// * [channel]
/// * [quietHours]
/// * [enabled]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class NotificationPreference
    implements Built<NotificationPreference, NotificationPreferenceBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'principalId')
  String? get principalId;

  @BuiltValueField(wireName: r'eventTypes')
  BuiltList<NotificationPreferenceEventTypesEnum> get eventTypes;
  // enum eventTypesEnum {  mention,  share,  report,  chronicle,  assessment,  comment-reply,  };

  @BuiltValueField(wireName: r'channel')
  NotificationPreferenceChannel get channel;

  @BuiltValueField(wireName: r'quietHours')
  QuietHours? get quietHours;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  NotificationPreference._();

  factory NotificationPreference([
    void updates(NotificationPreferenceBuilder b),
  ]) = _$NotificationPreference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationPreferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationPreference> get serializer =>
      _$NotificationPreferenceSerializer();
}

class _$NotificationPreferenceSerializer
    implements PrimitiveSerializer<NotificationPreference> {
  @override
  final Iterable<Type> types = const [
    NotificationPreference,
    _$NotificationPreference,
  ];

  @override
  final String wireName = r'NotificationPreference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationPreference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.principalId != null) {
      yield r'principalId';
      yield serializers.serialize(
        object.principalId,
        specifiedType: const FullType(String),
      );
    }
    yield r'eventTypes';
    yield serializers.serialize(
      object.eventTypes,
      specifiedType: const FullType(BuiltList, [
        FullType(NotificationPreferenceEventTypesEnum),
      ]),
    );
    yield r'channel';
    yield serializers.serialize(
      object.channel,
      specifiedType: const FullType(NotificationPreferenceChannel),
    );
    if (object.quietHours != null) {
      yield r'quietHours';
      yield serializers.serialize(
        object.quietHours,
        specifiedType: const FullType.nullable(QuietHours),
      );
    }
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationPreference object, {
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
    required NotificationPreferenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'principalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.principalId = valueDes;
          break;
        case r'eventTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(NotificationPreferenceEventTypesEnum),
                    ]),
                  )
                  as BuiltList<NotificationPreferenceEventTypesEnum>;
          result.eventTypes.replace(valueDes);
          break;
        case r'channel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      NotificationPreferenceChannel,
                    ),
                  )
                  as NotificationPreferenceChannel;
          result.channel.replace(valueDes);
          break;
        case r'quietHours':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(QuietHours),
                  )
                  as QuietHours?;
          if (valueDes == null) continue;
          result.quietHours.replace(valueDes);
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationPreference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationPreferenceBuilder();
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

class NotificationPreferenceEventTypesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mention')
  static const NotificationPreferenceEventTypesEnum mention =
      _$notificationPreferenceEventTypesEnum_mention;
  @BuiltValueEnumConst(wireName: r'share')
  static const NotificationPreferenceEventTypesEnum share =
      _$notificationPreferenceEventTypesEnum_share;
  @BuiltValueEnumConst(wireName: r'report')
  static const NotificationPreferenceEventTypesEnum report =
      _$notificationPreferenceEventTypesEnum_report;
  @BuiltValueEnumConst(wireName: r'chronicle')
  static const NotificationPreferenceEventTypesEnum chronicle =
      _$notificationPreferenceEventTypesEnum_chronicle;
  @BuiltValueEnumConst(wireName: r'assessment')
  static const NotificationPreferenceEventTypesEnum assessment =
      _$notificationPreferenceEventTypesEnum_assessment;
  @BuiltValueEnumConst(wireName: r'comment-reply')
  static const NotificationPreferenceEventTypesEnum commentReply =
      _$notificationPreferenceEventTypesEnum_commentReply;

  static Serializer<NotificationPreferenceEventTypesEnum> get serializer =>
      _$notificationPreferenceEventTypesEnumSerializer;

  const NotificationPreferenceEventTypesEnum._(String name) : super(name);

  static BuiltSet<NotificationPreferenceEventTypesEnum> get values =>
      _$notificationPreferenceEventTypesEnumValues;
  static NotificationPreferenceEventTypesEnum valueOf(String name) =>
      _$notificationPreferenceEventTypesEnumValueOf(name);
}
