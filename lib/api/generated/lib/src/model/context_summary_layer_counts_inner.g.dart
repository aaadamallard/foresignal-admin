// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_summary_layer_counts_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContextSummaryLayerCountsInner extends ContextSummaryLayerCountsInner {
  @override
  final String layer;
  @override
  final int count;
  @override
  final int? liveCount;

  factory _$ContextSummaryLayerCountsInner(
          [void Function(ContextSummaryLayerCountsInnerBuilder)? updates]) =>
      (ContextSummaryLayerCountsInnerBuilder()..update(updates))._build();

  _$ContextSummaryLayerCountsInner._(
      {required this.layer, required this.count, this.liveCount})
      : super._();
  @override
  ContextSummaryLayerCountsInner rebuild(
          void Function(ContextSummaryLayerCountsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContextSummaryLayerCountsInnerBuilder toBuilder() =>
      ContextSummaryLayerCountsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContextSummaryLayerCountsInner &&
        layer == other.layer &&
        count == other.count &&
        liveCount == other.liveCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, layer.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, liveCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContextSummaryLayerCountsInner')
          ..add('layer', layer)
          ..add('count', count)
          ..add('liveCount', liveCount))
        .toString();
  }
}

class ContextSummaryLayerCountsInnerBuilder
    implements
        Builder<ContextSummaryLayerCountsInner,
            ContextSummaryLayerCountsInnerBuilder> {
  _$ContextSummaryLayerCountsInner? _$v;

  String? _layer;
  String? get layer => _$this._layer;
  set layer(String? layer) => _$this._layer = layer;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _liveCount;
  int? get liveCount => _$this._liveCount;
  set liveCount(int? liveCount) => _$this._liveCount = liveCount;

  ContextSummaryLayerCountsInnerBuilder() {
    ContextSummaryLayerCountsInner._defaults(this);
  }

  ContextSummaryLayerCountsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _layer = $v.layer;
      _count = $v.count;
      _liveCount = $v.liveCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContextSummaryLayerCountsInner other) {
    _$v = other as _$ContextSummaryLayerCountsInner;
  }

  @override
  void update(void Function(ContextSummaryLayerCountsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContextSummaryLayerCountsInner build() => _build();

  _$ContextSummaryLayerCountsInner _build() {
    final _$result = _$v ??
        _$ContextSummaryLayerCountsInner._(
          layer: BuiltValueNullFieldError.checkNotNull(
              layer, r'ContextSummaryLayerCountsInner', 'layer'),
          count: BuiltValueNullFieldError.checkNotNull(
              count, r'ContextSummaryLayerCountsInner', 'count'),
          liveCount: liveCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
