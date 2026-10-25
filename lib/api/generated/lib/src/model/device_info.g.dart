// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeviceInfoPlatformEnum _$deviceInfoPlatformEnum_ios =
    const DeviceInfoPlatformEnum._('ios');
const DeviceInfoPlatformEnum _$deviceInfoPlatformEnum_android =
    const DeviceInfoPlatformEnum._('android');
const DeviceInfoPlatformEnum _$deviceInfoPlatformEnum_macos =
    const DeviceInfoPlatformEnum._('macos');
const DeviceInfoPlatformEnum _$deviceInfoPlatformEnum_windows =
    const DeviceInfoPlatformEnum._('windows');
const DeviceInfoPlatformEnum _$deviceInfoPlatformEnum_linux =
    const DeviceInfoPlatformEnum._('linux');
const DeviceInfoPlatformEnum _$deviceInfoPlatformEnum_web =
    const DeviceInfoPlatformEnum._('web');
const DeviceInfoPlatformEnum _$deviceInfoPlatformEnum_other =
    const DeviceInfoPlatformEnum._('other');
const DeviceInfoPlatformEnum _$deviceInfoPlatformEnum_unknownDefaultOpenApi =
    const DeviceInfoPlatformEnum._('unknownDefaultOpenApi');

DeviceInfoPlatformEnum _$deviceInfoPlatformEnumValueOf(String name) {
  switch (name) {
    case 'ios':
      return _$deviceInfoPlatformEnum_ios;
    case 'android':
      return _$deviceInfoPlatformEnum_android;
    case 'macos':
      return _$deviceInfoPlatformEnum_macos;
    case 'windows':
      return _$deviceInfoPlatformEnum_windows;
    case 'linux':
      return _$deviceInfoPlatformEnum_linux;
    case 'web':
      return _$deviceInfoPlatformEnum_web;
    case 'other':
      return _$deviceInfoPlatformEnum_other;
    case 'unknownDefaultOpenApi':
      return _$deviceInfoPlatformEnum_unknownDefaultOpenApi;
    default:
      return _$deviceInfoPlatformEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DeviceInfoPlatformEnum> _$deviceInfoPlatformEnumValues =
    BuiltSet<DeviceInfoPlatformEnum>(const <DeviceInfoPlatformEnum>[
      _$deviceInfoPlatformEnum_ios,
      _$deviceInfoPlatformEnum_android,
      _$deviceInfoPlatformEnum_macos,
      _$deviceInfoPlatformEnum_windows,
      _$deviceInfoPlatformEnum_linux,
      _$deviceInfoPlatformEnum_web,
      _$deviceInfoPlatformEnum_other,
      _$deviceInfoPlatformEnum_unknownDefaultOpenApi,
    ]);

Serializer<DeviceInfoPlatformEnum> _$deviceInfoPlatformEnumSerializer =
    _$DeviceInfoPlatformEnumSerializer();

class _$DeviceInfoPlatformEnumSerializer
    implements PrimitiveSerializer<DeviceInfoPlatformEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ios': 'ios',
    'android': 'android',
    'macos': 'macos',
    'windows': 'windows',
    'linux': 'linux',
    'web': 'web',
    'other': 'other',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ios': 'ios',
    'android': 'android',
    'macos': 'macos',
    'windows': 'windows',
    'linux': 'linux',
    'web': 'web',
    'other': 'other',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DeviceInfoPlatformEnum];
  @override
  final String wireName = 'DeviceInfoPlatformEnum';

  @override
  Object serialize(
    Serializers serializers,
    DeviceInfoPlatformEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeviceInfoPlatformEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeviceInfoPlatformEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DeviceInfo extends DeviceInfo {
  @override
  final String deviceName;
  @override
  final DeviceInfoPlatformEnum platform;
  @override
  final String? appVersion;
  @override
  final DateTime? reportedAt;

  factory _$DeviceInfo([void Function(DeviceInfoBuilder)? updates]) =>
      (DeviceInfoBuilder()..update(updates))._build();

  _$DeviceInfo._({
    required this.deviceName,
    required this.platform,
    this.appVersion,
    this.reportedAt,
  }) : super._();
  @override
  DeviceInfo rebuild(void Function(DeviceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceInfoBuilder toBuilder() => DeviceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceInfo &&
        deviceName == other.deviceName &&
        platform == other.platform &&
        appVersion == other.appVersion &&
        reportedAt == other.reportedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, appVersion.hashCode);
    _$hash = $jc(_$hash, reportedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceInfo')
          ..add('deviceName', deviceName)
          ..add('platform', platform)
          ..add('appVersion', appVersion)
          ..add('reportedAt', reportedAt))
        .toString();
  }
}

class DeviceInfoBuilder implements Builder<DeviceInfo, DeviceInfoBuilder> {
  _$DeviceInfo? _$v;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  DeviceInfoPlatformEnum? _platform;
  DeviceInfoPlatformEnum? get platform => _$this._platform;
  set platform(DeviceInfoPlatformEnum? platform) => _$this._platform = platform;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  DateTime? _reportedAt;
  DateTime? get reportedAt => _$this._reportedAt;
  set reportedAt(DateTime? reportedAt) => _$this._reportedAt = reportedAt;

  DeviceInfoBuilder() {
    DeviceInfo._defaults(this);
  }

  DeviceInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceName = $v.deviceName;
      _platform = $v.platform;
      _appVersion = $v.appVersion;
      _reportedAt = $v.reportedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceInfo other) {
    _$v = other as _$DeviceInfo;
  }

  @override
  void update(void Function(DeviceInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceInfo build() => _build();

  _$DeviceInfo _build() {
    final _$result =
        _$v ??
        _$DeviceInfo._(
          deviceName: BuiltValueNullFieldError.checkNotNull(
            deviceName,
            r'DeviceInfo',
            'deviceName',
          ),
          platform: BuiltValueNullFieldError.checkNotNull(
            platform,
            r'DeviceInfo',
            'platform',
          ),
          appVersion: appVersion,
          reportedAt: reportedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
