//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'access_request_grant.g.dart';

/// How access was granted
///
/// Properties:
/// * [deliveredAs]
/// * [role]
/// * [packageId] - ULID identifier
@BuiltValue()
abstract class AccessRequestGrant
    implements Built<AccessRequestGrant, AccessRequestGrantBuilder> {
  @BuiltValueField(wireName: r'deliveredAs')
  AccessRequestGrantDeliveredAsEnum get deliveredAs;
  // enum deliveredAsEnum {  acl,  report,  chronicle-extract,  };

  @BuiltValueField(wireName: r'role')
  AccessRequestGrantRoleEnum? get role;
  // enum roleEnum {  viewer,  commenter,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'packageId')
  String? get packageId;

  AccessRequestGrant._();

  factory AccessRequestGrant([void updates(AccessRequestGrantBuilder b)]) =
      _$AccessRequestGrant;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccessRequestGrantBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccessRequestGrant> get serializer =>
      _$AccessRequestGrantSerializer();
}

class _$AccessRequestGrantSerializer
    implements PrimitiveSerializer<AccessRequestGrant> {
  @override
  final Iterable<Type> types = const [AccessRequestGrant, _$AccessRequestGrant];

  @override
  final String wireName = r'AccessRequestGrant';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccessRequestGrant object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'deliveredAs';
    yield serializers.serialize(
      object.deliveredAs,
      specifiedType: const FullType(AccessRequestGrantDeliveredAsEnum),
    );
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType.nullable(AccessRequestGrantRoleEnum),
      );
    }
    if (object.packageId != null) {
      yield r'packageId';
      yield serializers.serialize(
        object.packageId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccessRequestGrant object, {
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
    required AccessRequestGrantBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deliveredAs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AccessRequestGrantDeliveredAsEnum,
                    ),
                  )
                  as AccessRequestGrantDeliveredAsEnum;
          result.deliveredAs = valueDes;
          break;
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AccessRequestGrantRoleEnum,
                    ),
                  )
                  as AccessRequestGrantRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'packageId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.packageId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccessRequestGrant deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessRequestGrantBuilder();
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

class AccessRequestGrantDeliveredAsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'acl')
  static const AccessRequestGrantDeliveredAsEnum acl =
      _$accessRequestGrantDeliveredAsEnum_acl;
  @BuiltValueEnumConst(wireName: r'report')
  static const AccessRequestGrantDeliveredAsEnum report =
      _$accessRequestGrantDeliveredAsEnum_report;
  @BuiltValueEnumConst(wireName: r'chronicle-extract')
  static const AccessRequestGrantDeliveredAsEnum chronicleExtract =
      _$accessRequestGrantDeliveredAsEnum_chronicleExtract;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AccessRequestGrantDeliveredAsEnum unknownDefaultOpenApi =
      _$accessRequestGrantDeliveredAsEnum_unknownDefaultOpenApi;

  static Serializer<AccessRequestGrantDeliveredAsEnum> get serializer =>
      _$accessRequestGrantDeliveredAsEnumSerializer;

  const AccessRequestGrantDeliveredAsEnum._(String name) : super(name);

  static BuiltSet<AccessRequestGrantDeliveredAsEnum> get values =>
      _$accessRequestGrantDeliveredAsEnumValues;
  static AccessRequestGrantDeliveredAsEnum valueOf(String name) =>
      _$accessRequestGrantDeliveredAsEnumValueOf(name);
}

class AccessRequestGrantRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'viewer')
  static const AccessRequestGrantRoleEnum viewer =
      _$accessRequestGrantRoleEnum_viewer;
  @BuiltValueEnumConst(wireName: r'commenter')
  static const AccessRequestGrantRoleEnum commenter =
      _$accessRequestGrantRoleEnum_commenter;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AccessRequestGrantRoleEnum unknownDefaultOpenApi =
      _$accessRequestGrantRoleEnum_unknownDefaultOpenApi;

  static Serializer<AccessRequestGrantRoleEnum> get serializer =>
      _$accessRequestGrantRoleEnumSerializer;

  const AccessRequestGrantRoleEnum._(String name) : super(name);

  static BuiltSet<AccessRequestGrantRoleEnum> get values =>
      _$accessRequestGrantRoleEnumValues;
  static AccessRequestGrantRoleEnum valueOf(String name) =>
      _$accessRequestGrantRoleEnumValueOf(name);
}
