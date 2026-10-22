//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'access_grant_input.g.dart';

/// Grant an access request (owner)
///
/// Properties:
/// * [role]
/// * [expiresAt]
/// * [deliverAs] - For remote requesters: a 132 package
/// * [message]
@BuiltValue()
abstract class AccessGrantInput
    implements Built<AccessGrantInput, AccessGrantInputBuilder> {
  @BuiltValueField(wireName: r'role')
  AccessGrantInputRoleEnum? get role;
  // enum roleEnum {  viewer,  commenter,  };

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  /// For remote requesters: a 132 package
  @BuiltValueField(wireName: r'deliverAs')
  AccessGrantInputDeliverAsEnum? get deliverAs;
  // enum deliverAsEnum {  report,  chronicle-extract,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  AccessGrantInput._();

  factory AccessGrantInput([void updates(AccessGrantInputBuilder b)]) =
      _$AccessGrantInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccessGrantInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccessGrantInput> get serializer =>
      _$AccessGrantInputSerializer();
}

class _$AccessGrantInputSerializer
    implements PrimitiveSerializer<AccessGrantInput> {
  @override
  final Iterable<Type> types = const [AccessGrantInput, _$AccessGrantInput];

  @override
  final String wireName = r'AccessGrantInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccessGrantInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(AccessGrantInputRoleEnum),
      );
    }
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.deliverAs != null) {
      yield r'deliverAs';
      yield serializers.serialize(
        object.deliverAs,
        specifiedType: const FullType(AccessGrantInputDeliverAsEnum),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccessGrantInput object, {
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
    required AccessGrantInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AccessGrantInputRoleEnum),
          ) as AccessGrantInputRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'deliverAs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(AccessGrantInputDeliverAsEnum),
          ) as AccessGrantInputDeliverAsEnum?;
          if (valueDes == null) continue;
          result.deliverAs = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccessGrantInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessGrantInputBuilder();
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

class AccessGrantInputRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'viewer')
  static const AccessGrantInputRoleEnum viewer =
      _$accessGrantInputRoleEnum_viewer;
  @BuiltValueEnumConst(wireName: r'commenter')
  static const AccessGrantInputRoleEnum commenter =
      _$accessGrantInputRoleEnum_commenter;

  static Serializer<AccessGrantInputRoleEnum> get serializer =>
      _$accessGrantInputRoleEnumSerializer;

  const AccessGrantInputRoleEnum._(String name) : super(name);

  static BuiltSet<AccessGrantInputRoleEnum> get values =>
      _$accessGrantInputRoleEnumValues;
  static AccessGrantInputRoleEnum valueOf(String name) =>
      _$accessGrantInputRoleEnumValueOf(name);
}

/// For remote requesters: a 132 package
class AccessGrantInputDeliverAsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'report')
  static const AccessGrantInputDeliverAsEnum report =
      _$accessGrantInputDeliverAsEnum_report;
  @BuiltValueEnumConst(wireName: r'chronicle-extract')
  static const AccessGrantInputDeliverAsEnum chronicleExtract =
      _$accessGrantInputDeliverAsEnum_chronicleExtract;

  static Serializer<AccessGrantInputDeliverAsEnum> get serializer =>
      _$accessGrantInputDeliverAsEnumSerializer;

  const AccessGrantInputDeliverAsEnum._(String name) : super(name);

  static BuiltSet<AccessGrantInputDeliverAsEnum> get values =>
      _$accessGrantInputDeliverAsEnumValues;
  static AccessGrantInputDeliverAsEnum valueOf(String name) =>
      _$accessGrantInputDeliverAsEnumValueOf(name);
}
