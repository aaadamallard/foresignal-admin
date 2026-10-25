// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PushDeviceTransportEnum _$pushDeviceTransportEnum_apns =
    const PushDeviceTransportEnum._('apns');
const PushDeviceTransportEnum _$pushDeviceTransportEnum_fcm =
    const PushDeviceTransportEnum._('fcm');
const PushDeviceTransportEnum _$pushDeviceTransportEnum_unknownDefaultOpenApi =
    const PushDeviceTransportEnum._('unknownDefaultOpenApi');

PushDeviceTransportEnum _$pushDeviceTransportEnumValueOf(String name) {
  switch (name) {
    case 'apns':
      return _$pushDeviceTransportEnum_apns;
    case 'fcm':
      return _$pushDeviceTransportEnum_fcm;
    case 'unknownDefaultOpenApi':
      return _$pushDeviceTransportEnum_unknownDefaultOpenApi;
    default:
      return _$pushDeviceTransportEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushDeviceTransportEnum> _$pushDeviceTransportEnumValues =
    BuiltSet<PushDeviceTransportEnum>(const <PushDeviceTransportEnum>[
      _$pushDeviceTransportEnum_apns,
      _$pushDeviceTransportEnum_fcm,
      _$pushDeviceTransportEnum_unknownDefaultOpenApi,
    ]);

const PushDevicePlatformEnum _$pushDevicePlatformEnum_ios =
    const PushDevicePlatformEnum._('ios');
const PushDevicePlatformEnum _$pushDevicePlatformEnum_ipados =
    const PushDevicePlatformEnum._('ipados');
const PushDevicePlatformEnum _$pushDevicePlatformEnum_macos =
    const PushDevicePlatformEnum._('macos');
const PushDevicePlatformEnum _$pushDevicePlatformEnum_android =
    const PushDevicePlatformEnum._('android');
const PushDevicePlatformEnum _$pushDevicePlatformEnum_unknownDefaultOpenApi =
    const PushDevicePlatformEnum._('unknownDefaultOpenApi');

PushDevicePlatformEnum _$pushDevicePlatformEnumValueOf(String name) {
  switch (name) {
    case 'ios':
      return _$pushDevicePlatformEnum_ios;
    case 'ipados':
      return _$pushDevicePlatformEnum_ipados;
    case 'macos':
      return _$pushDevicePlatformEnum_macos;
    case 'android':
      return _$pushDevicePlatformEnum_android;
    case 'unknownDefaultOpenApi':
      return _$pushDevicePlatformEnum_unknownDefaultOpenApi;
    default:
      return _$pushDevicePlatformEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushDevicePlatformEnum> _$pushDevicePlatformEnumValues =
    BuiltSet<PushDevicePlatformEnum>(const <PushDevicePlatformEnum>[
      _$pushDevicePlatformEnum_ios,
      _$pushDevicePlatformEnum_ipados,
      _$pushDevicePlatformEnum_macos,
      _$pushDevicePlatformEnum_android,
      _$pushDevicePlatformEnum_unknownDefaultOpenApi,
    ]);

const PushDeviceEnvironmentEnum _$pushDeviceEnvironmentEnum_sandbox =
    const PushDeviceEnvironmentEnum._('sandbox');
const PushDeviceEnvironmentEnum _$pushDeviceEnvironmentEnum_production =
    const PushDeviceEnvironmentEnum._('production');
const PushDeviceEnvironmentEnum
_$pushDeviceEnvironmentEnum_unknownDefaultOpenApi =
    const PushDeviceEnvironmentEnum._('unknownDefaultOpenApi');

PushDeviceEnvironmentEnum _$pushDeviceEnvironmentEnumValueOf(String name) {
  switch (name) {
    case 'sandbox':
      return _$pushDeviceEnvironmentEnum_sandbox;
    case 'production':
      return _$pushDeviceEnvironmentEnum_production;
    case 'unknownDefaultOpenApi':
      return _$pushDeviceEnvironmentEnum_unknownDefaultOpenApi;
    default:
      return _$pushDeviceEnvironmentEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushDeviceEnvironmentEnum> _$pushDeviceEnvironmentEnumValues =
    BuiltSet<PushDeviceEnvironmentEnum>(const <PushDeviceEnvironmentEnum>[
      _$pushDeviceEnvironmentEnum_sandbox,
      _$pushDeviceEnvironmentEnum_production,
      _$pushDeviceEnvironmentEnum_unknownDefaultOpenApi,
    ]);

const PushDeviceContentLevelEnum _$pushDeviceContentLevelEnum_minimal =
    const PushDeviceContentLevelEnum._('minimal');
const PushDeviceContentLevelEnum _$pushDeviceContentLevelEnum_short =
    const PushDeviceContentLevelEnum._('short');
const PushDeviceContentLevelEnum
_$pushDeviceContentLevelEnum_unknownDefaultOpenApi =
    const PushDeviceContentLevelEnum._('unknownDefaultOpenApi');

PushDeviceContentLevelEnum _$pushDeviceContentLevelEnumValueOf(String name) {
  switch (name) {
    case 'minimal':
      return _$pushDeviceContentLevelEnum_minimal;
    case 'short':
      return _$pushDeviceContentLevelEnum_short;
    case 'unknownDefaultOpenApi':
      return _$pushDeviceContentLevelEnum_unknownDefaultOpenApi;
    default:
      return _$pushDeviceContentLevelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushDeviceContentLevelEnum> _$pushDeviceContentLevelEnumValues =
    BuiltSet<PushDeviceContentLevelEnum>(const <PushDeviceContentLevelEnum>[
      _$pushDeviceContentLevelEnum_minimal,
      _$pushDeviceContentLevelEnum_short,
      _$pushDeviceContentLevelEnum_unknownDefaultOpenApi,
    ]);

const PushDeviceStatusEnum _$pushDeviceStatusEnum_active =
    const PushDeviceStatusEnum._('active');
const PushDeviceStatusEnum _$pushDeviceStatusEnum_disabled =
    const PushDeviceStatusEnum._('disabled');
const PushDeviceStatusEnum _$pushDeviceStatusEnum_unknownDefaultOpenApi =
    const PushDeviceStatusEnum._('unknownDefaultOpenApi');

PushDeviceStatusEnum _$pushDeviceStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$pushDeviceStatusEnum_active;
    case 'disabled':
      return _$pushDeviceStatusEnum_disabled;
    case 'unknownDefaultOpenApi':
      return _$pushDeviceStatusEnum_unknownDefaultOpenApi;
    default:
      return _$pushDeviceStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushDeviceStatusEnum> _$pushDeviceStatusEnumValues =
    BuiltSet<PushDeviceStatusEnum>(const <PushDeviceStatusEnum>[
      _$pushDeviceStatusEnum_active,
      _$pushDeviceStatusEnum_disabled,
      _$pushDeviceStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<PushDeviceTransportEnum> _$pushDeviceTransportEnumSerializer =
    _$PushDeviceTransportEnumSerializer();
Serializer<PushDevicePlatformEnum> _$pushDevicePlatformEnumSerializer =
    _$PushDevicePlatformEnumSerializer();
Serializer<PushDeviceEnvironmentEnum> _$pushDeviceEnvironmentEnumSerializer =
    _$PushDeviceEnvironmentEnumSerializer();
Serializer<PushDeviceContentLevelEnum> _$pushDeviceContentLevelEnumSerializer =
    _$PushDeviceContentLevelEnumSerializer();
Serializer<PushDeviceStatusEnum> _$pushDeviceStatusEnumSerializer =
    _$PushDeviceStatusEnumSerializer();

class _$PushDeviceTransportEnumSerializer
    implements PrimitiveSerializer<PushDeviceTransportEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'apns': 'apns',
    'fcm': 'fcm',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'apns': 'apns',
    'fcm': 'fcm',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PushDeviceTransportEnum];
  @override
  final String wireName = 'PushDeviceTransportEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushDeviceTransportEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushDeviceTransportEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushDeviceTransportEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushDevicePlatformEnumSerializer
    implements PrimitiveSerializer<PushDevicePlatformEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ios': 'ios',
    'ipados': 'ipados',
    'macos': 'macos',
    'android': 'android',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ios': 'ios',
    'ipados': 'ipados',
    'macos': 'macos',
    'android': 'android',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PushDevicePlatformEnum];
  @override
  final String wireName = 'PushDevicePlatformEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushDevicePlatformEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushDevicePlatformEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushDevicePlatformEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushDeviceEnvironmentEnumSerializer
    implements PrimitiveSerializer<PushDeviceEnvironmentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sandbox': 'sandbox',
    'production': 'production',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sandbox': 'sandbox',
    'production': 'production',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PushDeviceEnvironmentEnum];
  @override
  final String wireName = 'PushDeviceEnvironmentEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushDeviceEnvironmentEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushDeviceEnvironmentEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushDeviceEnvironmentEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushDeviceContentLevelEnumSerializer
    implements PrimitiveSerializer<PushDeviceContentLevelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'minimal': 'minimal',
    'short': 'short',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'minimal': 'minimal',
    'short': 'short',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PushDeviceContentLevelEnum];
  @override
  final String wireName = 'PushDeviceContentLevelEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushDeviceContentLevelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushDeviceContentLevelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushDeviceContentLevelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushDeviceStatusEnumSerializer
    implements PrimitiveSerializer<PushDeviceStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'disabled': 'disabled',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'disabled': 'disabled',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PushDeviceStatusEnum];
  @override
  final String wireName = 'PushDeviceStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushDeviceStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushDeviceStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushDeviceStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushDevice extends PushDevice {
  @override
  final String id;
  @override
  final PushDeviceTransportEnum transport;
  @override
  final PushDevicePlatformEnum platform;
  @override
  final String appId;
  @override
  final PushDeviceEnvironmentEnum? environment;
  @override
  final String tokenSuffix;
  @override
  final String? tokenId;
  @override
  final String? name;
  @override
  final String? deviceName;
  @override
  final String? appVersion;
  @override
  final PushFilters? filters;
  @override
  final PushDeviceContentLevelEnum? contentLevel;
  @override
  final String? lang;
  @override
  final PushDeviceStatusEnum status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? lastSuccessAt;
  @override
  final DateTime? lastFailureAt;
  @override
  final int? failureCount;
  @override
  final int? lastStatus;

  factory _$PushDevice([void Function(PushDeviceBuilder)? updates]) =>
      (PushDeviceBuilder()..update(updates))._build();

  _$PushDevice._({
    required this.id,
    required this.transport,
    required this.platform,
    required this.appId,
    this.environment,
    required this.tokenSuffix,
    this.tokenId,
    this.name,
    this.deviceName,
    this.appVersion,
    this.filters,
    this.contentLevel,
    this.lang,
    required this.status,
    required this.createdAt,
    this.lastSuccessAt,
    this.lastFailureAt,
    this.failureCount,
    this.lastStatus,
  }) : super._();
  @override
  PushDevice rebuild(void Function(PushDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushDeviceBuilder toBuilder() => PushDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushDevice &&
        id == other.id &&
        transport == other.transport &&
        platform == other.platform &&
        appId == other.appId &&
        environment == other.environment &&
        tokenSuffix == other.tokenSuffix &&
        tokenId == other.tokenId &&
        name == other.name &&
        deviceName == other.deviceName &&
        appVersion == other.appVersion &&
        filters == other.filters &&
        contentLevel == other.contentLevel &&
        lang == other.lang &&
        status == other.status &&
        createdAt == other.createdAt &&
        lastSuccessAt == other.lastSuccessAt &&
        lastFailureAt == other.lastFailureAt &&
        failureCount == other.failureCount &&
        lastStatus == other.lastStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, transport.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, appId.hashCode);
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, tokenSuffix.hashCode);
    _$hash = $jc(_$hash, tokenId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, appVersion.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, contentLevel.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastSuccessAt.hashCode);
    _$hash = $jc(_$hash, lastFailureAt.hashCode);
    _$hash = $jc(_$hash, failureCount.hashCode);
    _$hash = $jc(_$hash, lastStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushDevice')
          ..add('id', id)
          ..add('transport', transport)
          ..add('platform', platform)
          ..add('appId', appId)
          ..add('environment', environment)
          ..add('tokenSuffix', tokenSuffix)
          ..add('tokenId', tokenId)
          ..add('name', name)
          ..add('deviceName', deviceName)
          ..add('appVersion', appVersion)
          ..add('filters', filters)
          ..add('contentLevel', contentLevel)
          ..add('lang', lang)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('lastSuccessAt', lastSuccessAt)
          ..add('lastFailureAt', lastFailureAt)
          ..add('failureCount', failureCount)
          ..add('lastStatus', lastStatus))
        .toString();
  }
}

class PushDeviceBuilder implements Builder<PushDevice, PushDeviceBuilder> {
  _$PushDevice? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  PushDeviceTransportEnum? _transport;
  PushDeviceTransportEnum? get transport => _$this._transport;
  set transport(PushDeviceTransportEnum? transport) =>
      _$this._transport = transport;

  PushDevicePlatformEnum? _platform;
  PushDevicePlatformEnum? get platform => _$this._platform;
  set platform(PushDevicePlatformEnum? platform) => _$this._platform = platform;

  String? _appId;
  String? get appId => _$this._appId;
  set appId(String? appId) => _$this._appId = appId;

  PushDeviceEnvironmentEnum? _environment;
  PushDeviceEnvironmentEnum? get environment => _$this._environment;
  set environment(PushDeviceEnvironmentEnum? environment) =>
      _$this._environment = environment;

  String? _tokenSuffix;
  String? get tokenSuffix => _$this._tokenSuffix;
  set tokenSuffix(String? tokenSuffix) => _$this._tokenSuffix = tokenSuffix;

  String? _tokenId;
  String? get tokenId => _$this._tokenId;
  set tokenId(String? tokenId) => _$this._tokenId = tokenId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  PushFiltersBuilder? _filters;
  PushFiltersBuilder get filters => _$this._filters ??= PushFiltersBuilder();
  set filters(PushFiltersBuilder? filters) => _$this._filters = filters;

  PushDeviceContentLevelEnum? _contentLevel;
  PushDeviceContentLevelEnum? get contentLevel => _$this._contentLevel;
  set contentLevel(PushDeviceContentLevelEnum? contentLevel) =>
      _$this._contentLevel = contentLevel;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  PushDeviceStatusEnum? _status;
  PushDeviceStatusEnum? get status => _$this._status;
  set status(PushDeviceStatusEnum? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _lastSuccessAt;
  DateTime? get lastSuccessAt => _$this._lastSuccessAt;
  set lastSuccessAt(DateTime? lastSuccessAt) =>
      _$this._lastSuccessAt = lastSuccessAt;

  DateTime? _lastFailureAt;
  DateTime? get lastFailureAt => _$this._lastFailureAt;
  set lastFailureAt(DateTime? lastFailureAt) =>
      _$this._lastFailureAt = lastFailureAt;

  int? _failureCount;
  int? get failureCount => _$this._failureCount;
  set failureCount(int? failureCount) => _$this._failureCount = failureCount;

  int? _lastStatus;
  int? get lastStatus => _$this._lastStatus;
  set lastStatus(int? lastStatus) => _$this._lastStatus = lastStatus;

  PushDeviceBuilder() {
    PushDevice._defaults(this);
  }

  PushDeviceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _transport = $v.transport;
      _platform = $v.platform;
      _appId = $v.appId;
      _environment = $v.environment;
      _tokenSuffix = $v.tokenSuffix;
      _tokenId = $v.tokenId;
      _name = $v.name;
      _deviceName = $v.deviceName;
      _appVersion = $v.appVersion;
      _filters = $v.filters?.toBuilder();
      _contentLevel = $v.contentLevel;
      _lang = $v.lang;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _lastSuccessAt = $v.lastSuccessAt;
      _lastFailureAt = $v.lastFailureAt;
      _failureCount = $v.failureCount;
      _lastStatus = $v.lastStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushDevice other) {
    _$v = other as _$PushDevice;
  }

  @override
  void update(void Function(PushDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushDevice build() => _build();

  _$PushDevice _build() {
    _$PushDevice _$result;
    try {
      _$result =
          _$v ??
          _$PushDevice._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'PushDevice', 'id'),
            transport: BuiltValueNullFieldError.checkNotNull(
              transport,
              r'PushDevice',
              'transport',
            ),
            platform: BuiltValueNullFieldError.checkNotNull(
              platform,
              r'PushDevice',
              'platform',
            ),
            appId: BuiltValueNullFieldError.checkNotNull(
              appId,
              r'PushDevice',
              'appId',
            ),
            environment: environment,
            tokenSuffix: BuiltValueNullFieldError.checkNotNull(
              tokenSuffix,
              r'PushDevice',
              'tokenSuffix',
            ),
            tokenId: tokenId,
            name: name,
            deviceName: deviceName,
            appVersion: appVersion,
            filters: _filters?.build(),
            contentLevel: contentLevel,
            lang: lang,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'PushDevice',
              'status',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'PushDevice',
              'createdAt',
            ),
            lastSuccessAt: lastSuccessAt,
            lastFailureAt: lastFailureAt,
            failureCount: failureCount,
            lastStatus: lastStatus,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PushDevice',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
