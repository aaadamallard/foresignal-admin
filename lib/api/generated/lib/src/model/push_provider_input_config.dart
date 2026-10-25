//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/apns_provider_config.dart';
import 'package:foresignal_api/src/model/fcm_provider_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'push_provider_input_config.g.dart';

/// PushProviderInputConfig
///
/// Properties:
/// * [teamId]
/// * [keyId]
/// * [keyEnvironment]
/// * [timeSensitive] - Only when the app has the Time Sensitive capability
/// * [projectId]
/// * [clientEmail]
/// * [tokenUri] - OAuth 2.0 token endpoint (https; http is accepted only for a local stand-in)
@BuiltValue()
abstract class PushProviderInputConfig
    implements Built<PushProviderInputConfig, PushProviderInputConfigBuilder> {
  /// One Of [ApnsProviderConfig], [FcmProviderConfig]
  OneOf get oneOf;

  PushProviderInputConfig._();

  factory PushProviderInputConfig([
    void updates(PushProviderInputConfigBuilder b),
  ]) = _$PushProviderInputConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushProviderInputConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushProviderInputConfig> get serializer =>
      _$PushProviderInputConfigSerializer();
}

class _$PushProviderInputConfigSerializer
    implements PrimitiveSerializer<PushProviderInputConfig> {
  @override
  final Iterable<Type> types = const [
    PushProviderInputConfig,
    _$PushProviderInputConfig,
  ];

  @override
  final String wireName = r'PushProviderInputConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushProviderInputConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    PushProviderInputConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  PushProviderInputConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushProviderInputConfigBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(ApnsProviderConfig),
      FullType(FcmProviderConfig),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf =
        serializers.deserialize(oneOfDataSrc, specifiedType: targetType)
            as OneOf;
    return result.build();
  }
}

class PushProviderInputConfigKeyEnvironmentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sandbox')
  static const PushProviderInputConfigKeyEnvironmentEnum sandbox =
      _$pushProviderInputConfigKeyEnvironmentEnum_sandbox;
  @BuiltValueEnumConst(wireName: r'production')
  static const PushProviderInputConfigKeyEnvironmentEnum production =
      _$pushProviderInputConfigKeyEnvironmentEnum_production;
  @BuiltValueEnumConst(wireName: r'both')
  static const PushProviderInputConfigKeyEnvironmentEnum both =
      _$pushProviderInputConfigKeyEnvironmentEnum_both;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushProviderInputConfigKeyEnvironmentEnum unknownDefaultOpenApi =
      _$pushProviderInputConfigKeyEnvironmentEnum_unknownDefaultOpenApi;

  static Serializer<PushProviderInputConfigKeyEnvironmentEnum> get serializer =>
      _$pushProviderInputConfigKeyEnvironmentEnumSerializer;

  const PushProviderInputConfigKeyEnvironmentEnum._(String name) : super(name);

  static BuiltSet<PushProviderInputConfigKeyEnvironmentEnum> get values =>
      _$pushProviderInputConfigKeyEnvironmentEnumValues;
  static PushProviderInputConfigKeyEnvironmentEnum valueOf(String name) =>
      _$pushProviderInputConfigKeyEnvironmentEnumValueOf(name);
}
