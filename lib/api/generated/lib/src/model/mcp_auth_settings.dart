//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mcp_auth_settings.g.dart';

/// Settings `mcp.auth`: remote MCP authorization delegated to the operator's identity provider (no built-in authorization server, no device grant)
///
/// Properties:
/// * [mode] - `token`: Foresignal tokens only (open reads apply as on REST). `oauth`: identity-provider access tokens only. `both`: either. With `oauth` or `both`, `/mcp` always needs a credential
/// * [issuer] - Issuer identifier, compared exactly with the token's `iss`; required with `oauth` or `both`
/// * [audience] - Default `{publicBaseUrl}/mcp` (RFC 8707)
/// * [jwksUri] - Optional; else RFC 8414 then OIDC discovery from the issuer through the 035 URL policy
/// * [scopeMap] - IdP scope → Foresignal scope; `admin` is never mappable
/// * [scopeClaim] - Claim carrying the scopes; a space-separated string or an array of strings is read from either claim
/// * [allowedAlgs] - Accepted JWS algorithms; `none` and HMAC algorithms are never accepted
@BuiltValue()
abstract class McpAuthSettings
    implements Built<McpAuthSettings, McpAuthSettingsBuilder> {
  /// `token`: Foresignal tokens only (open reads apply as on REST). `oauth`: identity-provider access tokens only. `both`: either. With `oauth` or `both`, `/mcp` always needs a credential
  @BuiltValueField(wireName: r'mode')
  McpAuthSettingsModeEnum get mode;
  // enum modeEnum {  token,  oauth,  both,  };

  /// Issuer identifier, compared exactly with the token's `iss`; required with `oauth` or `both`
  @BuiltValueField(wireName: r'issuer')
  String? get issuer;

  /// Default `{publicBaseUrl}/mcp` (RFC 8707)
  @BuiltValueField(wireName: r'audience')
  String? get audience;

  /// Optional; else RFC 8414 then OIDC discovery from the issuer through the 035 URL policy
  @BuiltValueField(wireName: r'jwksUri')
  String? get jwksUri;

  /// IdP scope → Foresignal scope; `admin` is never mappable
  @BuiltValueField(wireName: r'scopeMap')
  BuiltMap<String, McpAuthSettingsScopeMapEnum>? get scopeMap;
  // enum scopeMapEnum {  read,  agent,  };

  /// Claim carrying the scopes; a space-separated string or an array of strings is read from either claim
  @BuiltValueField(wireName: r'scopeClaim')
  McpAuthSettingsScopeClaimEnum? get scopeClaim;
  // enum scopeClaimEnum {  scope,  scp,  };

  /// Accepted JWS algorithms; `none` and HMAC algorithms are never accepted
  @BuiltValueField(wireName: r'allowedAlgs')
  BuiltList<McpAuthSettingsAllowedAlgsEnum>? get allowedAlgs;
  // enum allowedAlgsEnum {  RS256,  ES256,  EdDSA,  Ed25519,  };

  McpAuthSettings._();

  factory McpAuthSettings([void updates(McpAuthSettingsBuilder b)]) =
      _$McpAuthSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(McpAuthSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<McpAuthSettings> get serializer =>
      _$McpAuthSettingsSerializer();
}

class _$McpAuthSettingsSerializer
    implements PrimitiveSerializer<McpAuthSettings> {
  @override
  final Iterable<Type> types = const [McpAuthSettings, _$McpAuthSettings];

  @override
  final String wireName = r'McpAuthSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    McpAuthSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(McpAuthSettingsModeEnum),
    );
    if (object.issuer != null) {
      yield r'issuer';
      yield serializers.serialize(
        object.issuer,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.audience != null) {
      yield r'audience';
      yield serializers.serialize(
        object.audience,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.jwksUri != null) {
      yield r'jwksUri';
      yield serializers.serialize(
        object.jwksUri,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.scopeMap != null) {
      yield r'scopeMap';
      yield serializers.serialize(
        object.scopeMap,
        specifiedType: const FullType(BuiltMap,
            [FullType(String), FullType(McpAuthSettingsScopeMapEnum)]),
      );
    }
    if (object.scopeClaim != null) {
      yield r'scopeClaim';
      yield serializers.serialize(
        object.scopeClaim,
        specifiedType: const FullType(McpAuthSettingsScopeClaimEnum),
      );
    }
    if (object.allowedAlgs != null) {
      yield r'allowedAlgs';
      yield serializers.serialize(
        object.allowedAlgs,
        specifiedType: const FullType(
            BuiltList, [FullType(McpAuthSettingsAllowedAlgsEnum)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    McpAuthSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required McpAuthSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(McpAuthSettingsModeEnum),
          ) as McpAuthSettingsModeEnum;
          result.mode = valueDes;
          break;
        case r'issuer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.issuer = valueDes;
          break;
        case r'audience':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.audience = valueDes;
          break;
        case r'jwksUri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.jwksUri = valueDes;
          break;
        case r'scopeMap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap,
                [FullType(String), FullType(McpAuthSettingsScopeMapEnum)]),
          ) as BuiltMap<String, McpAuthSettingsScopeMapEnum>?;
          if (valueDes == null) continue;
          result.scopeMap.replace(valueDes);
          break;
        case r'scopeClaim':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(McpAuthSettingsScopeClaimEnum),
          ) as McpAuthSettingsScopeClaimEnum?;
          if (valueDes == null) continue;
          result.scopeClaim = valueDes;
          break;
        case r'allowedAlgs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(McpAuthSettingsAllowedAlgsEnum)]),
          ) as BuiltList<McpAuthSettingsAllowedAlgsEnum>?;
          if (valueDes == null) continue;
          result.allowedAlgs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  McpAuthSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = McpAuthSettingsBuilder();
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

/// `token`: Foresignal tokens only (open reads apply as on REST). `oauth`: identity-provider access tokens only. `both`: either. With `oauth` or `both`, `/mcp` always needs a credential
class McpAuthSettingsModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'token')
  static const McpAuthSettingsModeEnum token = _$mcpAuthSettingsModeEnum_token;
  @BuiltValueEnumConst(wireName: r'oauth')
  static const McpAuthSettingsModeEnum oauth = _$mcpAuthSettingsModeEnum_oauth;
  @BuiltValueEnumConst(wireName: r'both')
  static const McpAuthSettingsModeEnum both = _$mcpAuthSettingsModeEnum_both;

  static Serializer<McpAuthSettingsModeEnum> get serializer =>
      _$mcpAuthSettingsModeEnumSerializer;

  const McpAuthSettingsModeEnum._(String name) : super(name);

  static BuiltSet<McpAuthSettingsModeEnum> get values =>
      _$mcpAuthSettingsModeEnumValues;
  static McpAuthSettingsModeEnum valueOf(String name) =>
      _$mcpAuthSettingsModeEnumValueOf(name);
}

class McpAuthSettingsScopeMapEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const McpAuthSettingsScopeMapEnum read =
      _$mcpAuthSettingsScopeMapEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const McpAuthSettingsScopeMapEnum agent =
      _$mcpAuthSettingsScopeMapEnum_agent;

  static Serializer<McpAuthSettingsScopeMapEnum> get serializer =>
      _$mcpAuthSettingsScopeMapEnumSerializer;

  const McpAuthSettingsScopeMapEnum._(String name) : super(name);

  static BuiltSet<McpAuthSettingsScopeMapEnum> get values =>
      _$mcpAuthSettingsScopeMapEnumValues;
  static McpAuthSettingsScopeMapEnum valueOf(String name) =>
      _$mcpAuthSettingsScopeMapEnumValueOf(name);
}

