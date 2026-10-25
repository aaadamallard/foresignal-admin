// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_device_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PushDeviceInputTransportEnum _$pushDeviceInputTransportEnum_apns =
    const PushDeviceInputTransportEnum._('apns');
const PushDeviceInputTransportEnum _$pushDeviceInputTransportEnum_fcm =
    const PushDeviceInputTransportEnum._('fcm');
const PushDeviceInputTransportEnum
_$pushDeviceInputTransportEnum_unknownDefaultOpenApi =
    const PushDeviceInputTransportEnum._('unknownDefaultOpenApi');

PushDeviceInputTransportEnum _$pushDeviceInputTransportEnumValueOf(
  String name,
) {
  switch (name) {
    case 'apns':
      return _$pushDeviceInputTransportEnum_apns;
    case 'fcm':
      return _$pushDeviceInputTransportEnum_fcm;
    case 'unknownDefaultOpenApi':
      return _$pushDeviceInputTransportEnum_unknownDefaultOpenApi;
    default:
      return _$pushDeviceInputTransportEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushDeviceInputTransportEnum>
_$pushDeviceInputTransportEnumValues =
    BuiltSet<PushDeviceInputTransportEnum>(const <PushDeviceInputTransportEnum>[
      _$pushDeviceInputTransportEnum_apns,
      _$pushDeviceInputTransportEnum_fcm,
      _$pushDeviceInputTransportEnum_unknownDefaultOpenApi,
    ]);

const PushDeviceInputPlatformEnum _$pushDeviceInputPlatformEnum_ios =
    const PushDeviceInputPlatformEnum._('ios');
const PushDeviceInputPlatformEnum _$pushDeviceInputPlatformEnum_ipados =
    const PushDeviceInputPlatformEnum._('ipados');
const PushDeviceInputPlatformEnum _$pushDeviceInputPlatformEnum_macos =
    const PushDeviceInputPlatformEnum._('macos');
const PushDeviceInputPlatformEnum _$pushDeviceInputPlatformEnum_android =
    const PushDeviceInputPlatformEnum._('android');
const PushDeviceInputPlatformEnum
_$pushDeviceInputPlatformEnum_unknownDefaultOpenApi =
    const PushDeviceInputPlatformEnum._('unknownDefaultOpenApi');

PushDeviceInputPlatformEnum _$pushDeviceInputPlatformEnumValueOf(String name) {
  switch (name) {
    case 'ios':
      return _$pushDeviceInputPlatformEnum_ios;
    case 'ipados':
      return _$pushDeviceInputPlatformEnum_ipados;
    case 'macos':
      return _$pushDeviceInputPlatformEnum_macos;
    case 'android':
      return _$pushDeviceInputPlatformEnum_android;
    case 'unknownDefaultOpenApi':
      return _$pushDeviceInputPlatformEnum_unknownDefaultOpenApi;
    default:
      return _$pushDeviceInputPlatformEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushDeviceInputPlatformEnum>
_$pushDeviceInputPlatformEnumValues =
    BuiltSet<PushDeviceInputPlatformEnum>(const <PushDeviceInputPlatformEnum>[
      _$pushDeviceInputPlatformEnum_ios,
      _$pushDeviceInputPlatformEnum_ipados,
      _$pushDeviceInputPlatformEnum_macos,
      _$pushDeviceInputPlatformEnum_android,
      _$pushDeviceInputPlatformEnum_unknownDefaultOpenApi,
    ]);

const PushDeviceInputEnvironmentEnum _$pushDeviceInputEnvironmentEnum_sandbox =
    const PushDeviceInputEnvironmentEnum._('sandbox');
const PushDeviceInputEnvironmentEnum
_$pushDeviceInputEnvironmentEnum_production =
    const PushDeviceInputEnvironmentEnum._('production');
const PushDeviceInputEnvironmentEnum
_$pushDeviceInputEnvironmentEnum_unknownDefaultOpenApi =
    const PushDeviceInputEnvironmentEnum._('unknownDefaultOpenApi');

PushDeviceInputEnvironmentEnum _$pushDeviceInputEnvironmentEnumValueOf(
  String name,
) {
  switch (name) {
    case 'sandbox':
      return _$pushDeviceInputEnvironmentEnum_sandbox;
    case 'production':
      return _$pushDeviceInputEnvironmentEnum_production;
    case 'unknownDefaultOpenApi':
      return _$pushDeviceInputEnvironmentEnum_unknownDefaultOpenApi;
    default:
      return _$pushDeviceInputEnvironmentEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushDeviceInputEnvironmentEnum>
_$pushDeviceInputEnvironmentEnumValues =
    BuiltSet<PushDeviceInputEnvironmentEnum>(
      const <PushDeviceInputEnvironmentEnum>[
        _$pushDeviceInputEnvironmentEnum_sandbox,
        _$pushDeviceInputEnvironmentEnum_production,
        _$pushDeviceInputEnvironmentEnum_unknownDefaultOpenApi,
      ],
    );

const PushDeviceInputContentLevelEnum
_$pushDeviceInputContentLevelEnum_minimal =
    const PushDeviceInputContentLevelEnum._('minimal');
const PushDeviceInputContentLevelEnum _$pushDeviceInputContentLevelEnum_short =
    const PushDeviceInputContentLevelEnum._('short');
const PushDeviceInputContentLevelEnum
_$pushDeviceInputContentLevelEnum_unknownDefaultOpenApi =
    const PushDeviceInputContentLevelEnum._('unknownDefaultOpenApi');

PushDeviceInputContentLevelEnum _$pushDeviceInputContentLevelEnumValueOf(
  String name,
) {
  switch (name) {
    case 'minimal':
      return _$pushDeviceInputContentLevelEnum_minimal;
    case 'short':
      return _$pushDeviceInputContentLevelEnum_short;
    case 'unknownDefaultOpenApi':
      return _$pushDeviceInputContentLevelEnum_unknownDefaultOpenApi;
    default:
      return _$pushDeviceInputContentLevelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushDeviceInputContentLevelEnum>
_$pushDeviceInputContentLevelEnumValues =
    BuiltSet<PushDeviceInputContentLevelEnum>(
      const <PushDeviceInputContentLevelEnum>[
        _$pushDeviceInputContentLevelEnum_minimal,
        _$pushDeviceInputContentLevelEnum_short,
        _$pushDeviceInputContentLevelEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<PushDeviceInputTransportEnum>
_$pushDeviceInputTransportEnumSerializer =
    _$PushDeviceInputTransportEnumSerializer();
Serializer<PushDeviceInputPlatformEnum>
_$pushDeviceInputPlatformEnumSerializer =
    _$PushDeviceInputPlatformEnumSerializer();
Serializer<PushDeviceInputEnvironmentEnum>
_$pushDeviceInputEnvironmentEnumSerializer =
    _$PushDeviceInputEnvironmentEnumSerializer();
Serializer<PushDeviceInputContentLevelEnum>
_$pushDeviceInputContentLevelEnumSerializer =
    _$PushDeviceInputContentLevelEnumSerializer();

class _$PushDeviceInputTransportEnumSerializer
    implements PrimitiveSerializer<PushDeviceInputTransportEnum> {
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
  final Iterable<Type> types = const <Type>[PushDeviceInputTransportEnum];
  @override
  final String wireName = 'PushDeviceInputTransportEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushDeviceInputTransportEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushDeviceInputTransportEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushDeviceInputTransportEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushDeviceInputPlatformEnumSerializer
    implements PrimitiveSerializer<PushDeviceInputPlatformEnum> {
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
  final Iterable<Type> types = const <Type>[PushDeviceInputPlatformEnum];
  @override
  final String wireName = 'PushDeviceInputPlatformEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushDeviceInputPlatformEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushDeviceInputPlatformEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushDeviceInputPlatformEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushDeviceInputEnvironmentEnumSerializer
    implements PrimitiveSerializer<PushDeviceInputEnvironmentEnum> {
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
  final Iterable<Type> types = const <Type>[PushDeviceInputEnvironmentEnum];
  @override
  final String wireName = 'PushDeviceInputEnvironmentEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushDeviceInputEnvironmentEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushDeviceInputEnvironmentEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushDeviceInputEnvironmentEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushDeviceInputContentLevelEnumSerializer
    implements PrimitiveSerializer<PushDeviceInputContentLevelEnum> {
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
  final Iterable<Type> types = const <Type>[PushDeviceInputContentLevelEnum];
  @override
  final String wireName = 'PushDeviceInputContentLevelEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushDeviceInputContentLevelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushDeviceInputContentLevelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushDeviceInputContentLevelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushDeviceInput extends PushDeviceInput {
  @override
  final PushDeviceInputTransportEnum transport;
  @override
  final PushDeviceInputPlatformEnum platform;
  @override
  final String appId;
  @override
  final PushDeviceInputEnvironmentEnum? environment;
  @override
  final String token;
  @override
  final String? name;
  @override
  final PushFilters? filters;
  @override
  final PushDeviceInputContentLevelEnum? contentLevel;
  @override
  final String? lang;

  factory _$PushDeviceInput([void Function(PushDeviceInputBuilder)? updates]) =>
      (PushDeviceInputBuilder()..update(updates))._build();

  _$PushDeviceInput._({
    required this.transport,
    required this.platform,
    required this.appId,
    this.environment,
    required this.token,
    this.name,
    this.filters,
    this.contentLevel,
    this.lang,
  }) : super._();
  @override
  PushDeviceInput rebuild(void Function(PushDeviceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushDeviceInputBuilder toBuilder() => PushDeviceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushDeviceInput &&
        transport == other.transport &&
        platform == other.platform &&
        appId == other.appId &&
        environment == other.environment &&
        token == other.token &&
        name == other.name &&
        filters == other.filters &&
        contentLevel == other.contentLevel &&
        lang == other.lang;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transport.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, appId.hashCode);
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, contentLevel.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushDeviceInput')
          ..add('transport', transport)
          ..add('platform', platform)
          ..add('appId', appId)
          ..add('environment', environment)
          ..add('token', token)
          ..add('name', name)
          ..add('filters', filters)
          ..add('contentLevel', contentLevel)
          ..add('lang', lang))
        .toString();
  }
}

class PushDeviceInputBuilder
    implements Builder<PushDeviceInput, PushDeviceInputBuilder> {
  _$PushDeviceInput? _$v;

  PushDeviceInputTransportEnum? _transport;
  PushDeviceInputTransportEnum? get transport => _$this._transport;
  set transport(PushDeviceInputTransportEnum? transport) =>
      _$this._transport = transport;

  PushDeviceInputPlatformEnum? _platform;
  PushDeviceInputPlatformEnum? get platform => _$this._platform;
  set platform(PushDeviceInputPlatformEnum? platform) =>
      _$this._platform = platform;

  String? _appId;
  String? get appId => _$this._appId;
  set appId(String? appId) => _$this._appId = appId;

  PushDeviceInputEnvironmentEnum? _environment;
  PushDeviceInputEnvironmentEnum? get environment => _$this._environment;
  set environment(PushDeviceInputEnvironmentEnum? environment) =>
      _$this._environment = environment;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PushFiltersBuilder? _filters;
  PushFiltersBuilder get filters => _$this._filters ??= PushFiltersBuilder();
  set filters(PushFiltersBuilder? filters) => _$this._filters = filters;

  PushDeviceInputContentLevelEnum? _contentLevel;
  PushDeviceInputContentLevelEnum? get contentLevel => _$this._contentLevel;
  set contentLevel(PushDeviceInputContentLevelEnum? contentLevel) =>
      _$this._contentLevel = contentLevel;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  PushDeviceInputBuilder() {
    PushDeviceInput._defaults(this);
  }

  PushDeviceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transport = $v.transport;
      _platform = $v.platform;
      _appId = $v.appId;
      _environment = $v.environment;
      _token = $v.token;
      _name = $v.name;
      _filters = $v.filters?.toBuilder();
      _contentLevel = $v.contentLevel;
      _lang = $v.lang;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushDeviceInput other) {
    _$v = other as _$PushDeviceInput;
  }

  @override
  void update(void Function(PushDeviceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushDeviceInput build() => _build();

  _$PushDeviceInput _build() {
    _$PushDeviceInput _$result;
    try {
      _$result =
          _$v ??
          _$PushDeviceInput._(
            transport: BuiltValueNullFieldError.checkNotNull(
              transport,
              r'PushDeviceInput',
              'transport',
            ),
            platform: BuiltValueNullFieldError.checkNotNull(
              platform,
              r'PushDeviceInput',
              'platform',
            ),
            appId: BuiltValueNullFieldError.checkNotNull(
              appId,
              r'PushDeviceInput',
              'appId',
            ),
            environment: environment,
            token: BuiltValueNullFieldError.checkNotNull(
              token,
              r'PushDeviceInput',
              'token',
            ),
            name: name,
            filters: _filters?.build(),
            contentLevel: contentLevel,
            lang: lang,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PushDeviceInput',
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
