//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/push_filters.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_device.g.dart';

/// A registered native push device; the token is never returned (032)
///
/// Properties:
/// * [id]
/// * [transport]
/// * [platform]
/// * [appId]
/// * [environment]
/// * [tokenSuffix] - Last 6 characters of the device token
/// * [tokenId] - API token that registered the device
/// * [name]
/// * [deviceName]
/// * [appVersion]
/// * [filters]
/// * [contentLevel]
/// * [lang]
/// * [status] - 032 never disables a device by itself: dead tokens are deleted. `disabled` is reserved.
/// * [createdAt]
/// * [lastSuccessAt]
/// * [lastFailureAt]
/// * [failureCount]
/// * [lastStatus]
@BuiltValue()
abstract class PushDevice implements Built<PushDevice, PushDeviceBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'transport')
  PushDeviceTransportEnum get transport;
  // enum transportEnum {  apns,  fcm,  };

  @BuiltValueField(wireName: r'platform')
  PushDevicePlatformEnum get platform;
  // enum platformEnum {  ios,  ipados,  macos,  android,  };

  @BuiltValueField(wireName: r'appId')
  String get appId;

  @BuiltValueField(wireName: r'environment')
  PushDeviceEnvironmentEnum? get environment;
  // enum environmentEnum {  sandbox,  production,  };

  /// Last 6 characters of the device token
  @BuiltValueField(wireName: r'tokenSuffix')
  String get tokenSuffix;

  /// API token that registered the device
  @BuiltValueField(wireName: r'tokenId')
  String? get tokenId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'deviceName')
  String? get deviceName;

  @BuiltValueField(wireName: r'appVersion')
  String? get appVersion;

  @BuiltValueField(wireName: r'filters')
  PushFilters? get filters;

  @BuiltValueField(wireName: r'contentLevel')
  PushDeviceContentLevelEnum? get contentLevel;
  // enum contentLevelEnum {  minimal,  short,  };

  @BuiltValueField(wireName: r'lang')
  String? get lang;

  /// 032 never disables a device by itself: dead tokens are deleted. `disabled` is reserved.
  @BuiltValueField(wireName: r'status')
  PushDeviceStatusEnum get status;
  // enum statusEnum {  active,  disabled,  };

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'lastSuccessAt')
  DateTime? get lastSuccessAt;

  @BuiltValueField(wireName: r'lastFailureAt')
  DateTime? get lastFailureAt;

  @BuiltValueField(wireName: r'failureCount')
  int? get failureCount;

  @BuiltValueField(wireName: r'lastStatus')
  int? get lastStatus;

  PushDevice._();

  factory PushDevice([void updates(PushDeviceBuilder b)]) = _$PushDevice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushDeviceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushDevice> get serializer => _$PushDeviceSerializer();
}

class _$PushDeviceSerializer implements PrimitiveSerializer<PushDevice> {
  @override
  final Iterable<Type> types = const [PushDevice, _$PushDevice];

  @override
  final String wireName = r'PushDevice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushDevice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'transport';
    yield serializers.serialize(
      object.transport,
      specifiedType: const FullType(PushDeviceTransportEnum),
    );
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(PushDevicePlatformEnum),
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
        specifiedType: const FullType.nullable(PushDeviceEnvironmentEnum),
      );
    }
    yield r'tokenSuffix';
    yield serializers.serialize(
      object.tokenSuffix,
      specifiedType: const FullType(String),
    );
    if (object.tokenId != null) {
      yield r'tokenId';
      yield serializers.serialize(
        object.tokenId,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deviceName != null) {
      yield r'deviceName';
      yield serializers.serialize(
        object.deviceName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.appVersion != null) {
      yield r'appVersion';
      yield serializers.serialize(
        object.appVersion,
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
        specifiedType: const FullType(PushDeviceContentLevelEnum),
      );
    }
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(PushDeviceStatusEnum),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastSuccessAt != null) {
      yield r'lastSuccessAt';
      yield serializers.serialize(
        object.lastSuccessAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastFailureAt != null) {
      yield r'lastFailureAt';
      yield serializers.serialize(
        object.lastFailureAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.failureCount != null) {
      yield r'failureCount';
      yield serializers.serialize(
        object.failureCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastStatus != null) {
      yield r'lastStatus';
      yield serializers.serialize(
        object.lastStatus,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushDevice object, {
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
    required PushDeviceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'transport':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PushDeviceTransportEnum),
                  )
                  as PushDeviceTransportEnum;
          result.transport = valueDes;
          break;
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PushDevicePlatformEnum),
                  )
                  as PushDevicePlatformEnum;
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
                      PushDeviceEnvironmentEnum,
                    ),
                  )
                  as PushDeviceEnvironmentEnum?;
          if (valueDes == null) continue;
          result.environment = valueDes;
          break;
        case r'tokenSuffix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tokenSuffix = valueDes;
          break;
        case r'tokenId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tokenId = valueDes;
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
        case r'deviceName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.deviceName = valueDes;
          break;
        case r'appVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.appVersion = valueDes;
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
                      PushDeviceContentLevelEnum,
                    ),
                  )
                  as PushDeviceContentLevelEnum?;
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
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PushDeviceStatusEnum),
                  )
                  as PushDeviceStatusEnum;
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
        case r'lastSuccessAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastSuccessAt = valueDes;
          break;
        case r'lastFailureAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastFailureAt = valueDes;
          break;
        case r'failureCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.failureCount = valueDes;
          break;
        case r'lastStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lastStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushDevice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushDeviceBuilder();
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

class PushDeviceTransportEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'apns')
  static const PushDeviceTransportEnum apns = _$pushDeviceTransportEnum_apns;
  @BuiltValueEnumConst(wireName: r'fcm')
  static const PushDeviceTransportEnum fcm = _$pushDeviceTransportEnum_fcm;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushDeviceTransportEnum unknownDefaultOpenApi =
      _$pushDeviceTransportEnum_unknownDefaultOpenApi;

  static Serializer<PushDeviceTransportEnum> get serializer =>
      _$pushDeviceTransportEnumSerializer;

  const PushDeviceTransportEnum._(String name) : super(name);

  static BuiltSet<PushDeviceTransportEnum> get values =>
      _$pushDeviceTransportEnumValues;
  static PushDeviceTransportEnum valueOf(String name) =>
      _$pushDeviceTransportEnumValueOf(name);
}

class PushDevicePlatformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ios')
  static const PushDevicePlatformEnum ios = _$pushDevicePlatformEnum_ios;
  @BuiltValueEnumConst(wireName: r'ipados')
  static const PushDevicePlatformEnum ipados = _$pushDevicePlatformEnum_ipados;
  @BuiltValueEnumConst(wireName: r'macos')
  static const PushDevicePlatformEnum macos = _$pushDevicePlatformEnum_macos;
  @BuiltValueEnumConst(wireName: r'android')
  static const PushDevicePlatformEnum android =
      _$pushDevicePlatformEnum_android;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushDevicePlatformEnum unknownDefaultOpenApi =
      _$pushDevicePlatformEnum_unknownDefaultOpenApi;

  static Serializer<PushDevicePlatformEnum> get serializer =>
      _$pushDevicePlatformEnumSerializer;

  const PushDevicePlatformEnum._(String name) : super(name);

  static BuiltSet<PushDevicePlatformEnum> get values =>
      _$pushDevicePlatformEnumValues;
  static PushDevicePlatformEnum valueOf(String name) =>
      _$pushDevicePlatformEnumValueOf(name);
}

class PushDeviceEnvironmentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sandbox')
  static const PushDeviceEnvironmentEnum sandbox =
      _$pushDeviceEnvironmentEnum_sandbox;
  @BuiltValueEnumConst(wireName: r'production')
  static const PushDeviceEnvironmentEnum production =
      _$pushDeviceEnvironmentEnum_production;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushDeviceEnvironmentEnum unknownDefaultOpenApi =
      _$pushDeviceEnvironmentEnum_unknownDefaultOpenApi;

  static Serializer<PushDeviceEnvironmentEnum> get serializer =>
      _$pushDeviceEnvironmentEnumSerializer;

  const PushDeviceEnvironmentEnum._(String name) : super(name);

  static BuiltSet<PushDeviceEnvironmentEnum> get values =>
      _$pushDeviceEnvironmentEnumValues;
  static PushDeviceEnvironmentEnum valueOf(String name) =>
      _$pushDeviceEnvironmentEnumValueOf(name);
}

class PushDeviceContentLevelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'minimal')
  static const PushDeviceContentLevelEnum minimal =
      _$pushDeviceContentLevelEnum_minimal;
  @BuiltValueEnumConst(wireName: r'short')
  static const PushDeviceContentLevelEnum short =
      _$pushDeviceContentLevelEnum_short;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushDeviceContentLevelEnum unknownDefaultOpenApi =
      _$pushDeviceContentLevelEnum_unknownDefaultOpenApi;

  static Serializer<PushDeviceContentLevelEnum> get serializer =>
      _$pushDeviceContentLevelEnumSerializer;

  const PushDeviceContentLevelEnum._(String name) : super(name);

  static BuiltSet<PushDeviceContentLevelEnum> get values =>
      _$pushDeviceContentLevelEnumValues;
  static PushDeviceContentLevelEnum valueOf(String name) =>
      _$pushDeviceContentLevelEnumValueOf(name);
}

/// 032 never disables a device by itself: dead tokens are deleted. `disabled` is reserved.
class PushDeviceStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const PushDeviceStatusEnum active = _$pushDeviceStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const PushDeviceStatusEnum disabled = _$pushDeviceStatusEnum_disabled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushDeviceStatusEnum unknownDefaultOpenApi =
      _$pushDeviceStatusEnum_unknownDefaultOpenApi;

  static Serializer<PushDeviceStatusEnum> get serializer =>
      _$pushDeviceStatusEnumSerializer;

  const PushDeviceStatusEnum._(String name) : super(name);

  static BuiltSet<PushDeviceStatusEnum> get values =>
      _$pushDeviceStatusEnumValues;
  static PushDeviceStatusEnum valueOf(String name) =>
      _$pushDeviceStatusEnumValueOf(name);
}
