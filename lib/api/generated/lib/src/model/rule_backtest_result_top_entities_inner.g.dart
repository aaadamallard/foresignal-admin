// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_backtest_result_top_entities_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleBacktestResultTopEntitiesInner
    extends RuleBacktestResultTopEntitiesInner {
  @override
  final String? sourceId;
  @override
  final String? externalId;
  @override
  final String? entityId;
  @override
  final int count;

  factory _$RuleBacktestResultTopEntitiesInner(
          [void Function(RuleBacktestResultTopEntitiesInnerBuilder)?
              updates]) =>
      (RuleBacktestResultTopEntitiesInnerBuilder()..update(updates))._build();

  _$RuleBacktestResultTopEntitiesInner._(
      {this.sourceId, this.externalId, this.entityId, required this.count})
      : super._();
  @override
  RuleBacktestResultTopEntitiesInner rebuild(
          void Function(RuleBacktestResultTopEntitiesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleBacktestResultTopEntitiesInnerBuilder toBuilder() =>
      RuleBacktestResultTopEntitiesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleBacktestResultTopEntitiesInner &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        entityId == other.entityId &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleBacktestResultTopEntitiesInner')
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('entityId', entityId)
          ..add('count', count))
        .toString();
  }
}

class RuleBacktestResultTopEntitiesInnerBuilder
    implements
        Builder<RuleBacktestResultTopEntitiesInner,
            RuleBacktestResultTopEntitiesInnerBuilder> {
  _$RuleBacktestResultTopEntitiesInner? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _entityId;
  String? get entityId => _$this._entityId;
  set entityId(String? entityId) => _$this._entityId = entityId;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  RuleBacktestResultTopEntitiesInnerBuilder() {
    RuleBacktestResultTopEntitiesInner._defaults(this);
  }

  RuleBacktestResultTopEntitiesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _entityId = $v.entityId;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleBacktestResultTopEntitiesInner other) {
    _$v = other as _$RuleBacktestResultTopEntitiesInner;
  }

  @override
  void update(
      void Function(RuleBacktestResultTopEntitiesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleBacktestResultTopEntitiesInner build() => _build();

  _$RuleBacktestResultTopEntitiesInner _build() {
    final _$result = _$v ??
        _$RuleBacktestResultTopEntitiesInner._(
          sourceId: sourceId,
          externalId: externalId,
          entityId: entityId,
          count: BuiltValueNullFieldError.checkNotNull(
              count, r'RuleBacktestResultTopEntitiesInner', 'count'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
