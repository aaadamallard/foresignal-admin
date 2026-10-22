// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mcp_auth_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const McpAuthSettingsModeEnum _$mcpAuthSettingsModeEnum_token =
    const McpAuthSettingsModeEnum._('token');
const McpAuthSettingsModeEnum _$mcpAuthSettingsModeEnum_oauth =
    const McpAuthSettingsModeEnum._('oauth');
const McpAuthSettingsModeEnum _$mcpAuthSettingsModeEnum_both =
    const McpAuthSettingsModeEnum._('both');

McpAuthSettingsModeEnum _$mcpAuthSettingsModeEnumValueOf(String name) {
  switch (name) {
    case 'token':
      return _$mcpAuthSettingsModeEnum_token;
    case 'oauth':
      return _$mcpAuthSettingsModeEnum_oauth;
    case 'both':
      return _$mcpAuthSettingsModeEnum_both;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<McpAuthSettingsModeEnum> _$mcpAuthSettingsModeEnumValues =
    BuiltSet<McpAuthSettingsModeEnum>(const <McpAuthSettingsModeEnum>[
      _$mcpAuthSettingsModeEnum_token,
      _$mcpAuthSettingsModeEnum_oauth,
      _$mcpAuthSettingsModeEnum_both,
    ]);

const McpAuthSettingsScopeMapEnum _$mcpAuthSettingsScopeMapEnum_read =
    const McpAuthSettingsScopeMapEnum._('read');
const McpAuthSettingsScopeMapEnum _$mcpAuthSettingsScopeMapEnum_agent =
    const McpAuthSettingsScopeMapEnum._('agent');

McpAuthSettingsScopeMapEnum _$mcpAuthSettingsScopeMapEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$mcpAuthSettingsScopeMapEnum_read;
    case 'agent':
      return _$mcpAuthSettingsScopeMapEnum_agent;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<McpAuthSettingsScopeMapEnum>
_$mcpAuthSettingsScopeMapEnumValues = BuiltSet<McpAuthSettingsScopeMapEnum>(
  const <McpAuthSettingsScopeMapEnum>[
    _$mcpAuthSettingsScopeMapEnum_read,
    _$mcpAuthSettingsScopeMapEnum_agent,
  ],
);

const McpAuthSettingsScopeClaimEnum _$mcpAuthSettingsScopeClaimEnum_scope =
    const McpAuthSettingsScopeClaimEnum._('scope');
const McpAuthSettingsScopeClaimEnum _$mcpAuthSettingsScopeClaimEnum_scp =
    const McpAuthSettingsScopeClaimEnum._('scp');

McpAuthSettingsScopeClaimEnum _$mcpAuthSettingsScopeClaimEnumValueOf(
  String name,
) {
  switch (name) {
    case 'scope':
      return _$mcpAuthSettingsScopeClaimEnum_scope;
    case 'scp':
      return _$mcpAuthSettingsScopeClaimEnum_scp;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<McpAuthSettingsScopeClaimEnum>
_$mcpAuthSettingsScopeClaimEnumValues = BuiltSet<McpAuthSettingsScopeClaimEnum>(
  const <McpAuthSettingsScopeClaimEnum>[
    _$mcpAuthSettingsScopeClaimEnum_scope,
    _$mcpAuthSettingsScopeClaimEnum_scp,
  ],
);

const McpAuthSettingsAllowedAlgsEnum _$mcpAuthSettingsAllowedAlgsEnum_RS256 =
    const McpAuthSettingsAllowedAlgsEnum._('RS256');
const McpAuthSettingsAllowedAlgsEnum _$mcpAuthSettingsAllowedAlgsEnum_ES256 =
    const McpAuthSettingsAllowedAlgsEnum._('ES256');
const McpAuthSettingsAllowedAlgsEnum _$mcpAuthSettingsAllowedAlgsEnum_edDSA =
    const McpAuthSettingsAllowedAlgsEnum._('edDSA');
const McpAuthSettingsAllowedAlgsEnum _$mcpAuthSettingsAllowedAlgsEnum_ed25519 =
    const McpAuthSettingsAllowedAlgsEnum._('ed25519');

McpAuthSettingsAllowedAlgsEnum _$mcpAuthSettingsAllowedAlgsEnumValueOf(
  String name,
) {
  switch (name) {
    case 'RS256':
      return _$mcpAuthSettingsAllowedAlgsEnum_RS256;
    case 'ES256':
      return _$mcpAuthSettingsAllowedAlgsEnum_ES256;
    case 'edDSA':
      return _$mcpAuthSettingsAllowedAlgsEnum_edDSA;
    case 'ed25519':
      return _$mcpAuthSettingsAllowedAlgsEnum_ed25519;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<McpAuthSettingsAllowedAlgsEnum>
_$mcpAuthSettingsAllowedAlgsEnumValues =
    BuiltSet<McpAuthSettingsAllowedAlgsEnum>(
      const <McpAuthSettingsAllowedAlgsEnum>[
        _$mcpAuthSettingsAllowedAlgsEnum_RS256,
        _$mcpAuthSettingsAllowedAlgsEnum_ES256,
        _$mcpAuthSettingsAllowedAlgsEnum_edDSA,
        _$mcpAuthSettingsAllowedAlgsEnum_ed25519,
      ],
    );

Serializer<McpAuthSettingsModeEnum> _$mcpAuthSettingsModeEnumSerializer =
    _$McpAuthSettingsModeEnumSerializer();
Serializer<McpAuthSettingsScopeMapEnum>
_$mcpAuthSettingsScopeMapEnumSerializer =
    _$McpAuthSettingsScopeMapEnumSerializer();
Serializer<McpAuthSettingsScopeClaimEnum>
_$mcpAuthSettingsScopeClaimEnumSerializer =
    _$McpAuthSettingsScopeClaimEnumSerializer();
Serializer<McpAuthSettingsAllowedAlgsEnum>
_$mcpAuthSettingsAllowedAlgsEnumSerializer =
    _$McpAuthSettingsAllowedAlgsEnumSerializer();

class _$McpAuthSettingsModeEnumSerializer
    implements PrimitiveSerializer<McpAuthSettingsModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'token': 'token',
    'oauth': 'oauth',
    'both': 'both',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'token': 'token',
    'oauth': 'oauth',
    'both': 'both',
  };

  @override
  final Iterable<Type> types = const <Type>[McpAuthSettingsModeEnum];
  @override
  final String wireName = 'McpAuthSettingsModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    McpAuthSettingsModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  McpAuthSettingsModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => McpAuthSettingsModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$McpAuthSettingsScopeMapEnumSerializer
    implements PrimitiveSerializer<McpAuthSettingsScopeMapEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'agent': 'agent',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'agent': 'agent',
  };

  @override
  final Iterable<Type> types = const <Type>[McpAuthSettingsScopeMapEnum];
  @override
  final String wireName = 'McpAuthSettingsScopeMapEnum';

  @override
  Object serialize(
    Serializers serializers,
    McpAuthSettingsScopeMapEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  McpAuthSettingsScopeMapEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => McpAuthSettingsScopeMapEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$McpAuthSettingsScopeClaimEnumSerializer
    implements PrimitiveSerializer<McpAuthSettingsScopeClaimEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'scope': 'scope',
    'scp': 'scp',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'scope': 'scope',
    'scp': 'scp',
  };

  @override
  final Iterable<Type> types = const <Type>[McpAuthSettingsScopeClaimEnum];
  @override
  final String wireName = 'McpAuthSettingsScopeClaimEnum';

  @override
  Object serialize(
    Serializers serializers,
    McpAuthSettingsScopeClaimEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  McpAuthSettingsScopeClaimEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => McpAuthSettingsScopeClaimEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$McpAuthSettingsAllowedAlgsEnumSerializer
    implements PrimitiveSerializer<McpAuthSettingsAllowedAlgsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'RS256': 'RS256',
    'ES256': 'ES256',
    'edDSA': 'EdDSA',
    'ed25519': 'Ed25519',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RS256': 'RS256',
    'ES256': 'ES256',
    'EdDSA': 'edDSA',
    'Ed25519': 'ed25519',
  };

  @override
  final Iterable<Type> types = const <Type>[McpAuthSettingsAllowedAlgsEnum];
  @override
  final String wireName = 'McpAuthSettingsAllowedAlgsEnum';

  @override
  Object serialize(
    Serializers serializers,
    McpAuthSettingsAllowedAlgsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  McpAuthSettingsAllowedAlgsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => McpAuthSettingsAllowedAlgsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$McpAuthSettings extends McpAuthSettings {
  @override
  final McpAuthSettingsModeEnum mode;
  @override
  final String? issuer;
  @override
  final String? audience;
  @override
  final String? jwksUri;
  @override
  final BuiltMap<String, McpAuthSettingsScopeMapEnum>? scopeMap;
  @override
  final McpAuthSettingsScopeClaimEnum? scopeClaim;
  @override
  final BuiltList<McpAuthSettingsAllowedAlgsEnum>? allowedAlgs;

  factory _$McpAuthSettings([void Function(McpAuthSettingsBuilder)? updates]) =>
      (McpAuthSettingsBuilder()..update(updates))._build();

  _$McpAuthSettings._({
    required this.mode,
    this.issuer,
    this.audience,
    this.jwksUri,
    this.scopeMap,
    this.scopeClaim,
    this.allowedAlgs,
  }) : super._();
  @override
  McpAuthSettings rebuild(void Function(McpAuthSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  McpAuthSettingsBuilder toBuilder() => McpAuthSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is McpAuthSettings &&
        mode == other.mode &&
        issuer == other.issuer &&
        audience == other.audience &&
        jwksUri == other.jwksUri &&
        scopeMap == other.scopeMap &&
        scopeClaim == other.scopeClaim &&
        allowedAlgs == other.allowedAlgs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, issuer.hashCode);
    _$hash = $jc(_$hash, audience.hashCode);
    _$hash = $jc(_$hash, jwksUri.hashCode);
    _$hash = $jc(_$hash, scopeMap.hashCode);
    _$hash = $jc(_$hash, scopeClaim.hashCode);
    _$hash = $jc(_$hash, allowedAlgs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'McpAuthSettings')
          ..add('mode', mode)
          ..add('issuer', issuer)
          ..add('audience', audience)
          ..add('jwksUri', jwksUri)
          ..add('scopeMap', scopeMap)
          ..add('scopeClaim', scopeClaim)
          ..add('allowedAlgs', allowedAlgs))
        .toString();
  }
}

class McpAuthSettingsBuilder
    implements Builder<McpAuthSettings, McpAuthSettingsBuilder> {
  _$McpAuthSettings? _$v;

  McpAuthSettingsModeEnum? _mode;
  McpAuthSettingsModeEnum? get mode => _$this._mode;
  set mode(McpAuthSettingsModeEnum? mode) => _$this._mode = mode;

  String? _issuer;
  String? get issuer => _$this._issuer;
  set issuer(String? issuer) => _$this._issuer = issuer;

  String? _audience;
  String? get audience => _$this._audience;
  set audience(String? audience) => _$this._audience = audience;

  String? _jwksUri;
  String? get jwksUri => _$this._jwksUri;
  set jwksUri(String? jwksUri) => _$this._jwksUri = jwksUri;

  MapBuilder<String, McpAuthSettingsScopeMapEnum>? _scopeMap;
  MapBuilder<String, McpAuthSettingsScopeMapEnum> get scopeMap =>
      _$this._scopeMap ??= MapBuilder<String, McpAuthSettingsScopeMapEnum>();
  set scopeMap(MapBuilder<String, McpAuthSettingsScopeMapEnum>? scopeMap) =>
      _$this._scopeMap = scopeMap;

  McpAuthSettingsScopeClaimEnum? _scopeClaim;
  McpAuthSettingsScopeClaimEnum? get scopeClaim => _$this._scopeClaim;
  set scopeClaim(McpAuthSettingsScopeClaimEnum? scopeClaim) =>
      _$this._scopeClaim = scopeClaim;

  ListBuilder<McpAuthSettingsAllowedAlgsEnum>? _allowedAlgs;
  ListBuilder<McpAuthSettingsAllowedAlgsEnum> get allowedAlgs =>
      _$this._allowedAlgs ??= ListBuilder<McpAuthSettingsAllowedAlgsEnum>();
  set allowedAlgs(ListBuilder<McpAuthSettingsAllowedAlgsEnum>? allowedAlgs) =>
      _$this._allowedAlgs = allowedAlgs;

  McpAuthSettingsBuilder() {
    McpAuthSettings._defaults(this);
  }

  McpAuthSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _issuer = $v.issuer;
      _audience = $v.audience;
      _jwksUri = $v.jwksUri;
      _scopeMap = $v.scopeMap?.toBuilder();
      _scopeClaim = $v.scopeClaim;
      _allowedAlgs = $v.allowedAlgs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(McpAuthSettings other) {
    _$v = other as _$McpAuthSettings;
  }

  @override
  void update(void Function(McpAuthSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  McpAuthSettings build() => _build();

  _$McpAuthSettings _build() {
    _$McpAuthSettings _$result;
    try {
      _$result =
          _$v ??
          _$McpAuthSettings._(
            mode: BuiltValueNullFieldError.checkNotNull(
              mode,
              r'McpAuthSettings',
              'mode',
            ),
            issuer: issuer,
            audience: audience,
            jwksUri: jwksUri,
            scopeMap: _scopeMap?.build(),
            scopeClaim: scopeClaim,
            allowedAlgs: _allowedAlgs?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scopeMap';
        _scopeMap?.build();

        _$failedField = 'allowedAlgs';
        _allowedAlgs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'McpAuthSettings',
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
