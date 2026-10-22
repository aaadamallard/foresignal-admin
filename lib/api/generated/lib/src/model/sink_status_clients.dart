//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/sink_status_clients_peers_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sink_status_clients.g.dart';

/// Connected clients of a SERVE sink
///
/// Properties:
/// * [connected]
/// * [max]
/// * [rejected] - Connections closed because the peer address was not allowed or the maxClients cap was reached
/// * [peers]
@BuiltValue()
abstract class SinkStatusClients
    implements Built<SinkStatusClients, SinkStatusClientsBuilder> {
  @BuiltValueField(wireName: r'connected')
  int get connected;

  @BuiltValueField(wireName: r'max')
  int get max;

  /// Connections closed because the peer address was not allowed or the maxClients cap was reached
  @BuiltValueField(wireName: r'rejected')
  int? get rejected;

  @BuiltValueField(wireName: r'peers')
  BuiltList<SinkStatusClientsPeersInner>? get peers;

  SinkStatusClients._();

  factory SinkStatusClients([void updates(SinkStatusClientsBuilder b)]) =
      _$SinkStatusClients;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SinkStatusClientsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SinkStatusClients> get serializer =>
      _$SinkStatusClientsSerializer();
}

class _$SinkStatusClientsSerializer
    implements PrimitiveSerializer<SinkStatusClients> {
  @override
  final Iterable<Type> types = const [SinkStatusClients, _$SinkStatusClients];

  @override
  final String wireName = r'SinkStatusClients';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SinkStatusClients object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'connected';
    yield serializers.serialize(
      object.connected,
      specifiedType: const FullType(int),
    );
    yield r'max';
    yield serializers.serialize(
      object.max,
      specifiedType: const FullType(int),
    );
    if (object.rejected != null) {
      yield r'rejected';
      yield serializers.serialize(
        object.rejected,
        specifiedType: const FullType(int),
      );
    }
    if (object.peers != null) {
      yield r'peers';
      yield serializers.serialize(
        object.peers,
        specifiedType:
            const FullType(BuiltList, [FullType(SinkStatusClientsPeersInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SinkStatusClients object, {
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
    required SinkStatusClientsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'connected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.connected = valueDes;
          break;
        case r'max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.max = valueDes;
          break;
        case r'rejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.rejected = valueDes;
          break;
        case r'peers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(SinkStatusClientsPeersInner)]),
          ) as BuiltList<SinkStatusClientsPeersInner>?;
          if (valueDes == null) continue;
          result.peers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SinkStatusClients deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SinkStatusClientsBuilder();
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
