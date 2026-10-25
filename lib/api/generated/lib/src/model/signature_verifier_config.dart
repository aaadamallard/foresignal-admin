//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signature_verifier_config.g.dart';

/// Per-format webhook signature verification for a custom source (024). Secrets are write-only.
///
/// Properties:
/// * [scheme] - `hmac-sha256`: header (default X-Signature-256) `sha256=<hex>` over the raw body; `standard-webhooks`: webhook-id/-timestamp/-signature `v1,<base64>` over `id.timestamp.body`, ±5 min, replayed ids rejected for 10 min; `foresignal`: X-Foresignal-Timestamp + X-Foresignal-Signature `sha256=HMAC(\"<ts>.<body>\")`
/// * [header] - hmac-sha256 only; default X-Signature-256
/// * [secret] - Write-only; omit on update to keep the stored secret
/// * [secretSet]
/// * [keyOptional] - When true a valid signature alone authenticates; otherwise the ingest key is required too
@BuiltValue()
abstract class SignatureVerifierConfig
    implements Built<SignatureVerifierConfig, SignatureVerifierConfigBuilder> {
  /// `hmac-sha256`: header (default X-Signature-256) `sha256=<hex>` over the raw body; `standard-webhooks`: webhook-id/-timestamp/-signature `v1,<base64>` over `id.timestamp.body`, ±5 min, replayed ids rejected for 10 min; `foresignal`: X-Foresignal-Timestamp + X-Foresignal-Signature `sha256=HMAC(\"<ts>.<body>\")`
  @BuiltValueField(wireName: r'scheme')
  SignatureVerifierConfigSchemeEnum get scheme;
  // enum schemeEnum {  none,  hmac-sha256,  standard-webhooks,  foresignal,  };

  /// hmac-sha256 only; default X-Signature-256
  @BuiltValueField(wireName: r'header')
  String? get header;

  /// Write-only; omit on update to keep the stored secret
  @BuiltValueField(wireName: r'secret')
  String? get secret;

  @BuiltValueField(wireName: r'secretSet')
  bool? get secretSet;

  /// When true a valid signature alone authenticates; otherwise the ingest key is required too
  @BuiltValueField(wireName: r'keyOptional')
  bool? get keyOptional;

  SignatureVerifierConfig._();

  factory SignatureVerifierConfig([
    void updates(SignatureVerifierConfigBuilder b),
  ]) = _$SignatureVerifierConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignatureVerifierConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignatureVerifierConfig> get serializer =>
      _$SignatureVerifierConfigSerializer();
}

class _$SignatureVerifierConfigSerializer
    implements PrimitiveSerializer<SignatureVerifierConfig> {
  @override
  final Iterable<Type> types = const [
    SignatureVerifierConfig,
    _$SignatureVerifierConfig,
  ];

  @override
  final String wireName = r'SignatureVerifierConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignatureVerifierConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'scheme';
    yield serializers.serialize(
      object.scheme,
      specifiedType: const FullType(SignatureVerifierConfigSchemeEnum),
    );
    if (object.header != null) {
      yield r'header';
      yield serializers.serialize(
        object.header,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.secret != null) {
      yield r'secret';
      yield serializers.serialize(
        object.secret,
        specifiedType: const FullType(String),
      );
    }
    if (object.secretSet != null) {
      yield r'secretSet';
      yield serializers.serialize(
        object.secretSet,
        specifiedType: const FullType(bool),
      );
    }
    if (object.keyOptional != null) {
      yield r'keyOptional';
      yield serializers.serialize(
        object.keyOptional,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignatureVerifierConfig object, {
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
    required SignatureVerifierConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'scheme':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SignatureVerifierConfigSchemeEnum,
                    ),
                  )
                  as SignatureVerifierConfigSchemeEnum;
          result.scheme = valueDes;
          break;
        case r'header':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.header = valueDes;
          break;
        case r'secret':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.secret = valueDes;
          break;
        case r'secretSet':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.secretSet = valueDes;
          break;
        case r'keyOptional':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.keyOptional = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignatureVerifierConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignatureVerifierConfigBuilder();
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

/// `hmac-sha256`: header (default X-Signature-256) `sha256=<hex>` over the raw body; `standard-webhooks`: webhook-id/-timestamp/-signature `v1,<base64>` over `id.timestamp.body`, ±5 min, replayed ids rejected for 10 min; `foresignal`: X-Foresignal-Timestamp + X-Foresignal-Signature `sha256=HMAC(\"<ts>.<body>\")`
class SignatureVerifierConfigSchemeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const SignatureVerifierConfigSchemeEnum none =
      _$signatureVerifierConfigSchemeEnum_none;
  @BuiltValueEnumConst(wireName: r'hmac-sha256')
  static const SignatureVerifierConfigSchemeEnum hmacSha256 =
      _$signatureVerifierConfigSchemeEnum_hmacSha256;
  @BuiltValueEnumConst(wireName: r'standard-webhooks')
  static const SignatureVerifierConfigSchemeEnum standardWebhooks =
      _$signatureVerifierConfigSchemeEnum_standardWebhooks;
  @BuiltValueEnumConst(wireName: r'foresignal')
  static const SignatureVerifierConfigSchemeEnum foresignal =
      _$signatureVerifierConfigSchemeEnum_foresignal;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SignatureVerifierConfigSchemeEnum unknownDefaultOpenApi =
      _$signatureVerifierConfigSchemeEnum_unknownDefaultOpenApi;

  static Serializer<SignatureVerifierConfigSchemeEnum> get serializer =>
      _$signatureVerifierConfigSchemeEnumSerializer;

  const SignatureVerifierConfigSchemeEnum._(String name) : super(name);

  static BuiltSet<SignatureVerifierConfigSchemeEnum> get values =>
      _$signatureVerifierConfigSchemeEnumValues;
  static SignatureVerifierConfigSchemeEnum valueOf(String name) =>
      _$signatureVerifierConfigSchemeEnumValueOf(name);
}
