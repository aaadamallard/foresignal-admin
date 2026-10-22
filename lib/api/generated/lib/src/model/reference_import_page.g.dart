// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_import_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReferenceImportPage extends ReferenceImportPage {
  @override
  final BuiltList<ReferenceImport> items;
  @override
  final String? nextCursor;

  factory _$ReferenceImportPage([
    void Function(ReferenceImportPageBuilder)? updates,
  ]) => (ReferenceImportPageBuilder()..update(updates))._build();

  _$ReferenceImportPage._({required this.items, this.nextCursor}) : super._();
  @override
  ReferenceImportPage rebuild(
    void Function(ReferenceImportPageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReferenceImportPageBuilder toBuilder() =>
      ReferenceImportPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferenceImportPage &&
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
    return (newBuiltValueToStringHelper(r'ReferenceImportPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ReferenceImportPageBuilder
    implements Builder<ReferenceImportPage, ReferenceImportPageBuilder> {
  _$ReferenceImportPage? _$v;

  ListBuilder<ReferenceImport>? _items;
  ListBuilder<ReferenceImport> get items =>
      _$this._items ??= ListBuilder<ReferenceImport>();
  set items(ListBuilder<ReferenceImport>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ReferenceImportPageBuilder() {
    ReferenceImportPage._defaults(this);
  }

  ReferenceImportPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferenceImportPage other) {
    _$v = other as _$ReferenceImportPage;
  }

  @override
  void update(void Function(ReferenceImportPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferenceImportPage build() => _build();

  _$ReferenceImportPage _build() {
    _$ReferenceImportPage _$result;
    try {
      _$result =
          _$v ??
          _$ReferenceImportPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReferenceImportPage',
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
