//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_provider_input_secrets.g.dart';

/// Write-only secrets
///
/// Properties:
/// * [p8] - APNs .p8 PEM (EC P-256 PKCS#8)
/// * [serviceAccountJson] - FCM service-account JSON, as a string or an object; only private_key is stored, encrypted
@BuiltValue()
abstract class PushProviderInputSecrets
    implements
        Built<PushProviderInputSecrets, PushProviderInputSecretsBuilder> {
  /// APNs .p8 PEM (EC P-256 PKCS#8)
  @BuiltValueField(wireName: r'p8')
  String? get p8;

  /// FCM service-account JSON, as a string or an object; only private_key is stored, encrypted
  @BuiltValueField(wireName: r'serviceAccountJson')
  String? get serviceAccountJson;

  PushProviderInputSecrets._();

  factory PushProviderInputSecrets(
          [void updates(PushProviderInputSecretsBuilder b)]) =
      _$PushProviderInputSecrets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushProviderInputSecretsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushProviderInputSecrets> get serializer =>
      _$PushProviderInputSecretsSerializer();
}

class _$PushProviderInputSecretsSerializer
    implements PrimitiveSerializer<PushProviderInputSecrets> {
  @override
  final Iterable<Type> types = const [
    PushProviderInputSecrets,
    _$PushProviderInputSecrets
  ];

  @override
  final String wireName = r'PushProviderInputSecrets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushProviderInputSecrets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.p8 != null) {
      yield r'p8';
      yield serializers.serialize(
        object.p8,
        specifiedType: const FullType(String),
      );
    }
    if (object.serviceAccountJson != null) {
      yield r'serviceAccountJson';
      yield serializers.serialize(
        object.serviceAccountJson,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushProviderInputSecrets object, {
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
    required PushProviderInputSecretsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'p8':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.p8 = valueDes;
          break;
        case r'serviceAccountJson':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.serviceAccountJson = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushProviderInputSecrets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushProviderInputSecretsBuilder();
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
