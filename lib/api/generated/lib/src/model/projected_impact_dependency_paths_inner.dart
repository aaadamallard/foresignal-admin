//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projected_impact_dependency_paths_inner.g.dart';

/// 104 dependency path from an exposed facility to a downstream asset
///
/// Properties:
/// * [from] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [to] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [hops]
/// * [weakestEdgeLabel] - Relation or dependency label (104 vocabulary)
/// * [depth] - Edges from the exposed facility
@BuiltValue()
abstract class ProjectedImpactDependencyPathsInner
    implements
        Built<
          ProjectedImpactDependencyPathsInner,
          ProjectedImpactDependencyPathsInnerBuilder
        > {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'from')
  String get from;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'to')
  String get to;

  @BuiltValueField(wireName: r'hops')
  BuiltList<String>? get hops;

  /// Relation or dependency label (104 vocabulary)
  @BuiltValueField(wireName: r'weakestEdgeLabel')
  ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum get weakestEdgeLabel;
  // enum weakestEdgeLabelEnum {  confirmed,  likely,  possible,  speculative,  };

  /// Edges from the exposed facility
  @BuiltValueField(wireName: r'depth')
  int? get depth;

  ProjectedImpactDependencyPathsInner._();

  factory ProjectedImpactDependencyPathsInner([
    void updates(ProjectedImpactDependencyPathsInnerBuilder b),
  ]) = _$ProjectedImpactDependencyPathsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectedImpactDependencyPathsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectedImpactDependencyPathsInner> get serializer =>
      _$ProjectedImpactDependencyPathsInnerSerializer();
}

class _$ProjectedImpactDependencyPathsInnerSerializer
    implements PrimitiveSerializer<ProjectedImpactDependencyPathsInner> {
  @override
  final Iterable<Type> types = const [
    ProjectedImpactDependencyPathsInner,
    _$ProjectedImpactDependencyPathsInner,
  ];

  @override
  final String wireName = r'ProjectedImpactDependencyPathsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectedImpactDependencyPathsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
    if (object.hops != null) {
      yield r'hops';
      yield serializers.serialize(
        object.hops,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'weakestEdgeLabel';
    yield serializers.serialize(
      object.weakestEdgeLabel,
      specifiedType: const FullType(
        ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum,
      ),
    );
    if (object.depth != null) {
      yield r'depth';
      yield serializers.serialize(
        object.depth,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectedImpactDependencyPathsInner object, {
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
    required ProjectedImpactDependencyPathsInnerBuilder result,
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
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.to = valueDes;
          break;
        case r'hops':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.hops.replace(valueDes);
          break;
        case r'weakestEdgeLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum,
                    ),
                  )
                  as ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum;
          result.weakestEdgeLabel = valueDes;
          break;
        case r'depth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.depth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectedImpactDependencyPathsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectedImpactDependencyPathsInnerBuilder();
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

/// Relation or dependency label (104 vocabulary)
class ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
    extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
  confirmed =
      _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum likely =
      _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
  possible = _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
  speculative =
      _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_speculative;

  static Serializer<ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum>
  get serializer =>
      _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnumSerializer;

  const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum._(String name)
    : super(name);

  static BuiltSet<ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum>
  get values => _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnumValues;
  static ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum valueOf(
    String name,
  ) => _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnumValueOf(name);
}
