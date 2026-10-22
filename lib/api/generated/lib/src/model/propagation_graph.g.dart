// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propagation_graph.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PropagationGraph extends PropagationGraph {
  @override
  final String narrativeId;
  @override
  final bool summarised;
  @override
  final int totalNodes;
  @override
  final int totalEdges;
  @override
  final BuiltList<PropagationNode> nodes;
  @override
  final BuiltList<PropagationEdge> edges;
  @override
  final BuiltList<PropagationGraphEarliestByPlatformInner> earliestByPlatform;
  @override
  final PropagationGraphFirstNewsPickup? firstNewsPickup;
  @override
  final num descentShare;
  @override
  final BuiltList<PropagationGraphCrossPlatformOrderInner> crossPlatformOrder;
  @override
  final num? medianRepostDelaySeconds;
  @override
  final BuiltList<ProvenanceChainEntry>? provenanceChain;
  @override
  final DetectorRef tracer;
  @override
  final DateTime computedAt;
  @override
  final String? manifestId;

  factory _$PropagationGraph([
    void Function(PropagationGraphBuilder)? updates,
  ]) => (PropagationGraphBuilder()..update(updates))._build();

  _$PropagationGraph._({
    required this.narrativeId,
    required this.summarised,
    required this.totalNodes,
    required this.totalEdges,
    required this.nodes,
    required this.edges,
    required this.earliestByPlatform,
    this.firstNewsPickup,
    required this.descentShare,
    required this.crossPlatformOrder,
    this.medianRepostDelaySeconds,
    this.provenanceChain,
    required this.tracer,
    required this.computedAt,
    this.manifestId,
  }) : super._();
  @override
  PropagationGraph rebuild(void Function(PropagationGraphBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropagationGraphBuilder toBuilder() =>
      PropagationGraphBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropagationGraph &&
        narrativeId == other.narrativeId &&
        summarised == other.summarised &&
        totalNodes == other.totalNodes &&
        totalEdges == other.totalEdges &&
        nodes == other.nodes &&
        edges == other.edges &&
        earliestByPlatform == other.earliestByPlatform &&
        firstNewsPickup == other.firstNewsPickup &&
        descentShare == other.descentShare &&
        crossPlatformOrder == other.crossPlatformOrder &&
        medianRepostDelaySeconds == other.medianRepostDelaySeconds &&
        provenanceChain == other.provenanceChain &&
        tracer == other.tracer &&
        computedAt == other.computedAt &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, narrativeId.hashCode);
    _$hash = $jc(_$hash, summarised.hashCode);
    _$hash = $jc(_$hash, totalNodes.hashCode);
    _$hash = $jc(_$hash, totalEdges.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jc(_$hash, earliestByPlatform.hashCode);
    _$hash = $jc(_$hash, firstNewsPickup.hashCode);
    _$hash = $jc(_$hash, descentShare.hashCode);
    _$hash = $jc(_$hash, crossPlatformOrder.hashCode);
    _$hash = $jc(_$hash, medianRepostDelaySeconds.hashCode);
    _$hash = $jc(_$hash, provenanceChain.hashCode);
    _$hash = $jc(_$hash, tracer.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PropagationGraph')
          ..add('narrativeId', narrativeId)
          ..add('summarised', summarised)
          ..add('totalNodes', totalNodes)
          ..add('totalEdges', totalEdges)
          ..add('nodes', nodes)
          ..add('edges', edges)
          ..add('earliestByPlatform', earliestByPlatform)
          ..add('firstNewsPickup', firstNewsPickup)
          ..add('descentShare', descentShare)
          ..add('crossPlatformOrder', crossPlatformOrder)
          ..add('medianRepostDelaySeconds', medianRepostDelaySeconds)
          ..add('provenanceChain', provenanceChain)
          ..add('tracer', tracer)
          ..add('computedAt', computedAt)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class PropagationGraphBuilder
    implements Builder<PropagationGraph, PropagationGraphBuilder> {
  _$PropagationGraph? _$v;

  String? _narrativeId;
  String? get narrativeId => _$this._narrativeId;
  set narrativeId(String? narrativeId) => _$this._narrativeId = narrativeId;

  bool? _summarised;
  bool? get summarised => _$this._summarised;
  set summarised(bool? summarised) => _$this._summarised = summarised;

  int? _totalNodes;
  int? get totalNodes => _$this._totalNodes;
  set totalNodes(int? totalNodes) => _$this._totalNodes = totalNodes;

  int? _totalEdges;
  int? get totalEdges => _$this._totalEdges;
  set totalEdges(int? totalEdges) => _$this._totalEdges = totalEdges;

  ListBuilder<PropagationNode>? _nodes;
  ListBuilder<PropagationNode> get nodes =>
      _$this._nodes ??= ListBuilder<PropagationNode>();
  set nodes(ListBuilder<PropagationNode>? nodes) => _$this._nodes = nodes;

  ListBuilder<PropagationEdge>? _edges;
  ListBuilder<PropagationEdge> get edges =>
      _$this._edges ??= ListBuilder<PropagationEdge>();
  set edges(ListBuilder<PropagationEdge>? edges) => _$this._edges = edges;

  ListBuilder<PropagationGraphEarliestByPlatformInner>? _earliestByPlatform;
  ListBuilder<PropagationGraphEarliestByPlatformInner> get earliestByPlatform =>
      _$this._earliestByPlatform ??=
          ListBuilder<PropagationGraphEarliestByPlatformInner>();
  set earliestByPlatform(
    ListBuilder<PropagationGraphEarliestByPlatformInner>? earliestByPlatform,
  ) => _$this._earliestByPlatform = earliestByPlatform;

  PropagationGraphFirstNewsPickupBuilder? _firstNewsPickup;
  PropagationGraphFirstNewsPickupBuilder get firstNewsPickup =>
      _$this._firstNewsPickup ??= PropagationGraphFirstNewsPickupBuilder();
  set firstNewsPickup(
    PropagationGraphFirstNewsPickupBuilder? firstNewsPickup,
  ) => _$this._firstNewsPickup = firstNewsPickup;

  num? _descentShare;
  num? get descentShare => _$this._descentShare;
  set descentShare(num? descentShare) => _$this._descentShare = descentShare;

  ListBuilder<PropagationGraphCrossPlatformOrderInner>? _crossPlatformOrder;
  ListBuilder<PropagationGraphCrossPlatformOrderInner> get crossPlatformOrder =>
      _$this._crossPlatformOrder ??=
          ListBuilder<PropagationGraphCrossPlatformOrderInner>();
  set crossPlatformOrder(
    ListBuilder<PropagationGraphCrossPlatformOrderInner>? crossPlatformOrder,
  ) => _$this._crossPlatformOrder = crossPlatformOrder;

  num? _medianRepostDelaySeconds;
  num? get medianRepostDelaySeconds => _$this._medianRepostDelaySeconds;
  set medianRepostDelaySeconds(num? medianRepostDelaySeconds) =>
      _$this._medianRepostDelaySeconds = medianRepostDelaySeconds;

  ListBuilder<ProvenanceChainEntry>? _provenanceChain;
  ListBuilder<ProvenanceChainEntry> get provenanceChain =>
      _$this._provenanceChain ??= ListBuilder<ProvenanceChainEntry>();
  set provenanceChain(ListBuilder<ProvenanceChainEntry>? provenanceChain) =>
      _$this._provenanceChain = provenanceChain;

  DetectorRefBuilder? _tracer;
  DetectorRefBuilder get tracer => _$this._tracer ??= DetectorRefBuilder();
  set tracer(DetectorRefBuilder? tracer) => _$this._tracer = tracer;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  PropagationGraphBuilder() {
    PropagationGraph._defaults(this);
  }

  PropagationGraphBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _narrativeId = $v.narrativeId;
      _summarised = $v.summarised;
      _totalNodes = $v.totalNodes;
      _totalEdges = $v.totalEdges;
      _nodes = $v.nodes.toBuilder();
      _edges = $v.edges.toBuilder();
      _earliestByPlatform = $v.earliestByPlatform.toBuilder();
      _firstNewsPickup = $v.firstNewsPickup?.toBuilder();
      _descentShare = $v.descentShare;
      _crossPlatformOrder = $v.crossPlatformOrder.toBuilder();
      _medianRepostDelaySeconds = $v.medianRepostDelaySeconds;
      _provenanceChain = $v.provenanceChain?.toBuilder();
      _tracer = $v.tracer.toBuilder();
      _computedAt = $v.computedAt;
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropagationGraph other) {
    _$v = other as _$PropagationGraph;
  }

  @override
  void update(void Function(PropagationGraphBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropagationGraph build() => _build();

  _$PropagationGraph _build() {
    _$PropagationGraph _$result;
    try {
      _$result =
          _$v ??
          _$PropagationGraph._(
            narrativeId: BuiltValueNullFieldError.checkNotNull(
              narrativeId,
              r'PropagationGraph',
              'narrativeId',
            ),
            summarised: BuiltValueNullFieldError.checkNotNull(
              summarised,
              r'PropagationGraph',
              'summarised',
            ),
            totalNodes: BuiltValueNullFieldError.checkNotNull(
              totalNodes,
              r'PropagationGraph',
              'totalNodes',
            ),
            totalEdges: BuiltValueNullFieldError.checkNotNull(
              totalEdges,
              r'PropagationGraph',
              'totalEdges',
            ),
            nodes: nodes.build(),
            edges: edges.build(),
            earliestByPlatform: earliestByPlatform.build(),
            firstNewsPickup: _firstNewsPickup?.build(),
            descentShare: BuiltValueNullFieldError.checkNotNull(
              descentShare,
              r'PropagationGraph',
              'descentShare',
            ),
            crossPlatformOrder: crossPlatformOrder.build(),
            medianRepostDelaySeconds: medianRepostDelaySeconds,
            provenanceChain: _provenanceChain?.build(),
            tracer: tracer.build(),
            computedAt: BuiltValueNullFieldError.checkNotNull(
              computedAt,
              r'PropagationGraph',
              'computedAt',
            ),
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        nodes.build();
        _$failedField = 'edges';
        edges.build();
        _$failedField = 'earliestByPlatform';
        earliestByPlatform.build();
        _$failedField = 'firstNewsPickup';
        _firstNewsPickup?.build();

        _$failedField = 'crossPlatformOrder';
        crossPlatformOrder.build();

        _$failedField = 'provenanceChain';
        _provenanceChain?.build();
        _$failedField = 'tracer';
        tracer.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PropagationGraph',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
