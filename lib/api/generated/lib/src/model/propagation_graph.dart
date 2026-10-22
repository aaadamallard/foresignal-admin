//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/provenance_chain_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/propagation_node.dart';
import 'package:foresignal_api/src/model/propagation_graph_earliest_by_platform_inner.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:foresignal_api/src/model/propagation_graph_cross_platform_order_inner.dart';
import 'package:foresignal_api/src/model/propagation_edge.dart';
import 'package:foresignal_api/src/model/propagation_graph_first_news_pickup.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'propagation_graph.g.dart';

/// Per-narrative propagation across reposts, platforms and news (`PropagationTracer` 1.0.0); large graphs summarised to ≤ 500 nodes by collapsing evidence groups
///
/// Properties:
/// * [narrativeId] - ULID identifier
/// * [summarised]
/// * [totalNodes]
/// * [totalEdges]
/// * [nodes]
/// * [edges]
/// * [earliestByPlatform]
/// * [firstNewsPickup]
/// * [descentShare] - Posts and articles reachable from the top three evidence-group roots
/// * [crossPlatformOrder]
/// * [medianRepostDelaySeconds]
/// * [provenanceChain] - 134 chain so circular reporting is recognised
/// * [tracer]
/// * [computedAt]
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class PropagationGraph
    implements Built<PropagationGraph, PropagationGraphBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'narrativeId')
  String get narrativeId;

  @BuiltValueField(wireName: r'summarised')
  bool get summarised;

  @BuiltValueField(wireName: r'totalNodes')
  int get totalNodes;

  @BuiltValueField(wireName: r'totalEdges')
  int get totalEdges;

  @BuiltValueField(wireName: r'nodes')
  BuiltList<PropagationNode> get nodes;

  @BuiltValueField(wireName: r'edges')
  BuiltList<PropagationEdge> get edges;

  @BuiltValueField(wireName: r'earliestByPlatform')
  BuiltList<PropagationGraphEarliestByPlatformInner> get earliestByPlatform;

  @BuiltValueField(wireName: r'firstNewsPickup')
  PropagationGraphFirstNewsPickup? get firstNewsPickup;

  /// Posts and articles reachable from the top three evidence-group roots
  @BuiltValueField(wireName: r'descentShare')
  num get descentShare;

  @BuiltValueField(wireName: r'crossPlatformOrder')
  BuiltList<PropagationGraphCrossPlatformOrderInner> get crossPlatformOrder;

  @BuiltValueField(wireName: r'medianRepostDelaySeconds')
  num? get medianRepostDelaySeconds;

  /// 134 chain so circular reporting is recognised
  @BuiltValueField(wireName: r'provenanceChain')
  BuiltList<ProvenanceChainEntry>? get provenanceChain;

  @BuiltValueField(wireName: r'tracer')
  DetectorRef get tracer;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  PropagationGraph._();

  factory PropagationGraph([void updates(PropagationGraphBuilder b)]) =
      _$PropagationGraph;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PropagationGraphBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PropagationGraph> get serializer =>
      _$PropagationGraphSerializer();
}

class _$PropagationGraphSerializer
    implements PrimitiveSerializer<PropagationGraph> {
  @override
  final Iterable<Type> types = const [PropagationGraph, _$PropagationGraph];

  @override
  final String wireName = r'PropagationGraph';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PropagationGraph object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'narrativeId';
    yield serializers.serialize(
      object.narrativeId,
      specifiedType: const FullType(String),
    );
    yield r'summarised';
    yield serializers.serialize(
      object.summarised,
      specifiedType: const FullType(bool),
    );
    yield r'totalNodes';
    yield serializers.serialize(
      object.totalNodes,
      specifiedType: const FullType(int),
    );
    yield r'totalEdges';
    yield serializers.serialize(
      object.totalEdges,
      specifiedType: const FullType(int),
    );
    yield r'nodes';
    yield serializers.serialize(
      object.nodes,
      specifiedType: const FullType(BuiltList, [FullType(PropagationNode)]),
    );
    yield r'edges';
    yield serializers.serialize(
      object.edges,
      specifiedType: const FullType(BuiltList, [FullType(PropagationEdge)]),
    );
    yield r'earliestByPlatform';
    yield serializers.serialize(
      object.earliestByPlatform,
      specifiedType: const FullType(BuiltList, [
        FullType(PropagationGraphEarliestByPlatformInner),
      ]),
    );
    if (object.firstNewsPickup != null) {
      yield r'firstNewsPickup';
      yield serializers.serialize(
        object.firstNewsPickup,
        specifiedType: const FullType.nullable(PropagationGraphFirstNewsPickup),
      );
    }
    yield r'descentShare';
    yield serializers.serialize(
      object.descentShare,
      specifiedType: const FullType(num),
    );
    yield r'crossPlatformOrder';
    yield serializers.serialize(
      object.crossPlatformOrder,
      specifiedType: const FullType(BuiltList, [
        FullType(PropagationGraphCrossPlatformOrderInner),
      ]),
    );
    if (object.medianRepostDelaySeconds != null) {
      yield r'medianRepostDelaySeconds';
      yield serializers.serialize(
        object.medianRepostDelaySeconds,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.provenanceChain != null) {
      yield r'provenanceChain';
      yield serializers.serialize(
        object.provenanceChain,
        specifiedType: const FullType(BuiltList, [
          FullType(ProvenanceChainEntry),
        ]),
      );
    }
    yield r'tracer';
    yield serializers.serialize(
      object.tracer,
      specifiedType: const FullType(DetectorRef),
    );
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PropagationGraph object, {
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
    required PropagationGraphBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'narrativeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.narrativeId = valueDes;
          break;
        case r'summarised':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.summarised = valueDes;
          break;
        case r'totalNodes':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.totalNodes = valueDes;
          break;
        case r'totalEdges':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.totalEdges = valueDes;
          break;
        case r'nodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(PropagationNode),
                    ]),
                  )
                  as BuiltList<PropagationNode>;
          result.nodes.replace(valueDes);
          break;
        case r'edges':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(PropagationEdge),
                    ]),
                  )
                  as BuiltList<PropagationEdge>;
          result.edges.replace(valueDes);
          break;
        case r'earliestByPlatform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(PropagationGraphEarliestByPlatformInner),
                    ]),
                  )
                  as BuiltList<PropagationGraphEarliestByPlatformInner>;
          result.earliestByPlatform.replace(valueDes);
          break;
        case r'firstNewsPickup':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PropagationGraphFirstNewsPickup,
                    ),
                  )
                  as PropagationGraphFirstNewsPickup?;
          if (valueDes == null) continue;
          result.firstNewsPickup.replace(valueDes);
          break;
        case r'descentShare':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.descentShare = valueDes;
          break;
        case r'crossPlatformOrder':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(PropagationGraphCrossPlatformOrderInner),
                    ]),
                  )
                  as BuiltList<PropagationGraphCrossPlatformOrderInner>;
          result.crossPlatformOrder.replace(valueDes);
          break;
        case r'medianRepostDelaySeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.medianRepostDelaySeconds = valueDes;
          break;
        case r'provenanceChain':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ProvenanceChainEntry),
                    ]),
                  )
                  as BuiltList<ProvenanceChainEntry>?;
          if (valueDes == null) continue;
          result.provenanceChain.replace(valueDes);
          break;
        case r'tracer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DetectorRef),
                  )
                  as DetectorRef;
          result.tracer.replace(valueDes);
          break;
        case r'computedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.computedAt = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PropagationGraph deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PropagationGraphBuilder();
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
