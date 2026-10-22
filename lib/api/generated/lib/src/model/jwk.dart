//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'jwk.g.dart';

/// Public Ed25519 signing key as an OKP JWK (RFC 8037)
///
/// Properties:
/// * [kty]
/// * [crv]
/// * [x] - Base64url public key
/// * [kid] - RFC 7638 JWK thumbprint
/// * [use]
/// * [alg] - Ed25519 (RFC 9864); EdDSA only when signing.legacyAlg=true
@BuiltValue()
abstract class Jwk implements Built<Jwk, JwkBuilder> {
  @BuiltValueField(wireName: r'kty')
  JwkKtyEnum get kty;
  // enum ktyEnum {  OKP,  };

  @BuiltValueField(wireName: r'crv')
  JwkCrvEnum get crv;
  // enum crvEnum {  Ed25519,  };

  /// Base64url public key
  @BuiltValueField(wireName: r'x')
  String get x;

  /// RFC 7638 JWK thumbprint
  @BuiltValueField(wireName: r'kid')
  String get kid;

  @BuiltValueField(wireName: r'use')
  JwkUseEnum get use;
  // enum useEnum {  sig,  };

  /// Ed25519 (RFC 9864); EdDSA only when signing.legacyAlg=true
  @BuiltValueField(wireName: r'alg')
  JwkAlgEnum get alg;
  // enum algEnum {  Ed25519,  EdDSA,  };

  Jwk._();

  factory Jwk([void updates(JwkBuilder b)]) = _$Jwk;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JwkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Jwk> get serializer => _$JwkSerializer();
}

class _$JwkSerializer implements PrimitiveSerializer<Jwk> {
  @override
  final Iterable<Type> types = const [Jwk, _$Jwk];

  @override
  final String wireName = r'Jwk';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Jwk object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kty';
    yield serializers.serialize(
      object.kty,
      specifiedType: const FullType(JwkKtyEnum),
    );
    yield r'crv';
    yield serializers.serialize(
      object.crv,
      specifiedType: const FullType(JwkCrvEnum),
    );
    yield r'x';
    yield serializers.serialize(
      object.x,
      specifiedType: const FullType(String),
    );
    yield r'kid';
    yield serializers.serialize(
      object.kid,
      specifiedType: const FullType(String),
    );
    yield r'use';
    yield serializers.serialize(
      object.use,
      specifiedType: const FullType(JwkUseEnum),
    );
    yield r'alg';
    yield serializers.serialize(
      object.alg,
      specifiedType: const FullType(JwkAlgEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Jwk object, {
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
    required JwkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JwkKtyEnum),
          ) as JwkKtyEnum;
          result.kty = valueDes;
          break;
        case r'crv':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JwkCrvEnum),
          ) as JwkCrvEnum;
          result.crv = valueDes;
          break;
        case r'x':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.x = valueDes;
          break;
        case r'kid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kid = valueDes;
          break;
        case r'use':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JwkUseEnum),
          ) as JwkUseEnum;
          result.use = valueDes;
          break;
        case r'alg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JwkAlgEnum),
          ) as JwkAlgEnum;
          result.alg = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Jwk deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JwkBuilder();
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

class JwkKtyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OKP')
  static const JwkKtyEnum OKP = _$jwkKtyEnum_OKP;

  static Serializer<JwkKtyEnum> get serializer => _$jwkKtyEnumSerializer;

  const JwkKtyEnum._(String name) : super(name);

  static BuiltSet<JwkKtyEnum> get values => _$jwkKtyEnumValues;
  static JwkKtyEnum valueOf(String name) => _$jwkKtyEnumValueOf(name);
}

class JwkCrvEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Ed25519')
  static const JwkCrvEnum ed25519 = _$jwkCrvEnum_ed25519;

  static Serializer<JwkCrvEnum> get serializer => _$jwkCrvEnumSerializer;

  const JwkCrvEnum._(String name) : super(name);

  static BuiltSet<JwkCrvEnum> get values => _$jwkCrvEnumValues;
  static JwkCrvEnum valueOf(String name) => _$jwkCrvEnumValueOf(name);
}

class JwkUseEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sig')
  static const JwkUseEnum sig = _$jwkUseEnum_sig;

  static Serializer<JwkUseEnum> get serializer => _$jwkUseEnumSerializer;

  const JwkUseEnum._(String name) : super(name);

  static BuiltSet<JwkUseEnum> get values => _$jwkUseEnumValues;
  static JwkUseEnum valueOf(String name) => _$jwkUseEnumValueOf(name);
}

/// Ed25519 (RFC 9864); EdDSA only when signing.legacyAlg=true
class JwkAlgEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Ed25519')
  static const JwkAlgEnum ed25519 = _$jwkAlgEnum_ed25519;
  @BuiltValueEnumConst(wireName: r'EdDSA')
  static const JwkAlgEnum edDSA = _$jwkAlgEnum_edDSA;

  static Serializer<JwkAlgEnum> get serializer => _$jwkAlgEnumSerializer;

  const JwkAlgEnum._(String name) : super(name);

  static BuiltSet<JwkAlgEnum> get values => _$jwkAlgEnumValues;
  static JwkAlgEnum valueOf(String name) => _$jwkAlgEnumValueOf(name);
}