/// Claim carrying the scopes; a space-separated string or an array of strings is read from either claim
class McpAuthSettingsScopeClaimEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'scope')
  static const McpAuthSettingsScopeClaimEnum scope =
      _$mcpAuthSettingsScopeClaimEnum_scope;
  @BuiltValueEnumConst(wireName: r'scp')
  static const McpAuthSettingsScopeClaimEnum scp =
      _$mcpAuthSettingsScopeClaimEnum_scp;

  static Serializer<McpAuthSettingsScopeClaimEnum> get serializer =>
      _$mcpAuthSettingsScopeClaimEnumSerializer;

  const McpAuthSettingsScopeClaimEnum._(String name) : super(name);

  static BuiltSet<McpAuthSettingsScopeClaimEnum> get values =>
      _$mcpAuthSettingsScopeClaimEnumValues;
  static McpAuthSettingsScopeClaimEnum valueOf(String name) =>
      _$mcpAuthSettingsScopeClaimEnumValueOf(name);
}

class McpAuthSettingsAllowedAlgsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RS256')
  static const McpAuthSettingsAllowedAlgsEnum RS256 =
      _$mcpAuthSettingsAllowedAlgsEnum_RS256;
  @BuiltValueEnumConst(wireName: r'ES256')
  static const McpAuthSettingsAllowedAlgsEnum ES256 =
      _$mcpAuthSettingsAllowedAlgsEnum_ES256;
  @BuiltValueEnumConst(wireName: r'EdDSA')
  static const McpAuthSettingsAllowedAlgsEnum edDSA =
      _$mcpAuthSettingsAllowedAlgsEnum_edDSA;
  @BuiltValueEnumConst(wireName: r'Ed25519')
  static const McpAuthSettingsAllowedAlgsEnum ed25519 =
      _$mcpAuthSettingsAllowedAlgsEnum_ed25519;

  static Serializer<McpAuthSettingsAllowedAlgsEnum> get serializer =>
      _$mcpAuthSettingsAllowedAlgsEnumSerializer;

  const McpAuthSettingsAllowedAlgsEnum._(String name) : super(name);

  static BuiltSet<McpAuthSettingsAllowedAlgsEnum> get values =>
      _$mcpAuthSettingsAllowedAlgsEnumValues;
  static McpAuthSettingsAllowedAlgsEnum valueOf(String name) =>
      _$mcpAuthSettingsAllowedAlgsEnumValueOf(name);
}
