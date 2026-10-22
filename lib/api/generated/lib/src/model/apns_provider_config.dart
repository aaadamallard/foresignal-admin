//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'apns_provider_config.g.dart';

/// APNs provider configuration (032)
///
/// Properties:
/// * [teamId]
/// * [keyId]
/// * [keyEnvironment]
/// * [timeSensitive] - Only when the app has the Time Sensitive capability
@BuiltValue()
abstract class ApnsProviderConfig
    implements Built<ApnsProviderConfig, ApnsProviderConfigBuilder> {
  @BuiltValueField(wireName: r'teamId')
  String get teamId;

  @BuiltValueField(wireName: r'keyId')
  String get keyId;

  @BuiltValueField(wireName: r'keyEnvironment')
  ApnsProviderConfigKeyEnvironmentEnum get keyEnvironment;
  // enum keyEnvironmentEnum {  sandbox,  production,  both,  };

  /// Only when the app has the Time Sensitive capability
  @BuiltValueField(wireName: r'timeSensitive')
  bool? get timeSensitive;

  ApnsProviderConfig._();

  factory ApnsProviderConfig([void updates(ApnsProviderConfigBuilder b)]) =
      _$ApnsProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApnsProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApnsProviderConfig> get serializer =>
      _$ApnsProviderConfigSerializer();
}

class _$ApnsProviderConfigSerializer
    implements PrimitiveSerializer<ApnsProviderConfig> {
  @override
  final Iterable<Type> types = const [ApnsProviderConfig, _$ApnsProviderConfig];

  @override
  final String wireName = r'ApnsProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApnsProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'teamId';
    yield serializers.serialize(
      object.teamId,
      specifiedType: const FullType(String),
    );
    yield r'keyId';
    yield serializers.serialize(
      object.keyId,
      specifiedType: const FullType(String),
    );
    yield r'keyEnvironment';
    yield serializers.serialize(
      object.keyEnvironment,
      specifiedType: const FullType(ApnsProviderConfigKeyEnvironmentEnum),
    );
    if (object.timeSensitive != null) {
      yield r'timeSensitive';
      yield serializers.serialize(
        object.timeSensitive,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApnsProviderConfig object, {
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
    required ApnsProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'teamId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.teamId = valueDes;
          break;
        case r'keyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyId = valueDes;
          break;
        case r'keyEnvironment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApnsProviderConfigKeyEnvironmentEnum),
          ) as ApnsProviderConfigKeyEnvironmentEnum;
          result.keyEnvironment = valueDes;
          break;
        case r'timeSensitive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.timeSensitive = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApnsProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApnsProviderConfigBuilder();
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

class ApnsProviderConfigKeyEnvironmentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sandbox')
  static const ApnsProviderConfigKeyEnvironmentEnum sandbox =
      _$apnsProviderConfigKeyEnvironmentEnum_sandbox;
  @BuiltValueEnumConst(wireName: r'production')
  static const ApnsProviderConfigKeyEnvironmentEnum production =
      _$apnsProviderConfigKeyEnvironmentEnum_production;
  @BuiltValueEnumConst(wireName: r'both')
  static const ApnsProviderConfigKeyEnvironmentEnum both =
      _$apnsProviderConfigKeyEnvironmentEnum_both;

  static Serializer<ApnsProviderConfigKeyEnvironmentEnum> get serializer =>
      _$apnsProviderConfigKeyEnvironmentEnumSerializer;

  const ApnsProviderConfigKeyEnvironmentEnum._(String name) : super(name);

  static BuiltSet<ApnsProviderConfigKeyEnvironmentEnum> get values =>
      _$apnsProviderConfigKeyEnvironmentEnumValues;
  static ApnsProviderConfigKeyEnvironmentEnum valueOf(String name) =>
      _$apnsProviderConfigKeyEnvironmentEnumValueOf(name);
}
