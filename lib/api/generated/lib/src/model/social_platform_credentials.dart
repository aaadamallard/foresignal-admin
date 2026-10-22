//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_platform_credentials.g.dart';

/// Credential status (values never returned)
///
/// Properties:
/// * [required_]
/// * [configured]
/// * [fields] - Credential field names, e.g. `bearerToken`, `apiKey`, `apiId`
@BuiltValue()
abstract class SocialPlatformCredentials
    implements
        Built<SocialPlatformCredentials, SocialPlatformCredentialsBuilder> {
  @BuiltValueField(wireName: r'required')
  bool get required_;

  @BuiltValueField(wireName: r'configured')
  bool get configured;

  /// Credential field names, e.g. `bearerToken`, `apiKey`, `apiId`
  @BuiltValueField(wireName: r'fields')
  BuiltList<String>? get fields;

  SocialPlatformCredentials._();

  factory SocialPlatformCredentials(
          [void updates(SocialPlatformCredentialsBuilder b)]) =
      _$SocialPlatformCredentials;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPlatformCredentialsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPlatformCredentials> get serializer =>
      _$SocialPlatformCredentialsSerializer();
}

class _$SocialPlatformCredentialsSerializer
    implements PrimitiveSerializer<SocialPlatformCredentials> {
  @override
  final Iterable<Type> types = const [
    SocialPlatformCredentials,
    _$SocialPlatformCredentials
  ];

  @override
  final String wireName = r'SocialPlatformCredentials';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPlatformCredentials object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'required';
    yield serializers.serialize(
      object.required_,
      specifiedType: const FullType(bool),
    );
    yield r'configured';
    yield serializers.serialize(
      object.configured,
      specifiedType: const FullType(bool),
    );
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialPlatformCredentials object, {
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
    required SocialPlatformCredentialsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.required_ = valueDes;
          break;
        case r'configured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.configured = valueDes;
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.fields.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialPlatformCredentials deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPlatformCredentialsBuilder();
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
