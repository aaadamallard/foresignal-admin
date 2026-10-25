//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/read_restriction.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_token_input.g.dart';

/// ApiTokenInput
///
/// Properties:
/// * [name]
/// * [scope]
/// * [expiresAt]
/// * [restrictions] - Rejected on admin tokens (400 RESTRICTION_NOT_ALLOWED, 035)
/// * [principalId] - Owning principal (id or handle); default: a new principal named after the token
/// * [privateAccess] - Grant visibility of private sources (039)
/// * [licencePolicy] - Licence policy floor applied to every read with this token; requests may add flags but never remove these
@BuiltValue()
abstract class ApiTokenInput
    implements Built<ApiTokenInput, ApiTokenInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'scope')
  ApiTokenInputScopeEnum get scope;
  // enum scopeEnum {  read,  agent,  admin,  };

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  /// Rejected on admin tokens (400 RESTRICTION_NOT_ALLOWED, 035)
  @BuiltValueField(wireName: r'restrictions')
  ReadRestriction? get restrictions;

  /// Owning principal (id or handle); default: a new principal named after the token
  @BuiltValueField(wireName: r'principalId')
  String? get principalId;

  /// Grant visibility of private sources (039)
  @BuiltValueField(wireName: r'privateAccess')
  bool? get privateAccess;

  /// Licence policy floor applied to every read with this token; requests may add flags but never remove these
  @BuiltValueField(wireName: r'licencePolicy')
  BuiltList<ApiTokenInputLicencePolicyEnum>? get licencePolicy;
  // enum licencePolicyEnum {  no-nc,  no-sa,  redistributable,  };

  ApiTokenInput._();

  factory ApiTokenInput([void updates(ApiTokenInputBuilder b)]) =
      _$ApiTokenInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiTokenInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiTokenInput> get serializer =>
      _$ApiTokenInputSerializer();
}

class _$ApiTokenInputSerializer implements PrimitiveSerializer<ApiTokenInput> {
  @override
  final Iterable<Type> types = const [ApiTokenInput, _$ApiTokenInput];

  @override
  final String wireName = r'ApiTokenInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiTokenInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(ApiTokenInputScopeEnum),
    );
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.restrictions != null) {
      yield r'restrictions';
      yield serializers.serialize(
        object.restrictions,
        specifiedType: const FullType.nullable(ReadRestriction),
      );
    }
    if (object.principalId != null) {
      yield r'principalId';
      yield serializers.serialize(
        object.principalId,
        specifiedType: const FullType.nullable(String),
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
          FullType(ApiTokenInputLicencePolicyEnum),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiTokenInput object, {
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
    required ApiTokenInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
                    specifiedType: const FullType(ApiTokenInputScopeEnum),
                  )
                  as ApiTokenInputScopeEnum;
          result.scope = valueDes;
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
                      FullType(ApiTokenInputLicencePolicyEnum),
                    ]),
                  )
                  as BuiltList<ApiTokenInputLicencePolicyEnum>?;
          if (valueDes == null) continue;
          result.licencePolicy.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiTokenInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiTokenInputBuilder();
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

class ApiTokenInputScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const ApiTokenInputScopeEnum read = _$apiTokenInputScopeEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const ApiTokenInputScopeEnum agent = _$apiTokenInputScopeEnum_agent;
  @BuiltValueEnumConst(wireName: r'admin')
  static const ApiTokenInputScopeEnum admin = _$apiTokenInputScopeEnum_admin;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ApiTokenInputScopeEnum unknownDefaultOpenApi =
      _$apiTokenInputScopeEnum_unknownDefaultOpenApi;

  static Serializer<ApiTokenInputScopeEnum> get serializer =>
      _$apiTokenInputScopeEnumSerializer;

  const ApiTokenInputScopeEnum._(String name) : super(name);

  static BuiltSet<ApiTokenInputScopeEnum> get values =>
      _$apiTokenInputScopeEnumValues;
  static ApiTokenInputScopeEnum valueOf(String name) =>
      _$apiTokenInputScopeEnumValueOf(name);
}

class ApiTokenInputLicencePolicyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'no-nc')
  static const ApiTokenInputLicencePolicyEnum noNc =
      _$apiTokenInputLicencePolicyEnum_noNc;
  @BuiltValueEnumConst(wireName: r'no-sa')
  static const ApiTokenInputLicencePolicyEnum noSa =
      _$apiTokenInputLicencePolicyEnum_noSa;
  @BuiltValueEnumConst(wireName: r'redistributable')
  static const ApiTokenInputLicencePolicyEnum redistributable =
      _$apiTokenInputLicencePolicyEnum_redistributable;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ApiTokenInputLicencePolicyEnum unknownDefaultOpenApi =
      _$apiTokenInputLicencePolicyEnum_unknownDefaultOpenApi;

  static Serializer<ApiTokenInputLicencePolicyEnum> get serializer =>
      _$apiTokenInputLicencePolicyEnumSerializer;

  const ApiTokenInputLicencePolicyEnum._(String name) : super(name);

  static BuiltSet<ApiTokenInputLicencePolicyEnum> get values =>
      _$apiTokenInputLicencePolicyEnumValues;
  static ApiTokenInputLicencePolicyEnum valueOf(String name) =>
      _$apiTokenInputLicencePolicyEnumValueOf(name);
}
