//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_key.g.dart';

/// A deterministic identity key held by an entity for a validity interval; rows are never deleted, only closed or retracted
///
/// Properties:
/// * [id] - Key row id
/// * [entityId] - ULID identifier
/// * [keyType] - Key type. `callsign` values are domain-prefixed (`air:`, `sea:`, `ham:`). Corporate and person keys (prompt 158): `lei`, `company-number` (`JURISDICTION:NUMBER`), `tax-id`, `officer-id` (`REGISTRY:ID`) for organizations; `person-key` (a normalized name key) for people
/// * [keyValue] - Normalised value (e.g. icao24 lowercase hex, registration without spaces or hyphens)
/// * [role] - ANCHOR keys (airframe, imo, norad, cospar, lei, company-number, tax-id, officer-id) identify an entity on their own; WEAK keys (callsign, person-key) can be re-assigned
/// * [confidence]
/// * [origin]
/// * [originRef] - `sourceId:externalId` of the asserting record, or the operator token id
/// * [validFrom]
/// * [validTo] - null while the key is open
/// * [retracted] - True when an operator retracted the key
@BuiltValue()
abstract class EntityKey implements Built<EntityKey, EntityKeyBuilder> {
  /// Key row id
  @BuiltValueField(wireName: r'id')
  int get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'entityId')
  String get entityId;

  /// Key type. `callsign` values are domain-prefixed (`air:`, `sea:`, `ham:`). Corporate and person keys (prompt 158): `lei`, `company-number` (`JURISDICTION:NUMBER`), `tax-id`, `officer-id` (`REGISTRY:ID`) for organizations; `person-key` (a normalized name key) for people
  @BuiltValueField(wireName: r'keyType')
  EntityKeyKeyTypeEnum get keyType;
  // enum keyTypeEnum {  airframe,  icao24,  registration,  imo,  mmsi,  norad,  cospar,  callsign,  lei,  company-number,  tax-id,  officer-id,  person-key,  };

  /// Normalised value (e.g. icao24 lowercase hex, registration without spaces or hyphens)
  @BuiltValueField(wireName: r'keyValue')
  String get keyValue;

  /// ANCHOR keys (airframe, imo, norad, cospar, lei, company-number, tax-id, officer-id) identify an entity on their own; WEAK keys (callsign, person-key) can be re-assigned
  @BuiltValueField(wireName: r'role')
  EntityKeyRoleEnum get role;
  // enum roleEnum {  ANCHOR,  WEAK,  };

  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  @BuiltValueField(wireName: r'origin')
  EntityKeyOriginEnum get origin;
  // enum originEnum {  REGISTRY,  CO_ASSERTED,  OBSERVED,  OPERATOR,  };

  /// `sourceId:externalId` of the asserting record, or the operator token id
  @BuiltValueField(wireName: r'originRef')
  String? get originRef;

  @BuiltValueField(wireName: r'validFrom')
  DateTime get validFrom;

  /// null while the key is open
  @BuiltValueField(wireName: r'validTo')
  DateTime? get validTo;

  /// True when an operator retracted the key
  @BuiltValueField(wireName: r'retracted')
  bool get retracted;

  EntityKey._();

  factory EntityKey([void updates(EntityKeyBuilder b)]) = _$EntityKey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityKeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityKey> get serializer => _$EntityKeySerializer();
}

class _$EntityKeySerializer implements PrimitiveSerializer<EntityKey> {
  @override
  final Iterable<Type> types = const [EntityKey, _$EntityKey];

