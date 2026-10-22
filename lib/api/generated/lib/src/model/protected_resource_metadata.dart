//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'protected_resource_metadata.g.dart';

/// OAuth 2.0 Protected Resource Metadata (RFC 9728) for `/mcp`; member names follow the RFC (snake_case)
///
/// Properties:
/// * [resource] - Canonical resource URI, default `{publicBaseUrl}/mcp`
/// * [authorizationServers] - The identity provider's issuer (`mcp.auth.issuer`); empty while none is configured
/// * [scopesSupported] - The identity-provider scopes of `mcp.auth.scopeMap` that map to `read` or `agent`, sorted
/// * [bearerMethodsSupported]
/// * [resourceName]
/// * [resourceDocumentation] - The API documentation, `{base}/docs`
@BuiltValue()
abstract class ProtectedResourceMetadata
    implements
        Built<ProtectedResourceMetadata, ProtectedResourceMetadataBuilder> {
  /// Canonical resource URI, default `{publicBaseUrl}/mcp`
  @BuiltValueField(wireName: r'resource')
  String get resource;

  /// The identity provider's issuer (`mcp.auth.issuer`); empty while none is configured
  @BuiltValueField(wireName: r'authorization_servers')
  BuiltList<String> get authorizationServers;

  /// The identity-provider scopes of `mcp.auth.scopeMap` that map to `read` or `agent`, sorted
  @BuiltValueField(wireName: r'scopes_supported')
  BuiltList<String>? get scopesSupported;

  @BuiltValueField(wireName: r'bearer_methods_supported')
  BuiltList<ProtectedResourceMetadataBearerMethodsSupportedEnum>
  get bearerMethodsSupported;
  // enum bearerMethodsSupportedEnum {  header,  };

  @BuiltValueField(wireName: r'resource_name')
  ProtectedResourceMetadataResourceNameEnum? get resourceName;
  // enum resourceNameEnum {  Foresignal,  };

  /// The API documentation, `{base}/docs`
  @BuiltValueField(wireName: r'resource_documentation')
  String? get resourceDocumentation;

  ProtectedResourceMetadata._();

  factory ProtectedResourceMetadata([
    void updates(ProtectedResourceMetadataBuilder b),
  ]) = _$ProtectedResourceMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProtectedResourceMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProtectedResourceMetadata> get serializer =>
      _$ProtectedResourceMetadataSerializer();
}

class _$ProtectedResourceMetadataSerializer
    implements PrimitiveSerializer<ProtectedResourceMetadata> {
  @override
  final Iterable<Type> types = const [
    ProtectedResourceMetadata,
    _$ProtectedResourceMetadata,
  ];

  @override
  final String wireName = r'ProtectedResourceMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProtectedResourceMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'resource';
    yield serializers.serialize(
      object.resource,
      specifiedType: const FullType(String),
    );
    yield r'authorization_servers';
    yield serializers.serialize(
      object.authorizationServers,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.scopesSupported != null) {
      yield r'scopes_supported';
      yield serializers.serialize(
        object.scopesSupported,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'bearer_methods_supported';
    yield serializers.serialize(
      object.bearerMethodsSupported,
      specifiedType: const FullType(BuiltList, [
        FullType(ProtectedResourceMetadataBearerMethodsSupportedEnum),
      ]),
    );
    if (object.resourceName != null) {
      yield r'resource_name';
      yield serializers.serialize(
        object.resourceName,
        specifiedType: const FullType(
          ProtectedResourceMetadataResourceNameEnum,
        ),
      );
    }
    if (object.resourceDocumentation != null) {
      yield r'resource_documentation';
      yield serializers.serialize(
        object.resourceDocumentation,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProtectedResourceMetadata object, {
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
    required ProtectedResourceMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'resource':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.resource = valueDes;
          break;
        case r'authorization_servers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.authorizationServers.replace(valueDes);
          break;
        case r'scopes_supported':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.scopesSupported.replace(valueDes);
          break;
        case r'bearer_methods_supported':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(
                        ProtectedResourceMetadataBearerMethodsSupportedEnum,
                      ),
                    ]),
                  )
                  as BuiltList<
                    ProtectedResourceMetadataBearerMethodsSupportedEnum
                  >;
          result.bearerMethodsSupported.replace(valueDes);
          break;
        case r'resource_name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ProtectedResourceMetadataResourceNameEnum,
                    ),
                  )
                  as ProtectedResourceMetadataResourceNameEnum?;
          if (valueDes == null) continue;
          result.resourceName = valueDes;
          break;
        case r'resource_documentation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.resourceDocumentation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProtectedResourceMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProtectedResourceMetadataBuilder();
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

class ProtectedResourceMetadataBearerMethodsSupportedEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'header')
  static const ProtectedResourceMetadataBearerMethodsSupportedEnum header =
      _$protectedResourceMetadataBearerMethodsSupportedEnum_header;

  static Serializer<ProtectedResourceMetadataBearerMethodsSupportedEnum>
  get serializer =>
      _$protectedResourceMetadataBearerMethodsSupportedEnumSerializer;

  const ProtectedResourceMetadataBearerMethodsSupportedEnum._(String name)
    : super(name);

  static BuiltSet<ProtectedResourceMetadataBearerMethodsSupportedEnum>
  get values => _$protectedResourceMetadataBearerMethodsSupportedEnumValues;
  static ProtectedResourceMetadataBearerMethodsSupportedEnum valueOf(
    String name,
  ) => _$protectedResourceMetadataBearerMethodsSupportedEnumValueOf(name);
}

class ProtectedResourceMetadataResourceNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Foresignal')
  static const ProtectedResourceMetadataResourceNameEnum foresignal =
      _$protectedResourceMetadataResourceNameEnum_foresignal;

  static Serializer<ProtectedResourceMetadataResourceNameEnum> get serializer =>
      _$protectedResourceMetadataResourceNameEnumSerializer;

  const ProtectedResourceMetadataResourceNameEnum._(String name) : super(name);

  static BuiltSet<ProtectedResourceMetadataResourceNameEnum> get values =>
      _$protectedResourceMetadataResourceNameEnumValues;
  static ProtectedResourceMetadataResourceNameEnum valueOf(String name) =>
      _$protectedResourceMetadataResourceNameEnumValueOf(name);
}
