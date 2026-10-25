//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_key_input.g.dart';

/// Operator assertion of a key on an entity
///
/// Properties:
/// * [keyType]
/// * [keyValue] - Raw value; normalised and validated like observed keys (400 ENTITY_KEY_INVALID)
/// * [confidence]
/// * [validFrom] - Default now
/// * [validTo]
/// * [force] - Close the key where it is open on another entity and open it here; without it that case is 409 ENTITY_KEY_CONFLICT
@BuiltValue()
abstract class EntityKeyInput
    implements Built<EntityKeyInput, EntityKeyInputBuilder> {
  @BuiltValueField(wireName: r'keyType')
  EntityKeyInputKeyTypeEnum get keyType;
  // enum keyTypeEnum {  airframe,  icao24,  registration,  imo,  mmsi,  norad,  cospar,  callsign,  lei,  company-number,  tax-id,  officer-id,  person-key,  };

  /// Raw value; normalised and validated like observed keys (400 ENTITY_KEY_INVALID)
  @BuiltValueField(wireName: r'keyValue')
  String get keyValue;

  @BuiltValueField(wireName: r'confidence')
  num? get confidence;

  /// Default now
  @BuiltValueField(wireName: r'validFrom')
  DateTime? get validFrom;

  @BuiltValueField(wireName: r'validTo')
  DateTime? get validTo;

  /// Close the key where it is open on another entity and open it here; without it that case is 409 ENTITY_KEY_CONFLICT
  @BuiltValueField(wireName: r'force')
  bool? get force;

  EntityKeyInput._();

  factory EntityKeyInput([void updates(EntityKeyInputBuilder b)]) =
      _$EntityKeyInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityKeyInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityKeyInput> get serializer =>
      _$EntityKeyInputSerializer();
}

class _$EntityKeyInputSerializer
    implements PrimitiveSerializer<EntityKeyInput> {
  @override
  final Iterable<Type> types = const [EntityKeyInput, _$EntityKeyInput];

  @override
  final String wireName = r'EntityKeyInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityKeyInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'keyType';
    yield serializers.serialize(
      object.keyType,
      specifiedType: const FullType(EntityKeyInputKeyTypeEnum),
    );
    yield r'keyValue';
    yield serializers.serialize(
      object.keyValue,
      specifiedType: const FullType(String),
    );
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType(num),
      );
    }
    if (object.validFrom != null) {
      yield r'validFrom';
      yield serializers.serialize(
        object.validFrom,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.validTo != null) {
      yield r'validTo';
      yield serializers.serialize(
        object.validTo,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.force != null) {
      yield r'force';
      yield serializers.serialize(
        object.force,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityKeyInput object, {
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
    required EntityKeyInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keyType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntityKeyInputKeyTypeEnum),
                  )
                  as EntityKeyInputKeyTypeEnum;
          result.keyType = valueDes;
          break;
        case r'keyValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.keyValue = valueDes;
          break;
        case r'confidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.confidence = valueDes;
          break;
        case r'validFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validFrom = valueDes;
          break;
        case r'validTo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validTo = valueDes;
          break;
        case r'force':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.force = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityKeyInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityKeyInputBuilder();
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

class EntityKeyInputKeyTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'airframe')
  static const EntityKeyInputKeyTypeEnum airframe =
      _$entityKeyInputKeyTypeEnum_airframe;
  @BuiltValueEnumConst(wireName: r'icao24')
  static const EntityKeyInputKeyTypeEnum icao24 =
      _$entityKeyInputKeyTypeEnum_icao24;
  @BuiltValueEnumConst(wireName: r'registration')
  static const EntityKeyInputKeyTypeEnum registration =
      _$entityKeyInputKeyTypeEnum_registration;
  @BuiltValueEnumConst(wireName: r'imo')
  static const EntityKeyInputKeyTypeEnum imo = _$entityKeyInputKeyTypeEnum_imo;
  @BuiltValueEnumConst(wireName: r'mmsi')
  static const EntityKeyInputKeyTypeEnum mmsi =
      _$entityKeyInputKeyTypeEnum_mmsi;
  @BuiltValueEnumConst(wireName: r'norad')
  static const EntityKeyInputKeyTypeEnum norad =
      _$entityKeyInputKeyTypeEnum_norad;
  @BuiltValueEnumConst(wireName: r'cospar')
  static const EntityKeyInputKeyTypeEnum cospar =
      _$entityKeyInputKeyTypeEnum_cospar;
  @BuiltValueEnumConst(wireName: r'callsign')
  static const EntityKeyInputKeyTypeEnum callsign =
      _$entityKeyInputKeyTypeEnum_callsign;
  @BuiltValueEnumConst(wireName: r'lei')
  static const EntityKeyInputKeyTypeEnum lei = _$entityKeyInputKeyTypeEnum_lei;
  @BuiltValueEnumConst(wireName: r'company-number')
  static const EntityKeyInputKeyTypeEnum companyNumber =
      _$entityKeyInputKeyTypeEnum_companyNumber;
  @BuiltValueEnumConst(wireName: r'tax-id')
  static const EntityKeyInputKeyTypeEnum taxId =
      _$entityKeyInputKeyTypeEnum_taxId;
  @BuiltValueEnumConst(wireName: r'officer-id')
  static const EntityKeyInputKeyTypeEnum officerId =
      _$entityKeyInputKeyTypeEnum_officerId;
  @BuiltValueEnumConst(wireName: r'person-key')
  static const EntityKeyInputKeyTypeEnum personKey =
      _$entityKeyInputKeyTypeEnum_personKey;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EntityKeyInputKeyTypeEnum unknownDefaultOpenApi =
      _$entityKeyInputKeyTypeEnum_unknownDefaultOpenApi;

  static Serializer<EntityKeyInputKeyTypeEnum> get serializer =>
      _$entityKeyInputKeyTypeEnumSerializer;

  const EntityKeyInputKeyTypeEnum._(String name) : super(name);

  static BuiltSet<EntityKeyInputKeyTypeEnum> get values =>
      _$entityKeyInputKeyTypeEnumValues;
  static EntityKeyInputKeyTypeEnum valueOf(String name) =>
      _$entityKeyInputKeyTypeEnumValueOf(name);
}
