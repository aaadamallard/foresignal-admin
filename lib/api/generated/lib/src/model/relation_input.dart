//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'relation_input.g.dart';

/// An operator or agent relation; `causes` stays ≤ `possible` until an operator confirms
///
/// Properties:
/// * [fromRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [toRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [type] - Client-Contract §4 relation type
/// * [validFrom]
/// * [validTo]
/// * [confidence]
/// * [label] - Relation or dependency label (104 vocabulary)
/// * [private]
@BuiltValue()
abstract class RelationInput
    implements Built<RelationInput, RelationInputBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'fromRef')
  String get fromRef;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'toRef')
  String get toRef;

  /// Client-Contract §4 relation type
  @BuiltValueField(wireName: r'type')
  RelationInputTypeEnum get type;
  // enum typeEnum {  member-of,  observed-by,  same-as,  located-in,  near,  depends-on,  affects,  derived-from,  evidence-for,  evidence-against,  about,  mentions,  precedes,  causes,  related-to,  owns,  controls,  officer-of,  beneficial-owner,  affiliated-with,  };

  @BuiltValueField(wireName: r'validFrom')
  DateTime? get validFrom;

  @BuiltValueField(wireName: r'validTo')
  DateTime? get validTo;

  @BuiltValueField(wireName: r'confidence')
  num? get confidence;

  /// Relation or dependency label (104 vocabulary)
  @BuiltValueField(wireName: r'label')
  RelationInputLabelEnum? get label;
  // enum labelEnum {  confirmed,  likely,  possible,  speculative,  };

  @BuiltValueField(wireName: r'private')
  bool? get private;

  RelationInput._();

  factory RelationInput([void updates(RelationInputBuilder b)]) =
      _$RelationInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RelationInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RelationInput> get serializer =>
      _$RelationInputSerializer();
}

class _$RelationInputSerializer implements PrimitiveSerializer<RelationInput> {
  @override
  final Iterable<Type> types = const [RelationInput, _$RelationInput];

  @override
  final String wireName = r'RelationInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RelationInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
      specifiedType: const FullType(RelationInputTypeEnum),
    );
    if (object.validFrom != null) {
      yield r'validFrom';
      yield serializers.serialize(
        object.validFrom,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.validTo != null) {
      yield r'validTo';
      yield serializers.serialize(
        object.validTo,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType(num),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(RelationInputLabelEnum),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RelationInput object, {
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
    required RelationInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
                    specifiedType: const FullType(RelationInputTypeEnum),
                  )
                  as RelationInputTypeEnum;
          result.type = valueDes;
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
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RelationInputLabelEnum,
                    ),
                  )
                  as RelationInputLabelEnum?;
          if (valueDes == null) continue;
          result.label = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RelationInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelationInputBuilder();
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
class RelationInputTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'member-of')
  static const RelationInputTypeEnum memberOf =
      _$relationInputTypeEnum_memberOf;
  @BuiltValueEnumConst(wireName: r'observed-by')
  static const RelationInputTypeEnum observedBy =
      _$relationInputTypeEnum_observedBy;
  @BuiltValueEnumConst(wireName: r'same-as')
  static const RelationInputTypeEnum sameAs = _$relationInputTypeEnum_sameAs;
  @BuiltValueEnumConst(wireName: r'located-in')
  static const RelationInputTypeEnum locatedIn =
      _$relationInputTypeEnum_locatedIn;
  @BuiltValueEnumConst(wireName: r'near')
  static const RelationInputTypeEnum near = _$relationInputTypeEnum_near;
  @BuiltValueEnumConst(wireName: r'depends-on')
  static const RelationInputTypeEnum dependsOn =
      _$relationInputTypeEnum_dependsOn;
  @BuiltValueEnumConst(wireName: r'affects')
  static const RelationInputTypeEnum affects = _$relationInputTypeEnum_affects;
  @BuiltValueEnumConst(wireName: r'derived-from')
  static const RelationInputTypeEnum derivedFrom =
      _$relationInputTypeEnum_derivedFrom;
  @BuiltValueEnumConst(wireName: r'evidence-for')
  static const RelationInputTypeEnum evidenceFor =
      _$relationInputTypeEnum_evidenceFor;
  @BuiltValueEnumConst(wireName: r'evidence-against')
  static const RelationInputTypeEnum evidenceAgainst =
      _$relationInputTypeEnum_evidenceAgainst;
  @BuiltValueEnumConst(wireName: r'about')
  static const RelationInputTypeEnum about = _$relationInputTypeEnum_about;
  @BuiltValueEnumConst(wireName: r'mentions')
  static const RelationInputTypeEnum mentions =
      _$relationInputTypeEnum_mentions;
  @BuiltValueEnumConst(wireName: r'precedes')
  static const RelationInputTypeEnum precedes =
      _$relationInputTypeEnum_precedes;
  @BuiltValueEnumConst(wireName: r'causes')
  static const RelationInputTypeEnum causes = _$relationInputTypeEnum_causes;
  @BuiltValueEnumConst(wireName: r'related-to')
  static const RelationInputTypeEnum relatedTo =
      _$relationInputTypeEnum_relatedTo;
  @BuiltValueEnumConst(wireName: r'owns')
  static const RelationInputTypeEnum owns = _$relationInputTypeEnum_owns;
  @BuiltValueEnumConst(wireName: r'controls')
  static const RelationInputTypeEnum controls =
      _$relationInputTypeEnum_controls;
  @BuiltValueEnumConst(wireName: r'officer-of')
  static const RelationInputTypeEnum officerOf =
      _$relationInputTypeEnum_officerOf;
  @BuiltValueEnumConst(wireName: r'beneficial-owner')
  static const RelationInputTypeEnum beneficialOwner =
      _$relationInputTypeEnum_beneficialOwner;
  @BuiltValueEnumConst(wireName: r'affiliated-with')
  static const RelationInputTypeEnum affiliatedWith =
      _$relationInputTypeEnum_affiliatedWith;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RelationInputTypeEnum unknownDefaultOpenApi =
      _$relationInputTypeEnum_unknownDefaultOpenApi;

  static Serializer<RelationInputTypeEnum> get serializer =>
      _$relationInputTypeEnumSerializer;

  const RelationInputTypeEnum._(String name) : super(name);

  static BuiltSet<RelationInputTypeEnum> get values =>
      _$relationInputTypeEnumValues;
  static RelationInputTypeEnum valueOf(String name) =>
      _$relationInputTypeEnumValueOf(name);
}

/// Relation or dependency label (104 vocabulary)
class RelationInputLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const RelationInputLabelEnum confirmed =
      _$relationInputLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const RelationInputLabelEnum likely = _$relationInputLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const RelationInputLabelEnum possible =
      _$relationInputLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const RelationInputLabelEnum speculative =
      _$relationInputLabelEnum_speculative;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RelationInputLabelEnum unknownDefaultOpenApi =
      _$relationInputLabelEnum_unknownDefaultOpenApi;

  static Serializer<RelationInputLabelEnum> get serializer =>
      _$relationInputLabelEnumSerializer;

  const RelationInputLabelEnum._(String name) : super(name);

  static BuiltSet<RelationInputLabelEnum> get values =>
      _$relationInputLabelEnumValues;
  static RelationInputLabelEnum valueOf(String name) =>
      _$relationInputLabelEnumValueOf(name);
}
