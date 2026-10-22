// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search_result_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SavedSearchResultPage extends SavedSearchResultPage {
  @override
  final BuiltList<SavedSearchHit> items;
  @override
  final String? nextCursor;
  @override
  final DateTime? ranAt;
  @override
  final bool? semantic;

  factory _$SavedSearchResultPage([
    void Function(SavedSearchResultPageBuilder)? updates,
  ]) => (SavedSearchResultPageBuilder()..update(updates))._build();

  _$SavedSearchResultPage._({
    required this.items,
    this.nextCursor,
    this.ranAt,
    this.semantic,
  }) : super._();
  @override
  SavedSearchResultPage rebuild(
    void Function(SavedSearchResultPageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SavedSearchResultPageBuilder toBuilder() =>
      SavedSearchResultPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedSearchResultPage &&
        items == other.items &&
        nextCursor == other.nextCursor &&
        ranAt == other.ranAt &&
        semantic == other.semantic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jc(_$hash, ranAt.hashCode);
    _$hash = $jc(_$hash, semantic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SavedSearchResultPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor)
          ..add('ranAt', ranAt)
          ..add('semantic', semantic))
        .toString();
  }
}

class SavedSearchResultPageBuilder
    implements Builder<SavedSearchResultPage, SavedSearchResultPageBuilder> {
  _$SavedSearchResultPage? _$v;

  ListBuilder<SavedSearchHit>? _items;
  ListBuilder<SavedSearchHit> get items =>
      _$this._items ??= ListBuilder<SavedSearchHit>();
  set items(ListBuilder<SavedSearchHit>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  DateTime? _ranAt;
  DateTime? get ranAt => _$this._ranAt;
  set ranAt(DateTime? ranAt) => _$this._ranAt = ranAt;

  bool? _semantic;
  bool? get semantic => _$this._semantic;
  set semantic(bool? semantic) => _$this._semantic = semantic;

  SavedSearchResultPageBuilder() {
    SavedSearchResultPage._defaults(this);
  }

  SavedSearchResultPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _ranAt = $v.ranAt;
      _semantic = $v.semantic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedSearchResultPage other) {
    _$v = other as _$SavedSearchResultPage;
  }

  @override
  void update(void Function(SavedSearchResultPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedSearchResultPage build() => _build();

  _$SavedSearchResultPage _build() {
    _$SavedSearchResultPage _$result;
    try {
      _$result =
          _$v ??
          _$SavedSearchResultPage._(
            items: items.build(),
            nextCursor: nextCursor,
            ranAt: ranAt,
            semantic: semantic,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SavedSearchResultPage',
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
