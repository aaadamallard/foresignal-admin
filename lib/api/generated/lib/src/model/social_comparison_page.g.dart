// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_comparison_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialComparisonPage extends SocialComparisonPage {
  @override
  final BuiltList<SocialComparison> items;
  @override
  final String? nextCursor;

  factory _$SocialComparisonPage(
          [void Function(SocialComparisonPageBuilder)? updates]) =>
      (SocialComparisonPageBuilder()..update(updates))._build();

  _$SocialComparisonPage._({required this.items, this.nextCursor}) : super._();
  @override
  SocialComparisonPage rebuild(
          void Function(SocialComparisonPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialComparisonPageBuilder toBuilder() =>
      SocialComparisonPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialComparisonPage &&
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
    return (newBuiltValueToStringHelper(r'SocialComparisonPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class SocialComparisonPageBuilder
    implements Builder<SocialComparisonPage, SocialComparisonPageBuilder> {
  _$SocialComparisonPage? _$v;

  ListBuilder<SocialComparison>? _items;
  ListBuilder<SocialComparison> get items =>
      _$this._items ??= ListBuilder<SocialComparison>();
  set items(ListBuilder<SocialComparison>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  SocialComparisonPageBuilder() {
    SocialComparisonPage._defaults(this);
  }

  SocialComparisonPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialComparisonPage other) {
    _$v = other as _$SocialComparisonPage;
  }

  @override
  void update(void Function(SocialComparisonPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialComparisonPage build() => _build();

  _$SocialComparisonPage _build() {
    _$SocialComparisonPage _$result;
    try {
      _$result = _$v ??
          _$SocialComparisonPage._(
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
            r'SocialComparisonPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
