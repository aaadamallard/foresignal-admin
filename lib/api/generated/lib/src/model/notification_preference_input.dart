//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/notification_preference_input_channel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/quiet_hours.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_preference_input.g.dart';

/// One notification preference of the calling principal
///
/// Properties:
/// * [id] - ULID identifier
/// * [eventTypes]
/// * [channel]
/// * [quietHours]
/// * [enabled]
@BuiltValue()
abstract class NotificationPreferenceInput
    implements
        Built<NotificationPreferenceInput, NotificationPreferenceInputBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'eventTypes')
  BuiltList<NotificationPreferenceInputEventTypesEnum> get eventTypes;
  // enum eventTypesEnum {  mention,  share,  report,  chronicle,  assessment,  comment-reply,  };

  @BuiltValueField(wireName: r'channel')
  NotificationPreferenceInputChannel get channel;

  @BuiltValueField(wireName: r'quietHours')
  QuietHours? get quietHours;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  NotificationPreferenceInput._();

  factory NotificationPreferenceInput([
    void updates(NotificationPreferenceInputBuilder b),
  ]) = _$NotificationPreferenceInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationPreferenceInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationPreferenceInput> get serializer =>
      _$NotificationPreferenceInputSerializer();
}

class _$NotificationPreferenceInputSerializer
    implements PrimitiveSerializer<NotificationPreferenceInput> {
  @override
  final Iterable<Type> types = const [
    NotificationPreferenceInput,
    _$NotificationPreferenceInput,
  ];

  @override
  final String wireName = r'NotificationPreferenceInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationPreferenceInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'eventTypes';
    yield serializers.serialize(
      object.eventTypes,
      specifiedType: const FullType(BuiltList, [
        FullType(NotificationPreferenceInputEventTypesEnum),
      ]),
    );
    yield r'channel';
    yield serializers.serialize(
      object.channel,
      specifiedType: const FullType(NotificationPreferenceInputChannel),
    );
    if (object.quietHours != null) {
      yield r'quietHours';
      yield serializers.serialize(
        object.quietHours,
        specifiedType: const FullType.nullable(QuietHours),
      );
    }
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
    NotificationPreferenceInput object, {
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
    required NotificationPreferenceInputBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'eventTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(NotificationPreferenceInputEventTypesEnum),
                    ]),
                  )
                  as BuiltList<NotificationPreferenceInputEventTypesEnum>;
          result.eventTypes.replace(valueDes);
          break;
        case r'channel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      NotificationPreferenceInputChannel,
                    ),
                  )
                  as NotificationPreferenceInputChannel;
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
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
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
  NotificationPreferenceInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationPreferenceInputBuilder();
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

class NotificationPreferenceInputEventTypesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mention')
  static const NotificationPreferenceInputEventTypesEnum mention =
      _$notificationPreferenceInputEventTypesEnum_mention;
  @BuiltValueEnumConst(wireName: r'share')
  static const NotificationPreferenceInputEventTypesEnum share =
      _$notificationPreferenceInputEventTypesEnum_share;
  @BuiltValueEnumConst(wireName: r'report')
  static const NotificationPreferenceInputEventTypesEnum report =
      _$notificationPreferenceInputEventTypesEnum_report;
  @BuiltValueEnumConst(wireName: r'chronicle')
  static const NotificationPreferenceInputEventTypesEnum chronicle =
      _$notificationPreferenceInputEventTypesEnum_chronicle;
  @BuiltValueEnumConst(wireName: r'assessment')
  static const NotificationPreferenceInputEventTypesEnum assessment =
      _$notificationPreferenceInputEventTypesEnum_assessment;
  @BuiltValueEnumConst(wireName: r'comment-reply')
  static const NotificationPreferenceInputEventTypesEnum commentReply =
      _$notificationPreferenceInputEventTypesEnum_commentReply;

  static Serializer<NotificationPreferenceInputEventTypesEnum> get serializer =>
      _$notificationPreferenceInputEventTypesEnumSerializer;

  const NotificationPreferenceInputEventTypesEnum._(String name) : super(name);

  static BuiltSet<NotificationPreferenceInputEventTypesEnum> get values =>
      _$notificationPreferenceInputEventTypesEnumValues;
  static NotificationPreferenceInputEventTypesEnum valueOf(String name) =>
      _$notificationPreferenceInputEventTypesEnumValueOf(name);
}
