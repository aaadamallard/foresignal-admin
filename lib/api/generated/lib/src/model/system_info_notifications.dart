//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_notifications.g.dart';

/// SystemInfoNotifications
///
/// Properties:
/// * [channels]
/// * [pendingDeliveries]
/// * [failedLast24h]
@BuiltValue()
abstract class SystemInfoNotifications
    implements Built<SystemInfoNotifications, SystemInfoNotificationsBuilder> {
  @BuiltValueField(wireName: r'channels')
  int? get channels;

  @BuiltValueField(wireName: r'pendingDeliveries')
  int? get pendingDeliveries;

  @BuiltValueField(wireName: r'failedLast24h')
  int? get failedLast24h;

  SystemInfoNotifications._();

  factory SystemInfoNotifications(
          [void updates(SystemInfoNotificationsBuilder b)]) =
      _$SystemInfoNotifications;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoNotificationsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoNotifications> get serializer =>
      _$SystemInfoNotificationsSerializer();
}

class _$SystemInfoNotificationsSerializer
    implements PrimitiveSerializer<SystemInfoNotifications> {
  @override
  final Iterable<Type> types = const [
    SystemInfoNotifications,
    _$SystemInfoNotifications
  ];

  @override
  final String wireName = r'SystemInfoNotifications';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoNotifications object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.channels != null) {
      yield r'channels';
      yield serializers.serialize(
        object.channels,
        specifiedType: const FullType(int),
      );
    }
    if (object.pendingDeliveries != null) {
      yield r'pendingDeliveries';
      yield serializers.serialize(
        object.pendingDeliveries,
        specifiedType: const FullType(int),
      );
    }
    if (object.failedLast24h != null) {
      yield r'failedLast24h';
      yield serializers.serialize(
        object.failedLast24h,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoNotifications object, {
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
    required SystemInfoNotificationsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'channels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.channels = valueDes;
          break;
        case r'pendingDeliveries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pendingDeliveries = valueDes;
          break;
        case r'failedLast24h':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.failedLast24h = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoNotifications deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoNotificationsBuilder();
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
