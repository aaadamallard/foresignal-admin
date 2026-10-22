// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GraphResult extends GraphResult {
  @override
  final BuiltList<ObjectEnvelope> nodes;
  @override
  final BuiltList<Relation> edges;
  @override
  final BuiltList<String>? missing;
  @override
  final bool? truncated;
  @override
  final DateTime? asOf;

  factory _$GraphResult([void Function(GraphResultBuilder)? updates]) =>
      (GraphResultBuilder()..update(updates))._build();

  _$GraphResult._({
    required this.nodes,
    required this.edges,
    this.missing,
    this.truncated,
    this.asOf,
  }) : super._();
  @override
  GraphResult rebuild(void Function(GraphResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GraphResultBuilder toBuilder() => GraphResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GraphResult &&
        nodes == other.nodes &&
        edges == other.edges &&
        missing == other.missing &&
        truncated == other.truncated &&
        asOf == other.asOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jc(_$hash, missing.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GraphResult')
          ..add('nodes', nodes)
          ..add('edges', edges)
          ..add('missing', missing)
          ..add('truncated', truncated)
          ..add('asOf', asOf))
        .toString();
  }
}

class GraphResultBuilder implements Builder<GraphResult, GraphResultBuilder> {
  _$GraphResult? _$v;

  ListBuilder<ObjectEnvelope>? _nodes;
  ListBuilder<ObjectEnvelope> get nodes =>
      _$this._nodes ??= ListBuilder<ObjectEnvelope>();
  set nodes(ListBuilder<ObjectEnvelope>? nodes) => _$this._nodes = nodes;

  ListBuilder<Relation>? _edges;
  ListBuilder<Relation> get edges => _$this._edges ??= ListBuilder<Relation>();
  set edges(ListBuilder<Relation>? edges) => _$this._edges = edges;

  ListBuilder<String>? _missing;
  ListBuilder<String> get missing => _$this._missing ??= ListBuilder<String>();
  set missing(ListBuilder<String>? missing) => _$this._missing = missing;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  GraphResultBuilder() {
    GraphResult._defaults(this);
  }

  GraphResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nodes = $v.nodes.toBuilder();
      _edges = $v.edges.toBuilder();
      _missing = $v.missing?.toBuilder();
      _truncated = $v.truncated;
      _asOf = $v.asOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GraphResult other) {
    _$v = other as _$GraphResult;
  }

  @override
  void update(void Function(GraphResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GraphResult build() => _build();

  _$GraphResult _build() {
    _$GraphResult _$result;
    try {
      _$result =
          _$v ??
          _$GraphResult._(
            nodes: nodes.build(),
            edges: edges.build(),
            missing: _missing?.build(),
            truncated: truncated,
            asOf: asOf,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        nodes.build();
        _$failedField = 'edges';
        edges.build();
        _$failedField = 'missing';
        _missing?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GraphResult',
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
