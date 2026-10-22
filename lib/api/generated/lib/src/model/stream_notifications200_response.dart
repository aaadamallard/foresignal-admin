//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/notification.dart';
import 'package:foresignal_api/src/model/notification_badge.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'stream_notifications200_response.g.dart';

/// The `data:` line of each event is one JSON object. The `event:` line, not the data, selects its schema as mapped in `x-foresignal-sse-events`, so this is `anyOf` (heartbeat `{}` and other small payloads match several); clients ignore unknown event names.
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
/// * [unread]
/// * [unreadCritical]
/// * [latestId]
@BuiltValue()
abstract class StreamNotifications200Response
    implements
        Built<
          StreamNotifications200Response,
          StreamNotifications200ResponseBuilder
        > {
  /// Any Of [JsonObject], [Notification], [NotificationBadge]
  AnyOf get anyOf;

  StreamNotifications200Response._();

  factory StreamNotifications200Response([
    void updates(StreamNotifications200ResponseBuilder b),
  ]) = _$StreamNotifications200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StreamNotifications200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StreamNotifications200Response> get serializer =>
      _$StreamNotifications200ResponseSerializer();
}

class _$StreamNotifications200ResponseSerializer
    implements PrimitiveSerializer<StreamNotifications200Response> {
  @override
  final Iterable<Type> types = const [
    StreamNotifications200Response,
    _$StreamNotifications200Response,
  ];

  @override
  final String wireName = r'StreamNotifications200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StreamNotifications200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    StreamNotifications200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(
      anyOf,
      specifiedType: FullType(
        AnyOf,
        anyOf.types.map((type) => FullType(type)).toList(),
      ),
    )!;
  }

  @override
  StreamNotifications200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamNotifications200ResponseBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType(Notification),
      FullType(NotificationBadge),
      FullType(JsonObject),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf =
        serializers.deserialize(anyOfDataSrc, specifiedType: targetType)
            as AnyOf;
    return result.build();
  }
}

class StreamNotifications200ResponseEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const StreamNotifications200ResponseEventEnum alert =
      _$streamNotifications200ResponseEventEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const StreamNotifications200ResponseEventEnum briefing =
      _$streamNotifications200ResponseEventEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const StreamNotifications200ResponseEventEnum system =
      _$streamNotifications200ResponseEventEnum_system;

  static Serializer<StreamNotifications200ResponseEventEnum> get serializer =>
      _$streamNotifications200ResponseEventEnumSerializer;

  const StreamNotifications200ResponseEventEnum._(String name) : super(name);

  static BuiltSet<StreamNotifications200ResponseEventEnum> get values =>
      _$streamNotifications200ResponseEventEnumValues;
  static StreamNotifications200ResponseEventEnum valueOf(String name) =>
      _$streamNotifications200ResponseEventEnumValueOf(name);
}

class StreamNotifications200ResponseSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const StreamNotifications200ResponseSeverityEnum info =
      _$streamNotifications200ResponseSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const StreamNotifications200ResponseSeverityEnum warning =
      _$streamNotifications200ResponseSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const StreamNotifications200ResponseSeverityEnum critical =
      _$streamNotifications200ResponseSeverityEnum_critical;

  static Serializer<StreamNotifications200ResponseSeverityEnum>
  get serializer => _$streamNotifications200ResponseSeverityEnumSerializer;

  const StreamNotifications200ResponseSeverityEnum._(String name) : super(name);

  static BuiltSet<StreamNotifications200ResponseSeverityEnum> get values =>
      _$streamNotifications200ResponseSeverityEnumValues;
  static StreamNotifications200ResponseSeverityEnum valueOf(String name) =>
      _$streamNotifications200ResponseSeverityEnumValueOf(name);
}

/// Live alert state
class StreamNotifications200ResponseAlertStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'firing')
  static const StreamNotifications200ResponseAlertStateEnum firing =
      _$streamNotifications200ResponseAlertStateEnum_firing;
  @BuiltValueEnumConst(wireName: r'acknowledged')
  static const StreamNotifications200ResponseAlertStateEnum acknowledged =
      _$streamNotifications200ResponseAlertStateEnum_acknowledged;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const StreamNotifications200ResponseAlertStateEnum resolved =
      _$streamNotifications200ResponseAlertStateEnum_resolved;

  static Serializer<StreamNotifications200ResponseAlertStateEnum>
  get serializer => _$streamNotifications200ResponseAlertStateEnumSerializer;

  const StreamNotifications200ResponseAlertStateEnum._(String name)
    : super(name);

  static BuiltSet<StreamNotifications200ResponseAlertStateEnum> get values =>
      _$streamNotifications200ResponseAlertStateEnumValues;
  static StreamNotifications200ResponseAlertStateEnum valueOf(String name) =>
      _$streamNotifications200ResponseAlertStateEnumValueOf(name);
}
