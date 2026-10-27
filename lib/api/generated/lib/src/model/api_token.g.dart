// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApiTokenScopeEnum _$apiTokenScopeEnum_read = const ApiTokenScopeEnum._(
  'read',
);
const ApiTokenScopeEnum _$apiTokenScopeEnum_agent = const ApiTokenScopeEnum._(
  'agent',
);
const ApiTokenScopeEnum _$apiTokenScopeEnum_admin = const ApiTokenScopeEnum._(
  'admin',
);
const ApiTokenScopeEnum _$apiTokenScopeEnum_unknownDefaultOpenApi =
    const ApiTokenScopeEnum._('unknownDefaultOpenApi');

ApiTokenScopeEnum _$apiTokenScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$apiTokenScopeEnum_read;
    case 'agent':
      return _$apiTokenScopeEnum_agent;
    case 'admin':
      return _$apiTokenScopeEnum_admin;
    case 'unknownDefaultOpenApi':
      return _$apiTokenScopeEnum_unknownDefaultOpenApi;
    default:
      return _$apiTokenScopeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ApiTokenScopeEnum> _$apiTokenScopeEnumValues =
    BuiltSet<ApiTokenScopeEnum>(const <ApiTokenScopeEnum>[
      _$apiTokenScopeEnum_read,
      _$apiTokenScopeEnum_agent,
      _$apiTokenScopeEnum_admin,
      _$apiTokenScopeEnum_unknownDefaultOpenApi,
    ]);

const ApiTokenCreatedViaEnum _$apiTokenCreatedViaEnum_api =
    const ApiTokenCreatedViaEnum._('api');
const ApiTokenCreatedViaEnum _$apiTokenCreatedViaEnum_pairing =
    const ApiTokenCreatedViaEnum._('pairing');
const ApiTokenCreatedViaEnum _$apiTokenCreatedViaEnum_bootstrap =
    const ApiTokenCreatedViaEnum._('bootstrap');
const ApiTokenCreatedViaEnum _$apiTokenCreatedViaEnum_self =
    const ApiTokenCreatedViaEnum._('self');
const ApiTokenCreatedViaEnum _$apiTokenCreatedViaEnum_unknownDefaultOpenApi =
    const ApiTokenCreatedViaEnum._('unknownDefaultOpenApi');

