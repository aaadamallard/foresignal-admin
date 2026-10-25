//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/sink_filter.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sink_create.g.dart';

/// Create an outbound sink; sinks are created disabled unless enabled=true (110)
///
/// Properties:
/// * [id]
/// * [type]
/// * [name]
/// * [enabled] - Defaults to false
/// * [config] - Per-type settings validated against SinkType.configSchema. Common keys: `mode` (PUSH|SERVE where the type supports both), `bind` (default 127.0.0.1; loopback, RFC 1918, link-local, ULA, or 100.64.0.0/10 with `allowTailnet`), `port` (required for SERVE, no default), `allowAllInterfaces`, `maxClients` (default 8), `maxPerSecond`; broker and target URLs pass the outbound URL policy (035).
/// * [secrets] - Write-only secrets per SinkType.secretFields (encrypted at rest, never returned)
/// * [filter]
@BuiltValue()
abstract class SinkCreate implements Built<SinkCreate, SinkCreateBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  SinkCreateTypeEnum get type;
  // enum typeEnum {  mqtt-state,  cot,  readsb-json,  sbs,  nmea-aivdm,  aprs-is-serve,  cloudevents,  federation-push,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  /// Defaults to false
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// Per-type settings validated against SinkType.configSchema. Common keys: `mode` (PUSH|SERVE where the type supports both), `bind` (default 127.0.0.1; loopback, RFC 1918, link-local, ULA, or 100.64.0.0/10 with `allowTailnet`), `port` (required for SERVE, no default), `allowAllInterfaces`, `maxClients` (default 8), `maxPerSecond`; broker and target URLs pass the outbound URL policy (035).
  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?> get config;

  /// Write-only secrets per SinkType.secretFields (encrypted at rest, never returned)
  @BuiltValueField(wireName: r'secrets')
  BuiltMap<String, String>? get secrets;

  @BuiltValueField(wireName: r'filter')
  SinkFilter? get filter;

  SinkCreate._();

  factory SinkCreate([void updates(SinkCreateBuilder b)]) = _$SinkCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SinkCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SinkCreate> get serializer => _$SinkCreateSerializer();
}

class _$SinkCreateSerializer implements PrimitiveSerializer<SinkCreate> {
  @override
  final Iterable<Type> types = const [SinkCreate, _$SinkCreate];

  @override
  final String wireName = r'SinkCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SinkCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(SinkCreateTypeEnum),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'config';
    yield serializers.serialize(
      object.config,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(JsonObject),
      ]),
    );
    if (object.secrets != null) {
      yield r'secrets';
      yield serializers.serialize(
        object.secrets,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType(SinkFilter),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SinkCreate object, {
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
    required SinkCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SinkCreateTypeEnum),
                  )
                  as SinkCreateTypeEnum;
          result.type = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'config':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>;
          result.config.replace(valueDes);
          break;
        case r'secrets':
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
          result.secrets.replace(valueDes);
          break;
        case r'filter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SinkFilter),
                  )
                  as SinkFilter?;
          if (valueDes == null) continue;
          result.filter.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SinkCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SinkCreateBuilder();
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

class SinkCreateTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mqtt-state')
  static const SinkCreateTypeEnum mqttState = _$sinkCreateTypeEnum_mqttState;
  @BuiltValueEnumConst(wireName: r'cot')
  static const SinkCreateTypeEnum cot = _$sinkCreateTypeEnum_cot;
  @BuiltValueEnumConst(wireName: r'readsb-json')
  static const SinkCreateTypeEnum readsbJson = _$sinkCreateTypeEnum_readsbJson;
  @BuiltValueEnumConst(wireName: r'sbs')
  static const SinkCreateTypeEnum sbs = _$sinkCreateTypeEnum_sbs;
  @BuiltValueEnumConst(wireName: r'nmea-aivdm')
  static const SinkCreateTypeEnum nmeaAivdm = _$sinkCreateTypeEnum_nmeaAivdm;
  @BuiltValueEnumConst(wireName: r'aprs-is-serve')
  static const SinkCreateTypeEnum aprsIsServe =
      _$sinkCreateTypeEnum_aprsIsServe;
  @BuiltValueEnumConst(wireName: r'cloudevents')
  static const SinkCreateTypeEnum cloudevents =
      _$sinkCreateTypeEnum_cloudevents;
  @BuiltValueEnumConst(wireName: r'federation-push')
  static const SinkCreateTypeEnum federationPush =
      _$sinkCreateTypeEnum_federationPush;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SinkCreateTypeEnum unknownDefaultOpenApi =
      _$sinkCreateTypeEnum_unknownDefaultOpenApi;

  static Serializer<SinkCreateTypeEnum> get serializer =>
      _$sinkCreateTypeEnumSerializer;

  const SinkCreateTypeEnum._(String name) : super(name);

  static BuiltSet<SinkCreateTypeEnum> get values => _$sinkCreateTypeEnumValues;
  static SinkCreateTypeEnum valueOf(String name) =>
      _$sinkCreateTypeEnumValueOf(name);
}
