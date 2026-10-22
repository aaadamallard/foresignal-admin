// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_temporal_retention_ladder_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductTemporalRetentionLadderInner
    extends ProductTemporalRetentionLadderInner {
  @override
  final String olderThan;
  @override
  final String keepEvery;

  factory _$ProductTemporalRetentionLadderInner([
    void Function(ProductTemporalRetentionLadderInnerBuilder)? updates,
  ]) =>
      (ProductTemporalRetentionLadderInnerBuilder()..update(updates))._build();

  _$ProductTemporalRetentionLadderInner._({
    required this.olderThan,
    required this.keepEvery,
  }) : super._();
  @override
  ProductTemporalRetentionLadderInner rebuild(
    void Function(ProductTemporalRetentionLadderInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProductTemporalRetentionLadderInnerBuilder toBuilder() =>
      ProductTemporalRetentionLadderInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductTemporalRetentionLadderInner &&
        olderThan == other.olderThan &&
        keepEvery == other.keepEvery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, olderThan.hashCode);
    _$hash = $jc(_$hash, keepEvery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductTemporalRetentionLadderInner')
          ..add('olderThan', olderThan)
          ..add('keepEvery', keepEvery))
        .toString();
  }
}

class ProductTemporalRetentionLadderInnerBuilder
    implements
        Builder<
          ProductTemporalRetentionLadderInner,
          ProductTemporalRetentionLadderInnerBuilder
        > {
  _$ProductTemporalRetentionLadderInner? _$v;

  String? _olderThan;
  String? get olderThan => _$this._olderThan;
  set olderThan(String? olderThan) => _$this._olderThan = olderThan;

  String? _keepEvery;
  String? get keepEvery => _$this._keepEvery;
  set keepEvery(String? keepEvery) => _$this._keepEvery = keepEvery;

  ProductTemporalRetentionLadderInnerBuilder() {
    ProductTemporalRetentionLadderInner._defaults(this);
  }

  ProductTemporalRetentionLadderInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _olderThan = $v.olderThan;
      _keepEvery = $v.keepEvery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductTemporalRetentionLadderInner other) {
    _$v = other as _$ProductTemporalRetentionLadderInner;
  }

  @override
  void update(
    void Function(ProductTemporalRetentionLadderInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ProductTemporalRetentionLadderInner build() => _build();

  _$ProductTemporalRetentionLadderInner _build() {
    final _$result =
        _$v ??
        _$ProductTemporalRetentionLadderInner._(
          olderThan: BuiltValueNullFieldError.checkNotNull(
            olderThan,
            r'ProductTemporalRetentionLadderInner',
            'olderThan',
          ),
          keepEvery: BuiltValueNullFieldError.checkNotNull(
            keepEvery,
            r'ProductTemporalRetentionLadderInner',
            'keepEvery',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
