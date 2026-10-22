// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federation_change_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FederationChangePage extends FederationChangePage {
  @override
  final BuiltList<FederationItem> items;
  @override
  final int lastSeq;
  @override
  final bool hasMore;
  @override
  final int? watermarkSeq;

  factory _$FederationChangePage([
    void Function(FederationChangePageBuilder)? updates,
  ]) => (FederationChangePageBuilder()..update(updates))._build();

  _$FederationChangePage._({
    required this.items,
    required this.lastSeq,
    required this.hasMore,
    this.watermarkSeq,
  }) : super._();
  @override
  FederationChangePage rebuild(
    void Function(FederationChangePageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FederationChangePageBuilder toBuilder() =>
      FederationChangePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FederationChangePage &&
        items == other.items &&
        lastSeq == other.lastSeq &&
        hasMore == other.hasMore &&
        watermarkSeq == other.watermarkSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, lastSeq.hashCode);
    _$hash = $jc(_$hash, hasMore.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FederationChangePage')
          ..add('items', items)
          ..add('lastSeq', lastSeq)
          ..add('hasMore', hasMore)
          ..add('watermarkSeq', watermarkSeq))
        .toString();
  }
}

class FederationChangePageBuilder
    implements Builder<FederationChangePage, FederationChangePageBuilder> {
  _$FederationChangePage? _$v;

  ListBuilder<FederationItem>? _items;
  ListBuilder<FederationItem> get items =>
      _$this._items ??= ListBuilder<FederationItem>();
  set items(ListBuilder<FederationItem>? items) => _$this._items = items;

  int? _lastSeq;
  int? get lastSeq => _$this._lastSeq;
  set lastSeq(int? lastSeq) => _$this._lastSeq = lastSeq;

  bool? _hasMore;
  bool? get hasMore => _$this._hasMore;
  set hasMore(bool? hasMore) => _$this._hasMore = hasMore;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  FederationChangePageBuilder() {
    FederationChangePage._defaults(this);
  }

  FederationChangePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _lastSeq = $v.lastSeq;
      _hasMore = $v.hasMore;
      _watermarkSeq = $v.watermarkSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FederationChangePage other) {
    _$v = other as _$FederationChangePage;
  }

  @override
  void update(void Function(FederationChangePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FederationChangePage build() => _build();

  _$FederationChangePage _build() {
    _$FederationChangePage _$result;
    try {
      _$result =
          _$v ??
          _$FederationChangePage._(
            items: items.build(),
            lastSeq: BuiltValueNullFieldError.checkNotNull(
              lastSeq,
              r'FederationChangePage',
              'lastSeq',
            ),
            hasMore: BuiltValueNullFieldError.checkNotNull(
              hasMore,
              r'FederationChangePage',
              'hasMore',
            ),
            watermarkSeq: watermarkSeq,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FederationChangePage',
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
