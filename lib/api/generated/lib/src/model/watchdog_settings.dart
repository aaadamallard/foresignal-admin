//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/watchdog_settings_canary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'watchdog_settings.g.dart';

/// Off-box dead-man watchdog (`app_setting['watchdog']`) and optional ingest canary
///
/// Properties:
/// * [heartbeatUrl] - Pinged every interval while readiness is UP (Healthchecks.io, Uptime Kuma push)
/// * [failUrl] - Pinged instead while not ready (optional)
/// * [interval] - Ping interval (≥ 30s). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [method]
/// * [canary]
@BuiltValue()
abstract class WatchdogSettings
    implements Built<WatchdogSettings, WatchdogSettingsBuilder> {
  /// Pinged every interval while readiness is UP (Healthchecks.io, Uptime Kuma push)
  @BuiltValueField(wireName: r'heartbeatUrl')
  String? get heartbeatUrl;

  /// Pinged instead while not ready (optional)
  @BuiltValueField(wireName: r'failUrl')
  String? get failUrl;

  /// Ping interval (≥ 30s). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'interval')
  String? get interval;

  @BuiltValueField(wireName: r'method')
  WatchdogSettingsMethodEnum? get method;
  // enum methodEnum {  GET,  POST,  };

  @BuiltValueField(wireName: r'canary')
  WatchdogSettingsCanary? get canary;

  WatchdogSettings._();

  factory WatchdogSettings([void updates(WatchdogSettingsBuilder b)]) =
      _$WatchdogSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WatchdogSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WatchdogSettings> get serializer =>
      _$WatchdogSettingsSerializer();
}

class _$WatchdogSettingsSerializer
    implements PrimitiveSerializer<WatchdogSettings> {
  @override
  final Iterable<Type> types = const [WatchdogSettings, _$WatchdogSettings];

  @override
  final String wireName = r'WatchdogSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WatchdogSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.heartbeatUrl != null) {
      yield r'heartbeatUrl';
      yield serializers.serialize(
        object.heartbeatUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.failUrl != null) {
      yield r'failUrl';
      yield serializers.serialize(
        object.failUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType(String),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(WatchdogSettingsMethodEnum),
      );
    }
    if (object.canary != null) {
      yield r'canary';
      yield serializers.serialize(
        object.canary,
        specifiedType: const FullType(WatchdogSettingsCanary),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WatchdogSettings object, {
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
    required WatchdogSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'heartbeatUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.heartbeatUrl = valueDes;
          break;
        case r'failUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.failUrl = valueDes;
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.interval = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      WatchdogSettingsMethodEnum,
                    ),
                  )
                  as WatchdogSettingsMethodEnum?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        case r'canary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      WatchdogSettingsCanary,
                    ),
                  )
                  as WatchdogSettingsCanary?;
          if (valueDes == null) continue;
          result.canary.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WatchdogSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WatchdogSettingsBuilder();
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

class WatchdogSettingsMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GET')
  static const WatchdogSettingsMethodEnum GET =
      _$watchdogSettingsMethodEnum_GET;
  @BuiltValueEnumConst(wireName: r'POST')
  static const WatchdogSettingsMethodEnum POST =
      _$watchdogSettingsMethodEnum_POST;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const WatchdogSettingsMethodEnum unknownDefaultOpenApi =
      _$watchdogSettingsMethodEnum_unknownDefaultOpenApi;

  static Serializer<WatchdogSettingsMethodEnum> get serializer =>
      _$watchdogSettingsMethodEnumSerializer;

  const WatchdogSettingsMethodEnum._(String name) : super(name);

  static BuiltSet<WatchdogSettingsMethodEnum> get values =>
      _$watchdogSettingsMethodEnumValues;
  static WatchdogSettingsMethodEnum valueOf(String name) =>
      _$watchdogSettingsMethodEnumValueOf(name);
}
