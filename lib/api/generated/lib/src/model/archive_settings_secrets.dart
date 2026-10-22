//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'archive_settings_secrets.g.dart';

/// Write-only S3 credentials
///
/// Properties:
/// * [accessKey]
/// * [secretKey]
@BuiltValue()
abstract class ArchiveSettingsSecrets
    implements Built<ArchiveSettingsSecrets, ArchiveSettingsSecretsBuilder> {
  @BuiltValueField(wireName: r'accessKey')
  String? get accessKey;

  @BuiltValueField(wireName: r'secretKey')
  String? get secretKey;

  ArchiveSettingsSecrets._();

  factory ArchiveSettingsSecrets([
    void updates(ArchiveSettingsSecretsBuilder b),
  ]) = _$ArchiveSettingsSecrets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArchiveSettingsSecretsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ArchiveSettingsSecrets> get serializer =>
      _$ArchiveSettingsSecretsSerializer();
}

class _$ArchiveSettingsSecretsSerializer
    implements PrimitiveSerializer<ArchiveSettingsSecrets> {
  @override
  final Iterable<Type> types = const [
    ArchiveSettingsSecrets,
    _$ArchiveSettingsSecrets,
  ];

  @override
  final String wireName = r'ArchiveSettingsSecrets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ArchiveSettingsSecrets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessKey != null) {
      yield r'accessKey';
      yield serializers.serialize(
        object.accessKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.secretKey != null) {
      yield r'secretKey';
      yield serializers.serialize(
        object.secretKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ArchiveSettingsSecrets object, {
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
    required ArchiveSettingsSecretsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.accessKey = valueDes;
          break;
        case r'secretKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.secretKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ArchiveSettingsSecrets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchiveSettingsSecretsBuilder();
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
