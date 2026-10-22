// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_source_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalSourcePage extends ExternalSourcePage {
  @override
  final BuiltList<ExternalSource> items;
  @override
  final String? nextCursor;

  factory _$ExternalSourcePage(
          [void Function(ExternalSourcePageBuilder)? updates]) =>
      (ExternalSourcePageBuilder()..update(updates))._build();

  _$ExternalSourcePage._({required this.items, this.nextCursor}) : super._();
  @override
  ExternalSourcePage rebuild(
          void Function(ExternalSourcePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalSourcePageBuilder toBuilder() =>
      ExternalSourcePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalSourcePage &&
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
    return (newBuiltValueToStringHelper(r'ExternalSourcePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ExternalSourcePageBuilder
    implements Builder<ExternalSourcePage, ExternalSourcePageBuilder> {
  _$ExternalSourcePage? _$v;

  ListBuilder<ExternalSource>? _items;
  ListBuilder<ExternalSource> get items =>
      _$this._items ??= ListBuilder<ExternalSource>();
  set items(ListBuilder<ExternalSource>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ExternalSourcePageBuilder() {
    ExternalSourcePage._defaults(this);
  }

  ExternalSourcePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalSourcePage other) {
    _$v = other as _$ExternalSourcePage;
  }

  @override
  void update(void Function(ExternalSourcePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalSourcePage build() => _build();

  _$ExternalSourcePage _build() {
    _$ExternalSourcePage _$result;
    try {
      _$result = _$v ??
          _$ExternalSourcePage._(
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
            r'ExternalSourcePage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
