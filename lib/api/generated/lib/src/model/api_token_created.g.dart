// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_token_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApiTokenCreatedScopeEnum _$apiTokenCreatedScopeEnum_read =
    const ApiTokenCreatedScopeEnum._('read');
const ApiTokenCreatedScopeEnum _$apiTokenCreatedScopeEnum_agent =
    const ApiTokenCreatedScopeEnum._('agent');
const ApiTokenCreatedScopeEnum _$apiTokenCreatedScopeEnum_admin =
    const ApiTokenCreatedScopeEnum._('admin');
const ApiTokenCreatedScopeEnum
_$apiTokenCreatedScopeEnum_unknownDefaultOpenApi =
    const ApiTokenCreatedScopeEnum._('unknownDefaultOpenApi');

ApiTokenCreatedScopeEnum _$apiTokenCreatedScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$apiTokenCreatedScopeEnum_read;
    case 'agent':
      return _$apiTokenCreatedScopeEnum_agent;
    case 'admin':
      return _$apiTokenCreatedScopeEnum_admin;
    case 'unknownDefaultOpenApi':
      return _$apiTokenCreatedScopeEnum_unknownDefaultOpenApi;
    default:
      return _$apiTokenCreatedScopeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ApiTokenCreatedScopeEnum> _$apiTokenCreatedScopeEnumValues =
    BuiltSet<ApiTokenCreatedScopeEnum>(const <ApiTokenCreatedScopeEnum>[
      _$apiTokenCreatedScopeEnum_read,
      _$apiTokenCreatedScopeEnum_agent,
      _$apiTokenCreatedScopeEnum_admin,
      _$apiTokenCreatedScopeEnum_unknownDefaultOpenApi,
    ]);

const ApiTokenCreatedCreatedViaEnum _$apiTokenCreatedCreatedViaEnum_api =
    const ApiTokenCreatedCreatedViaEnum._('api');
const ApiTokenCreatedCreatedViaEnum _$apiTokenCreatedCreatedViaEnum_pairing =
    const ApiTokenCreatedCreatedViaEnum._('pairing');
const ApiTokenCreatedCreatedViaEnum _$apiTokenCreatedCreatedViaEnum_bootstrap =
    const ApiTokenCreatedCreatedViaEnum._('bootstrap');
const ApiTokenCreatedCreatedViaEnum _$apiTokenCreatedCreatedViaEnum_self =
    const ApiTokenCreatedCreatedViaEnum._('self');
const ApiTokenCreatedCreatedViaEnum
_$apiTokenCreatedCreatedViaEnum_unknownDefaultOpenApi =
    const ApiTokenCreatedCreatedViaEnum._('unknownDefaultOpenApi');

