// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coverage_stats_coverage_balance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoverageStatsCoverageBalance extends CoverageStatsCoverageBalance {
  @override
  final num left;
  @override
  final num center;
  @override
  final num right;
  @override
  final num unrated;

  factory _$CoverageStatsCoverageBalance(
          [void Function(CoverageStatsCoverageBalanceBuilder)? updates]) =>
      (CoverageStatsCoverageBalanceBuilder()..update(updates))._build();

  _$CoverageStatsCoverageBalance._(
      {required this.left,
      required this.center,
      required this.right,
      required this.unrated})
      : super._();
  @override
  CoverageStatsCoverageBalance rebuild(
          void Function(CoverageStatsCoverageBalanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoverageStatsCoverageBalanceBuilder toBuilder() =>
      CoverageStatsCoverageBalanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoverageStatsCoverageBalance &&
        left == other.left &&
        center == other.center &&
        right == other.right &&
        unrated == other.unrated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, left.hashCode);
    _$hash = $jc(_$hash, center.hashCode);
    _$hash = $jc(_$hash, right.hashCode);
    _$hash = $jc(_$hash, unrated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoverageStatsCoverageBalance')
          ..add('left', left)
          ..add('center', center)
          ..add('right', right)
          ..add('unrated', unrated))
        .toString();
  }
}

class CoverageStatsCoverageBalanceBuilder
    implements
        Builder<CoverageStatsCoverageBalance,
            CoverageStatsCoverageBalanceBuilder> {
  _$CoverageStatsCoverageBalance? _$v;

  num? _left;
  num? get left => _$this._left;
  set left(num? left) => _$this._left = left;

  num? _center;
  num? get center => _$this._center;
  set center(num? center) => _$this._center = center;

  num? _right;
  num? get right => _$this._right;
  set right(num? right) => _$this._right = right;

  num? _unrated;
  num? get unrated => _$this._unrated;
  set unrated(num? unrated) => _$this._unrated = unrated;

  CoverageStatsCoverageBalanceBuilder() {
    CoverageStatsCoverageBalance._defaults(this);
  }

  CoverageStatsCoverageBalanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _left = $v.left;
      _center = $v.center;
      _right = $v.right;
      _unrated = $v.unrated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoverageStatsCoverageBalance other) {
    _$v = other as _$CoverageStatsCoverageBalance;
  }

  @override
  void update(void Function(CoverageStatsCoverageBalanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoverageStatsCoverageBalance build() => _build();

  _$CoverageStatsCoverageBalance _build() {
    final _$result = _$v ??
        _$CoverageStatsCoverageBalance._(
          left: BuiltValueNullFieldError.checkNotNull(
              left, r'CoverageStatsCoverageBalance', 'left'),
          center: BuiltValueNullFieldError.checkNotNull(
              center, r'CoverageStatsCoverageBalance', 'center'),
          right: BuiltValueNullFieldError.checkNotNull(
              right, r'CoverageStatsCoverageBalance', 'right'),
          unrated: BuiltValueNullFieldError.checkNotNull(
              unrated, r'CoverageStatsCoverageBalance', 'unrated'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
