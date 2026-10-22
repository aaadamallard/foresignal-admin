//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/notification_link.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/notification_action.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_detail.g.dart';

/// An inbox item with links and fresh action capabilities for the calling device (033)
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
/// * [links]
/// * [actions] - Only for firing alerts
@BuiltValue()
abstract class NotificationDetail
    implements Built<NotificationDetail, NotificationDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'event')
  NotificationDetailEventEnum get event;
  // enum eventEnum {  alert,  briefing,  system,  };

  @BuiltValueField(wireName: r'subtype')
  String? get subtype;

  @BuiltValueField(wireName: r'severity')
  NotificationDetailSeverityEnum get severity;
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
  NotificationDetailAlertStateEnum? get alertState;
  // enum alertStateEnum {  firing,  acknowledged,  resolved,  };

  @BuiltValueField(wireName: r'links')
  BuiltList<NotificationLink>? get links;

  /// Only for firing alerts
  @BuiltValueField(wireName: r'actions')
  BuiltList<NotificationAction>? get actions;

  NotificationDetail._();

  factory NotificationDetail([void updates(NotificationDetailBuilder b)]) =
      _$NotificationDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationDetail> get serializer =>
      _$NotificationDetailSerializer();
}

class _$NotificationDetailSerializer
    implements PrimitiveSerializer<NotificationDetail> {
  @override
  final Iterable<Type> types = const [NotificationDetail, _$NotificationDetail];

  @override
  final String wireName = r'NotificationDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(NotificationDetailEventEnum),
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
      specifiedType: const FullType(NotificationDetailSeverityEnum),
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
        specifiedType: const FullType.nullable(
          NotificationDetailAlertStateEnum,
        ),
      );
    }
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(BuiltList, [FullType(NotificationLink)]),
      );
    }
    if (object.actions != null) {
      yield r'actions';
      yield serializers.serialize(
        object.actions,
        specifiedType: const FullType(BuiltList, [
          FullType(NotificationAction),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationDetail object, {
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
    required NotificationDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.id = valueDes;
          break;
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NotificationDetailEventEnum),
                  )
                  as NotificationDetailEventEnum;
          result.event = valueDes;
          break;
        case r'subtype':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.subtype = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      NotificationDetailSeverityEnum,
                    ),
                  )
                  as NotificationDetailSeverityEnum;
          result.severity = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'body':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        case r'alertId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.alertId = valueDes;
          break;
        case r'briefingRunId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.briefingRunId = valueDes;
          break;
        case r'ruleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ruleId = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'read':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.read = valueDes;
          break;
        case r'alertState':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NotificationDetailAlertStateEnum,
                    ),
                  )
                  as NotificationDetailAlertStateEnum?;
          if (valueDes == null) continue;
          result.alertState = valueDes;
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(NotificationLink),
                    ]),
                  )
                  as BuiltList<NotificationLink>?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'actions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(NotificationAction),
                    ]),
                  )
                  as BuiltList<NotificationAction>?;
          if (valueDes == null) continue;
          result.actions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationDetailBuilder();
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

class NotificationDetailEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const NotificationDetailEventEnum alert =
      _$notificationDetailEventEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const NotificationDetailEventEnum briefing =
      _$notificationDetailEventEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const NotificationDetailEventEnum system =
      _$notificationDetailEventEnum_system;

  static Serializer<NotificationDetailEventEnum> get serializer =>
      _$notificationDetailEventEnumSerializer;

  const NotificationDetailEventEnum._(String name) : super(name);

  static BuiltSet<NotificationDetailEventEnum> get values =>
      _$notificationDetailEventEnumValues;
  static NotificationDetailEventEnum valueOf(String name) =>
      _$notificationDetailEventEnumValueOf(name);
}

class NotificationDetailSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const NotificationDetailSeverityEnum info =
      _$notificationDetailSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const NotificationDetailSeverityEnum warning =
      _$notificationDetailSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const NotificationDetailSeverityEnum critical =
      _$notificationDetailSeverityEnum_critical;

  static Serializer<NotificationDetailSeverityEnum> get serializer =>
      _$notificationDetailSeverityEnumSerializer;

  const NotificationDetailSeverityEnum._(String name) : super(name);

  static BuiltSet<NotificationDetailSeverityEnum> get values =>
      _$notificationDetailSeverityEnumValues;
  static NotificationDetailSeverityEnum valueOf(String name) =>
      _$notificationDetailSeverityEnumValueOf(name);
}

/// Live alert state
class NotificationDetailAlertStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'firing')
  static const NotificationDetailAlertStateEnum firing =
      _$notificationDetailAlertStateEnum_firing;
  @BuiltValueEnumConst(wireName: r'acknowledged')
  static const NotificationDetailAlertStateEnum acknowledged =
      _$notificationDetailAlertStateEnum_acknowledged;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const NotificationDetailAlertStateEnum resolved =
      _$notificationDetailAlertStateEnum_resolved;

  static Serializer<NotificationDetailAlertStateEnum> get serializer =>
      _$notificationDetailAlertStateEnumSerializer;

  const NotificationDetailAlertStateEnum._(String name) : super(name);

  static BuiltSet<NotificationDetailAlertStateEnum> get values =>
      _$notificationDetailAlertStateEnumValues;
  static NotificationDetailAlertStateEnum valueOf(String name) =>
      _$notificationDetailAlertStateEnumValueOf(name);
}
