// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePage extends ChangePage {
  @override
  final BuiltList<Change> items;
  @override
  final int lastSeq;
  @override
  final bool hasMore;
  @override
  final int? watermarkSeq;
  @override
  final int? purgeHorizon;
  @override
  final BuiltList<Attribution>? attributions;
  @override
  final int? licenceFiltered;

  factory _$ChangePage([void Function(ChangePageBuilder)? updates]) =>
      (ChangePageBuilder()..update(updates))._build();

  _$ChangePage._({
    required this.items,
    required this.lastSeq,
    required this.hasMore,
    this.watermarkSeq,
    this.purgeHorizon,
    this.attributions,
    this.licenceFiltered,
  }) : super._();
  @override
  ChangePage rebuild(void Function(ChangePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePageBuilder toBuilder() => ChangePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePage &&
        items == other.items &&
        lastSeq == other.lastSeq &&
        hasMore == other.hasMore &&
        watermarkSeq == other.watermarkSeq &&
        purgeHorizon == other.purgeHorizon &&
        attributions == other.attributions &&
        licenceFiltered == other.licenceFiltered;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, lastSeq.hashCode);
    _$hash = $jc(_$hash, hasMore.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jc(_$hash, purgeHorizon.hashCode);
    _$hash = $jc(_$hash, attributions.hashCode);
    _$hash = $jc(_$hash, licenceFiltered.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangePage')
          ..add('items', items)
          ..add('lastSeq', lastSeq)
          ..add('hasMore', hasMore)
          ..add('watermarkSeq', watermarkSeq)
          ..add('purgeHorizon', purgeHorizon)
          ..add('attributions', attributions)
          ..add('licenceFiltered', licenceFiltered))
        .toString();
  }
}

class ChangePageBuilder implements Builder<ChangePage, ChangePageBuilder> {
  _$ChangePage? _$v;

  ListBuilder<Change>? _items;
  ListBuilder<Change> get items => _$this._items ??= ListBuilder<Change>();
  set items(ListBuilder<Change>? items) => _$this._items = items;

  int? _lastSeq;
  int? get lastSeq => _$this._lastSeq;
  set lastSeq(int? lastSeq) => _$this._lastSeq = lastSeq;

  bool? _hasMore;
  bool? get hasMore => _$this._hasMore;
  set hasMore(bool? hasMore) => _$this._hasMore = hasMore;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  int? _purgeHorizon;
  int? get purgeHorizon => _$this._purgeHorizon;
  set purgeHorizon(int? purgeHorizon) => _$this._purgeHorizon = purgeHorizon;

  ListBuilder<Attribution>? _attributions;
  ListBuilder<Attribution> get attributions =>
      _$this._attributions ??= ListBuilder<Attribution>();
  set attributions(ListBuilder<Attribution>? attributions) =>
      _$this._attributions = attributions;

  int? _licenceFiltered;
  int? get licenceFiltered => _$this._licenceFiltered;
  set licenceFiltered(int? licenceFiltered) =>
      _$this._licenceFiltered = licenceFiltered;

  ChangePageBuilder() {
    ChangePage._defaults(this);
  }

  ChangePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _lastSeq = $v.lastSeq;
      _hasMore = $v.hasMore;
      _watermarkSeq = $v.watermarkSeq;
      _purgeHorizon = $v.purgeHorizon;
      _attributions = $v.attributions?.toBuilder();
      _licenceFiltered = $v.licenceFiltered;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePage other) {
    _$v = other as _$ChangePage;
  }

  @override
  void update(void Function(ChangePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangePage build() => _build();

  _$ChangePage _build() {
    _$ChangePage _$result;
    try {
      _$result =
          _$v ??
          _$ChangePage._(
            items: items.build(),
            lastSeq: BuiltValueNullFieldError.checkNotNull(
              lastSeq,
              r'ChangePage',
              'lastSeq',
            ),
            hasMore: BuiltValueNullFieldError.checkNotNull(
              hasMore,
              r'ChangePage',
              'hasMore',
            ),
            watermarkSeq: watermarkSeq,
            purgeHorizon: purgeHorizon,
            attributions: _attributions?.build(),
            licenceFiltered: licenceFiltered,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();

        _$failedField = 'attributions';
        _attributions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChangePage',
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
