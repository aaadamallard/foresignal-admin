// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure_watchlist_entities_counts_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExposureWatchlistEntitiesCountsInner
    extends ExposureWatchlistEntitiesCountsInner {
  @override
  final String watchlistId;
  @override
  final String? name;
  @override
  final int count;

  factory _$ExposureWatchlistEntitiesCountsInner(
          [void Function(ExposureWatchlistEntitiesCountsInnerBuilder)?
              updates]) =>
      (ExposureWatchlistEntitiesCountsInnerBuilder()..update(updates))._build();

  _$ExposureWatchlistEntitiesCountsInner._(
      {required this.watchlistId, this.name, required this.count})
      : super._();
  @override
  ExposureWatchlistEntitiesCountsInner rebuild(
          void Function(ExposureWatchlistEntitiesCountsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExposureWatchlistEntitiesCountsInnerBuilder toBuilder() =>
      ExposureWatchlistEntitiesCountsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExposureWatchlistEntitiesCountsInner &&
        watchlistId == other.watchlistId &&
        name == other.name &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, watchlistId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExposureWatchlistEntitiesCountsInner')
          ..add('watchlistId', watchlistId)
          ..add('name', name)
          ..add('count', count))
        .toString();
  }
}

class ExposureWatchlistEntitiesCountsInnerBuilder
    implements
        Builder<ExposureWatchlistEntitiesCountsInner,
            ExposureWatchlistEntitiesCountsInnerBuilder> {
  _$ExposureWatchlistEntitiesCountsInner? _$v;

  String? _watchlistId;
  String? get watchlistId => _$this._watchlistId;
  set watchlistId(String? watchlistId) => _$this._watchlistId = watchlistId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ExposureWatchlistEntitiesCountsInnerBuilder() {
    ExposureWatchlistEntitiesCountsInner._defaults(this);
  }

  ExposureWatchlistEntitiesCountsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _watchlistId = $v.watchlistId;
      _name = $v.name;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExposureWatchlistEntitiesCountsInner other) {
    _$v = other as _$ExposureWatchlistEntitiesCountsInner;
  }

  @override
  void update(
      void Function(ExposureWatchlistEntitiesCountsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExposureWatchlistEntitiesCountsInner build() => _build();

  _$ExposureWatchlistEntitiesCountsInner _build() {
    final _$result = _$v ??
        _$ExposureWatchlistEntitiesCountsInner._(
          watchlistId: BuiltValueNullFieldError.checkNotNull(watchlistId,
              r'ExposureWatchlistEntitiesCountsInner', 'watchlistId'),
          name: name,
          count: BuiltValueNullFieldError.checkNotNull(
              count, r'ExposureWatchlistEntitiesCountsInner', 'count'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
