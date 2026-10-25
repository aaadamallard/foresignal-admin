//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/read_restriction.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/device_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_token_created.g.dart';

/// ApiTokenCreated
///
/// Properties:
/// * [id]
/// * [name]
/// * [scope]
/// * [tokenPrefix]
/// * [createdAt]
/// * [lastUsedAt]
/// * [expiresAt]
/// * [revokedAt]
/// * [bootstrap]
/// * [restrictions] - Data and endpoint restrictions (data restrictions enforced from 035)
/// * [device]
/// * [createdVia]
/// * [principalId] - ULID identifier
/// * [privateAccess] - May see private sources (039)
/// * [licencePolicy] - Licence policy floor applied to every read with this token; requests may add flags but never remove these
/// * [principalHandle]
/// * [token] - Shown once
@BuiltValue()
abstract class ApiTokenCreated
    implements Built<ApiTokenCreated, ApiTokenCreatedBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'scope')
  ApiTokenCreatedScopeEnum get scope;
  // enum scopeEnum {  read,  agent,  admin,  };

  @BuiltValueField(wireName: r'tokenPrefix')
  String get tokenPrefix;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'lastUsedAt')
  DateTime? get lastUsedAt;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  @BuiltValueField(wireName: r'revokedAt')
  DateTime? get revokedAt;

  @BuiltValueField(wireName: r'bootstrap')
  bool? get bootstrap;

  /// Data and endpoint restrictions (data restrictions enforced from 035)
  @BuiltValueField(wireName: r'restrictions')
  ReadRestriction? get restrictions;

  @BuiltValueField(wireName: r'device')
  DeviceInfo? get device;

  @BuiltValueField(wireName: r'createdVia')
  ApiTokenCreatedCreatedViaEnum? get createdVia;
  // enum createdViaEnum {  api,  pairing,  bootstrap,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'principalId')
  String? get principalId;

  /// May see private sources (039)
  @BuiltValueField(wireName: r'privateAccess')
  bool? get privateAccess;

  /// Licence policy floor applied to every read with this token; requests may add flags but never remove these
  @BuiltValueField(wireName: r'licencePolicy')
  BuiltList<ApiTokenCreatedLicencePolicyEnum>? get licencePolicy;
  // enum licencePolicyEnum {  no-nc,  no-sa,  redistributable,  };

  @BuiltValueField(wireName: r'principalHandle')
  String? get principalHandle;

  /// Shown once
  @BuiltValueField(wireName: r'token')
  String get token;

  ApiTokenCreated._();

  factory ApiTokenCreated([void updates(ApiTokenCreatedBuilder b)]) =
      _$ApiTokenCreated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiTokenCreatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiTokenCreated> get serializer =>
      _$ApiTokenCreatedSerializer();
}

class _$ApiTokenCreatedSerializer
    implements PrimitiveSerializer<ApiTokenCreated> {
  @override
  final Iterable<Type> types = const [ApiTokenCreated, _$ApiTokenCreated];

  @override
  final String wireName = r'ApiTokenCreated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiTokenCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(ApiTokenCreatedScopeEnum),
    );
    yield r'tokenPrefix';
    yield serializers.serialize(
      object.tokenPrefix,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastUsedAt != null) {
      yield r'lastUsedAt';
      yield serializers.serialize(
        object.lastUsedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.revokedAt != null) {
      yield r'revokedAt';
      yield serializers.serialize(
        object.revokedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.bootstrap != null) {
      yield r'bootstrap';
      yield serializers.serialize(
        object.bootstrap,
        specifiedType: const FullType(bool),
      );
    }
    if (object.restrictions != null) {
      yield r'restrictions';
      yield serializers.serialize(
        object.restrictions,
        specifiedType: const FullType.nullable(ReadRestriction),
      );
    }
    if (object.device != null) {
      yield r'device';
      yield serializers.serialize(
        object.device,
        specifiedType: const FullType.nullable(DeviceInfo),
      );
    }
    if (object.createdVia != null) {
      yield r'createdVia';
      yield serializers.serialize(
        object.createdVia,
        specifiedType: const FullType(ApiTokenCreatedCreatedViaEnum),
      );
    }
    if (object.principalId != null) {
      yield r'principalId';
      yield serializers.serialize(
        object.principalId,
        specifiedType: const FullType(String),
      );
    }
    if (object.privateAccess != null) {
      yield r'privateAccess';
      yield serializers.serialize(
        object.privateAccess,
        specifiedType: const FullType(bool),
      );
    }
    if (object.licencePolicy != null) {
      yield r'licencePolicy';
      yield serializers.serialize(
        object.licencePolicy,
        specifiedType: const FullType(BuiltList, [
          FullType(ApiTokenCreatedLicencePolicyEnum),
        ]),
      );
    }
    if (object.principalHandle != null) {
      yield r'principalHandle';
      yield serializers.serialize(
        object.principalHandle,
        specifiedType: const FullType(String),
      );
    }
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiTokenCreated object, {
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
    required ApiTokenCreatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'scope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ApiTokenCreatedScopeEnum),
                  )
                  as ApiTokenCreatedScopeEnum;
          result.scope = valueDes;
          break;
        case r'tokenPrefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tokenPrefix = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'lastUsedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastUsedAt = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'revokedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.revokedAt = valueDes;
          break;
        case r'bootstrap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.bootstrap = valueDes;
          break;
        case r'restrictions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ReadRestriction),
                  )
                  as ReadRestriction?;
          if (valueDes == null) continue;
          result.restrictions.replace(valueDes);
          break;
        case r'device':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DeviceInfo),
                  )
                  as DeviceInfo?;
          if (valueDes == null) continue;
          result.device.replace(valueDes);
          break;
        case r'createdVia':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ApiTokenCreatedCreatedViaEnum,
                    ),
                  )
                  as ApiTokenCreatedCreatedViaEnum?;
          if (valueDes == null) continue;
          result.createdVia = valueDes;
          break;
        case r'principalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.principalId = valueDes;
          break;
        case r'privateAccess':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.privateAccess = valueDes;
          break;
        case r'licencePolicy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ApiTokenCreatedLicencePolicyEnum),
                    ]),
                  )
                  as BuiltList<ApiTokenCreatedLicencePolicyEnum>?;
          if (valueDes == null) continue;
          result.licencePolicy.replace(valueDes);
          break;
        case r'principalHandle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.principalHandle = valueDes;
          break;
        case r'token':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiTokenCreated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiTokenCreatedBuilder();
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

class ApiTokenCreatedScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const ApiTokenCreatedScopeEnum read = _$apiTokenCreatedScopeEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const ApiTokenCreatedScopeEnum agent =
      _$apiTokenCreatedScopeEnum_agent;
  @BuiltValueEnumConst(wireName: r'admin')
  static const ApiTokenCreatedScopeEnum admin =
      _$apiTokenCreatedScopeEnum_admin;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ApiTokenCreatedScopeEnum unknownDefaultOpenApi =
      _$apiTokenCreatedScopeEnum_unknownDefaultOpenApi;

  static Serializer<ApiTokenCreatedScopeEnum> get serializer =>
      _$apiTokenCreatedScopeEnumSerializer;

  const ApiTokenCreatedScopeEnum._(String name) : super(name);

  static BuiltSet<ApiTokenCreatedScopeEnum> get values =>
      _$apiTokenCreatedScopeEnumValues;
  static ApiTokenCreatedScopeEnum valueOf(String name) =>
      _$apiTokenCreatedScopeEnumValueOf(name);
}

class ApiTokenCreatedCreatedViaEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'api')
  static const ApiTokenCreatedCreatedViaEnum api =
      _$apiTokenCreatedCreatedViaEnum_api;
  @BuiltValueEnumConst(wireName: r'pairing')
  static const ApiTokenCreatedCreatedViaEnum pairing =
      _$apiTokenCreatedCreatedViaEnum_pairing;
  @BuiltValueEnumConst(wireName: r'bootstrap')
  static const ApiTokenCreatedCreatedViaEnum bootstrap =
      _$apiTokenCreatedCreatedViaEnum_bootstrap;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ApiTokenCreatedCreatedViaEnum unknownDefaultOpenApi =
      _$apiTokenCreatedCreatedViaEnum_unknownDefaultOpenApi;

  static Serializer<ApiTokenCreatedCreatedViaEnum> get serializer =>
      _$apiTokenCreatedCreatedViaEnumSerializer;

  const ApiTokenCreatedCreatedViaEnum._(String name) : super(name);

  static BuiltSet<ApiTokenCreatedCreatedViaEnum> get values =>
      _$apiTokenCreatedCreatedViaEnumValues;
  static ApiTokenCreatedCreatedViaEnum valueOf(String name) =>
      _$apiTokenCreatedCreatedViaEnumValueOf(name);
}

class ApiTokenCreatedLicencePolicyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'no-nc')
  static const ApiTokenCreatedLicencePolicyEnum noNc =
      _$apiTokenCreatedLicencePolicyEnum_noNc;
  @BuiltValueEnumConst(wireName: r'no-sa')
  static const ApiTokenCreatedLicencePolicyEnum noSa =
      _$apiTokenCreatedLicencePolicyEnum_noSa;
  @BuiltValueEnumConst(wireName: r'redistributable')
  static const ApiTokenCreatedLicencePolicyEnum redistributable =
      _$apiTokenCreatedLicencePolicyEnum_redistributable;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ApiTokenCreatedLicencePolicyEnum unknownDefaultOpenApi =
      _$apiTokenCreatedLicencePolicyEnum_unknownDefaultOpenApi;

  static Serializer<ApiTokenCreatedLicencePolicyEnum> get serializer =>
      _$apiTokenCreatedLicencePolicyEnumSerializer;

  const ApiTokenCreatedLicencePolicyEnum._(String name) : super(name);

  static BuiltSet<ApiTokenCreatedLicencePolicyEnum> get values =>
      _$apiTokenCreatedLicencePolicyEnumValues;
  static ApiTokenCreatedLicencePolicyEnum valueOf(String name) =>
      _$apiTokenCreatedLicencePolicyEnumValueOf(name);
}
