// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HistoryPage extends HistoryPage {
  @override
  final BuiltList<RecordVersion> items;
  @override
  final String? nextCursor;
  @override
  final BuiltList<Attribution>? attributions;
  @override
  final int? licenceFiltered;

  factory _$HistoryPage([void Function(HistoryPageBuilder)? updates]) =>
      (HistoryPageBuilder()..update(updates))._build();

  _$HistoryPage._({
    required this.items,
    this.nextCursor,
    this.attributions,
    this.licenceFiltered,
  }) : super._();
  @override
  HistoryPage rebuild(void Function(HistoryPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryPageBuilder toBuilder() => HistoryPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryPage &&
        items == other.items &&
        nextCursor == other.nextCursor &&
        attributions == other.attributions &&
        licenceFiltered == other.licenceFiltered;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jc(_$hash, attributions.hashCode);
    _$hash = $jc(_$hash, licenceFiltered.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoryPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor)
          ..add('attributions', attributions)
          ..add('licenceFiltered', licenceFiltered))
        .toString();
  }
}

class HistoryPageBuilder implements Builder<HistoryPage, HistoryPageBuilder> {
  _$HistoryPage? _$v;

  ListBuilder<RecordVersion>? _items;
  ListBuilder<RecordVersion> get items =>
      _$this._items ??= ListBuilder<RecordVersion>();
  set items(ListBuilder<RecordVersion>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ListBuilder<Attribution>? _attributions;
  ListBuilder<Attribution> get attributions =>
      _$this._attributions ??= ListBuilder<Attribution>();
  set attributions(ListBuilder<Attribution>? attributions) =>
      _$this._attributions = attributions;

  int? _licenceFiltered;
  int? get licenceFiltered => _$this._licenceFiltered;
  set licenceFiltered(int? licenceFiltered) =>
      _$this._licenceFiltered = licenceFiltered;

  HistoryPageBuilder() {
    HistoryPage._defaults(this);
  }

  HistoryPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _attributions = $v.attributions?.toBuilder();
      _licenceFiltered = $v.licenceFiltered;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryPage other) {
    _$v = other as _$HistoryPage;
  }

  @override
  void update(void Function(HistoryPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoryPage build() => _build();

  _$HistoryPage _build() {
    _$HistoryPage _$result;
    try {
      _$result =
          _$v ??
          _$HistoryPage._(
            items: items.build(),
            nextCursor: nextCursor,
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
          r'HistoryPage',
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