ApiTokenCreatedViaEnum _$apiTokenCreatedViaEnumValueOf(String name) {
  switch (name) {
    case 'api':
      return _$apiTokenCreatedViaEnum_api;
    case 'pairing':
      return _$apiTokenCreatedViaEnum_pairing;
    case 'bootstrap':
      return _$apiTokenCreatedViaEnum_bootstrap;
    case 'self':
      return _$apiTokenCreatedViaEnum_self;
    case 'unknownDefaultOpenApi':
      return _$apiTokenCreatedViaEnum_unknownDefaultOpenApi;
    default:
      return _$apiTokenCreatedViaEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ApiTokenCreatedViaEnum> _$apiTokenCreatedViaEnumValues =
    BuiltSet<ApiTokenCreatedViaEnum>(const <ApiTokenCreatedViaEnum>[
      _$apiTokenCreatedViaEnum_api,
      _$apiTokenCreatedViaEnum_pairing,
      _$apiTokenCreatedViaEnum_bootstrap,
      _$apiTokenCreatedViaEnum_self,
      _$apiTokenCreatedViaEnum_unknownDefaultOpenApi,
    ]);

const ApiTokenLicencePolicyEnum _$apiTokenLicencePolicyEnum_noNc =
    const ApiTokenLicencePolicyEnum._('noNc');
const ApiTokenLicencePolicyEnum _$apiTokenLicencePolicyEnum_noSa =
    const ApiTokenLicencePolicyEnum._('noSa');
const ApiTokenLicencePolicyEnum _$apiTokenLicencePolicyEnum_redistributable =
    const ApiTokenLicencePolicyEnum._('redistributable');
const ApiTokenLicencePolicyEnum
_$apiTokenLicencePolicyEnum_unknownDefaultOpenApi =
    const ApiTokenLicencePolicyEnum._('unknownDefaultOpenApi');

ApiTokenLicencePolicyEnum _$apiTokenLicencePolicyEnumValueOf(String name) {
  switch (name) {
    case 'noNc':
      return _$apiTokenLicencePolicyEnum_noNc;
    case 'noSa':
      return _$apiTokenLicencePolicyEnum_noSa;
    case 'redistributable':
      return _$apiTokenLicencePolicyEnum_redistributable;
    case 'unknownDefaultOpenApi':
      return _$apiTokenLicencePolicyEnum_unknownDefaultOpenApi;
    default:
      return _$apiTokenLicencePolicyEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ApiTokenLicencePolicyEnum> _$apiTokenLicencePolicyEnumValues =
    BuiltSet<ApiTokenLicencePolicyEnum>(const <ApiTokenLicencePolicyEnum>[
      _$apiTokenLicencePolicyEnum_noNc,
      _$apiTokenLicencePolicyEnum_noSa,
      _$apiTokenLicencePolicyEnum_redistributable,
      _$apiTokenLicencePolicyEnum_unknownDefaultOpenApi,
    ]);

Serializer<ApiTokenScopeEnum> _$apiTokenScopeEnumSerializer =
    _$ApiTokenScopeEnumSerializer();
Serializer<ApiTokenCreatedViaEnum> _$apiTokenCreatedViaEnumSerializer =
    _$ApiTokenCreatedViaEnumSerializer();
Serializer<ApiTokenLicencePolicyEnum> _$apiTokenLicencePolicyEnumSerializer =
    _$ApiTokenLicencePolicyEnumSerializer();

class _$ApiTokenScopeEnumSerializer
    implements PrimitiveSerializer<ApiTokenScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ApiTokenScopeEnum];
  @override
  final String wireName = 'ApiTokenScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ApiTokenScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ApiTokenScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ApiTokenScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ApiTokenCreatedViaEnumSerializer
    implements PrimitiveSerializer<ApiTokenCreatedViaEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'api': 'api',
    'pairing': 'pairing',
    'bootstrap': 'bootstrap',
    'self': 'self',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'api': 'api',
    'pairing': 'pairing',
    'bootstrap': 'bootstrap',
    'self': 'self',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ApiTokenCreatedViaEnum];
  @override
  final String wireName = 'ApiTokenCreatedViaEnum';

  @override
  Object serialize(
    Serializers serializers,
    ApiTokenCreatedViaEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ApiTokenCreatedViaEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ApiTokenCreatedViaEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ApiTokenLicencePolicyEnumSerializer
    implements PrimitiveSerializer<ApiTokenLicencePolicyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'noNc': 'no-nc',
    'noSa': 'no-sa',
    'redistributable': 'redistributable',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'no-nc': 'noNc',
    'no-sa': 'noSa',
    'redistributable': 'redistributable',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ApiTokenLicencePolicyEnum];
  @override
  final String wireName = 'ApiTokenLicencePolicyEnum';

  @override
  Object serialize(
    Serializers serializers,
    ApiTokenLicencePolicyEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ApiTokenLicencePolicyEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ApiTokenLicencePolicyEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ApiToken extends ApiToken {
  @override
  final String id;
  @override
  final String name;
  @override
  final ApiTokenScopeEnum scope;
  @override
  final String tokenPrefix;
  @override
  final DateTime createdAt;
  @override
  final DateTime? lastUsedAt;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? revokedAt;
  @override
  final bool? bootstrap;
  @override
  final ReadRestriction? restrictions;
  @override
  final DeviceInfo? device;
  @override
  final ApiTokenCreatedViaEnum? createdVia;
  @override
  final String? principalId;
  @override
  final bool? privateAccess;
  @override
  final BuiltList<ApiTokenLicencePolicyEnum>? licencePolicy;
  @override
  final String? principalHandle;

  factory _$ApiToken([void Function(ApiTokenBuilder)? updates]) =>
      (ApiTokenBuilder()..update(updates))._build();

  _$ApiToken._({
    required this.id,
    required this.name,
    required this.scope,
    required this.tokenPrefix,
    required this.createdAt,
    this.lastUsedAt,
    this.expiresAt,
    this.revokedAt,
    this.bootstrap,
    this.restrictions,
    this.device,
    this.createdVia,
    this.principalId,
    this.privateAccess,
    this.licencePolicy,
    this.principalHandle,
  }) : super._();
  @override
  ApiToken rebuild(void Function(ApiTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiTokenBuilder toBuilder() => ApiTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiToken &&
        id == other.id &&
        name == other.name &&
        scope == other.scope &&
        tokenPrefix == other.tokenPrefix &&
        createdAt == other.createdAt &&
        lastUsedAt == other.lastUsedAt &&
        expiresAt == other.expiresAt &&
        revokedAt == other.revokedAt &&
        bootstrap == other.bootstrap &&
        restrictions == other.restrictions &&
        device == other.device &&
        createdVia == other.createdVia &&
        principalId == other.principalId &&
        privateAccess == other.privateAccess &&
        licencePolicy == other.licencePolicy &&
        principalHandle == other.principalHandle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, tokenPrefix.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastUsedAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, revokedAt.hashCode);
    _$hash = $jc(_$hash, bootstrap.hashCode);
    _$hash = $jc(_$hash, restrictions.hashCode);
    _$hash = $jc(_$hash, device.hashCode);
    _$hash = $jc(_$hash, createdVia.hashCode);
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jc(_$hash, privateAccess.hashCode);
    _$hash = $jc(_$hash, licencePolicy.hashCode);
    _$hash = $jc(_$hash, principalHandle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiToken')
          ..add('id', id)
          ..add('name', name)
          ..add('scope', scope)
          ..add('tokenPrefix', tokenPrefix)
          ..add('createdAt', createdAt)
          ..add('lastUsedAt', lastUsedAt)
          ..add('expiresAt', expiresAt)
          ..add('revokedAt', revokedAt)
          ..add('bootstrap', bootstrap)
          ..add('restrictions', restrictions)
          ..add('device', device)
          ..add('createdVia', createdVia)
          ..add('principalId', principalId)
          ..add('privateAccess', privateAccess)
          ..add('licencePolicy', licencePolicy)
          ..add('principalHandle', principalHandle))
        .toString();
  }
}

class ApiTokenBuilder implements Builder<ApiToken, ApiTokenBuilder> {
  _$ApiToken? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ApiTokenScopeEnum? _scope;
  ApiTokenScopeEnum? get scope => _$this._scope;
  set scope(ApiTokenScopeEnum? scope) => _$this._scope = scope;

  String? _tokenPrefix;
  String? get tokenPrefix => _$this._tokenPrefix;
  set tokenPrefix(String? tokenPrefix) => _$this._tokenPrefix = tokenPrefix;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _lastUsedAt;
  DateTime? get lastUsedAt => _$this._lastUsedAt;
  set lastUsedAt(DateTime? lastUsedAt) => _$this._lastUsedAt = lastUsedAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  DateTime? _revokedAt;
  DateTime? get revokedAt => _$this._revokedAt;
  set revokedAt(DateTime? revokedAt) => _$this._revokedAt = revokedAt;

  bool? _bootstrap;
  bool? get bootstrap => _$this._bootstrap;
  set bootstrap(bool? bootstrap) => _$this._bootstrap = bootstrap;

  ReadRestrictionBuilder? _restrictions;
  ReadRestrictionBuilder get restrictions =>
      _$this._restrictions ??= ReadRestrictionBuilder();
  set restrictions(ReadRestrictionBuilder? restrictions) =>
      _$this._restrictions = restrictions;

  DeviceInfoBuilder? _device;
  DeviceInfoBuilder get device => _$this._device ??= DeviceInfoBuilder();
  set device(DeviceInfoBuilder? device) => _$this._device = device;

  ApiTokenCreatedViaEnum? _createdVia;
  ApiTokenCreatedViaEnum? get createdVia => _$this._createdVia;
  set createdVia(ApiTokenCreatedViaEnum? createdVia) =>
      _$this._createdVia = createdVia;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  bool? _privateAccess;
  bool? get privateAccess => _$this._privateAccess;
  set privateAccess(bool? privateAccess) =>
      _$this._privateAccess = privateAccess;

  ListBuilder<ApiTokenLicencePolicyEnum>? _licencePolicy;
  ListBuilder<ApiTokenLicencePolicyEnum> get licencePolicy =>
      _$this._licencePolicy ??= ListBuilder<ApiTokenLicencePolicyEnum>();
  set licencePolicy(ListBuilder<ApiTokenLicencePolicyEnum>? licencePolicy) =>
      _$this._licencePolicy = licencePolicy;

  String? _principalHandle;
  String? get principalHandle => _$this._principalHandle;
  set principalHandle(String? principalHandle) =>
      _$this._principalHandle = principalHandle;

  ApiTokenBuilder() {
    ApiToken._defaults(this);
  }

  ApiTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _scope = $v.scope;
      _tokenPrefix = $v.tokenPrefix;
      _createdAt = $v.createdAt;
      _lastUsedAt = $v.lastUsedAt;
      _expiresAt = $v.expiresAt;
      _revokedAt = $v.revokedAt;
      _bootstrap = $v.bootstrap;
      _restrictions = $v.restrictions?.toBuilder();
      _device = $v.device?.toBuilder();
      _createdVia = $v.createdVia;
      _principalId = $v.principalId;
      _privateAccess = $v.privateAccess;
      _licencePolicy = $v.licencePolicy?.toBuilder();
      _principalHandle = $v.principalHandle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiToken other) {
    _$v = other as _$ApiToken;
  }

  @override
  void update(void Function(ApiTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiToken build() => _build();

  _$ApiToken _build() {
    _$ApiToken _$result;
    try {
      _$result =
          _$v ??
          _$ApiToken._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'ApiToken', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'ApiToken',
              'name',
            ),
            scope: BuiltValueNullFieldError.checkNotNull(
              scope,
              r'ApiToken',
              'scope',
            ),
            tokenPrefix: BuiltValueNullFieldError.checkNotNull(
              tokenPrefix,
              r'ApiToken',
              'tokenPrefix',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'ApiToken',
              'createdAt',
            ),
            lastUsedAt: lastUsedAt,
            expiresAt: expiresAt,
            revokedAt: revokedAt,
            bootstrap: bootstrap,
            restrictions: _restrictions?.build(),
            device: _device?.build(),
            createdVia: createdVia,
            principalId: principalId,
            privateAccess: privateAccess,
            licencePolicy: _licencePolicy?.build(),
            principalHandle: principalHandle,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restrictions';
        _restrictions?.build();
        _$failedField = 'device';
        _device?.build();

        _$failedField = 'licencePolicy';
        _licencePolicy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ApiToken',
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
