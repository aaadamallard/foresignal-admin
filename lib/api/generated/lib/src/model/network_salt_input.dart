//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'network_salt_input.g.dart';

/// Install a per-network discovery salt agreed out of band (stored with secret material, never exported)
///
/// Properties:
/// * [networkId]
/// * [saltRef] - The shared salt value (or secret reference); never returned
@BuiltValue()
abstract class NetworkSaltInput
    implements Built<NetworkSaltInput, NetworkSaltInputBuilder> {
  @BuiltValueField(wireName: r'networkId')
  String get networkId;

  /// The shared salt value (or secret reference); never returned
  @BuiltValueField(wireName: r'saltRef')
  String get saltRef;

  NetworkSaltInput._();

  factory NetworkSaltInput([void updates(NetworkSaltInputBuilder b)]) =
      _$NetworkSaltInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NetworkSaltInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NetworkSaltInput> get serializer =>
      _$NetworkSaltInputSerializer();
}

class _$NetworkSaltInputSerializer
    implements PrimitiveSerializer<NetworkSaltInput> {
  @override
  final Iterable<Type> types = const [NetworkSaltInput, _$NetworkSaltInput];

  @override
  final String wireName = r'NetworkSaltInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NetworkSaltInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'networkId';
    yield serializers.serialize(
      object.networkId,
      specifiedType: const FullType(String),
    );
    yield r'saltRef';
    yield serializers.serialize(
      object.saltRef,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NetworkSaltInput object, {
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
    required NetworkSaltInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'networkId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.networkId = valueDes;
          break;
        case r'saltRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.saltRef = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NetworkSaltInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkSaltInputBuilder();
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
