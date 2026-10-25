//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/alertmanager_webhook_alerts_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alertmanager_webhook.g.dart';

/// Prometheus Alertmanager webhook payload (version 4) accepted by the `alertmanager` format (024)
///
/// Properties:
/// * [version]
/// * [groupKey]
/// * [truncatedAlerts]
/// * [status]
/// * [receiver]
/// * [groupLabels]
/// * [commonLabels]
/// * [commonAnnotations]
/// * [externalURL]
/// * [alerts]
@BuiltValue()
abstract class AlertmanagerWebhook
    implements Built<AlertmanagerWebhook, AlertmanagerWebhookBuilder> {
  @BuiltValueField(wireName: r'version')
  AlertmanagerWebhookVersionEnum get version;
  // enum versionEnum {  4,  };

  @BuiltValueField(wireName: r'groupKey')
  String? get groupKey;

  @BuiltValueField(wireName: r'truncatedAlerts')
  int? get truncatedAlerts;

  @BuiltValueField(wireName: r'status')
  AlertmanagerWebhookStatusEnum? get status;
  // enum statusEnum {  firing,  resolved,  };

  @BuiltValueField(wireName: r'receiver')
  String? get receiver;

  @BuiltValueField(wireName: r'groupLabels')
  BuiltMap<String, String>? get groupLabels;

  @BuiltValueField(wireName: r'commonLabels')
  BuiltMap<String, String>? get commonLabels;

  @BuiltValueField(wireName: r'commonAnnotations')
  BuiltMap<String, String>? get commonAnnotations;

  @BuiltValueField(wireName: r'externalURL')
  String? get externalURL;

  @BuiltValueField(wireName: r'alerts')
  BuiltList<AlertmanagerWebhookAlertsInner> get alerts;

  AlertmanagerWebhook._();

  factory AlertmanagerWebhook([void updates(AlertmanagerWebhookBuilder b)]) =
      _$AlertmanagerWebhook;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlertmanagerWebhookBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlertmanagerWebhook> get serializer =>
      _$AlertmanagerWebhookSerializer();
}

class _$AlertmanagerWebhookSerializer
    implements PrimitiveSerializer<AlertmanagerWebhook> {
  @override
  final Iterable<Type> types = const [
    AlertmanagerWebhook,
    _$AlertmanagerWebhook,
  ];

  @override
  final String wireName = r'AlertmanagerWebhook';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlertmanagerWebhook object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(AlertmanagerWebhookVersionEnum),
    );
    if (object.groupKey != null) {
      yield r'groupKey';
      yield serializers.serialize(
        object.groupKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.truncatedAlerts != null) {
      yield r'truncatedAlerts';
      yield serializers.serialize(
        object.truncatedAlerts,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(AlertmanagerWebhookStatusEnum),
      );
    }
    if (object.receiver != null) {
      yield r'receiver';
      yield serializers.serialize(
        object.receiver,
        specifiedType: const FullType(String),
      );
    }
    if (object.groupLabels != null) {
      yield r'groupLabels';
      yield serializers.serialize(
        object.groupLabels,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.commonLabels != null) {
      yield r'commonLabels';
      yield serializers.serialize(
        object.commonLabels,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.commonAnnotations != null) {
      yield r'commonAnnotations';
      yield serializers.serialize(
        object.commonAnnotations,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.externalURL != null) {
      yield r'externalURL';
      yield serializers.serialize(
        object.externalURL,
        specifiedType: const FullType(String),
      );
    }
    yield r'alerts';
    yield serializers.serialize(
      object.alerts,
      specifiedType: const FullType(BuiltList, [
        FullType(AlertmanagerWebhookAlertsInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AlertmanagerWebhook object, {
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
    required AlertmanagerWebhookBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AlertmanagerWebhookVersionEnum,
                    ),
                  )
                  as AlertmanagerWebhookVersionEnum;
          result.version = valueDes;
          break;
        case r'groupKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.groupKey = valueDes;
          break;
        case r'truncatedAlerts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.truncatedAlerts = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AlertmanagerWebhookStatusEnum,
                    ),
                  )
                  as AlertmanagerWebhookStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'receiver':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.receiver = valueDes;
          break;
        case r'groupLabels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.groupLabels.replace(valueDes);
          break;
        case r'commonLabels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.commonLabels.replace(valueDes);
          break;
        case r'commonAnnotations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.commonAnnotations.replace(valueDes);
          break;
        case r'externalURL':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.externalURL = valueDes;
          break;
        case r'alerts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(AlertmanagerWebhookAlertsInner),
                    ]),
                  )
                  as BuiltList<AlertmanagerWebhookAlertsInner>;
          result.alerts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlertmanagerWebhook deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlertmanagerWebhookBuilder();
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

class AlertmanagerWebhookVersionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'4')
  static const AlertmanagerWebhookVersionEnum n4 =
      _$alertmanagerWebhookVersionEnum_n4;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AlertmanagerWebhookVersionEnum unknownDefaultOpenApi =
      _$alertmanagerWebhookVersionEnum_unknownDefaultOpenApi;

  static Serializer<AlertmanagerWebhookVersionEnum> get serializer =>
      _$alertmanagerWebhookVersionEnumSerializer;

  const AlertmanagerWebhookVersionEnum._(String name) : super(name);

  static BuiltSet<AlertmanagerWebhookVersionEnum> get values =>
      _$alertmanagerWebhookVersionEnumValues;
  static AlertmanagerWebhookVersionEnum valueOf(String name) =>
      _$alertmanagerWebhookVersionEnumValueOf(name);
}

class AlertmanagerWebhookStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'firing')
  static const AlertmanagerWebhookStatusEnum firing =
      _$alertmanagerWebhookStatusEnum_firing;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const AlertmanagerWebhookStatusEnum resolved =
      _$alertmanagerWebhookStatusEnum_resolved;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AlertmanagerWebhookStatusEnum unknownDefaultOpenApi =
      _$alertmanagerWebhookStatusEnum_unknownDefaultOpenApi;

  static Serializer<AlertmanagerWebhookStatusEnum> get serializer =>
      _$alertmanagerWebhookStatusEnumSerializer;

  const AlertmanagerWebhookStatusEnum._(String name) : super(name);

  static BuiltSet<AlertmanagerWebhookStatusEnum> get values =>
      _$alertmanagerWebhookStatusEnumValues;
  static AlertmanagerWebhookStatusEnum valueOf(String name) =>
      _$alertmanagerWebhookStatusEnumValueOf(name);
}
