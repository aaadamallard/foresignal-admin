// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_token_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApiTokenInputScopeEnum _$apiTokenInputScopeEnum_read =
    const ApiTokenInputScopeEnum._('read');
const ApiTokenInputScopeEnum _$apiTokenInputScopeEnum_agent =
    const ApiTokenInputScopeEnum._('agent');
const ApiTokenInputScopeEnum _$apiTokenInputScopeEnum_admin =
    const ApiTokenInputScopeEnum._('admin');
const ApiTokenInputScopeEnum _$apiTokenInputScopeEnum_unknownDefaultOpenApi =
    const ApiTokenInputScopeEnum._('unknownDefaultOpenApi');

ApiTokenInputScopeEnum _$apiTokenInputScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$apiTokenInputScopeEnum_read;
    case 'agent':
      return _$apiTokenInputScopeEnum_agent;
    case 'admin':
      return _$apiTokenInputScopeEnum_admin;
    case 'unknownDefaultOpenApi':
      return _$apiTokenInputScopeEnum_unknownDefaultOpenApi;
    default:
      return _$apiTokenInputScopeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ApiTokenInputScopeEnum> _$apiTokenInputScopeEnumValues =
    BuiltSet<ApiTokenInputScopeEnum>(const <ApiTokenInputScopeEnum>[
      _$apiTokenInputScopeEnum_read,
      _$apiTokenInputScopeEnum_agent,
      _$apiTokenInputScopeEnum_admin,
      _$apiTokenInputScopeEnum_unknownDefaultOpenApi,
    ]);

const ApiTokenInputLicencePolicyEnum _$apiTokenInputLicencePolicyEnum_noNc =
    const ApiTokenInputLicencePolicyEnum._('noNc');
const ApiTokenInputLicencePolicyEnum _$apiTokenInputLicencePolicyEnum_noSa =
    const ApiTokenInputLicencePolicyEnum._('noSa');
const ApiTokenInputLicencePolicyEnum
_$apiTokenInputLicencePolicyEnum_redistributable =
    const ApiTokenInputLicencePolicyEnum._('redistributable');
const ApiTokenInputLicencePolicyEnum
_$apiTokenInputLicencePolicyEnum_unknownDefaultOpenApi =
    const ApiTokenInputLicencePolicyEnum._('unknownDefaultOpenApi');

