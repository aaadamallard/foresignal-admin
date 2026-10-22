//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_alias.g.dart';

/// A display name or former name of an entity with its validity interval
///
/// Properties:
/// * [id]
/// * [alias]
/// * [aliasType]
/// * [validFrom]
/// * [validTo]
/// * [origin]
@BuiltValue()
abstract class EntityAlias implements Built<EntityAlias, EntityAliasBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'alias')
  String get alias;

  @BuiltValueField(wireName: r'aliasType')
  EntityAliasAliasTypeEnum get aliasType;
  // enum aliasTypeEnum {  NAME,  FORMER_NAME,  OPERATOR_LABEL,  };

  @BuiltValueField(wireName: r'validFrom')
  DateTime get validFrom;

  @BuiltValueField(wireName: r'validTo')
  DateTime? get validTo;

  @BuiltValueField(wireName: r'origin')
  EntityAliasOriginEnum get origin;
  // enum originEnum {  REGISTRY,  CO_ASSERTED,  OBSERVED,  OPERATOR,  };

  EntityAlias._();

  factory EntityAlias([void updates(EntityAliasBuilder b)]) = _$EntityAlias;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityAliasBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityAlias> get serializer => _$EntityAliasSerializer();
}

class _$EntityAliasSerializer implements PrimitiveSerializer<EntityAlias> {
  @override
  final Iterable<Type> types = const [EntityAlias, _$EntityAlias];

  @override
  final String wireName = r'EntityAlias';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityAlias object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'alias';
    yield serializers.serialize(
      object.alias,
      specifiedType: const FullType(String),
    );
    yield r'aliasType';
    yield serializers.serialize(
      object.aliasType,
      specifiedType: const FullType(EntityAliasAliasTypeEnum),
    );
    yield r'validFrom';
    yield serializers.serialize(
      object.validFrom,
      specifiedType: const FullType(DateTime),
    );
    if (object.validTo != null) {
      yield r'validTo';
      yield serializers.serialize(
        object.validTo,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(EntityAliasOriginEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityAlias object, {
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
    required EntityAliasBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'alias':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.alias = valueDes;
          break;
        case r'aliasType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityAliasAliasTypeEnum),
          ) as EntityAliasAliasTypeEnum;
          result.aliasType = valueDes;
          break;
        case r'validFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.validFrom = valueDes;
          break;
        case r'validTo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.validTo = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityAliasOriginEnum),
          ) as EntityAliasOriginEnum;
          result.origin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityAlias deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityAliasBuilder();
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

class EntityAliasAliasTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'NAME')
  static const EntityAliasAliasTypeEnum NAME = _$entityAliasAliasTypeEnum_NAME;
  @BuiltValueEnumConst(wireName: r'FORMER_NAME')
  static const EntityAliasAliasTypeEnum FORMER_NAME =
      _$entityAliasAliasTypeEnum_FORMER_NAME;
  @BuiltValueEnumConst(wireName: r'OPERATOR_LABEL')
  static const EntityAliasAliasTypeEnum OPERATOR_LABEL =
      _$entityAliasAliasTypeEnum_OPERATOR_LABEL;

  static Serializer<EntityAliasAliasTypeEnum> get serializer =>
      _$entityAliasAliasTypeEnumSerializer;

  const EntityAliasAliasTypeEnum._(String name) : super(name);

  static BuiltSet<EntityAliasAliasTypeEnum> get values =>
      _$entityAliasAliasTypeEnumValues;
  static EntityAliasAliasTypeEnum valueOf(String name) =>
      _$entityAliasAliasTypeEnumValueOf(name);
}

class EntityAliasOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'REGISTRY')
  static const EntityAliasOriginEnum REGISTRY =
      _$entityAliasOriginEnum_REGISTRY;
  @BuiltValueEnumConst(wireName: r'CO_ASSERTED')
  static const EntityAliasOriginEnum CO_ASSERTED =
      _$entityAliasOriginEnum_CO_ASSERTED;
  @BuiltValueEnumConst(wireName: r'OBSERVED')
  static const EntityAliasOriginEnum OBSERVED =
      _$entityAliasOriginEnum_OBSERVED;
  @BuiltValueEnumConst(wireName: r'OPERATOR')
  static const EntityAliasOriginEnum OPERATOR =
      _$entityAliasOriginEnum_OPERATOR;

  static Serializer<EntityAliasOriginEnum> get serializer =>
      _$entityAliasOriginEnumSerializer;

  const EntityAliasOriginEnum._(String name) : super(name);

  static BuiltSet<EntityAliasOriginEnum> get values =>
      _$entityAliasOriginEnumValues;
  static EntityAliasOriginEnum valueOf(String name) =>
      _$entityAliasOriginEnumValueOf(name);
}
