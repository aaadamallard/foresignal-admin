//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'network_salt_status.g.dart';

/// A network salt's public status
///
/// Properties:
/// * [networkId]
/// * [saltId]
/// * [createdAt]
/// * [rotatesAt]
@BuiltValue()
abstract class NetworkSaltStatus
    implements Built<NetworkSaltStatus, NetworkSaltStatusBuilder> {
  @BuiltValueField(wireName: r'networkId')
  String get networkId;

  @BuiltValueField(wireName: r'saltId')
  String get saltId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'rotatesAt')
  DateTime get rotatesAt;

  NetworkSaltStatus._();

  factory NetworkSaltStatus([void updates(NetworkSaltStatusBuilder b)]) =
      _$NetworkSaltStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NetworkSaltStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NetworkSaltStatus> get serializer =>
      _$NetworkSaltStatusSerializer();
}

class _$NetworkSaltStatusSerializer
    implements PrimitiveSerializer<NetworkSaltStatus> {
  @override
  final Iterable<Type> types = const [NetworkSaltStatus, _$NetworkSaltStatus];

  @override
  final String wireName = r'NetworkSaltStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NetworkSaltStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'networkId';
    yield serializers.serialize(
      object.networkId,
      specifiedType: const FullType(String),
    );
    yield r'saltId';
    yield serializers.serialize(
      object.saltId,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'rotatesAt';
    yield serializers.serialize(
      object.rotatesAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NetworkSaltStatus object, {
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
    required NetworkSaltStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'networkId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.networkId = valueDes;
          break;
        case r'saltId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.saltId = valueDes;
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
        case r'rotatesAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.rotatesAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NetworkSaltStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkSaltStatusBuilder();
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
