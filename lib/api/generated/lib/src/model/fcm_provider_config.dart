//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fcm_provider_config.g.dart';

/// FCM HTTP v1 provider configuration (032). projectId and clientEmail may be omitted when the service-account JSON supplies them (project_id, client_email).
///
/// Properties:
/// * [projectId]
/// * [clientEmail]
/// * [tokenUri] - OAuth 2.0 token endpoint (https; http is accepted only for a local stand-in)
@BuiltValue()
abstract class FcmProviderConfig
    implements Built<FcmProviderConfig, FcmProviderConfigBuilder> {
  @BuiltValueField(wireName: r'projectId')
  String get projectId;

  @BuiltValueField(wireName: r'clientEmail')
  String get clientEmail;

  /// OAuth 2.0 token endpoint (https; http is accepted only for a local stand-in)
  @BuiltValueField(wireName: r'tokenUri')
  String? get tokenUri;

  FcmProviderConfig._();

  factory FcmProviderConfig([void updates(FcmProviderConfigBuilder b)]) =
      _$FcmProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FcmProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FcmProviderConfig> get serializer =>
      _$FcmProviderConfigSerializer();
}

class _$FcmProviderConfigSerializer
    implements PrimitiveSerializer<FcmProviderConfig> {
  @override
  final Iterable<Type> types = const [FcmProviderConfig, _$FcmProviderConfig];

  @override
  final String wireName = r'FcmProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FcmProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'projectId';
    yield serializers.serialize(
      object.projectId,
      specifiedType: const FullType(String),
    );
    yield r'clientEmail';
    yield serializers.serialize(
      object.clientEmail,
      specifiedType: const FullType(String),
    );
    if (object.tokenUri != null) {
      yield r'tokenUri';
      yield serializers.serialize(
        object.tokenUri,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FcmProviderConfig object, {
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
    required FcmProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'projectId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.projectId = valueDes;
          break;
        case r'clientEmail':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.clientEmail = valueDes;
          break;
        case r'tokenUri':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tokenUri = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FcmProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FcmProviderConfigBuilder();
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
