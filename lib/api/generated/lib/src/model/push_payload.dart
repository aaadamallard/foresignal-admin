//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/push_payload_links.dart';
import 'package:foresignal_api/src/model/push_payload_actions_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_payload.g.dart';

/// Plaintext Foresignal push message before RFC 8291 encryption (031), ≤ 3,993 bytes; used when `payloadFormat=foresignal` (the `declarative` format wraps it in DeclarativePushPayload). A new subscription first receives `{v, event: \"verify\", subscriptionId, code}`. Shrunk in order (body, links.api, tags, title) until it fits; last resort `{v, event, id, severity, shortTitle}`.
///
/// Properties:
/// * [v]
/// * [event]
/// * [id] - Persisted notification id (018); alert id if absent
/// * [alertId]
/// * [ruleId]
/// * [severity]
/// * [title]
/// * [shortTitle]
/// * [body] - Plain text; briefings send a 200-char excerpt; system events title and code only
/// * [url] - Alias of links.api
/// * [links]
/// * [tags]
/// * [lang]
/// * [tag] - foresignal-alert-<alertId> or foresignal-<event>-<id>; repeats replace each other in the OS
/// * [silent]
/// * [ts]
/// * [actions]
/// * [confirmUrl] - Confirm page when the browser has no action buttons (033)
/// * [subscriptionId] - verify only
/// * [code] - verify only: 16 random bytes, base64url
/// * [exercise] - Exercise; urgency forced to normal
@BuiltValue()
abstract class PushPayload implements Built<PushPayload, PushPayloadBuilder> {
  @BuiltValueField(wireName: r'v')
  PushPayloadVEnum get v;
  // enum vEnum {  1,  };

  @BuiltValueField(wireName: r'event')
  PushPayloadEventEnum get event;
  // enum eventEnum {  alert,  briefing,  system,  verify,  };

  /// Persisted notification id (018); alert id if absent
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'alertId')
  int? get alertId;

  @BuiltValueField(wireName: r'ruleId')
  String? get ruleId;

  @BuiltValueField(wireName: r'severity')
  PushPayloadSeverityEnum? get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'shortTitle')
  String? get shortTitle;

  /// Plain text; briefings send a 200-char excerpt; system events title and code only
  @BuiltValueField(wireName: r'body')
  String? get body;

  /// Alias of links.api
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'links')
  PushPayloadLinks? get links;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'lang')
  String? get lang;

  /// foresignal-alert-<alertId> or foresignal-<event>-<id>; repeats replace each other in the OS
  @BuiltValueField(wireName: r'tag')
  String? get tag;

  @BuiltValueField(wireName: r'silent')
  bool? get silent;

  @BuiltValueField(wireName: r'ts')
  int? get ts;

  @BuiltValueField(wireName: r'actions')
  BuiltList<PushPayloadActionsInner>? get actions;

  /// Confirm page when the browser has no action buttons (033)
  @BuiltValueField(wireName: r'confirmUrl')
  String? get confirmUrl;

  /// verify only
  @BuiltValueField(wireName: r'subscriptionId')
  String? get subscriptionId;

  /// verify only: 16 random bytes, base64url
  @BuiltValueField(wireName: r'code')
  String? get code;

  /// Exercise; urgency forced to normal
  @BuiltValueField(wireName: r'exercise')
  bool? get exercise;

  PushPayload._();

  factory PushPayload([void updates(PushPayloadBuilder b)]) = _$PushPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushPayload> get serializer => _$PushPayloadSerializer();
}

class _$PushPayloadSerializer implements PrimitiveSerializer<PushPayload> {
  @override
  final Iterable<Type> types = const [PushPayload, _$PushPayload];

