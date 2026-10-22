//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/notification_delivery.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_delivery_page.g.dart';

/// NotificationDeliveryPage
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class NotificationDeliveryPage
    implements
        Built<NotificationDeliveryPage, NotificationDeliveryPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<NotificationDelivery> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  NotificationDeliveryPage._();

  factory NotificationDeliveryPage(
          [void updates(NotificationDeliveryPageBuilder b)]) =
      _$NotificationDeliveryPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationDeliveryPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationDeliveryPage> get serializer =>
      _$NotificationDeliveryPageSerializer();
}

class _$NotificationDeliveryPageSerializer
    implements PrimitiveSerializer<NotificationDeliveryPage> {
  @override
  final Iterable<Type> types = const [
    NotificationDeliveryPage,
    _$NotificationDeliveryPage
  ];

  @override
  final String wireName = r'NotificationDeliveryPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationDeliveryPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType:
          const FullType(BuiltList, [FullType(NotificationDelivery)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationDeliveryPage object, {
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
    required NotificationDeliveryPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(NotificationDelivery)]),
          ) as BuiltList<NotificationDelivery>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationDeliveryPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationDeliveryPageBuilder();
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