  @override
  final String wireName = r'EntityKey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityKey object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'entityId';
    yield serializers.serialize(
      object.entityId,
      specifiedType: const FullType(String),
    );
    yield r'keyType';
    yield serializers.serialize(
      object.keyType,
      specifiedType: const FullType(EntityKeyKeyTypeEnum),
    );
    yield r'keyValue';
    yield serializers.serialize(
      object.keyValue,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(EntityKeyRoleEnum),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(EntityKeyOriginEnum),
    );
    if (object.originRef != null) {
      yield r'originRef';
      yield serializers.serialize(
        object.originRef,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    yield r'retracted';
    yield serializers.serialize(
      object.retracted,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityKey object, {
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
    required EntityKeyBuilder result,
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
        case r'entityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.entityId = valueDes;
          break;
        case r'keyType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityKeyKeyTypeEnum),
          ) as EntityKeyKeyTypeEnum;
          result.keyType = valueDes;
          break;
        case r'keyValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyValue = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityKeyRoleEnum),
          ) as EntityKeyRoleEnum;
          result.role = valueDes;
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confidence = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityKeyOriginEnum),
          ) as EntityKeyOriginEnum;
          result.origin = valueDes;
          break;
        case r'originRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.originRef = valueDes;
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
        case r'retracted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.retracted = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityKeyBuilder();
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

/// Key type. `callsign` values are domain-prefixed (`air:`, `sea:`, `ham:`). Corporate and person keys (prompt 158): `lei`, `company-number` (`JURISDICTION:NUMBER`), `tax-id`, `officer-id` (`REGISTRY:ID`) for organizations; `person-key` (a normalized name key) for people
class EntityKeyKeyTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'airframe')
  static const EntityKeyKeyTypeEnum airframe = _$entityKeyKeyTypeEnum_airframe;
  @BuiltValueEnumConst(wireName: r'icao24')
  static const EntityKeyKeyTypeEnum icao24 = _$entityKeyKeyTypeEnum_icao24;
  @BuiltValueEnumConst(wireName: r'registration')
  static const EntityKeyKeyTypeEnum registration =
      _$entityKeyKeyTypeEnum_registration;
  @BuiltValueEnumConst(wireName: r'imo')
  static const EntityKeyKeyTypeEnum imo = _$entityKeyKeyTypeEnum_imo;
  @BuiltValueEnumConst(wireName: r'mmsi')
  static const EntityKeyKeyTypeEnum mmsi = _$entityKeyKeyTypeEnum_mmsi;
  @BuiltValueEnumConst(wireName: r'norad')
  static const EntityKeyKeyTypeEnum norad = _$entityKeyKeyTypeEnum_norad;
  @BuiltValueEnumConst(wireName: r'cospar')
  static const EntityKeyKeyTypeEnum cospar = _$entityKeyKeyTypeEnum_cospar;
  @BuiltValueEnumConst(wireName: r'callsign')
  static const EntityKeyKeyTypeEnum callsign = _$entityKeyKeyTypeEnum_callsign;
  @BuiltValueEnumConst(wireName: r'lei')
  static const EntityKeyKeyTypeEnum lei = _$entityKeyKeyTypeEnum_lei;
  @BuiltValueEnumConst(wireName: r'company-number')
  static const EntityKeyKeyTypeEnum companyNumber =
      _$entityKeyKeyTypeEnum_companyNumber;
  @BuiltValueEnumConst(wireName: r'tax-id')
  static const EntityKeyKeyTypeEnum taxId = _$entityKeyKeyTypeEnum_taxId;
  @BuiltValueEnumConst(wireName: r'officer-id')
  static const EntityKeyKeyTypeEnum officerId =
      _$entityKeyKeyTypeEnum_officerId;
  @BuiltValueEnumConst(wireName: r'person-key')
  static const EntityKeyKeyTypeEnum personKey =
      _$entityKeyKeyTypeEnum_personKey;

  static Serializer<EntityKeyKeyTypeEnum> get serializer =>
      _$entityKeyKeyTypeEnumSerializer;

  const EntityKeyKeyTypeEnum._(String name) : super(name);

  static BuiltSet<EntityKeyKeyTypeEnum> get values =>
      _$entityKeyKeyTypeEnumValues;
  static EntityKeyKeyTypeEnum valueOf(String name) =>
      _$entityKeyKeyTypeEnumValueOf(name);
}

/// ANCHOR keys (airframe, imo, norad, cospar, lei, company-number, tax-id, officer-id) identify an entity on their own; WEAK keys (callsign, person-key) can be re-assigned
class EntityKeyRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ANCHOR')
  static const EntityKeyRoleEnum ANCHOR = _$entityKeyRoleEnum_ANCHOR;
  @BuiltValueEnumConst(wireName: r'WEAK')
  static const EntityKeyRoleEnum WEAK = _$entityKeyRoleEnum_WEAK;

  static Serializer<EntityKeyRoleEnum> get serializer =>
      _$entityKeyRoleEnumSerializer;

  const EntityKeyRoleEnum._(String name) : super(name);

  static BuiltSet<EntityKeyRoleEnum> get values => _$entityKeyRoleEnumValues;
  static EntityKeyRoleEnum valueOf(String name) =>
      _$entityKeyRoleEnumValueOf(name);
}

class EntityKeyOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'REGISTRY')
  static const EntityKeyOriginEnum REGISTRY = _$entityKeyOriginEnum_REGISTRY;
  @BuiltValueEnumConst(wireName: r'CO_ASSERTED')
  static const EntityKeyOriginEnum CO_ASSERTED =
      _$entityKeyOriginEnum_CO_ASSERTED;
  @BuiltValueEnumConst(wireName: r'OBSERVED')
  static const EntityKeyOriginEnum OBSERVED = _$entityKeyOriginEnum_OBSERVED;
  @BuiltValueEnumConst(wireName: r'OPERATOR')
  static const EntityKeyOriginEnum OPERATOR = _$entityKeyOriginEnum_OPERATOR;

  static Serializer<EntityKeyOriginEnum> get serializer =>
      _$entityKeyOriginEnumSerializer;

  const EntityKeyOriginEnum._(String name) : super(name);

  static BuiltSet<EntityKeyOriginEnum> get values =>
      _$entityKeyOriginEnumValues;
  static EntityKeyOriginEnum valueOf(String name) =>
      _$entityKeyOriginEnumValueOf(name);
}
