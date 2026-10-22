//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:foresignal_api/src/model/principal.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'get_principal200_response.g.dart';

/// GetPrincipal200Response
///
/// Properties:
/// * [id] - ULID identifier
/// * [handle]
/// * [displayName]
/// * [kind]
/// * [email] - Used only for this principal's email notifications; returned only to the principal itself and admins
/// * [avatarMediaId] - 043 media id of the avatar image
/// * [timezone]
/// * [organization] - Free text; defines TLP AMBER and AMBER+STRICT boundaries
/// * [disabled]
/// * [tokenCount] - Active tokens (admin view)
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class GetPrincipal200Response
    implements Built<GetPrincipal200Response, GetPrincipal200ResponseBuilder> {
  /// Any Of [Principal], [PrincipalSummary]
  AnyOf get anyOf;

  GetPrincipal200Response._();

  factory GetPrincipal200Response([
    void updates(GetPrincipal200ResponseBuilder b),
  ]) = _$GetPrincipal200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetPrincipal200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetPrincipal200Response> get serializer =>
      _$GetPrincipal200ResponseSerializer();
}

class _$GetPrincipal200ResponseSerializer
    implements PrimitiveSerializer<GetPrincipal200Response> {
  @override
  final Iterable<Type> types = const [
    GetPrincipal200Response,
    _$GetPrincipal200Response,
  ];

  @override
  final String wireName = r'GetPrincipal200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetPrincipal200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    GetPrincipal200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(
      anyOf,
      specifiedType: FullType(
        AnyOf,
        anyOf.types.map((type) => FullType(type)).toList(),
      ),
    )!;
  }

  @override
  GetPrincipal200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPrincipal200ResponseBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType(Principal),
      FullType(PrincipalSummary),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf =
        serializers.deserialize(anyOfDataSrc, specifiedType: targetType)
            as AnyOf;
    return result.build();
  }
}

class GetPrincipal200ResponseKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'person')
  static const GetPrincipal200ResponseKindEnum person =
      _$getPrincipal200ResponseKindEnum_person;
  @BuiltValueEnumConst(wireName: r'agent')
  static const GetPrincipal200ResponseKindEnum agent =
      _$getPrincipal200ResponseKindEnum_agent;
  @BuiltValueEnumConst(wireName: r'service')
  static const GetPrincipal200ResponseKindEnum service =
      _$getPrincipal200ResponseKindEnum_service;

  static Serializer<GetPrincipal200ResponseKindEnum> get serializer =>
      _$getPrincipal200ResponseKindEnumSerializer;

  const GetPrincipal200ResponseKindEnum._(String name) : super(name);

  static BuiltSet<GetPrincipal200ResponseKindEnum> get values =>
      _$getPrincipal200ResponseKindEnumValues;
  static GetPrincipal200ResponseKindEnum valueOf(String name) =>
      _$getPrincipal200ResponseKindEnumValueOf(name);
}