ApiTokenInputLicencePolicyEnum _$apiTokenInputLicencePolicyEnumValueOf(
  String name,
) {
  switch (name) {
    case 'noNc':
      return _$apiTokenInputLicencePolicyEnum_noNc;
    case 'noSa':
      return _$apiTokenInputLicencePolicyEnum_noSa;
    case 'redistributable':
      return _$apiTokenInputLicencePolicyEnum_redistributable;
    case 'unknownDefaultOpenApi':
      return _$apiTokenInputLicencePolicyEnum_unknownDefaultOpenApi;
    default:
      return _$apiTokenInputLicencePolicyEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ApiTokenInputLicencePolicyEnum>
_$apiTokenInputLicencePolicyEnumValues =
    BuiltSet<ApiTokenInputLicencePolicyEnum>(
      const <ApiTokenInputLicencePolicyEnum>[
        _$apiTokenInputLicencePolicyEnum_noNc,
        _$apiTokenInputLicencePolicyEnum_noSa,
        _$apiTokenInputLicencePolicyEnum_redistributable,
        _$apiTokenInputLicencePolicyEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ApiTokenInputScopeEnum> _$apiTokenInputScopeEnumSerializer =
    _$ApiTokenInputScopeEnumSerializer();
Serializer<ApiTokenInputLicencePolicyEnum>
_$apiTokenInputLicencePolicyEnumSerializer =
    _$ApiTokenInputLicencePolicyEnumSerializer();

class _$ApiTokenInputScopeEnumSerializer
    implements PrimitiveSerializer<ApiTokenInputScopeEnum> {
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
  final Iterable<Type> types = const <Type>[ApiTokenInputScopeEnum];
  @override
  final String wireName = 'ApiTokenInputScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ApiTokenInputScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ApiTokenInputScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ApiTokenInputScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ApiTokenInputLicencePolicyEnumSerializer
    implements PrimitiveSerializer<ApiTokenInputLicencePolicyEnum> {
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
  final Iterable<Type> types = const <Type>[ApiTokenInputLicencePolicyEnum];
  @override
  final String wireName = 'ApiTokenInputLicencePolicyEnum';

  @override
  Object serialize(
    Serializers serializers,
    ApiTokenInputLicencePolicyEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ApiTokenInputLicencePolicyEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ApiTokenInputLicencePolicyEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ApiTokenInput extends ApiTokenInput {
  @override
  final String name;
  @override
  final ApiTokenInputScopeEnum scope;
  @override
  final DateTime? expiresAt;
  @override
  final ReadRestriction? restrictions;
  @override
  final String? principalId;
  @override
  final bool? privateAccess;
  @override
  final BuiltList<ApiTokenInputLicencePolicyEnum>? licencePolicy;

  factory _$ApiTokenInput([void Function(ApiTokenInputBuilder)? updates]) =>
      (ApiTokenInputBuilder()..update(updates))._build();

  _$ApiTokenInput._({
    required this.name,
    required this.scope,
    this.expiresAt,
    this.restrictions,
    this.principalId,
    this.privateAccess,
    this.licencePolicy,
  }) : super._();
  @override
  ApiTokenInput rebuild(void Function(ApiTokenInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiTokenInputBuilder toBuilder() => ApiTokenInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiTokenInput &&
        name == other.name &&
        scope == other.scope &&
        expiresAt == other.expiresAt &&
        restrictions == other.restrictions &&
        principalId == other.principalId &&
        privateAccess == other.privateAccess &&
        licencePolicy == other.licencePolicy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, restrictions.hashCode);
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jc(_$hash, privateAccess.hashCode);
    _$hash = $jc(_$hash, licencePolicy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiTokenInput')
          ..add('name', name)
          ..add('scope', scope)
          ..add('expiresAt', expiresAt)
          ..add('restrictions', restrictions)
          ..add('principalId', principalId)
          ..add('privateAccess', privateAccess)
          ..add('licencePolicy', licencePolicy))
        .toString();
  }
}

class ApiTokenInputBuilder
    implements Builder<ApiTokenInput, ApiTokenInputBuilder> {
  _$ApiTokenInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ApiTokenInputScopeEnum? _scope;
  ApiTokenInputScopeEnum? get scope => _$this._scope;
  set scope(ApiTokenInputScopeEnum? scope) => _$this._scope = scope;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ReadRestrictionBuilder? _restrictions;
  ReadRestrictionBuilder get restrictions =>
      _$this._restrictions ??= ReadRestrictionBuilder();
  set restrictions(ReadRestrictionBuilder? restrictions) =>
      _$this._restrictions = restrictions;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  bool? _privateAccess;
  bool? get privateAccess => _$this._privateAccess;
  set privateAccess(bool? privateAccess) =>
      _$this._privateAccess = privateAccess;

  ListBuilder<ApiTokenInputLicencePolicyEnum>? _licencePolicy;
  ListBuilder<ApiTokenInputLicencePolicyEnum> get licencePolicy =>
      _$this._licencePolicy ??= ListBuilder<ApiTokenInputLicencePolicyEnum>();
  set licencePolicy(
    ListBuilder<ApiTokenInputLicencePolicyEnum>? licencePolicy,
  ) => _$this._licencePolicy = licencePolicy;

  ApiTokenInputBuilder() {
    ApiTokenInput._defaults(this);
  }

  ApiTokenInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _scope = $v.scope;
      _expiresAt = $v.expiresAt;
      _restrictions = $v.restrictions?.toBuilder();
      _principalId = $v.principalId;
      _privateAccess = $v.privateAccess;
      _licencePolicy = $v.licencePolicy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiTokenInput other) {
    _$v = other as _$ApiTokenInput;
  }

  @override
  void update(void Function(ApiTokenInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiTokenInput build() => _build();

  _$ApiTokenInput _build() {
    _$ApiTokenInput _$result;
    try {
      _$result =
          _$v ??
          _$ApiTokenInput._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'ApiTokenInput',
              'name',
            ),
            scope: BuiltValueNullFieldError.checkNotNull(
              scope,
              r'ApiTokenInput',
              'scope',
            ),
            expiresAt: expiresAt,
            restrictions: _restrictions?.build(),
            principalId: principalId,
            privateAccess: privateAccess,
            licencePolicy: _licencePolicy?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restrictions';
        _restrictions?.build();

        _$failedField = 'licencePolicy';
        _licencePolicy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ApiTokenInput',
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
