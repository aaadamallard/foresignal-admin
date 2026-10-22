//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sink_type.g.dart';

/// A sink type and its configuration schema (110)
///
/// Properties:
/// * [id] - federation-push is added by 113 (edge relay)
/// * [name]
/// * [description]
/// * [kind] - CHANGE_FEED: ordered at-least-once delivery from a durable cursor; STATE_MIRROR: external copy of current state
/// * [modes] - PUSH: Foresignal connects out; SERVE: Foresignal listens on a LAN address
/// * [configSchema] - JSON Schema 2020-12 of the type's `config`
/// * [secretFields] - Write-only secret settings
/// * [defaultMaxPerSecond] - 50 for PUSH, null (unlimited) for SERVE
@BuiltValue()
abstract class SinkType implements Built<SinkType, SinkTypeBuilder> {
  /// federation-push is added by 113 (edge relay)
  @BuiltValueField(wireName: r'id')
  SinkTypeIdEnum get id;
  // enum idEnum {  mqtt-state,  cot,  readsb-json,  sbs,  nmea-aivdm,  aprs-is-serve,  cloudevents,  federation-push,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// CHANGE_FEED: ordered at-least-once delivery from a durable cursor; STATE_MIRROR: external copy of current state
  @BuiltValueField(wireName: r'kind')
  SinkTypeKindEnum get kind;
  // enum kindEnum {  CHANGE_FEED,  STATE_MIRROR,  };

  /// PUSH: Foresignal connects out; SERVE: Foresignal listens on a LAN address
  @BuiltValueField(wireName: r'modes')
  BuiltList<SinkTypeModesEnum> get modes;
  // enum modesEnum {  PUSH,  SERVE,  };

  /// JSON Schema 2020-12 of the type's `config`
  @BuiltValueField(wireName: r'configSchema')
  BuiltMap<String, JsonObject?> get configSchema;

  /// Write-only secret settings
  @BuiltValueField(wireName: r'secretFields')
  BuiltList<String> get secretFields;

  /// 50 for PUSH, null (unlimited) for SERVE
  @BuiltValueField(wireName: r'defaultMaxPerSecond')
  int? get defaultMaxPerSecond;

  SinkType._();

  factory SinkType([void updates(SinkTypeBuilder b)]) = _$SinkType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SinkTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SinkType> get serializer => _$SinkTypeSerializer();
}

class _$SinkTypeSerializer implements PrimitiveSerializer<SinkType> {
  @override
  final Iterable<Type> types = const [SinkType, _$SinkType];

  @override
  final String wireName = r'SinkType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SinkType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(SinkTypeIdEnum),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(SinkTypeKindEnum),
    );
    yield r'modes';
    yield serializers.serialize(
      object.modes,
      specifiedType: const FullType(BuiltList, [FullType(SinkTypeModesEnum)]),
    );
    yield r'configSchema';
    yield serializers.serialize(
      object.configSchema,
      specifiedType: const FullType(
          BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
    yield r'secretFields';
    yield serializers.serialize(
      object.secretFields,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.defaultMaxPerSecond != null) {
      yield r'defaultMaxPerSecond';
      yield serializers.serialize(
        object.defaultMaxPerSecond,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SinkType object, {
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
    required SinkTypeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SinkTypeIdEnum),
          ) as SinkTypeIdEnum;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SinkTypeKindEnum),
          ) as SinkTypeKindEnum;
          result.kind = valueDes;
          break;
        case r'modes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(SinkTypeModesEnum)]),
          ) as BuiltList<SinkTypeModesEnum>;
          result.modes.replace(valueDes);
          break;
        case r'configSchema':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.configSchema.replace(valueDes);
          break;
        case r'secretFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.secretFields.replace(valueDes);
          break;
        case r'defaultMaxPerSecond':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.defaultMaxPerSecond = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SinkType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SinkTypeBuilder();
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

/// federation-push is added by 113 (edge relay)
class SinkTypeIdEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mqtt-state')
  static const SinkTypeIdEnum mqttState = _$sinkTypeIdEnum_mqttState;
  @BuiltValueEnumConst(wireName: r'cot')
  static const SinkTypeIdEnum cot = _$sinkTypeIdEnum_cot;
  @BuiltValueEnumConst(wireName: r'readsb-json')
  static const SinkTypeIdEnum readsbJson = _$sinkTypeIdEnum_readsbJson;
  @BuiltValueEnumConst(wireName: r'sbs')
  static const SinkTypeIdEnum sbs = _$sinkTypeIdEnum_sbs;
  @BuiltValueEnumConst(wireName: r'nmea-aivdm')
  static const SinkTypeIdEnum nmeaAivdm = _$sinkTypeIdEnum_nmeaAivdm;
  @BuiltValueEnumConst(wireName: r'aprs-is-serve')
  static const SinkTypeIdEnum aprsIsServe = _$sinkTypeIdEnum_aprsIsServe;
  @BuiltValueEnumConst(wireName: r'cloudevents')
  static const SinkTypeIdEnum cloudevents = _$sinkTypeIdEnum_cloudevents;
  @BuiltValueEnumConst(wireName: r'federation-push')
  static const SinkTypeIdEnum federationPush = _$sinkTypeIdEnum_federationPush;

  static Serializer<SinkTypeIdEnum> get serializer =>
      _$sinkTypeIdEnumSerializer;

  const SinkTypeIdEnum._(String name) : super(name);

  static BuiltSet<SinkTypeIdEnum> get values => _$sinkTypeIdEnumValues;
  static SinkTypeIdEnum valueOf(String name) => _$sinkTypeIdEnumValueOf(name);
}

/// CHANGE_FEED: ordered at-least-once delivery from a durable cursor; STATE_MIRROR: external copy of current state
class SinkTypeKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CHANGE_FEED')
  static const SinkTypeKindEnum CHANGE_FEED = _$sinkTypeKindEnum_CHANGE_FEED;
  @BuiltValueEnumConst(wireName: r'STATE_MIRROR')
  static const SinkTypeKindEnum STATE_MIRROR = _$sinkTypeKindEnum_STATE_MIRROR;

  static Serializer<SinkTypeKindEnum> get serializer =>
      _$sinkTypeKindEnumSerializer;

  const SinkTypeKindEnum._(String name) : super(name);

  static BuiltSet<SinkTypeKindEnum> get values => _$sinkTypeKindEnumValues;
  static SinkTypeKindEnum valueOf(String name) =>
      _$sinkTypeKindEnumValueOf(name);
}

class SinkTypeModesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PUSH')
  static const SinkTypeModesEnum PUSH = _$sinkTypeModesEnum_PUSH;
  @BuiltValueEnumConst(wireName: r'SERVE')
  static const SinkTypeModesEnum SERVE = _$sinkTypeModesEnum_SERVE;

  static Serializer<SinkTypeModesEnum> get serializer =>
      _$sinkTypeModesEnumSerializer;

  const SinkTypeModesEnum._(String name) : super(name);

  static BuiltSet<SinkTypeModesEnum> get values => _$sinkTypeModesEnumValues;
  static SinkTypeModesEnum valueOf(String name) =>
      _$sinkTypeModesEnumValueOf(name);
}
