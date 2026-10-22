//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/jwk.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signing_key_info.g.dart';

/// Instance Ed25519 signing key metadata (109); the private key never leaves the server
///
/// Properties:
/// * [kid]
/// * [alg]
/// * [status]
/// * [createdAt]
/// * [retiredAt]
/// * [removeAfter] - When a retired key leaves the JWKS (retiredAt + signing.retainRetired)
/// * [jwk]
@BuiltValue()
abstract class SigningKeyInfo
    implements Built<SigningKeyInfo, SigningKeyInfoBuilder> {
  @BuiltValueField(wireName: r'kid')
  String get kid;

  @BuiltValueField(wireName: r'alg')
  SigningKeyInfoAlgEnum get alg;
  // enum algEnum {  Ed25519,  EdDSA,  };

  @BuiltValueField(wireName: r'status')
  SigningKeyInfoStatusEnum get status;
  // enum statusEnum {  active,  retired,  };

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'retiredAt')
  DateTime? get retiredAt;

  /// When a retired key leaves the JWKS (retiredAt + signing.retainRetired)
  @BuiltValueField(wireName: r'removeAfter')
  DateTime? get removeAfter;

  @BuiltValueField(wireName: r'jwk')
  Jwk get jwk;

  SigningKeyInfo._();

  factory SigningKeyInfo([void updates(SigningKeyInfoBuilder b)]) =
      _$SigningKeyInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SigningKeyInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SigningKeyInfo> get serializer =>
      _$SigningKeyInfoSerializer();
}

class _$SigningKeyInfoSerializer
    implements PrimitiveSerializer<SigningKeyInfo> {
  @override
  final Iterable<Type> types = const [SigningKeyInfo, _$SigningKeyInfo];

  @override
  final String wireName = r'SigningKeyInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SigningKeyInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kid';
    yield serializers.serialize(
      object.kid,
      specifiedType: const FullType(String),
    );
    yield r'alg';
    yield serializers.serialize(
      object.alg,
      specifiedType: const FullType(SigningKeyInfoAlgEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SigningKeyInfoStatusEnum),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.retiredAt != null) {
      yield r'retiredAt';
      yield serializers.serialize(
        object.retiredAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.removeAfter != null) {
      yield r'removeAfter';
      yield serializers.serialize(
        object.removeAfter,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'jwk';
    yield serializers.serialize(object.jwk, specifiedType: const FullType(Jwk));
  }

  @override
  Object serialize(
    Serializers serializers,
    SigningKeyInfo object, {
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
    required SigningKeyInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.kid = valueDes;
          break;
        case r'alg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SigningKeyInfoAlgEnum),
                  )
                  as SigningKeyInfoAlgEnum;
          result.alg = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SigningKeyInfoStatusEnum),
                  )
                  as SigningKeyInfoStatusEnum;
          result.status = valueDes;
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
        case r'retiredAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.retiredAt = valueDes;
          break;
        case r'removeAfter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.removeAfter = valueDes;
          break;
        case r'jwk':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(Jwk))
                  as Jwk;
          result.jwk.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SigningKeyInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SigningKeyInfoBuilder();
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

class SigningKeyInfoAlgEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Ed25519')
  static const SigningKeyInfoAlgEnum ed25519 = _$signingKeyInfoAlgEnum_ed25519;
  @BuiltValueEnumConst(wireName: r'EdDSA')
  static const SigningKeyInfoAlgEnum edDSA = _$signingKeyInfoAlgEnum_edDSA;

  static Serializer<SigningKeyInfoAlgEnum> get serializer =>
      _$signingKeyInfoAlgEnumSerializer;

  const SigningKeyInfoAlgEnum._(String name) : super(name);

  static BuiltSet<SigningKeyInfoAlgEnum> get values =>
      _$signingKeyInfoAlgEnumValues;
  static SigningKeyInfoAlgEnum valueOf(String name) =>
      _$signingKeyInfoAlgEnumValueOf(name);
}

class SigningKeyInfoStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const SigningKeyInfoStatusEnum active =
      _$signingKeyInfoStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'retired')
  static const SigningKeyInfoStatusEnum retired =
      _$signingKeyInfoStatusEnum_retired;

  static Serializer<SigningKeyInfoStatusEnum> get serializer =>
      _$signingKeyInfoStatusEnumSerializer;

  const SigningKeyInfoStatusEnum._(String name) : super(name);

  static BuiltSet<SigningKeyInfoStatusEnum> get values =>
      _$signingKeyInfoStatusEnumValues;
  static SigningKeyInfoStatusEnum valueOf(String name) =>
      _$signingKeyInfoStatusEnumValueOf(name);
}
