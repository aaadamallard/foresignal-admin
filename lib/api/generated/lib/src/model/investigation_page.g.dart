// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investigation_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvestigationPage extends InvestigationPage {
  @override
  final BuiltList<Investigation> items;
  @override
  final String? nextCursor;

  factory _$InvestigationPage(
          [void Function(InvestigationPageBuilder)? updates]) =>
      (InvestigationPageBuilder()..update(updates))._build();

  _$InvestigationPage._({required this.items, this.nextCursor}) : super._();
  @override
  InvestigationPage rebuild(void Function(InvestigationPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvestigationPageBuilder toBuilder() =>
      InvestigationPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvestigationPage &&
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
    return (newBuiltValueToStringHelper(r'InvestigationPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class InvestigationPageBuilder
    implements Builder<InvestigationPage, InvestigationPageBuilder> {
  _$InvestigationPage? _$v;

  ListBuilder<Investigation>? _items;
  ListBuilder<Investigation> get items =>
      _$this._items ??= ListBuilder<Investigation>();
  set items(ListBuilder<Investigation>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  InvestigationPageBuilder() {
    InvestigationPage._defaults(this);
  }

  InvestigationPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvestigationPage other) {
    _$v = other as _$InvestigationPage;
  }

  @override
  void update(void Function(InvestigationPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvestigationPage build() => _build();

  _$InvestigationPage _build() {
    _$InvestigationPage _$result;
    try {
      _$result = _$v ??
          _$InvestigationPage._(
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
            r'InvestigationPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
