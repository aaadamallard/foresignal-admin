//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ownership_chain_node_paths_inner.g.dart';

/// The ownership / affiliation chain from one seed to this entity
///
/// Properties:
/// * [from] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [hops]
/// * [relationTypes]
/// * [weakestEdgeLabel]
@BuiltValue()
abstract class OwnershipChainNodePathsInner
    implements
        Built<
          OwnershipChainNodePathsInner,
          OwnershipChainNodePathsInnerBuilder
        > {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'hops')
  BuiltList<String> get hops;

  @BuiltValueField(wireName: r'relationTypes')
  BuiltList<OwnershipChainNodePathsInnerRelationTypesEnum>? get relationTypes;
  // enum relationTypesEnum {  owns,  controls,  officer-of,  beneficial-owner,  affiliated-with,  };

  @BuiltValueField(wireName: r'weakestEdgeLabel')
  OwnershipChainNodePathsInnerWeakestEdgeLabelEnum get weakestEdgeLabel;
  // enum weakestEdgeLabelEnum {  confirmed,  likely,  possible,  speculative,  };

  OwnershipChainNodePathsInner._();

  factory OwnershipChainNodePathsInner([
    void updates(OwnershipChainNodePathsInnerBuilder b),
  ]) = _$OwnershipChainNodePathsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OwnershipChainNodePathsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OwnershipChainNodePathsInner> get serializer =>
      _$OwnershipChainNodePathsInnerSerializer();
}

class _$OwnershipChainNodePathsInnerSerializer
    implements PrimitiveSerializer<OwnershipChainNodePathsInner> {
  @override
  final Iterable<Type> types = const [
    OwnershipChainNodePathsInner,
    _$OwnershipChainNodePathsInner,
  ];

  @override
  final String wireName = r'OwnershipChainNodePathsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OwnershipChainNodePathsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'hops';
    yield serializers.serialize(
      object.hops,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.relationTypes != null) {
      yield r'relationTypes';
      yield serializers.serialize(
        object.relationTypes,
        specifiedType: const FullType(BuiltList, [
          FullType(OwnershipChainNodePathsInnerRelationTypesEnum),
        ]),
      );
    }
    yield r'weakestEdgeLabel';
    yield serializers.serialize(
      object.weakestEdgeLabel,
      specifiedType: const FullType(
        OwnershipChainNodePathsInnerWeakestEdgeLabelEnum,
      ),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OwnershipChainNodePathsInner object, {
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
    required OwnershipChainNodePathsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.from = valueDes;
          break;
        case r'hops':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.hops.replace(valueDes);
          break;
        case r'relationTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(OwnershipChainNodePathsInnerRelationTypesEnum),
                    ]),
                  )
                  as BuiltList<OwnershipChainNodePathsInnerRelationTypesEnum>?;
          if (valueDes == null) continue;
          result.relationTypes.replace(valueDes);
          break;
        case r'weakestEdgeLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      OwnershipChainNodePathsInnerWeakestEdgeLabelEnum,
                    ),
                  )
                  as OwnershipChainNodePathsInnerWeakestEdgeLabelEnum;
          result.weakestEdgeLabel = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OwnershipChainNodePathsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OwnershipChainNodePathsInnerBuilder();
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

class OwnershipChainNodePathsInnerRelationTypesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'owns')
  static const OwnershipChainNodePathsInnerRelationTypesEnum owns =
      _$ownershipChainNodePathsInnerRelationTypesEnum_owns;
  @BuiltValueEnumConst(wireName: r'controls')
  static const OwnershipChainNodePathsInnerRelationTypesEnum controls =
      _$ownershipChainNodePathsInnerRelationTypesEnum_controls;
  @BuiltValueEnumConst(wireName: r'officer-of')
  static const OwnershipChainNodePathsInnerRelationTypesEnum officerOf =
      _$ownershipChainNodePathsInnerRelationTypesEnum_officerOf;
  @BuiltValueEnumConst(wireName: r'beneficial-owner')
  static const OwnershipChainNodePathsInnerRelationTypesEnum beneficialOwner =
      _$ownershipChainNodePathsInnerRelationTypesEnum_beneficialOwner;
  @BuiltValueEnumConst(wireName: r'affiliated-with')
  static const OwnershipChainNodePathsInnerRelationTypesEnum affiliatedWith =
      _$ownershipChainNodePathsInnerRelationTypesEnum_affiliatedWith;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OwnershipChainNodePathsInnerRelationTypesEnum
  unknownDefaultOpenApi =
      _$ownershipChainNodePathsInnerRelationTypesEnum_unknownDefaultOpenApi;

  static Serializer<OwnershipChainNodePathsInnerRelationTypesEnum>
  get serializer => _$ownershipChainNodePathsInnerRelationTypesEnumSerializer;

  const OwnershipChainNodePathsInnerRelationTypesEnum._(String name)
    : super(name);

  static BuiltSet<OwnershipChainNodePathsInnerRelationTypesEnum> get values =>
      _$ownershipChainNodePathsInnerRelationTypesEnumValues;
  static OwnershipChainNodePathsInnerRelationTypesEnum valueOf(String name) =>
      _$ownershipChainNodePathsInnerRelationTypesEnumValueOf(name);
}

class OwnershipChainNodePathsInnerWeakestEdgeLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum confirmed =
      _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum likely =
      _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum possible =
      _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum speculative =
      _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_speculative;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum
  unknownDefaultOpenApi =
      _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_unknownDefaultOpenApi;

  static Serializer<OwnershipChainNodePathsInnerWeakestEdgeLabelEnum>
  get serializer =>
      _$ownershipChainNodePathsInnerWeakestEdgeLabelEnumSerializer;

  const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum._(String name)
    : super(name);

  static BuiltSet<OwnershipChainNodePathsInnerWeakestEdgeLabelEnum>
  get values => _$ownershipChainNodePathsInnerWeakestEdgeLabelEnumValues;
  static OwnershipChainNodePathsInnerWeakestEdgeLabelEnum valueOf(
    String name,
  ) => _$ownershipChainNodePathsInnerWeakestEdgeLabelEnumValueOf(name);
}
