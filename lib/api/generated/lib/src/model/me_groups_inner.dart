//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'me_groups_inner.g.dart';

/// Group membership
///
/// Properties:
/// * [id] - ULID identifier
/// * [name]
/// * [role]
@BuiltValue()
abstract class MeGroupsInner
    implements Built<MeGroupsInner, MeGroupsInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'role')
  MeGroupsInnerRoleEnum get role;
  // enum roleEnum {  member,  manager,  };

  MeGroupsInner._();

  factory MeGroupsInner([void updates(MeGroupsInnerBuilder b)]) =
      _$MeGroupsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MeGroupsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MeGroupsInner> get serializer =>
      _$MeGroupsInnerSerializer();
}

class _$MeGroupsInnerSerializer implements PrimitiveSerializer<MeGroupsInner> {
  @override
  final Iterable<Type> types = const [MeGroupsInner, _$MeGroupsInner];

  @override
  final String wireName = r'MeGroupsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MeGroupsInner object, {
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
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(MeGroupsInnerRoleEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MeGroupsInner object, {
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
    required MeGroupsInnerBuilder result,
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
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MeGroupsInnerRoleEnum),
                  )
                  as MeGroupsInnerRoleEnum;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MeGroupsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MeGroupsInnerBuilder();
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

class MeGroupsInnerRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'member')
  static const MeGroupsInnerRoleEnum member = _$meGroupsInnerRoleEnum_member;
  @BuiltValueEnumConst(wireName: r'manager')
  static const MeGroupsInnerRoleEnum manager = _$meGroupsInnerRoleEnum_manager;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MeGroupsInnerRoleEnum unknownDefaultOpenApi =
      _$meGroupsInnerRoleEnum_unknownDefaultOpenApi;

  static Serializer<MeGroupsInnerRoleEnum> get serializer =>
      _$meGroupsInnerRoleEnumSerializer;

  const MeGroupsInnerRoleEnum._(String name) : super(name);

  static BuiltSet<MeGroupsInnerRoleEnum> get values =>
      _$meGroupsInnerRoleEnumValues;
  static MeGroupsInnerRoleEnum valueOf(String name) =>
      _$meGroupsInnerRoleEnumValueOf(name);
}
