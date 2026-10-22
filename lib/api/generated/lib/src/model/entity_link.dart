//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_link.g.dart';

/// Time-bounded link from a source record to an entity, with the key that produced it
///
/// Properties:
/// * [sourceId]
/// * [externalId]
/// * [keyType]
/// * [keyValue]
/// * [confidence]
/// * [validFrom]
/// * [validTo] - null while the link is open
/// * [firstSeq] - seq of the first linked version
@BuiltValue()
abstract class EntityLink implements Built<EntityLink, EntityLinkBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'keyType')
  EntityLinkKeyTypeEnum get keyType;
  // enum keyTypeEnum {  airframe,  icao24,  registration,  imo,  mmsi,  norad,  cospar,  callsign,  lei,  company-number,  tax-id,  officer-id,  person-key,  };

  @BuiltValueField(wireName: r'keyValue')
  String get keyValue;

  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  @BuiltValueField(wireName: r'validFrom')
  DateTime get validFrom;

  /// null while the link is open
  @BuiltValueField(wireName: r'validTo')
  DateTime? get validTo;

  /// seq of the first linked version
  @BuiltValueField(wireName: r'firstSeq')
  int? get firstSeq;

  EntityLink._();

  factory EntityLink([void updates(EntityLinkBuilder b)]) = _$EntityLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityLink> get serializer => _$EntityLinkSerializer();
}

class _$EntityLinkSerializer implements PrimitiveSerializer<EntityLink> {
  @override
  final Iterable<Type> types = const [EntityLink, _$EntityLink];

  @override
  final String wireName = r'EntityLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'keyType';
    yield serializers.serialize(
      object.keyType,
      specifiedType: const FullType(EntityLinkKeyTypeEnum),
    );
    yield r'keyValue';
    yield serializers.serialize(
      object.keyValue,
      specifiedType: const FullType(String),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
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
    if (object.firstSeq != null) {
      yield r'firstSeq';
      yield serializers.serialize(
        object.firstSeq,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityLink object, {
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
    required EntityLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'keyType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntityLinkKeyTypeEnum),
                  )
                  as EntityLinkKeyTypeEnum;
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
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.confidence = valueDes;
          break;
        case r'validFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
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
        case r'firstSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.firstSeq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityLinkBuilder();
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

class EntityLinkKeyTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'airframe')
  static const EntityLinkKeyTypeEnum airframe =
      _$entityLinkKeyTypeEnum_airframe;
  @BuiltValueEnumConst(wireName: r'icao24')
  static const EntityLinkKeyTypeEnum icao24 = _$entityLinkKeyTypeEnum_icao24;
  @BuiltValueEnumConst(wireName: r'registration')
  static const EntityLinkKeyTypeEnum registration =
      _$entityLinkKeyTypeEnum_registration;
  @BuiltValueEnumConst(wireName: r'imo')
  static const EntityLinkKeyTypeEnum imo = _$entityLinkKeyTypeEnum_imo;
  @BuiltValueEnumConst(wireName: r'mmsi')
  static const EntityLinkKeyTypeEnum mmsi = _$entityLinkKeyTypeEnum_mmsi;
  @BuiltValueEnumConst(wireName: r'norad')
  static const EntityLinkKeyTypeEnum norad = _$entityLinkKeyTypeEnum_norad;
  @BuiltValueEnumConst(wireName: r'cospar')
  static const EntityLinkKeyTypeEnum cospar = _$entityLinkKeyTypeEnum_cospar;
  @BuiltValueEnumConst(wireName: r'callsign')
  static const EntityLinkKeyTypeEnum callsign =
      _$entityLinkKeyTypeEnum_callsign;
  @BuiltValueEnumConst(wireName: r'lei')
  static const EntityLinkKeyTypeEnum lei = _$entityLinkKeyTypeEnum_lei;
  @BuiltValueEnumConst(wireName: r'company-number')
  static const EntityLinkKeyTypeEnum companyNumber =
      _$entityLinkKeyTypeEnum_companyNumber;
  @BuiltValueEnumConst(wireName: r'tax-id')
  static const EntityLinkKeyTypeEnum taxId = _$entityLinkKeyTypeEnum_taxId;
  @BuiltValueEnumConst(wireName: r'officer-id')
  static const EntityLinkKeyTypeEnum officerId =
      _$entityLinkKeyTypeEnum_officerId;
  @BuiltValueEnumConst(wireName: r'person-key')
  static const EntityLinkKeyTypeEnum personKey =
      _$entityLinkKeyTypeEnum_personKey;

  static Serializer<EntityLinkKeyTypeEnum> get serializer =>
      _$entityLinkKeyTypeEnumSerializer;

  const EntityLinkKeyTypeEnum._(String name) : super(name);

  static BuiltSet<EntityLinkKeyTypeEnum> get values =>
      _$entityLinkKeyTypeEnumValues;
  static EntityLinkKeyTypeEnum valueOf(String name) =>
      _$entityLinkKeyTypeEnumValueOf(name);
}
