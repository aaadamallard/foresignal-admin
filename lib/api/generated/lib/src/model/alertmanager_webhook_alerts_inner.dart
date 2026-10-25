//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alertmanager_webhook_alerts_inner.g.dart';

/// One Alertmanager alert → one record (externalId = fingerprint)
///
/// Properties:
/// * [status]
/// * [labels] - `latitude`/`longitude` (or `lat`/`lon`) become a point geometry
/// * [annotations]
/// * [startsAt]
/// * [endsAt]
/// * [generatorURL]
/// * [fingerprint]
@BuiltValue()
abstract class AlertmanagerWebhookAlertsInner
    implements
        Built<
          AlertmanagerWebhookAlertsInner,
          AlertmanagerWebhookAlertsInnerBuilder
        > {
  @BuiltValueField(wireName: r'status')
  AlertmanagerWebhookAlertsInnerStatusEnum get status;
  // enum statusEnum {  firing,  resolved,  };

  /// `latitude`/`longitude` (or `lat`/`lon`) become a point geometry
  @BuiltValueField(wireName: r'labels')
  BuiltMap<String, String> get labels;

  @BuiltValueField(wireName: r'annotations')
  BuiltMap<String, String>? get annotations;

  @BuiltValueField(wireName: r'startsAt')
  DateTime get startsAt;

  @BuiltValueField(wireName: r'endsAt')
  DateTime? get endsAt;

  @BuiltValueField(wireName: r'generatorURL')
  String? get generatorURL;

  @BuiltValueField(wireName: r'fingerprint')
  String get fingerprint;

  AlertmanagerWebhookAlertsInner._();

  factory AlertmanagerWebhookAlertsInner([
    void updates(AlertmanagerWebhookAlertsInnerBuilder b),
  ]) = _$AlertmanagerWebhookAlertsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlertmanagerWebhookAlertsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlertmanagerWebhookAlertsInner> get serializer =>
      _$AlertmanagerWebhookAlertsInnerSerializer();
}

class _$AlertmanagerWebhookAlertsInnerSerializer
    implements PrimitiveSerializer<AlertmanagerWebhookAlertsInner> {
  @override
  final Iterable<Type> types = const [
    AlertmanagerWebhookAlertsInner,
    _$AlertmanagerWebhookAlertsInner,
  ];

  @override
  final String wireName = r'AlertmanagerWebhookAlertsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlertmanagerWebhookAlertsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AlertmanagerWebhookAlertsInnerStatusEnum),
    );
    yield r'labels';
    yield serializers.serialize(
      object.labels,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(String),
      ]),
    );
    if (object.annotations != null) {
      yield r'annotations';
      yield serializers.serialize(
        object.annotations,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    yield r'startsAt';
    yield serializers.serialize(
      object.startsAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.endsAt != null) {
      yield r'endsAt';
      yield serializers.serialize(
        object.endsAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.generatorURL != null) {
      yield r'generatorURL';
      yield serializers.serialize(
        object.generatorURL,
        specifiedType: const FullType(String),
      );
    }
    yield r'fingerprint';
    yield serializers.serialize(
      object.fingerprint,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AlertmanagerWebhookAlertsInner object, {
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
    required AlertmanagerWebhookAlertsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AlertmanagerWebhookAlertsInnerStatusEnum,
                    ),
                  )
                  as AlertmanagerWebhookAlertsInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'labels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>;
          result.labels.replace(valueDes);
          break;
        case r'annotations':
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
          result.annotations.replace(valueDes);
          break;
        case r'startsAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.startsAt = valueDes;
          break;
        case r'endsAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.endsAt = valueDes;
          break;
        case r'generatorURL':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.generatorURL = valueDes;
          break;
        case r'fingerprint':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.fingerprint = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlertmanagerWebhookAlertsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlertmanagerWebhookAlertsInnerBuilder();
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

class AlertmanagerWebhookAlertsInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'firing')
  static const AlertmanagerWebhookAlertsInnerStatusEnum firing =
      _$alertmanagerWebhookAlertsInnerStatusEnum_firing;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const AlertmanagerWebhookAlertsInnerStatusEnum resolved =
      _$alertmanagerWebhookAlertsInnerStatusEnum_resolved;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AlertmanagerWebhookAlertsInnerStatusEnum unknownDefaultOpenApi =
      _$alertmanagerWebhookAlertsInnerStatusEnum_unknownDefaultOpenApi;

  static Serializer<AlertmanagerWebhookAlertsInnerStatusEnum> get serializer =>
      _$alertmanagerWebhookAlertsInnerStatusEnumSerializer;

  const AlertmanagerWebhookAlertsInnerStatusEnum._(String name) : super(name);

  static BuiltSet<AlertmanagerWebhookAlertsInnerStatusEnum> get values =>
      _$alertmanagerWebhookAlertsInnerStatusEnumValues;
  static AlertmanagerWebhookAlertsInnerStatusEnum valueOf(String name) =>
      _$alertmanagerWebhookAlertsInnerStatusEnumValueOf(name);
}
