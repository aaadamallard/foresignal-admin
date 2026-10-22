//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dcp_observation_payload.g.dart';

/// Kind `dcp-observation` (`satdump-{station}` DCS): an environmental data platform message located through `dcp_location`
///
/// Properties:
/// * [address]
/// * [name]
/// * [agency]
/// * [channel]
/// * [signalDbm]
/// * [frequencyOffsetHz]
/// * [failureCode]
/// * [dataAscii]
/// * [dataHex]
/// * [decoded]
@BuiltValue()
abstract class DcpObservationPayload
    implements Built<DcpObservationPayload, DcpObservationPayloadBuilder> {
  @BuiltValueField(wireName: r'address')
  String get address;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'agency')
  String? get agency;

  @BuiltValueField(wireName: r'channel')
  String? get channel;

  @BuiltValueField(wireName: r'signalDbm')
  num? get signalDbm;

  @BuiltValueField(wireName: r'frequencyOffsetHz')
  num? get frequencyOffsetHz;

  @BuiltValueField(wireName: r'failureCode')
  String? get failureCode;

  @BuiltValueField(wireName: r'dataAscii')
  String? get dataAscii;

  @BuiltValueField(wireName: r'dataHex')
  String? get dataHex;

  @BuiltValueField(wireName: r'decoded')
  JsonObject? get decoded;

  DcpObservationPayload._();

  factory DcpObservationPayload([
    void updates(DcpObservationPayloadBuilder b),
  ]) = _$DcpObservationPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DcpObservationPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DcpObservationPayload> get serializer =>
      _$DcpObservationPayloadSerializer();
}

class _$DcpObservationPayloadSerializer
    implements PrimitiveSerializer<DcpObservationPayload> {
  @override
  final Iterable<Type> types = const [
    DcpObservationPayload,
    _$DcpObservationPayload,
  ];

  @override
  final String wireName = r'DcpObservationPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DcpObservationPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'address';
    yield serializers.serialize(
      object.address,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.agency != null) {
      yield r'agency';
      yield serializers.serialize(
        object.agency,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.channel != null) {
      yield r'channel';
      yield serializers.serialize(
        object.channel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.signalDbm != null) {
      yield r'signalDbm';
      yield serializers.serialize(
        object.signalDbm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.frequencyOffsetHz != null) {
      yield r'frequencyOffsetHz';
      yield serializers.serialize(
        object.frequencyOffsetHz,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.failureCode != null) {
      yield r'failureCode';
      yield serializers.serialize(
        object.failureCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dataAscii != null) {
      yield r'dataAscii';
      yield serializers.serialize(
        object.dataAscii,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dataHex != null) {
      yield r'dataHex';
      yield serializers.serialize(
        object.dataHex,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.decoded != null) {
      yield r'decoded';
      yield serializers.serialize(
        object.decoded,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DcpObservationPayload object, {
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
    required DcpObservationPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'address':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.address = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'agency':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.agency = valueDes;
          break;
        case r'channel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.channel = valueDes;
          break;
        case r'signalDbm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.signalDbm = valueDes;
          break;
        case r'frequencyOffsetHz':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.frequencyOffsetHz = valueDes;
          break;
        case r'failureCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.failureCode = valueDes;
          break;
        case r'dataAscii':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dataAscii = valueDes;
          break;
        case r'dataHex':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dataHex = valueDes;
          break;
        case r'decoded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.decoded = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DcpObservationPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DcpObservationPayloadBuilder();
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
