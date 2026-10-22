// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_temporal_retention.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductTemporalRetention extends ProductTemporalRetention {
  @override
  final BuiltList<ProductTemporalRetentionLadderInner>? ladder;
  @override
  final String? maxAge;
  @override
  final int? runs;
  @override
  final String? summary;

  factory _$ProductTemporalRetention(
          [void Function(ProductTemporalRetentionBuilder)? updates]) =>
      (ProductTemporalRetentionBuilder()..update(updates))._build();

  _$ProductTemporalRetention._(
      {this.ladder, this.maxAge, this.runs, this.summary})
      : super._();
  @override
  ProductTemporalRetention rebuild(
          void Function(ProductTemporalRetentionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductTemporalRetentionBuilder toBuilder() =>
      ProductTemporalRetentionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductTemporalRetention &&
        ladder == other.ladder &&
        maxAge == other.maxAge &&
        runs == other.runs &&
        summary == other.summary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ladder.hashCode);
    _$hash = $jc(_$hash, maxAge.hashCode);
    _$hash = $jc(_$hash, runs.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductTemporalRetention')
          ..add('ladder', ladder)
          ..add('maxAge', maxAge)
          ..add('runs', runs)
          ..add('summary', summary))
        .toString();
  }
}

class ProductTemporalRetentionBuilder
    implements
        Builder<ProductTemporalRetention, ProductTemporalRetentionBuilder> {
  _$ProductTemporalRetention? _$v;

  ListBuilder<ProductTemporalRetentionLadderInner>? _ladder;
  ListBuilder<ProductTemporalRetentionLadderInner> get ladder =>
      _$this._ladder ??= ListBuilder<ProductTemporalRetentionLadderInner>();
  set ladder(ListBuilder<ProductTemporalRetentionLadderInner>? ladder) =>
      _$this._ladder = ladder;

  String? _maxAge;
  String? get maxAge => _$this._maxAge;
  set maxAge(String? maxAge) => _$this._maxAge = maxAge;

  int? _runs;
  int? get runs => _$this._runs;
  set runs(int? runs) => _$this._runs = runs;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  ProductTemporalRetentionBuilder() {
    ProductTemporalRetention._defaults(this);
  }

  ProductTemporalRetentionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ladder = $v.ladder?.toBuilder();
      _maxAge = $v.maxAge;
      _runs = $v.runs;
      _summary = $v.summary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductTemporalRetention other) {
    _$v = other as _$ProductTemporalRetention;
  }

  @override
  void update(void Function(ProductTemporalRetentionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductTemporalRetention build() => _build();

  _$ProductTemporalRetention _build() {
    _$ProductTemporalRetention _$result;
    try {
      _$result = _$v ??
          _$ProductTemporalRetention._(
            ladder: _ladder?.build(),
            maxAge: maxAge,
            runs: runs,
            summary: summary,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ladder';
        _ladder?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProductTemporalRetention', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