ApiTokenCreatedCreatedViaEnum _$apiTokenCreatedCreatedViaEnumValueOf(
  String name,
) {
  switch (name) {
    case 'api':
      return _$apiTokenCreatedCreatedViaEnum_api;
    case 'pairing':
      return _$apiTokenCreatedCreatedViaEnum_pairing;
    case 'bootstrap':
      return _$apiTokenCreatedCreatedViaEnum_bootstrap;
    case 'self':
      return _$apiTokenCreatedCreatedViaEnum_self;
    case 'unknownDefaultOpenApi':
      return _$apiTokenCreatedCreatedViaEnum_unknownDefaultOpenApi;
    default:
      return _$apiTokenCreatedCreatedViaEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ApiTokenCreatedCreatedViaEnum>
_$apiTokenCreatedCreatedViaEnumValues = BuiltSet<ApiTokenCreatedCreatedViaEnum>(
  const <ApiTokenCreatedCreatedViaEnum>[
    _$apiTokenCreatedCreatedViaEnum_api,
    _$apiTokenCreatedCreatedViaEnum_pairing,
    _$apiTokenCreatedCreatedViaEnum_bootstrap,
    _$apiTokenCreatedCreatedViaEnum_self,
    _$apiTokenCreatedCreatedViaEnum_unknownDefaultOpenApi,
  ],
);

const ApiTokenCreatedLicencePolicyEnum _$apiTokenCreatedLicencePolicyEnum_noNc =
    const ApiTokenCreatedLicencePolicyEnum._('noNc');
const ApiTokenCreatedLicencePolicyEnum _$apiTokenCreatedLicencePolicyEnum_noSa =
    const ApiTokenCreatedLicencePolicyEnum._('noSa');
const ApiTokenCreatedLicencePolicyEnum
_$apiTokenCreatedLicencePolicyEnum_redistributable =
    const ApiTokenCreatedLicencePolicyEnum._('redistributable');
const ApiTokenCreatedLicencePolicyEnum
_$apiTokenCreatedLicencePolicyEnum_unknownDefaultOpenApi =
    const ApiTokenCreatedLicencePolicyEnum._('unknownDefaultOpenApi');

ApiTokenCreatedLicencePolicyEnum _$apiTokenCreatedLicencePolicyEnumValueOf(
  String name,
) {
  switch (name) {
    case 'noNc':
      return _$apiTokenCreatedLicencePolicyEnum_noNc;
    case 'noSa':
      return _$apiTokenCreatedLicencePolicyEnum_noSa;
    case 'redistributable':
      return _$apiTokenCreatedLicencePolicyEnum_redistributable;
    case 'unknownDefaultOpenApi':
      return _$apiTokenCreatedLicencePolicyEnum_unknownDefaultOpenApi;
    default:
      return _$apiTokenCreatedLicencePolicyEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ApiTokenCreatedLicencePolicyEnum>
_$apiTokenCreatedLicencePolicyEnumValues =
    BuiltSet<ApiTokenCreatedLicencePolicyEnum>(
      const <ApiTokenCreatedLicencePolicyEnum>[
        _$apiTokenCreatedLicencePolicyEnum_noNc,
        _$apiTokenCreatedLicencePolicyEnum_noSa,
        _$apiTokenCreatedLicencePolicyEnum_redistributable,
        _$apiTokenCreatedLicencePolicyEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ApiTokenCreatedScopeEnum> _$apiTokenCreatedScopeEnumSerializer =
    _$ApiTokenCreatedScopeEnumSerializer();
Serializer<ApiTokenCreatedCreatedViaEnum>
_$apiTokenCreatedCreatedViaEnumSerializer =
    _$ApiTokenCreatedCreatedViaEnumSerializer();
Serializer<ApiTokenCreatedLicencePolicyEnum>
_$apiTokenCreatedLicencePolicyEnumSerializer =
    _$ApiTokenCreatedLicencePolicyEnumSerializer();

class _$ApiTokenCreatedScopeEnumSerializer
    implements PrimitiveSerializer<ApiTokenCreatedScopeEnum> {
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
  final Iterable<Type> types = const <Type>[ApiTokenCreatedScopeEnum];
  @override
  final String wireName = 'ApiTokenCreatedScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ApiTokenCreatedScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ApiTokenCreatedScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ApiTokenCreatedScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ApiTokenCreatedCreatedViaEnumSerializer
    implements PrimitiveSerializer<ApiTokenCreatedCreatedViaEnum> {
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
  final Iterable<Type> types = const <Type>[ApiTokenCreatedCreatedViaEnum];
  @override
  final String wireName = 'ApiTokenCreatedCreatedViaEnum';

  @override
  Object serialize(
    Serializers serializers,
    ApiTokenCreatedCreatedViaEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ApiTokenCreatedCreatedViaEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ApiTokenCreatedCreatedViaEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ApiTokenCreatedLicencePolicyEnumSerializer
    implements PrimitiveSerializer<ApiTokenCreatedLicencePolicyEnum> {
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
  final Iterable<Type> types = const <Type>[ApiTokenCreatedLicencePolicyEnum];
  @override
  final String wireName = 'ApiTokenCreatedLicencePolicyEnum';

  @override
  Object serialize(
    Serializers serializers,
    ApiTokenCreatedLicencePolicyEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ApiTokenCreatedLicencePolicyEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ApiTokenCreatedLicencePolicyEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ApiTokenCreated extends ApiTokenCreated {
  @override
  final String id;
  @override
  final String name;
  @override
  final ApiTokenCreatedScopeEnum scope;
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
  final ApiTokenCreatedCreatedViaEnum? createdVia;
  @override
  final String? principalId;
  @override
  final bool? privateAccess;
  @override
  final BuiltList<ApiTokenCreatedLicencePolicyEnum>? licencePolicy;
  @override
  final String? principalHandle;
  @override
  final String token;

  factory _$ApiTokenCreated([void Function(ApiTokenCreatedBuilder)? updates]) =>
      (ApiTokenCreatedBuilder()..update(updates))._build();

  _$ApiTokenCreated._({
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
    required this.token,
  }) : super._();
  @override
  ApiTokenCreated rebuild(void Function(ApiTokenCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiTokenCreatedBuilder toBuilder() => ApiTokenCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiTokenCreated &&
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
        principalHandle == other.principalHandle &&
        token == other.token;
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
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiTokenCreated')
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
          ..add('principalHandle', principalHandle)
          ..add('token', token))
        .toString();
  }
}

class ApiTokenCreatedBuilder
    implements Builder<ApiTokenCreated, ApiTokenCreatedBuilder> {
  _$ApiTokenCreated? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ApiTokenCreatedScopeEnum? _scope;
  ApiTokenCreatedScopeEnum? get scope => _$this._scope;
  set scope(ApiTokenCreatedScopeEnum? scope) => _$this._scope = scope;

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

  ApiTokenCreatedCreatedViaEnum? _createdVia;
  ApiTokenCreatedCreatedViaEnum? get createdVia => _$this._createdVia;
  set createdVia(ApiTokenCreatedCreatedViaEnum? createdVia) =>
      _$this._createdVia = createdVia;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  bool? _privateAccess;
  bool? get privateAccess => _$this._privateAccess;
  set privateAccess(bool? privateAccess) =>
      _$this._privateAccess = privateAccess;

  ListBuilder<ApiTokenCreatedLicencePolicyEnum>? _licencePolicy;
  ListBuilder<ApiTokenCreatedLicencePolicyEnum> get licencePolicy =>
      _$this._licencePolicy ??= ListBuilder<ApiTokenCreatedLicencePolicyEnum>();
  set licencePolicy(
    ListBuilder<ApiTokenCreatedLicencePolicyEnum>? licencePolicy,
  ) => _$this._licencePolicy = licencePolicy;

  String? _principalHandle;
  String? get principalHandle => _$this._principalHandle;
  set principalHandle(String? principalHandle) =>
      _$this._principalHandle = principalHandle;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  ApiTokenCreatedBuilder() {
    ApiTokenCreated._defaults(this);
  }

  ApiTokenCreatedBuilder get _$this {
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
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiTokenCreated other) {
    _$v = other as _$ApiTokenCreated;
  }

  @override
  void update(void Function(ApiTokenCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiTokenCreated build() => _build();

  _$ApiTokenCreated _build() {
    _$ApiTokenCreated _$result;
    try {
      _$result =
          _$v ??
          _$ApiTokenCreated._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'ApiTokenCreated',
              'id',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'ApiTokenCreated',
              'name',
            ),
            scope: BuiltValueNullFieldError.checkNotNull(
              scope,
              r'ApiTokenCreated',
              'scope',
            ),
            tokenPrefix: BuiltValueNullFieldError.checkNotNull(
              tokenPrefix,
              r'ApiTokenCreated',
              'tokenPrefix',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'ApiTokenCreated',
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
            token: BuiltValueNullFieldError.checkNotNull(
              token,
              r'ApiTokenCreated',
              'token',
            ),
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
          r'ApiTokenCreated',
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
