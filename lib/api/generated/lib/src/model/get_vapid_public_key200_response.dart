//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_vapid_public_key200_response.g.dart';

/// GetVapidPublicKey200Response
///
/// Properties:
/// * [publicKey] - Base64url uncompressed P-256 point
@BuiltValue()
abstract class GetVapidPublicKey200Response
    implements
        Built<
          GetVapidPublicKey200Response,
          GetVapidPublicKey200ResponseBuilder
        > {
  /// Base64url uncompressed P-256 point
  @BuiltValueField(wireName: r'publicKey')
  String get publicKey;

  GetVapidPublicKey200Response._();

  factory GetVapidPublicKey200Response([
    void updates(GetVapidPublicKey200ResponseBuilder b),
  ]) = _$GetVapidPublicKey200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetVapidPublicKey200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetVapidPublicKey200Response> get serializer =>
      _$GetVapidPublicKey200ResponseSerializer();
}

class _$GetVapidPublicKey200ResponseSerializer
    implements PrimitiveSerializer<GetVapidPublicKey200Response> {
  @override
  final Iterable<Type> types = const [
    GetVapidPublicKey200Response,
    _$GetVapidPublicKey200Response,
  ];

  @override
  final String wireName = r'GetVapidPublicKey200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetVapidPublicKey200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'publicKey';
    yield serializers.serialize(
      object.publicKey,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetVapidPublicKey200Response object, {
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
    required GetVapidPublicKey200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'publicKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.publicKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetVapidPublicKey200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVapidPublicKey200ResponseBuilder();
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
