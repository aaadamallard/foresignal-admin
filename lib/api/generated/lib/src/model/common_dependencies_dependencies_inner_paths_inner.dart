//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'common_dependencies_dependencies_inner_paths_inner.g.dart';

/// Path from an input object to the dependency
///
/// Properties:
/// * [from] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [hops]
/// * [relationTypes]
/// * [weakestEdgeLabel] - Relation or dependency label (104 vocabulary)
@BuiltValue()
abstract class CommonDependenciesDependenciesInnerPathsInner
    implements
        Built<CommonDependenciesDependenciesInnerPathsInner,
            CommonDependenciesDependenciesInnerPathsInnerBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'hops')
  BuiltList<String> get hops;

  @BuiltValueField(wireName: r'relationTypes')
  BuiltList<CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum>?
      get relationTypes;
  // enum relationTypesEnum {  member-of,  observed-by,  same-as,  located-in,  near,  depends-on,  affects,  derived-from,  evidence-for,  evidence-against,  about,  mentions,  precedes,  causes,  related-to,  owns,  controls,  officer-of,  beneficial-owner,  affiliated-with,  };

  /// Relation or dependency label (104 vocabulary)
  @BuiltValueField(wireName: r'weakestEdgeLabel')
  CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
      get weakestEdgeLabel;
  // enum weakestEdgeLabelEnum {  confirmed,  likely,  possible,  speculative,  };

  CommonDependenciesDependenciesInnerPathsInner._();

  factory CommonDependenciesDependenciesInnerPathsInner(
          [void updates(
              CommonDependenciesDependenciesInnerPathsInnerBuilder b)]) =
      _$CommonDependenciesDependenciesInnerPathsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          CommonDependenciesDependenciesInnerPathsInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommonDependenciesDependenciesInnerPathsInner>
      get serializer =>
          _$CommonDependenciesDependenciesInnerPathsInnerSerializer();
}

class _$CommonDependenciesDependenciesInnerPathsInnerSerializer
    implements
        PrimitiveSerializer<CommonDependenciesDependenciesInnerPathsInner> {
  @override
  final Iterable<Type> types = const [
    CommonDependenciesDependenciesInnerPathsInner,
    _$CommonDependenciesDependenciesInnerPathsInner
  ];

  @override
  final String wireName = r'CommonDependenciesDependenciesInnerPathsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommonDependenciesDependenciesInnerPathsInner object, {
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
          FullType(
              CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum)
        ]),
      );
    }
    yield r'weakestEdgeLabel';
    yield serializers.serialize(
      object.weakestEdgeLabel,
      specifiedType: const FullType(
          CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CommonDependenciesDependenciesInnerPathsInner object, {
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
    required CommonDependenciesDependenciesInnerPathsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        case r'hops':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.hops.replace(valueDes);
          break;
        case r'relationTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(
                  CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum)
            ]),
          ) as BuiltList<
              CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum>?;
          if (valueDes == null) continue;
          result.relationTypes.replace(valueDes);
          break;
        case r'weakestEdgeLabel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum),
          ) as CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum;
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
  CommonDependenciesDependenciesInnerPathsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommonDependenciesDependenciesInnerPathsInnerBuilder();
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
class CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
    extends EnumClass {
  @BuiltValueEnumConst(wireName: r'member-of')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      memberOf =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_memberOf;
  @BuiltValueEnumConst(wireName: r'observed-by')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      observedBy =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_observedBy;
  @BuiltValueEnumConst(wireName: r'same-as')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      sameAs =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_sameAs;
  @BuiltValueEnumConst(wireName: r'located-in')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      locatedIn =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_locatedIn;
  @BuiltValueEnumConst(wireName: r'near')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      near =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_near;
  @BuiltValueEnumConst(wireName: r'depends-on')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      dependsOn =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_dependsOn;
  @BuiltValueEnumConst(wireName: r'affects')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      affects =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_affects;
  @BuiltValueEnumConst(wireName: r'derived-from')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      derivedFrom =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_derivedFrom;
  @BuiltValueEnumConst(wireName: r'evidence-for')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      evidenceFor =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_evidenceFor;
  @BuiltValueEnumConst(wireName: r'evidence-against')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      evidenceAgainst =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_evidenceAgainst;
  @BuiltValueEnumConst(wireName: r'about')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      about =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_about;
  @BuiltValueEnumConst(wireName: r'mentions')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      mentions =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_mentions;
  @BuiltValueEnumConst(wireName: r'precedes')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      precedes =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_precedes;
  @BuiltValueEnumConst(wireName: r'causes')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      causes =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_causes;
  @BuiltValueEnumConst(wireName: r'related-to')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      relatedTo =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_relatedTo;
  @BuiltValueEnumConst(wireName: r'owns')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      owns =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_owns;
  @BuiltValueEnumConst(wireName: r'controls')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      controls =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_controls;
  @BuiltValueEnumConst(wireName: r'officer-of')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      officerOf =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_officerOf;
  @BuiltValueEnumConst(wireName: r'beneficial-owner')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      beneficialOwner =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_beneficialOwner;
  @BuiltValueEnumConst(wireName: r'affiliated-with')
  static const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum
      affiliatedWith =
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnum_affiliatedWith;

  static Serializer<
          CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum>
      get serializer =>
          _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnumSerializer;

  const CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum._(
      String name)
      : super(name);

  static BuiltSet<
          CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum>
      get values =>
          _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnumValues;
  static CommonDependenciesDependenciesInnerPathsInnerRelationTypesEnum valueOf(
          String name) =>
      _$commonDependenciesDependenciesInnerPathsInnerRelationTypesEnumValueOf(
          name);
}

/// Relation or dependency label (104 vocabulary)
class CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
    extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
      confirmed =
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
      likely =
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
      possible =
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
      speculative =
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_speculative;

  static Serializer<
          CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum>
      get serializer =>
          _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnumSerializer;

  const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum._(
      String name)
      : super(name);

  static BuiltSet<
          CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum>
      get values =>
          _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnumValues;
  static CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum valueOf(
          String name) =>
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnumValueOf(
          name);
}
