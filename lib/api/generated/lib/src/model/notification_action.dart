//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/notification_action_params.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_action.g.dart';

/// A capability URL minted for the calling device (033); single use, 12 h
///
/// Properties:
/// * [action]
/// * [label]
/// * [method]
/// * [url] - <publicBaseUrl>/v1/actions/eac_…
/// * [confirmUrl] - Same URL; GET shows the confirm page
/// * [params]
/// * [expiresAt]
@BuiltValue()
abstract class NotificationAction
    implements Built<NotificationAction, NotificationActionBuilder> {
  @BuiltValueField(wireName: r'action')
  String get action;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'method')
  NotificationActionMethodEnum? get method;
  // enum methodEnum {  POST,  };

  /// <publicBaseUrl>/v1/actions/eac_…
  @BuiltValueField(wireName: r'url')
  String get url;

  /// Same URL; GET shows the confirm page
  @BuiltValueField(wireName: r'confirmUrl')
  String? get confirmUrl;

  @BuiltValueField(wireName: r'params')
  NotificationActionParams? get params;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  NotificationAction._();

  factory NotificationAction([void updates(NotificationActionBuilder b)]) =
      _$NotificationAction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationActionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationAction> get serializer =>
      _$NotificationActionSerializer();
}

class _$NotificationActionSerializer
    implements PrimitiveSerializer<NotificationAction> {
  @override
  final Iterable<Type> types = const [NotificationAction, _$NotificationAction];

  @override
  final String wireName = r'NotificationAction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationAction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(NotificationActionMethodEnum),
      );
    }
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.confirmUrl != null) {
      yield r'confirmUrl';
      yield serializers.serialize(
        object.confirmUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(NotificationActionParams),
      );
    }
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationAction object, {
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
    required NotificationActionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(NotificationActionMethodEnum),
          ) as NotificationActionMethodEnum?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'confirmUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.confirmUrl = valueDes;
          break;
        case r'params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationActionParams),
          ) as NotificationActionParams?;
          if (valueDes == null) continue;
          result.params.replace(valueDes);
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationActionBuilder();
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

class NotificationActionMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'POST')
  static const NotificationActionMethodEnum POST =
      _$notificationActionMethodEnum_POST;

  static Serializer<NotificationActionMethodEnum> get serializer =>
      _$notificationActionMethodEnumSerializer;

  const NotificationActionMethodEnum._(String name) : super(name);

  static BuiltSet<NotificationActionMethodEnum> get values =>
      _$notificationActionMethodEnumValues;
  static NotificationActionMethodEnum valueOf(String name) =>
      _$notificationActionMethodEnumValueOf(name);
}
