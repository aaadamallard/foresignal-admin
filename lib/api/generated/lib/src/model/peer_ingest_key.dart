//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'peer_ingest_key.g.dart';

/// A newly issued peer ingest key, shown once (113)
///
/// Properties:
/// * [peerId]
/// * [key]
/// * [keyPrefix]
/// * [createdAt]
@BuiltValue()
abstract class PeerIngestKey
    implements Built<PeerIngestKey, PeerIngestKeyBuilder> {
  @BuiltValueField(wireName: r'peerId')
  String get peerId;

  @BuiltValueField(wireName: r'key')
  String get key;

  @BuiltValueField(wireName: r'keyPrefix')
  String get keyPrefix;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  PeerIngestKey._();

  factory PeerIngestKey([void updates(PeerIngestKeyBuilder b)]) =
      _$PeerIngestKey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PeerIngestKeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PeerIngestKey> get serializer =>
      _$PeerIngestKeySerializer();
}

class _$PeerIngestKeySerializer implements PrimitiveSerializer<PeerIngestKey> {
  @override
  final Iterable<Type> types = const [PeerIngestKey, _$PeerIngestKey];

  @override
  final String wireName = r'PeerIngestKey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PeerIngestKey object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'peerId';
    yield serializers.serialize(
      object.peerId,
      specifiedType: const FullType(String),
    );
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'keyPrefix';
    yield serializers.serialize(
      object.keyPrefix,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PeerIngestKey object, {
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
    required PeerIngestKeyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'peerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.peerId = valueDes;
          break;
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.key = valueDes;
          break;
        case r'keyPrefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.keyPrefix = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PeerIngestKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PeerIngestKeyBuilder();
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
