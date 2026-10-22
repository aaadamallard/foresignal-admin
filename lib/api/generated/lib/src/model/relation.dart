//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/relation_provenance.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'relation.g.dart';

/// Time-aware, provenance-aware edge between two objects (Client-Contract §4)
///
/// Properties:
/// * [id] - ULID identifier
/// * [fromRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [toRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [type] - Client-Contract §4 relation type
/// * [validFrom]
/// * [validTo]
/// * [confidence]
/// * [label] - Relation or dependency label (104 vocabulary)
/// * [provenance]
/// * [projected] - Materialised by `RelationProjector` (not editable)
/// * [private]
/// * [createdAt]
/// * [retiredAt]
@BuiltValue()
abstract class Relation implements Built<Relation, RelationBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'fromRef')
  String get fromRef;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'toRef')
  String get toRef;

  /// Client-Contract §4 relation type
  @BuiltValueField(wireName: r'type')
  RelationTypeEnum get type;
  // enum typeEnum {  member-of,  observed-by,  same-as,  located-in,  near,  depends-on,  affects,  derived-from,  evidence-for,  evidence-against,  about,  mentions,  precedes,  causes,  related-to,  owns,  controls,  officer-of,  beneficial-owner,  affiliated-with,  };

  @BuiltValueField(wireName: r'validFrom')
  DateTime get validFrom;

  @BuiltValueField(wireName: r'validTo')
  DateTime? get validTo;

  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  /// Relation or dependency label (104 vocabulary)
  @BuiltValueField(wireName: r'label')
  RelationLabelEnum get label;
  // enum labelEnum {  confirmed,  likely,  possible,  speculative,  };

  @BuiltValueField(wireName: r'provenance')
  RelationProvenance get provenance;

  /// Materialised by `RelationProjector` (not editable)
  @BuiltValueField(wireName: r'projected')
  bool get projected;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'retiredAt')
  DateTime? get retiredAt;

  Relation._();

  factory Relation([void updates(RelationBuilder b)]) = _$Relation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RelationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Relation> get serializer => _$RelationSerializer();
}

class _$RelationSerializer implements PrimitiveSerializer<Relation> {
  @override
  final Iterable<Type> types = const [Relation, _$Relation];

  @override
  final String wireName = r'Relation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Relation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'fromRef';
    yield serializers.serialize(
      object.fromRef,
      specifiedType: const FullType(String),
    );
    yield r'toRef';
    yield serializers.serialize(
      object.toRef,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(RelationTypeEnum),
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
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(RelationLabelEnum),
    );
    yield r'provenance';
    yield serializers.serialize(
      object.provenance,
      specifiedType: const FullType(RelationProvenance),
    );
    yield r'projected';
    yield serializers.serialize(
      object.projected,
      specifiedType: const FullType(bool),
    );
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.retiredAt != null) {
      yield r'retiredAt';
      yield serializers.serialize(
        object.retiredAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Relation object, {
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
    required RelationBuilder result,
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
        case r'fromRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.fromRef = valueDes;
          break;
        case r'toRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.toRef = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(RelationTypeEnum),
                  )
                  as RelationTypeEnum;
          result.type = valueDes;
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
        case r'confidence':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.confidence = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(RelationLabelEnum),
                  )
                  as RelationLabelEnum;
          result.label = valueDes;
          break;
        case r'provenance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(RelationProvenance),
                  )
                  as RelationProvenance;
          result.provenance.replace(valueDes);
          break;
        case r'projected':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.projected = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
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
        case r'retiredAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.retiredAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Relation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelationBuilder();
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

/// Client-Contract §4 relation type
class RelationTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'member-of')
  static const RelationTypeEnum memberOf = _$relationTypeEnum_memberOf;
  @BuiltValueEnumConst(wireName: r'observed-by')
  static const RelationTypeEnum observedBy = _$relationTypeEnum_observedBy;
  @BuiltValueEnumConst(wireName: r'same-as')
  static const RelationTypeEnum sameAs = _$relationTypeEnum_sameAs;
  @BuiltValueEnumConst(wireName: r'located-in')
  static const RelationTypeEnum locatedIn = _$relationTypeEnum_locatedIn;
  @BuiltValueEnumConst(wireName: r'near')
  static const RelationTypeEnum near = _$relationTypeEnum_near;
  @BuiltValueEnumConst(wireName: r'depends-on')
  static const RelationTypeEnum dependsOn = _$relationTypeEnum_dependsOn;
  @BuiltValueEnumConst(wireName: r'affects')
  static const RelationTypeEnum affects = _$relationTypeEnum_affects;
  @BuiltValueEnumConst(wireName: r'derived-from')
  static const RelationTypeEnum derivedFrom = _$relationTypeEnum_derivedFrom;
  @BuiltValueEnumConst(wireName: r'evidence-for')
  static const RelationTypeEnum evidenceFor = _$relationTypeEnum_evidenceFor;
  @BuiltValueEnumConst(wireName: r'evidence-against')
  static const RelationTypeEnum evidenceAgainst =
      _$relationTypeEnum_evidenceAgainst;
  @BuiltValueEnumConst(wireName: r'about')
  static const RelationTypeEnum about = _$relationTypeEnum_about;
  @BuiltValueEnumConst(wireName: r'mentions')
  static const RelationTypeEnum mentions = _$relationTypeEnum_mentions;
  @BuiltValueEnumConst(wireName: r'precedes')
  static const RelationTypeEnum precedes = _$relationTypeEnum_precedes;
  @BuiltValueEnumConst(wireName: r'causes')
  static const RelationTypeEnum causes = _$relationTypeEnum_causes;
  @BuiltValueEnumConst(wireName: r'related-to')
  static const RelationTypeEnum relatedTo = _$relationTypeEnum_relatedTo;
  @BuiltValueEnumConst(wireName: r'owns')
  static const RelationTypeEnum owns = _$relationTypeEnum_owns;
  @BuiltValueEnumConst(wireName: r'controls')
  static const RelationTypeEnum controls = _$relationTypeEnum_controls;
  @BuiltValueEnumConst(wireName: r'officer-of')
  static const RelationTypeEnum officerOf = _$relationTypeEnum_officerOf;
  @BuiltValueEnumConst(wireName: r'beneficial-owner')
  static const RelationTypeEnum beneficialOwner =
      _$relationTypeEnum_beneficialOwner;
  @BuiltValueEnumConst(wireName: r'affiliated-with')
  static const RelationTypeEnum affiliatedWith =
      _$relationTypeEnum_affiliatedWith;

  static Serializer<RelationTypeEnum> get serializer =>
      _$relationTypeEnumSerializer;

  const RelationTypeEnum._(String name) : super(name);

  static BuiltSet<RelationTypeEnum> get values => _$relationTypeEnumValues;
  static RelationTypeEnum valueOf(String name) =>
      _$relationTypeEnumValueOf(name);
}

/// Relation or dependency label (104 vocabulary)
class RelationLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const RelationLabelEnum confirmed = _$relationLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const RelationLabelEnum likely = _$relationLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const RelationLabelEnum possible = _$relationLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const RelationLabelEnum speculative = _$relationLabelEnum_speculative;

  static Serializer<RelationLabelEnum> get serializer =>
      _$relationLabelEnumSerializer;

  const RelationLabelEnum._(String name) : super(name);

  static BuiltSet<RelationLabelEnum> get values => _$relationLabelEnumValues;
  static RelationLabelEnum valueOf(String name) =>
      _$relationLabelEnumValueOf(name);
}
