//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/sink_filter.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sink.g.dart';

/// An outbound sink (110)
///
/// Properties:
/// * [id]
/// * [type]
/// * [kind]
/// * [mode]
/// * [name]
/// * [enabled]
/// * [config]
/// * [secretsSet] - Names of secret fields that have a stored value (values are never returned)
/// * [filter]
/// * [state]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class Sink implements Built<Sink, SinkBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  SinkTypeEnum get type;
  // enum typeEnum {  mqtt-state,  cot,  readsb-json,  sbs,  nmea-aivdm,  aprs-is-serve,  cloudevents,  federation-push,  };

  @BuiltValueField(wireName: r'kind')
  SinkKindEnum get kind;
  // enum kindEnum {  CHANGE_FEED,  STATE_MIRROR,  };

  @BuiltValueField(wireName: r'mode')
  SinkModeEnum get mode;
  // enum modeEnum {  PUSH,  SERVE,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?> get config;

  /// Names of secret fields that have a stored value (values are never returned)
  @BuiltValueField(wireName: r'secretsSet')
  BuiltList<String>? get secretsSet;

  @BuiltValueField(wireName: r'filter')
  SinkFilter get filter;

  @BuiltValueField(wireName: r'state')
  SinkStateEnum? get state;
  // enum stateEnum {  RUNNING,  RESYNCING,  FAILING,  STOPPED,  };

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  Sink._();

  factory Sink([void updates(SinkBuilder b)]) = _$Sink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Sink> get serializer => _$SinkSerializer();
}

class _$SinkSerializer implements PrimitiveSerializer<Sink> {
  @override
  final Iterable<Type> types = const [Sink, _$Sink];

  @override
  final String wireName = r'Sink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Sink object, {
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
      specifiedType: const FullType(SinkTypeEnum),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(SinkKindEnum),
    );
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(SinkModeEnum),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'config';
    yield serializers.serialize(
      object.config,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(JsonObject),
      ]),
    );
    if (object.secretsSet != null) {
      yield r'secretsSet';
      yield serializers.serialize(
        object.secretsSet,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'filter';
    yield serializers.serialize(
      object.filter,
      specifiedType: const FullType(SinkFilter),
    );
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType.nullable(SinkStateEnum),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Sink object, {
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
    required SinkBuilder result,
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
                    specifiedType: const FullType(SinkTypeEnum),
                  )
                  as SinkTypeEnum;
          result.type = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SinkKindEnum),
                  )
                  as SinkKindEnum;
          result.kind = valueDes;
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SinkModeEnum),
                  )
                  as SinkModeEnum;
          result.mode = valueDes;
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
                    specifiedType: const FullType(bool),
                  )
                  as bool;
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
        case r'secretsSet':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.secretsSet.replace(valueDes);
          break;
        case r'filter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SinkFilter),
                  )
                  as SinkFilter;
          result.filter.replace(valueDes);
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SinkStateEnum),
                  )
                  as SinkStateEnum?;
          if (valueDes == null) continue;
          result.state = valueDes;
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
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Sink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SinkBuilder();
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

class SinkTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mqtt-state')
  static const SinkTypeEnum mqttState = _$sinkTypeEnum_mqttState;
  @BuiltValueEnumConst(wireName: r'cot')
  static const SinkTypeEnum cot = _$sinkTypeEnum_cot;
  @BuiltValueEnumConst(wireName: r'readsb-json')
  static const SinkTypeEnum readsbJson = _$sinkTypeEnum_readsbJson;
  @BuiltValueEnumConst(wireName: r'sbs')
  static const SinkTypeEnum sbs = _$sinkTypeEnum_sbs;
  @BuiltValueEnumConst(wireName: r'nmea-aivdm')
  static const SinkTypeEnum nmeaAivdm = _$sinkTypeEnum_nmeaAivdm;
  @BuiltValueEnumConst(wireName: r'aprs-is-serve')
  static const SinkTypeEnum aprsIsServe = _$sinkTypeEnum_aprsIsServe;
  @BuiltValueEnumConst(wireName: r'cloudevents')
  static const SinkTypeEnum cloudevents = _$sinkTypeEnum_cloudevents;
  @BuiltValueEnumConst(wireName: r'federation-push')
  static const SinkTypeEnum federationPush = _$sinkTypeEnum_federationPush;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SinkTypeEnum unknownDefaultOpenApi =
      _$sinkTypeEnum_unknownDefaultOpenApi;

  static Serializer<SinkTypeEnum> get serializer => _$sinkTypeEnumSerializer;

  const SinkTypeEnum._(String name) : super(name);

  static BuiltSet<SinkTypeEnum> get values => _$sinkTypeEnumValues;
  static SinkTypeEnum valueOf(String name) => _$sinkTypeEnumValueOf(name);
}

class SinkKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CHANGE_FEED')
  static const SinkKindEnum CHANGE_FEED = _$sinkKindEnum_CHANGE_FEED;
  @BuiltValueEnumConst(wireName: r'STATE_MIRROR')
  static const SinkKindEnum STATE_MIRROR = _$sinkKindEnum_STATE_MIRROR;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SinkKindEnum unknownDefaultOpenApi =
      _$sinkKindEnum_unknownDefaultOpenApi;

  static Serializer<SinkKindEnum> get serializer => _$sinkKindEnumSerializer;

  const SinkKindEnum._(String name) : super(name);

  static BuiltSet<SinkKindEnum> get values => _$sinkKindEnumValues;
  static SinkKindEnum valueOf(String name) => _$sinkKindEnumValueOf(name);
}

class SinkModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PUSH')
  static const SinkModeEnum PUSH = _$sinkModeEnum_PUSH;
  @BuiltValueEnumConst(wireName: r'SERVE')
  static const SinkModeEnum SERVE = _$sinkModeEnum_SERVE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SinkModeEnum unknownDefaultOpenApi =
      _$sinkModeEnum_unknownDefaultOpenApi;

  static Serializer<SinkModeEnum> get serializer => _$sinkModeEnumSerializer;

  const SinkModeEnum._(String name) : super(name);

  static BuiltSet<SinkModeEnum> get values => _$sinkModeEnumValues;
  static SinkModeEnum valueOf(String name) => _$sinkModeEnumValueOf(name);
}

class SinkStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RUNNING')
  static const SinkStateEnum RUNNING = _$sinkStateEnum_RUNNING;
  @BuiltValueEnumConst(wireName: r'RESYNCING')
  static const SinkStateEnum RESYNCING = _$sinkStateEnum_RESYNCING;
  @BuiltValueEnumConst(wireName: r'FAILING')
  static const SinkStateEnum FAILING = _$sinkStateEnum_FAILING;
  @BuiltValueEnumConst(wireName: r'STOPPED')
  static const SinkStateEnum STOPPED = _$sinkStateEnum_STOPPED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SinkStateEnum unknownDefaultOpenApi =
      _$sinkStateEnum_unknownDefaultOpenApi;

  static Serializer<SinkStateEnum> get serializer => _$sinkStateEnumSerializer;

  const SinkStateEnum._(String name) : super(name);

  static BuiltSet<SinkStateEnum> get values => _$sinkStateEnumValues;
  static SinkStateEnum valueOf(String name) => _$sinkStateEnumValueOf(name);
}
