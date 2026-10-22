// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductStatus extends ProductStatus {
  @override
  final HealthStatus health;
  @override
  final bool stale;
  @override
  final DateTime? lastFrameAt;
  @override
  final String? reason;

  factory _$ProductStatus([void Function(ProductStatusBuilder)? updates]) =>
      (ProductStatusBuilder()..update(updates))._build();

  _$ProductStatus._(
      {required this.health,
      required this.stale,
      this.lastFrameAt,
      this.reason})
      : super._();
  @override
  ProductStatus rebuild(void Function(ProductStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductStatusBuilder toBuilder() => ProductStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductStatus &&
        health == other.health &&
        stale == other.stale &&
        lastFrameAt == other.lastFrameAt &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, health.hashCode);
    _$hash = $jc(_$hash, stale.hashCode);
    _$hash = $jc(_$hash, lastFrameAt.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductStatus')
          ..add('health', health)
          ..add('stale', stale)
          ..add('lastFrameAt', lastFrameAt)
          ..add('reason', reason))
        .toString();
  }
}

class ProductStatusBuilder
    implements Builder<ProductStatus, ProductStatusBuilder> {
  _$ProductStatus? _$v;

  HealthStatus? _health;
  HealthStatus? get health => _$this._health;
  set health(HealthStatus? health) => _$this._health = health;

  bool? _stale;
  bool? get stale => _$this._stale;
  set stale(bool? stale) => _$this._stale = stale;

  DateTime? _lastFrameAt;
  DateTime? get lastFrameAt => _$this._lastFrameAt;
  set lastFrameAt(DateTime? lastFrameAt) => _$this._lastFrameAt = lastFrameAt;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ProductStatusBuilder() {
    ProductStatus._defaults(this);
  }

  ProductStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _health = $v.health;
      _stale = $v.stale;
      _lastFrameAt = $v.lastFrameAt;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductStatus other) {
    _$v = other as _$ProductStatus;
  }

  @override
  void update(void Function(ProductStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductStatus build() => _build();

  _$ProductStatus _build() {
    final _$result = _$v ??
        _$ProductStatus._(
          health: BuiltValueNullFieldError.checkNotNull(
              health, r'ProductStatus', 'health'),
          stale: BuiltValueNullFieldError.checkNotNull(
              stale, r'ProductStatus', 'stale'),
          lastFrameAt: lastFrameAt,
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
