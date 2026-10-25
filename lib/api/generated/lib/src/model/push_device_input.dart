//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/push_filters.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_device_input.g.dart';

/// Register a native device for push (032)
///
/// Properties:
/// * [transport]
/// * [platform]
/// * [appId]
/// * [environment] - APNs only; must be covered by the provider's keyEnvironment
/// * [token] - APNs: 64–200 hex chars; FCM: 1–4096 chars
/// * [name]
/// * [filters]
/// * [contentLevel] - minimal: no alert text through Apple/Google; short: shortTitle (≤ 40 chars)
/// * [lang]
@BuiltValue()
abstract class PushDeviceInput
    implements Built<PushDeviceInput, PushDeviceInputBuilder> {
  @BuiltValueField(wireName: r'transport')
  PushDeviceInputTransportEnum get transport;
  // enum transportEnum {  apns,  fcm,  };

  @BuiltValueField(wireName: r'platform')
  PushDeviceInputPlatformEnum get platform;
  // enum platformEnum {  ios,  ipados,  macos,  android,  };

  @BuiltValueField(wireName: r'appId')
  String get appId;

  /// APNs only; must be covered by the provider's keyEnvironment
  @BuiltValueField(wireName: r'environment')
  PushDeviceInputEnvironmentEnum? get environment;
  // enum environmentEnum {  sandbox,  production,  };

  /// APNs: 64–200 hex chars; FCM: 1–4096 chars
  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'filters')
  PushFilters? get filters;

  /// minimal: no alert text through Apple/Google; short: shortTitle (≤ 40 chars)
  @BuiltValueField(wireName: r'contentLevel')
  PushDeviceInputContentLevelEnum? get contentLevel;
  // enum contentLevelEnum {  minimal,  short,  };

  @BuiltValueField(wireName: r'lang')
  String? get lang;

  PushDeviceInput._();

  factory PushDeviceInput([void updates(PushDeviceInputBuilder b)]) =
      _$PushDeviceInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushDeviceInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushDeviceInput> get serializer =>
      _$PushDeviceInputSerializer();
}

class _$PushDeviceInputSerializer
    implements PrimitiveSerializer<PushDeviceInput> {
  @override
  final Iterable<Type> types = const [PushDeviceInput, _$PushDeviceInput];

  @override
  final String wireName = r'PushDeviceInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushDeviceInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'transport';
    yield serializers.serialize(
      object.transport,
      specifiedType: const FullType(PushDeviceInputTransportEnum),
    );
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(PushDeviceInputPlatformEnum),
    );
    yield r'appId';
    yield serializers.serialize(
      object.appId,
      specifiedType: const FullType(String),
    );
    if (object.environment != null) {
      yield r'environment';
      yield serializers.serialize(
        object.environment,
        specifiedType: const FullType.nullable(PushDeviceInputEnvironmentEnum),
      );
    }
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(PushFilters),
      );
    }
    if (object.contentLevel != null) {
      yield r'contentLevel';
      yield serializers.serialize(
        object.contentLevel,
        specifiedType: const FullType(PushDeviceInputContentLevelEnum),
      );
    }
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushDeviceInput object, {
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
    required PushDeviceInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'transport':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PushDeviceInputTransportEnum),
                  )
                  as PushDeviceInputTransportEnum;
          result.transport = valueDes;
          break;
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PushDeviceInputPlatformEnum),
                  )
                  as PushDeviceInputPlatformEnum;
          result.platform = valueDes;
          break;
        case r'appId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.appId = valueDes;
          break;
        case r'environment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PushDeviceInputEnvironmentEnum,
                    ),
                  )
                  as PushDeviceInputEnvironmentEnum?;
          if (valueDes == null) continue;
          result.environment = valueDes;
          break;
        case r'token':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.token = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'filters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PushFilters),
                  )
                  as PushFilters?;
          if (valueDes == null) continue;
          result.filters.replace(valueDes);
          break;
        case r'contentLevel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PushDeviceInputContentLevelEnum,
                    ),
                  )
                  as PushDeviceInputContentLevelEnum?;
          if (valueDes == null) continue;
          result.contentLevel = valueDes;
          break;
        case r'lang':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lang = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushDeviceInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushDeviceInputBuilder();
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

class PushDeviceInputTransportEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'apns')
  static const PushDeviceInputTransportEnum apns =
      _$pushDeviceInputTransportEnum_apns;
  @BuiltValueEnumConst(wireName: r'fcm')
  static const PushDeviceInputTransportEnum fcm =
      _$pushDeviceInputTransportEnum_fcm;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushDeviceInputTransportEnum unknownDefaultOpenApi =
      _$pushDeviceInputTransportEnum_unknownDefaultOpenApi;

  static Serializer<PushDeviceInputTransportEnum> get serializer =>
      _$pushDeviceInputTransportEnumSerializer;

  const PushDeviceInputTransportEnum._(String name) : super(name);

  static BuiltSet<PushDeviceInputTransportEnum> get values =>
      _$pushDeviceInputTransportEnumValues;
  static PushDeviceInputTransportEnum valueOf(String name) =>
      _$pushDeviceInputTransportEnumValueOf(name);
}

class PushDeviceInputPlatformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ios')
  static const PushDeviceInputPlatformEnum ios =
      _$pushDeviceInputPlatformEnum_ios;
  @BuiltValueEnumConst(wireName: r'ipados')
  static const PushDeviceInputPlatformEnum ipados =
      _$pushDeviceInputPlatformEnum_ipados;
  @BuiltValueEnumConst(wireName: r'macos')
  static const PushDeviceInputPlatformEnum macos =
      _$pushDeviceInputPlatformEnum_macos;
  @BuiltValueEnumConst(wireName: r'android')
  static const PushDeviceInputPlatformEnum android =
      _$pushDeviceInputPlatformEnum_android;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushDeviceInputPlatformEnum unknownDefaultOpenApi =
      _$pushDeviceInputPlatformEnum_unknownDefaultOpenApi;

  static Serializer<PushDeviceInputPlatformEnum> get serializer =>
      _$pushDeviceInputPlatformEnumSerializer;

  const PushDeviceInputPlatformEnum._(String name) : super(name);

  static BuiltSet<PushDeviceInputPlatformEnum> get values =>
      _$pushDeviceInputPlatformEnumValues;
  static PushDeviceInputPlatformEnum valueOf(String name) =>
      _$pushDeviceInputPlatformEnumValueOf(name);
}

/// APNs only; must be covered by the provider's keyEnvironment
class PushDeviceInputEnvironmentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sandbox')
  static const PushDeviceInputEnvironmentEnum sandbox =
      _$pushDeviceInputEnvironmentEnum_sandbox;
  @BuiltValueEnumConst(wireName: r'production')
  static const PushDeviceInputEnvironmentEnum production =
      _$pushDeviceInputEnvironmentEnum_production;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushDeviceInputEnvironmentEnum unknownDefaultOpenApi =
      _$pushDeviceInputEnvironmentEnum_unknownDefaultOpenApi;

  static Serializer<PushDeviceInputEnvironmentEnum> get serializer =>
      _$pushDeviceInputEnvironmentEnumSerializer;

  const PushDeviceInputEnvironmentEnum._(String name) : super(name);

  static BuiltSet<PushDeviceInputEnvironmentEnum> get values =>
      _$pushDeviceInputEnvironmentEnumValues;
  static PushDeviceInputEnvironmentEnum valueOf(String name) =>
      _$pushDeviceInputEnvironmentEnumValueOf(name);
}

/// minimal: no alert text through Apple/Google; short: shortTitle (≤ 40 chars)
class PushDeviceInputContentLevelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'minimal')
  static const PushDeviceInputContentLevelEnum minimal =
      _$pushDeviceInputContentLevelEnum_minimal;
  @BuiltValueEnumConst(wireName: r'short')
  static const PushDeviceInputContentLevelEnum short =
      _$pushDeviceInputContentLevelEnum_short;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushDeviceInputContentLevelEnum unknownDefaultOpenApi =
      _$pushDeviceInputContentLevelEnum_unknownDefaultOpenApi;

  static Serializer<PushDeviceInputContentLevelEnum> get serializer =>
      _$pushDeviceInputContentLevelEnumSerializer;

  const PushDeviceInputContentLevelEnum._(String name) : super(name);

  static BuiltSet<PushDeviceInputContentLevelEnum> get values =>
      _$pushDeviceInputContentLevelEnumValues;
  static PushDeviceInputContentLevelEnum valueOf(String name) =>
      _$pushDeviceInputContentLevelEnumValueOf(name);
}
