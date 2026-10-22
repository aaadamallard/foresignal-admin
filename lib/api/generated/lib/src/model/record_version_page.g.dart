// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_version_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordVersionPage extends RecordVersionPage {
  @override
  final BuiltList<RecordVersion> items;
  @override
  final String? nextCursor;

  factory _$RecordVersionPage(
          [void Function(RecordVersionPageBuilder)? updates]) =>
      (RecordVersionPageBuilder()..update(updates))._build();

  _$RecordVersionPage._({required this.items, this.nextCursor}) : super._();
  @override
  RecordVersionPage rebuild(void Function(RecordVersionPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordVersionPageBuilder toBuilder() =>
      RecordVersionPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordVersionPage &&
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
    return (newBuiltValueToStringHelper(r'RecordVersionPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class RecordVersionPageBuilder
    implements Builder<RecordVersionPage, RecordVersionPageBuilder> {
  _$RecordVersionPage? _$v;

  ListBuilder<RecordVersion>? _items;
  ListBuilder<RecordVersion> get items =>
      _$this._items ??= ListBuilder<RecordVersion>();
  set items(ListBuilder<RecordVersion>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  RecordVersionPageBuilder() {
    RecordVersionPage._defaults(this);
  }

  RecordVersionPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordVersionPage other) {
    _$v = other as _$RecordVersionPage;
  }

  @override
  void update(void Function(RecordVersionPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordVersionPage build() => _build();

  _$RecordVersionPage _build() {
    _$RecordVersionPage _$result;
    try {
      _$result = _$v ??
          _$RecordVersionPage._(
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
            r'RecordVersionPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
