// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_set_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisSetPage extends HypothesisSetPage {
  @override
  final BuiltList<HypothesisSet> items;
  @override
  final String? nextCursor;

  factory _$HypothesisSetPage(
          [void Function(HypothesisSetPageBuilder)? updates]) =>
      (HypothesisSetPageBuilder()..update(updates))._build();

  _$HypothesisSetPage._({required this.items, this.nextCursor}) : super._();
  @override
  HypothesisSetPage rebuild(void Function(HypothesisSetPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisSetPageBuilder toBuilder() =>
      HypothesisSetPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisSetPage &&
        items == other.items &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisSetPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class HypothesisSetPageBuilder
    implements Builder<HypothesisSetPage, HypothesisSetPageBuilder> {
  _$HypothesisSetPage? _$v;

  ListBuilder<HypothesisSet>? _items;
  ListBuilder<HypothesisSet> get items =>
      _$this._items ??= ListBuilder<HypothesisSet>();
  set items(ListBuilder<HypothesisSet>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  HypothesisSetPageBuilder() {
    HypothesisSetPage._defaults(this);
  }

  HypothesisSetPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisSetPage other) {
    _$v = other as _$HypothesisSetPage;
  }

  @override
  void update(void Function(HypothesisSetPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisSetPage build() => _build();

  _$HypothesisSetPage _build() {
    _$HypothesisSetPage _$result;
    try {
      _$result = _$v ??
          _$HypothesisSetPage._(
            items: items.build(),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HypothesisSetPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
