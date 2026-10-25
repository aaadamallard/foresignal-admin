// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protected_resource_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProtectedResourceMetadataBearerMethodsSupportedEnum
_$protectedResourceMetadataBearerMethodsSupportedEnum_header =
    const ProtectedResourceMetadataBearerMethodsSupportedEnum._('header');
const ProtectedResourceMetadataBearerMethodsSupportedEnum
_$protectedResourceMetadataBearerMethodsSupportedEnum_unknownDefaultOpenApi =
    const ProtectedResourceMetadataBearerMethodsSupportedEnum._(
      'unknownDefaultOpenApi',
    );

ProtectedResourceMetadataBearerMethodsSupportedEnum
_$protectedResourceMetadataBearerMethodsSupportedEnumValueOf(String name) {
  switch (name) {
    case 'header':
      return _$protectedResourceMetadataBearerMethodsSupportedEnum_header;
    case 'unknownDefaultOpenApi':
      return _$protectedResourceMetadataBearerMethodsSupportedEnum_unknownDefaultOpenApi;
    default:
      return _$protectedResourceMetadataBearerMethodsSupportedEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProtectedResourceMetadataBearerMethodsSupportedEnum>
_$protectedResourceMetadataBearerMethodsSupportedEnumValues =
    BuiltSet<ProtectedResourceMetadataBearerMethodsSupportedEnum>(const <
      ProtectedResourceMetadataBearerMethodsSupportedEnum
    >[
      _$protectedResourceMetadataBearerMethodsSupportedEnum_header,
      _$protectedResourceMetadataBearerMethodsSupportedEnum_unknownDefaultOpenApi,
    ]);

const ProtectedResourceMetadataResourceNameEnum
_$protectedResourceMetadataResourceNameEnum_foresignal =
    const ProtectedResourceMetadataResourceNameEnum._('foresignal');
const ProtectedResourceMetadataResourceNameEnum
_$protectedResourceMetadataResourceNameEnum_unknownDefaultOpenApi =
    const ProtectedResourceMetadataResourceNameEnum._('unknownDefaultOpenApi');

ProtectedResourceMetadataResourceNameEnum
_$protectedResourceMetadataResourceNameEnumValueOf(String name) {
  switch (name) {
    case 'foresignal':
      return _$protectedResourceMetadataResourceNameEnum_foresignal;
    case 'unknownDefaultOpenApi':
      return _$protectedResourceMetadataResourceNameEnum_unknownDefaultOpenApi;
    default:
      return _$protectedResourceMetadataResourceNameEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProtectedResourceMetadataResourceNameEnum>
_$protectedResourceMetadataResourceNameEnumValues =
    BuiltSet<ProtectedResourceMetadataResourceNameEnum>(
      const <ProtectedResourceMetadataResourceNameEnum>[
        _$protectedResourceMetadataResourceNameEnum_foresignal,
        _$protectedResourceMetadataResourceNameEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ProtectedResourceMetadataBearerMethodsSupportedEnum>
_$protectedResourceMetadataBearerMethodsSupportedEnumSerializer =
    _$ProtectedResourceMetadataBearerMethodsSupportedEnumSerializer();
Serializer<ProtectedResourceMetadataResourceNameEnum>
_$protectedResourceMetadataResourceNameEnumSerializer =
    _$ProtectedResourceMetadataResourceNameEnumSerializer();

class _$ProtectedResourceMetadataBearerMethodsSupportedEnumSerializer
    implements
        PrimitiveSerializer<
          ProtectedResourceMetadataBearerMethodsSupportedEnum
        > {
  static const Map<String, Object> _toWire = const <String, Object>{
    'header': 'header',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'header': 'header',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ProtectedResourceMetadataBearerMethodsSupportedEnum,
  ];
  @override
  final String wireName = 'ProtectedResourceMetadataBearerMethodsSupportedEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProtectedResourceMetadataBearerMethodsSupportedEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProtectedResourceMetadataBearerMethodsSupportedEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProtectedResourceMetadataBearerMethodsSupportedEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProtectedResourceMetadataResourceNameEnumSerializer
    implements PrimitiveSerializer<ProtectedResourceMetadataResourceNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'foresignal': 'Foresignal',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Foresignal': 'foresignal',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ProtectedResourceMetadataResourceNameEnum,
  ];
  @override
  final String wireName = 'ProtectedResourceMetadataResourceNameEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProtectedResourceMetadataResourceNameEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProtectedResourceMetadataResourceNameEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProtectedResourceMetadataResourceNameEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProtectedResourceMetadata extends ProtectedResourceMetadata {
  @override
  final String resource;
  @override
  final BuiltList<String> authorizationServers;
  @override
  final BuiltList<String>? scopesSupported;
  @override
  final BuiltList<ProtectedResourceMetadataBearerMethodsSupportedEnum>
  bearerMethodsSupported;
  @override
  final ProtectedResourceMetadataResourceNameEnum? resourceName;
  @override
  final String? resourceDocumentation;

  factory _$ProtectedResourceMetadata([
    void Function(ProtectedResourceMetadataBuilder)? updates,
  ]) => (ProtectedResourceMetadataBuilder()..update(updates))._build();

  _$ProtectedResourceMetadata._({
    required this.resource,
    required this.authorizationServers,
    this.scopesSupported,
    required this.bearerMethodsSupported,
    this.resourceName,
    this.resourceDocumentation,
  }) : super._();
  @override
  ProtectedResourceMetadata rebuild(
    void Function(ProtectedResourceMetadataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProtectedResourceMetadataBuilder toBuilder() =>
      ProtectedResourceMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtectedResourceMetadata &&
        resource == other.resource &&
        authorizationServers == other.authorizationServers &&
        scopesSupported == other.scopesSupported &&
        bearerMethodsSupported == other.bearerMethodsSupported &&
        resourceName == other.resourceName &&
        resourceDocumentation == other.resourceDocumentation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resource.hashCode);
    _$hash = $jc(_$hash, authorizationServers.hashCode);
    _$hash = $jc(_$hash, scopesSupported.hashCode);
    _$hash = $jc(_$hash, bearerMethodsSupported.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jc(_$hash, resourceDocumentation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProtectedResourceMetadata')
          ..add('resource', resource)
          ..add('authorizationServers', authorizationServers)
          ..add('scopesSupported', scopesSupported)
          ..add('bearerMethodsSupported', bearerMethodsSupported)
          ..add('resourceName', resourceName)
          ..add('resourceDocumentation', resourceDocumentation))
        .toString();
  }
}

class ProtectedResourceMetadataBuilder
    implements
        Builder<ProtectedResourceMetadata, ProtectedResourceMetadataBuilder> {
  _$ProtectedResourceMetadata? _$v;

  String? _resource;
  String? get resource => _$this._resource;
  set resource(String? resource) => _$this._resource = resource;

  ListBuilder<String>? _authorizationServers;
  ListBuilder<String> get authorizationServers =>
      _$this._authorizationServers ??= ListBuilder<String>();
  set authorizationServers(ListBuilder<String>? authorizationServers) =>
      _$this._authorizationServers = authorizationServers;

  ListBuilder<String>? _scopesSupported;
  ListBuilder<String> get scopesSupported =>
      _$this._scopesSupported ??= ListBuilder<String>();
  set scopesSupported(ListBuilder<String>? scopesSupported) =>
      _$this._scopesSupported = scopesSupported;

  ListBuilder<ProtectedResourceMetadataBearerMethodsSupportedEnum>?
  _bearerMethodsSupported;
  ListBuilder<ProtectedResourceMetadataBearerMethodsSupportedEnum>
  get bearerMethodsSupported => _$this._bearerMethodsSupported ??=
      ListBuilder<ProtectedResourceMetadataBearerMethodsSupportedEnum>();
  set bearerMethodsSupported(
    ListBuilder<ProtectedResourceMetadataBearerMethodsSupportedEnum>?
    bearerMethodsSupported,
  ) => _$this._bearerMethodsSupported = bearerMethodsSupported;

  ProtectedResourceMetadataResourceNameEnum? _resourceName;
  ProtectedResourceMetadataResourceNameEnum? get resourceName =>
      _$this._resourceName;
  set resourceName(ProtectedResourceMetadataResourceNameEnum? resourceName) =>
      _$this._resourceName = resourceName;

  String? _resourceDocumentation;
  String? get resourceDocumentation => _$this._resourceDocumentation;
  set resourceDocumentation(String? resourceDocumentation) =>
      _$this._resourceDocumentation = resourceDocumentation;

  ProtectedResourceMetadataBuilder() {
    ProtectedResourceMetadata._defaults(this);
  }

  ProtectedResourceMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resource = $v.resource;
      _authorizationServers = $v.authorizationServers.toBuilder();
      _scopesSupported = $v.scopesSupported?.toBuilder();
      _bearerMethodsSupported = $v.bearerMethodsSupported.toBuilder();
      _resourceName = $v.resourceName;
      _resourceDocumentation = $v.resourceDocumentation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProtectedResourceMetadata other) {
    _$v = other as _$ProtectedResourceMetadata;
  }

  @override
  void update(void Function(ProtectedResourceMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProtectedResourceMetadata build() => _build();

  _$ProtectedResourceMetadata _build() {
    _$ProtectedResourceMetadata _$result;
    try {
      _$result =
          _$v ??
          _$ProtectedResourceMetadata._(
            resource: BuiltValueNullFieldError.checkNotNull(
              resource,
              r'ProtectedResourceMetadata',
              'resource',
            ),
            authorizationServers: authorizationServers.build(),
            scopesSupported: _scopesSupported?.build(),
            bearerMethodsSupported: bearerMethodsSupported.build(),
            resourceName: resourceName,
            resourceDocumentation: resourceDocumentation,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authorizationServers';
        authorizationServers.build();
        _$failedField = 'scopesSupported';
        _scopesSupported?.build();
        _$failedField = 'bearerMethodsSupported';
        bearerMethodsSupported.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProtectedResourceMetadata',
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
