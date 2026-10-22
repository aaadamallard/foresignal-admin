//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification.g.dart';

/// An inbox item: a persisted notification with per-device read state (033)
///
/// Properties:
/// * [id]
/// * [event]
/// * [subtype]
/// * [severity]
/// * [title]
/// * [body] - Markdown
/// * [alertId]
/// * [briefingRunId]
/// * [ruleId]
/// * [createdAt]
/// * [read] - Read on this device; reading never acknowledges an alert
/// * [alertState] - Live alert state
@BuiltValue()
abstract class Notification
    implements Built<Notification, NotificationBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'event')
  NotificationEventEnum get event;
  // enum eventEnum {  alert,  briefing,  system,  };

  @BuiltValueField(wireName: r'subtype')
  String? get subtype;

  @BuiltValueField(wireName: r'severity')
  NotificationSeverityEnum get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  /// Markdown
  @BuiltValueField(wireName: r'body')
  String? get body;

  @BuiltValueField(wireName: r'alertId')
  int? get alertId;

  @BuiltValueField(wireName: r'briefingRunId')
  String? get briefingRunId;

  @BuiltValueField(wireName: r'ruleId')
  String? get ruleId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Read on this device; reading never acknowledges an alert
  @BuiltValueField(wireName: r'read')
  bool get read;

  /// Live alert state
  @BuiltValueField(wireName: r'alertState')
  NotificationAlertStateEnum? get alertState;
  // enum alertStateEnum {  firing,  acknowledged,  resolved,  };

  Notification._();

  factory Notification([void updates(NotificationBuilder b)]) = _$Notification;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Notification> get serializer => _$NotificationSerializer();
}

class _$NotificationSerializer implements PrimitiveSerializer<Notification> {
  @override
  final Iterable<Type> types = const [Notification, _$Notification];

  @override
  final String wireName = r'Notification';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Notification object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(NotificationEventEnum),
    );
    if (object.subtype != null) {
      yield r'subtype';
      yield serializers.serialize(
        object.subtype,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(NotificationSeverityEnum),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType(String),
      );
    }
    if (object.alertId != null) {
      yield r'alertId';
      yield serializers.serialize(
        object.alertId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.briefingRunId != null) {
      yield r'briefingRunId';
      yield serializers.serialize(
        object.briefingRunId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ruleId != null) {
      yield r'ruleId';
      yield serializers.serialize(
        object.ruleId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'read';
    yield serializers.serialize(
      object.read,
      specifiedType: const FullType(bool),
    );
    if (object.alertState != null) {
      yield r'alertState';
      yield serializers.serialize(
        object.alertState,
        specifiedType: const FullType.nullable(NotificationAlertStateEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Notification object, {
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
    required NotificationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationEventEnum),
          ) as NotificationEventEnum;
          result.event = valueDes;
          break;
        case r'subtype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subtype = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationSeverityEnum),
          ) as NotificationSeverityEnum;
          result.severity = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        case r'alertId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.alertId = valueDes;
          break;
        case r'briefingRunId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.briefingRunId = valueDes;
          break;
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ruleId = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'read':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.read = valueDes;
          break;
        case r'alertState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationAlertStateEnum),
          ) as NotificationAlertStateEnum?;
          if (valueDes == null) continue;
          result.alertState = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Notification deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationBuilder();
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

class NotificationEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const NotificationEventEnum alert = _$notificationEventEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const NotificationEventEnum briefing =
      _$notificationEventEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const NotificationEventEnum system = _$notificationEventEnum_system;

  static Serializer<NotificationEventEnum> get serializer =>
      _$notificationEventEnumSerializer;

  const NotificationEventEnum._(String name) : super(name);

  static BuiltSet<NotificationEventEnum> get values =>
      _$notificationEventEnumValues;
  static NotificationEventEnum valueOf(String name) =>
      _$notificationEventEnumValueOf(name);
}

class NotificationSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const NotificationSeverityEnum info = _$notificationSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const NotificationSeverityEnum warning =
      _$notificationSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const NotificationSeverityEnum critical =
      _$notificationSeverityEnum_critical;

  static Serializer<NotificationSeverityEnum> get serializer =>
      _$notificationSeverityEnumSerializer;

  const NotificationSeverityEnum._(String name) : super(name);

  static BuiltSet<NotificationSeverityEnum> get values =>
      _$notificationSeverityEnumValues;
  static NotificationSeverityEnum valueOf(String name) =>
      _$notificationSeverityEnumValueOf(name);
}

/// Live alert state
class NotificationAlertStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'firing')
  static const NotificationAlertStateEnum firing =
      _$notificationAlertStateEnum_firing;
  @BuiltValueEnumConst(wireName: r'acknowledged')
  static const NotificationAlertStateEnum acknowledged =
      _$notificationAlertStateEnum_acknowledged;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const NotificationAlertStateEnum resolved =
      _$notificationAlertStateEnum_resolved;

  static Serializer<NotificationAlertStateEnum> get serializer =>
      _$notificationAlertStateEnumSerializer;

  const NotificationAlertStateEnum._(String name) : super(name);

  static BuiltSet<NotificationAlertStateEnum> get values =>
      _$notificationAlertStateEnumValues;
  static NotificationAlertStateEnum valueOf(String name) =>
      _$notificationAlertStateEnumValueOf(name);
}
