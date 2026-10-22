// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principal_summary_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrincipalSummaryPage extends PrincipalSummaryPage {
  @override
  final BuiltList<PrincipalSummary> items;
  @override
  final String? nextCursor;

  factory _$PrincipalSummaryPage(
          [void Function(PrincipalSummaryPageBuilder)? updates]) =>
      (PrincipalSummaryPageBuilder()..update(updates))._build();

  _$PrincipalSummaryPage._({required this.items, this.nextCursor}) : super._();
  @override
  PrincipalSummaryPage rebuild(
          void Function(PrincipalSummaryPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrincipalSummaryPageBuilder toBuilder() =>
      PrincipalSummaryPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrincipalSummaryPage &&
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
    return (newBuiltValueToStringHelper(r'PrincipalSummaryPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class PrincipalSummaryPageBuilder
    implements Builder<PrincipalSummaryPage, PrincipalSummaryPageBuilder> {
  _$PrincipalSummaryPage? _$v;

  ListBuilder<PrincipalSummary>? _items;
  ListBuilder<PrincipalSummary> get items =>
      _$this._items ??= ListBuilder<PrincipalSummary>();
  set items(ListBuilder<PrincipalSummary>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  PrincipalSummaryPageBuilder() {
    PrincipalSummaryPage._defaults(this);
  }

  PrincipalSummaryPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrincipalSummaryPage other) {
    _$v = other as _$PrincipalSummaryPage;
  }

  @override
  void update(void Function(PrincipalSummaryPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrincipalSummaryPage build() => _build();

  _$PrincipalSummaryPage _build() {
    _$PrincipalSummaryPage _$result;
    try {
      _$result = _$v ??
          _$PrincipalSummaryPage._(
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
            r'PrincipalSummaryPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
