//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_badge.g.dart';

/// Unread counts for the calling device (033); also the `badge` SSE event
///
/// Properties:
/// * [unread]
/// * [unreadCritical]
/// * [latestId]
@BuiltValue()
abstract class NotificationBadge
    implements Built<NotificationBadge, NotificationBadgeBuilder> {
  @BuiltValueField(wireName: r'unread')
  int get unread;

  @BuiltValueField(wireName: r'unreadCritical')
  int get unreadCritical;

  @BuiltValueField(wireName: r'latestId')
  int? get latestId;

  NotificationBadge._();

  factory NotificationBadge([void updates(NotificationBadgeBuilder b)]) =
      _$NotificationBadge;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationBadgeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationBadge> get serializer =>
      _$NotificationBadgeSerializer();
}

class _$NotificationBadgeSerializer
    implements PrimitiveSerializer<NotificationBadge> {
  @override
  final Iterable<Type> types = const [NotificationBadge, _$NotificationBadge];

  @override
  final String wireName = r'NotificationBadge';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationBadge object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'unread';
    yield serializers.serialize(
      object.unread,
      specifiedType: const FullType(int),
    );
    yield r'unreadCritical';
    yield serializers.serialize(
      object.unreadCritical,
      specifiedType: const FullType(int),
    );
    if (object.latestId != null) {
      yield r'latestId';
      yield serializers.serialize(
        object.latestId,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationBadge object, {
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
    required NotificationBadgeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'unread':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.unread = valueDes;
          break;
        case r'unreadCritical':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.unreadCritical = valueDes;
          break;
        case r'latestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.latestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationBadge deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationBadgeBuilder();
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
