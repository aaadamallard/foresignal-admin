//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mqtt_connections.g.dart';

/// `SystemInfo.mqtt`: state of the supervised MQTT client connections (060 channels, 083/085/086 sources)
///
/// Properties:
/// * [connections] - Configured connections
/// * [connected] - Currently connected
/// * [lastError]
@BuiltValue()
abstract class MqttConnections
    implements Built<MqttConnections, MqttConnectionsBuilder> {
  /// Configured connections
  @BuiltValueField(wireName: r'connections')
  int get connections;

  /// Currently connected
  @BuiltValueField(wireName: r'connected')
  int get connected;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  MqttConnections._();

  factory MqttConnections([void updates(MqttConnectionsBuilder b)]) =
      _$MqttConnections;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MqttConnectionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MqttConnections> get serializer =>
      _$MqttConnectionsSerializer();
}

class _$MqttConnectionsSerializer
    implements PrimitiveSerializer<MqttConnections> {
  @override
  final Iterable<Type> types = const [MqttConnections, _$MqttConnections];

  @override
  final String wireName = r'MqttConnections';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MqttConnections object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'connections';
    yield serializers.serialize(
      object.connections,
      specifiedType: const FullType(int),
    );
    yield r'connected';
    yield serializers.serialize(
      object.connected,
      specifiedType: const FullType(int),
    );
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MqttConnections object, {
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
    required MqttConnectionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'connections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.connections = valueDes;
          break;
        case r'connected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.connected = valueDes;
          break;
        case r'lastError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MqttConnections deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MqttConnectionsBuilder();
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
