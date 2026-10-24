//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/entity_key.dart';
import 'package:foresignal_api/src/model/entity_alias.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity.g.dart';

/// A canonical vehicle or object, and (since prompt 158) a person or organization, with its keys, aliases and per-source link counts
///
/// Properties:
/// * [id] - ULID identifier
/// * [requestedId] - Set when the requested id was merged into this canonical entity
/// * [type] - Expected to grow (`x-extensible-enum`): a client must accept a value not listed here.
/// * [displayName] - Precedence: registration > vessel name > satellite name > key
/// * [attributes] - Declared attributes copied from records (≤ 16 KB); registry origin wins over observations. Never owner PII.
/// * [provisional] - True when created from weak keys only
/// * [status]
/// * [mergedInto] - ULID identifier
/// * [keys]
/// * [aliases]
/// * [openLinkCounts] - Open links per source id (links from private sources are counted only for admin tokens)
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class Entity implements Built<Entity, EntityBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Set when the requested id was merged into this canonical entity
  @BuiltValueField(wireName: r'requestedId')
  String? get requestedId;

  /// Expected to grow (`x-extensible-enum`): a client must accept a value not listed here.
  @BuiltValueField(wireName: r'type')
  String get type;

  /// Precedence: registration > vessel name > satellite name > key
  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  /// Declared attributes copied from records (≤ 16 KB); registry origin wins over observations. Never owner PII.
  @BuiltValueField(wireName: r'attributes')
  BuiltMap<String, JsonObject?>? get attributes;

  /// True when created from weak keys only
  @BuiltValueField(wireName: r'provisional')
  bool get provisional;

  @BuiltValueField(wireName: r'status')
  EntityStatusEnum get status;
  // enum statusEnum {  ACTIVE,  MERGED,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'mergedInto')
  String? get mergedInto;

  @BuiltValueField(wireName: r'keys')
  BuiltList<EntityKey>? get keys;

  @BuiltValueField(wireName: r'aliases')
  BuiltList<EntityAlias>? get aliases;

  /// Open links per source id (links from private sources are counted only for admin tokens)
  @BuiltValueField(wireName: r'openLinkCounts')
  BuiltMap<String, int>? get openLinkCounts;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  Entity._();

  factory Entity([void updates(EntityBuilder b)]) = _$Entity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Entity> get serializer => _$EntitySerializer();
}

class _$EntitySerializer implements PrimitiveSerializer<Entity> {
  @override
  final Iterable<Type> types = const [Entity, _$Entity];

  @override
  final String wireName = r'Entity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Entity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.requestedId != null) {
      yield r'requestedId';
      yield serializers.serialize(
        object.requestedId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    yield r'provisional';
    yield serializers.serialize(
      object.provisional,
      specifiedType: const FullType(bool),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(EntityStatusEnum),
    );
    if (object.mergedInto != null) {
      yield r'mergedInto';
      yield serializers.serialize(
        object.mergedInto,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.keys != null) {
      yield r'keys';
      yield serializers.serialize(
        object.keys,
        specifiedType: const FullType(BuiltList, [FullType(EntityKey)]),
      );
    }
    if (object.aliases != null) {
      yield r'aliases';
      yield serializers.serialize(
        object.aliases,
        specifiedType: const FullType(BuiltList, [FullType(EntityAlias)]),
      );
    }
    if (object.openLinkCounts != null) {
      yield r'openLinkCounts';
      yield serializers.serialize(
        object.openLinkCounts,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Entity object, {
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
    required EntityBuilder result,
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
        case r'requestedId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.requestedId = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'displayName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'attributes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.attributes.replace(valueDes);
          break;
        case r'provisional':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.provisional = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntityStatusEnum),
                  )
                  as EntityStatusEnum;
          result.status = valueDes;
          break;
        case r'mergedInto':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mergedInto = valueDes;
          break;
        case r'keys':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EntityKey),
                    ]),
                  )
                  as BuiltList<EntityKey>?;
          if (valueDes == null) continue;
          result.keys.replace(valueDes);
          break;
        case r'aliases':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EntityAlias),
                    ]),
                  )
                  as BuiltList<EntityAlias>?;
          if (valueDes == null) continue;
          result.aliases.replace(valueDes);
          break;
        case r'openLinkCounts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.openLinkCounts.replace(valueDes);
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
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Entity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityBuilder();
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

class EntityStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const EntityStatusEnum ACTIVE = _$entityStatusEnum_ACTIVE;
  @BuiltValueEnumConst(wireName: r'MERGED')
  static const EntityStatusEnum MERGED = _$entityStatusEnum_MERGED;

  static Serializer<EntityStatusEnum> get serializer =>
      _$entityStatusEnumSerializer;

  const EntityStatusEnum._(String name) : super(name);

  static BuiltSet<EntityStatusEnum> get values => _$entityStatusEnumValues;
  static EntityStatusEnum valueOf(String name) =>
      _$entityStatusEnumValueOf(name);
}