  @override
  final String wireName = r'PushPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'v';
    yield serializers.serialize(
      object.v,
      specifiedType: const FullType(PushPayloadVEnum),
    );
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(PushPayloadEventEnum),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.alertId != null) {
      yield r'alertId';
      yield serializers.serialize(
        object.alertId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.ruleId != null) {
      yield r'ruleId';
      yield serializers.serialize(
        object.ruleId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType(PushPayloadSeverityEnum),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.shortTitle != null) {
      yield r'shortTitle';
      yield serializers.serialize(
        object.shortTitle,
        specifiedType: const FullType(String),
      );
    }
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(PushPayloadLinks),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType(String),
      );
    }
    if (object.tag != null) {
      yield r'tag';
      yield serializers.serialize(
        object.tag,
        specifiedType: const FullType(String),
      );
    }
    if (object.silent != null) {
      yield r'silent';
      yield serializers.serialize(
        object.silent,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ts != null) {
      yield r'ts';
      yield serializers.serialize(
        object.ts,
        specifiedType: const FullType(int),
      );
    }
    if (object.actions != null) {
      yield r'actions';
      yield serializers.serialize(
        object.actions,
        specifiedType:
            const FullType(BuiltList, [FullType(PushPayloadActionsInner)]),
      );
    }
    if (object.confirmUrl != null) {
      yield r'confirmUrl';
      yield serializers.serialize(
        object.confirmUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.subscriptionId != null) {
      yield r'subscriptionId';
      yield serializers.serialize(
        object.subscriptionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
    if (object.exercise != null) {
      yield r'exercise';
      yield serializers.serialize(
        object.exercise,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushPayload object, {
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
    required PushPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'v':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PushPayloadVEnum),
          ) as PushPayloadVEnum;
          result.v = valueDes;
          break;
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PushPayloadEventEnum),
          ) as PushPayloadEventEnum;
          result.event = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'alertId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.alertId = valueDes;
          break;
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ruleId = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PushPayloadSeverityEnum),
          ) as PushPayloadSeverityEnum?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'shortTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shortTitle = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PushPayloadLinks),
          ) as PushPayloadLinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'lang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lang = valueDes;
          break;
        case r'tag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tag = valueDes;
          break;
        case r'silent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.silent = valueDes;
          break;
        case r'ts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ts = valueDes;
          break;
        case r'actions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(PushPayloadActionsInner)]),
          ) as BuiltList<PushPayloadActionsInner>?;
          if (valueDes == null) continue;
          result.actions.replace(valueDes);
          break;
        case r'confirmUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.confirmUrl = valueDes;
          break;
        case r'subscriptionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subscriptionId = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        case r'exercise':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.exercise = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushPayloadBuilder();
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

class PushPayloadVEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 1)
  static const PushPayloadVEnum number1 = _$pushPayloadVEnum_number1;

  static Serializer<PushPayloadVEnum> get serializer =>
      _$pushPayloadVEnumSerializer;

  const PushPayloadVEnum._(String name) : super(name);

  static BuiltSet<PushPayloadVEnum> get values => _$pushPayloadVEnumValues;
  static PushPayloadVEnum valueOf(String name) =>
      _$pushPayloadVEnumValueOf(name);
}

class PushPayloadEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const PushPayloadEventEnum alert = _$pushPayloadEventEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const PushPayloadEventEnum briefing = _$pushPayloadEventEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const PushPayloadEventEnum system = _$pushPayloadEventEnum_system;
  @BuiltValueEnumConst(wireName: r'verify')
  static const PushPayloadEventEnum verify = _$pushPayloadEventEnum_verify;

  static Serializer<PushPayloadEventEnum> get serializer =>
      _$pushPayloadEventEnumSerializer;

  const PushPayloadEventEnum._(String name) : super(name);

  static BuiltSet<PushPayloadEventEnum> get values =>
      _$pushPayloadEventEnumValues;
  static PushPayloadEventEnum valueOf(String name) =>
      _$pushPayloadEventEnumValueOf(name);
}

class PushPayloadSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const PushPayloadSeverityEnum info = _$pushPayloadSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const PushPayloadSeverityEnum warning =
      _$pushPayloadSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const PushPayloadSeverityEnum critical =
      _$pushPayloadSeverityEnum_critical;

  static Serializer<PushPayloadSeverityEnum> get serializer =>
      _$pushPayloadSeverityEnumSerializer;

  const PushPayloadSeverityEnum._(String name) : super(name);

  static BuiltSet<PushPayloadSeverityEnum> get values =>
      _$pushPayloadSeverityEnumValues;
  static PushPayloadSeverityEnum valueOf(String name) =>
      _$pushPayloadSeverityEnumValueOf(name);
}
