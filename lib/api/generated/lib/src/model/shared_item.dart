//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shared_item.g.dart';

/// An object shared with the caller
///
/// Properties:
/// * [envelope]
/// * [role]
/// * [via]
/// * [groupId] - ULID identifier
/// * [sharedBy]
/// * [sharedAt]
@BuiltValue()
abstract class SharedItem implements Built<SharedItem, SharedItemBuilder> {
  @BuiltValueField(wireName: r'envelope')
  ObjectEnvelope get envelope;

  @BuiltValueField(wireName: r'role')
  SharedItemRoleEnum get role;
  // enum roleEnum {  viewer,  commenter,  editor,  owner,  };

  @BuiltValueField(wireName: r'via')
  SharedItemViaEnum get via;
  // enum viaEnum {  principal,  group,  instance,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'groupId')
  String? get groupId;

  @BuiltValueField(wireName: r'sharedBy')
  PrincipalSummary? get sharedBy;

  @BuiltValueField(wireName: r'sharedAt')
  DateTime get sharedAt;

  SharedItem._();

  factory SharedItem([void updates(SharedItemBuilder b)]) = _$SharedItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SharedItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SharedItem> get serializer => _$SharedItemSerializer();
}

class _$SharedItemSerializer implements PrimitiveSerializer<SharedItem> {
  @override
  final Iterable<Type> types = const [SharedItem, _$SharedItem];

  @override
  final String wireName = r'SharedItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SharedItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'envelope';
    yield serializers.serialize(
      object.envelope,
      specifiedType: const FullType(ObjectEnvelope),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(SharedItemRoleEnum),
    );
    yield r'via';
    yield serializers.serialize(
      object.via,
      specifiedType: const FullType(SharedItemViaEnum),
    );
    if (object.groupId != null) {
      yield r'groupId';
      yield serializers.serialize(
        object.groupId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sharedBy != null) {
      yield r'sharedBy';
      yield serializers.serialize(
        object.sharedBy,
        specifiedType: const FullType.nullable(PrincipalSummary),
      );
    }
    yield r'sharedAt';
    yield serializers.serialize(
      object.sharedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SharedItem object, {
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
    required SharedItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'envelope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ObjectEnvelope),
                  )
                  as ObjectEnvelope;
          result.envelope.replace(valueDes);
          break;
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SharedItemRoleEnum),
                  )
                  as SharedItemRoleEnum;
          result.role = valueDes;
          break;
        case r'via':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SharedItemViaEnum),
                  )
                  as SharedItemViaEnum;
          result.via = valueDes;
          break;
        case r'groupId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.groupId = valueDes;
          break;
        case r'sharedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PrincipalSummary),
                  )
                  as PrincipalSummary?;
          if (valueDes == null) continue;
          result.sharedBy.replace(valueDes);
          break;
        case r'sharedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.sharedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SharedItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SharedItemBuilder();
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

class SharedItemRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'viewer')
  static const SharedItemRoleEnum viewer = _$sharedItemRoleEnum_viewer;
  @BuiltValueEnumConst(wireName: r'commenter')
  static const SharedItemRoleEnum commenter = _$sharedItemRoleEnum_commenter;
  @BuiltValueEnumConst(wireName: r'editor')
  static const SharedItemRoleEnum editor = _$sharedItemRoleEnum_editor;
  @BuiltValueEnumConst(wireName: r'owner')
  static const SharedItemRoleEnum owner = _$sharedItemRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SharedItemRoleEnum unknownDefaultOpenApi =
      _$sharedItemRoleEnum_unknownDefaultOpenApi;

  static Serializer<SharedItemRoleEnum> get serializer =>
      _$sharedItemRoleEnumSerializer;

  const SharedItemRoleEnum._(String name) : super(name);

  static BuiltSet<SharedItemRoleEnum> get values => _$sharedItemRoleEnumValues;
  static SharedItemRoleEnum valueOf(String name) =>
      _$sharedItemRoleEnumValueOf(name);
}

class SharedItemViaEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'principal')
  static const SharedItemViaEnum principal = _$sharedItemViaEnum_principal;
  @BuiltValueEnumConst(wireName: r'group')
  static const SharedItemViaEnum group = _$sharedItemViaEnum_group;
  @BuiltValueEnumConst(wireName: r'instance')
  static const SharedItemViaEnum instance = _$sharedItemViaEnum_instance;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SharedItemViaEnum unknownDefaultOpenApi =
      _$sharedItemViaEnum_unknownDefaultOpenApi;

  static Serializer<SharedItemViaEnum> get serializer =>
      _$sharedItemViaEnumSerializer;

  const SharedItemViaEnum._(String name) : super(name);

  static BuiltSet<SharedItemViaEnum> get values => _$sharedItemViaEnumValues;
  static SharedItemViaEnum valueOf(String name) =>
      _$sharedItemViaEnumValueOf(name);
}
