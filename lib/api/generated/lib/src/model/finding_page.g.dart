// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finding_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FindingPage extends FindingPage {
  @override
  final BuiltList<AnalyticFinding> items;
  @override
  final String? nextCursor;

  factory _$FindingPage([void Function(FindingPageBuilder)? updates]) =>
      (FindingPageBuilder()..update(updates))._build();

  _$FindingPage._({required this.items, this.nextCursor}) : super._();
  @override
  FindingPage rebuild(void Function(FindingPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FindingPageBuilder toBuilder() => FindingPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FindingPage &&
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
    return (newBuiltValueToStringHelper(r'FindingPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class FindingPageBuilder implements Builder<FindingPage, FindingPageBuilder> {
  _$FindingPage? _$v;

  ListBuilder<AnalyticFinding>? _items;
  ListBuilder<AnalyticFinding> get items =>
      _$this._items ??= ListBuilder<AnalyticFinding>();
  set items(ListBuilder<AnalyticFinding>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  FindingPageBuilder() {
    FindingPage._defaults(this);
  }

  FindingPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FindingPage other) {
    _$v = other as _$FindingPage;
  }

  @override
  void update(void Function(FindingPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FindingPage build() => _build();

  _$FindingPage _build() {
    _$FindingPage _$result;
    try {
      _$result = _$v ??
          _$FindingPage._(
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
            r'FindingPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
