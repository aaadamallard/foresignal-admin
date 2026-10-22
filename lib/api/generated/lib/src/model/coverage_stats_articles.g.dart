// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coverage_stats_articles.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoverageStatsArticles extends CoverageStatsArticles {
  @override
  final int left;
  @override
  final int center;
  @override
  final int right;
  @override
  final int unrated;

  factory _$CoverageStatsArticles(
          [void Function(CoverageStatsArticlesBuilder)? updates]) =>
      (CoverageStatsArticlesBuilder()..update(updates))._build();

  _$CoverageStatsArticles._(
      {required this.left,
      required this.center,
      required this.right,
      required this.unrated})
      : super._();
  @override
  CoverageStatsArticles rebuild(
          void Function(CoverageStatsArticlesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoverageStatsArticlesBuilder toBuilder() =>
      CoverageStatsArticlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoverageStatsArticles &&
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
    return (newBuiltValueToStringHelper(r'CoverageStatsArticles')
          ..add('left', left)
          ..add('center', center)
          ..add('right', right)
          ..add('unrated', unrated))
        .toString();
  }
}

class CoverageStatsArticlesBuilder
    implements Builder<CoverageStatsArticles, CoverageStatsArticlesBuilder> {
  _$CoverageStatsArticles? _$v;

  int? _left;
  int? get left => _$this._left;
  set left(int? left) => _$this._left = left;

  int? _center;
  int? get center => _$this._center;
  set center(int? center) => _$this._center = center;

  int? _right;
  int? get right => _$this._right;
  set right(int? right) => _$this._right = right;

  int? _unrated;
  int? get unrated => _$this._unrated;
  set unrated(int? unrated) => _$this._unrated = unrated;

  CoverageStatsArticlesBuilder() {
    CoverageStatsArticles._defaults(this);
  }

  CoverageStatsArticlesBuilder get _$this {
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
  void replace(CoverageStatsArticles other) {
    _$v = other as _$CoverageStatsArticles;
  }

  @override
  void update(void Function(CoverageStatsArticlesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoverageStatsArticles build() => _build();

  _$CoverageStatsArticles _build() {
    final _$result = _$v ??
        _$CoverageStatsArticles._(
          left: BuiltValueNullFieldError.checkNotNull(
              left, r'CoverageStatsArticles', 'left'),
          center: BuiltValueNullFieldError.checkNotNull(
              center, r'CoverageStatsArticles', 'center'),
          right: BuiltValueNullFieldError.checkNotNull(
              right, r'CoverageStatsArticles', 'right'),
          unrated: BuiltValueNullFieldError.checkNotNull(
              unrated, r'CoverageStatsArticles', 'unrated'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
