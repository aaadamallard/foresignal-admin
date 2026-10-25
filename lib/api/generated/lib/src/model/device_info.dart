//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_info.g.dart';

/// Device metadata a client app reports for its own token (023)
///
/// Properties:
/// * [deviceName]
/// * [platform]
/// * [appVersion]
/// * [reportedAt]
@BuiltValue()
abstract class DeviceInfo implements Built<DeviceInfo, DeviceInfoBuilder> {
  @BuiltValueField(wireName: r'deviceName')
  String get deviceName;

  @BuiltValueField(wireName: r'platform')
  DeviceInfoPlatformEnum get platform;
  // enum platformEnum {  ios,  android,  macos,  windows,  linux,  web,  other,  };

  @BuiltValueField(wireName: r'appVersion')
  String? get appVersion;

  @BuiltValueField(wireName: r'reportedAt')
  DateTime? get reportedAt;

  DeviceInfo._();

  factory DeviceInfo([void updates(DeviceInfoBuilder b)]) = _$DeviceInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceInfo> get serializer => _$DeviceInfoSerializer();
}

class _$DeviceInfoSerializer implements PrimitiveSerializer<DeviceInfo> {
  @override
  final Iterable<Type> types = const [DeviceInfo, _$DeviceInfo];

  @override
  final String wireName = r'DeviceInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'deviceName';
    yield serializers.serialize(
      object.deviceName,
      specifiedType: const FullType(String),
    );
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(DeviceInfoPlatformEnum),
    );
    if (object.appVersion != null) {
      yield r'appVersion';
      yield serializers.serialize(
        object.appVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reportedAt != null) {
      yield r'reportedAt';
      yield serializers.serialize(
        object.reportedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceInfo object, {
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
    required DeviceInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deviceName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.deviceName = valueDes;
          break;
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DeviceInfoPlatformEnum),
                  )
                  as DeviceInfoPlatformEnum;
          result.platform = valueDes;
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
        case r'reportedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.reportedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceInfoBuilder();
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

class DeviceInfoPlatformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ios')
  static const DeviceInfoPlatformEnum ios = _$deviceInfoPlatformEnum_ios;
  @BuiltValueEnumConst(wireName: r'android')
  static const DeviceInfoPlatformEnum android =
      _$deviceInfoPlatformEnum_android;
  @BuiltValueEnumConst(wireName: r'macos')
  static const DeviceInfoPlatformEnum macos = _$deviceInfoPlatformEnum_macos;
  @BuiltValueEnumConst(wireName: r'windows')
  static const DeviceInfoPlatformEnum windows =
      _$deviceInfoPlatformEnum_windows;
  @BuiltValueEnumConst(wireName: r'linux')
  static const DeviceInfoPlatformEnum linux = _$deviceInfoPlatformEnum_linux;
  @BuiltValueEnumConst(wireName: r'web')
  static const DeviceInfoPlatformEnum web = _$deviceInfoPlatformEnum_web;
  @BuiltValueEnumConst(wireName: r'other')
  static const DeviceInfoPlatformEnum other = _$deviceInfoPlatformEnum_other;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DeviceInfoPlatformEnum unknownDefaultOpenApi =
      _$deviceInfoPlatformEnum_unknownDefaultOpenApi;

  static Serializer<DeviceInfoPlatformEnum> get serializer =>
      _$deviceInfoPlatformEnumSerializer;

  const DeviceInfoPlatformEnum._(String name) : super(name);

  static BuiltSet<DeviceInfoPlatformEnum> get values =>
      _$deviceInfoPlatformEnumValues;
  static DeviceInfoPlatformEnum valueOf(String name) =>
      _$deviceInfoPlatformEnumValueOf(name);
}
