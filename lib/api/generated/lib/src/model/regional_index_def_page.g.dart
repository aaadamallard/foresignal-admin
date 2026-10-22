// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_index_def_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionalIndexDefPage extends RegionalIndexDefPage {
  @override
  final BuiltList<RegionalIndexDef> items;
  @override
  final String? nextCursor;

  factory _$RegionalIndexDefPage([
    void Function(RegionalIndexDefPageBuilder)? updates,
  ]) => (RegionalIndexDefPageBuilder()..update(updates))._build();

  _$RegionalIndexDefPage._({required this.items, this.nextCursor}) : super._();
  @override
  RegionalIndexDefPage rebuild(
    void Function(RegionalIndexDefPageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RegionalIndexDefPageBuilder toBuilder() =>
      RegionalIndexDefPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionalIndexDefPage &&
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
    return (newBuiltValueToStringHelper(r'RegionalIndexDefPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class RegionalIndexDefPageBuilder
    implements Builder<RegionalIndexDefPage, RegionalIndexDefPageBuilder> {
  _$RegionalIndexDefPage? _$v;

  ListBuilder<RegionalIndexDef>? _items;
  ListBuilder<RegionalIndexDef> get items =>
      _$this._items ??= ListBuilder<RegionalIndexDef>();
  set items(ListBuilder<RegionalIndexDef>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  RegionalIndexDefPageBuilder() {
    RegionalIndexDefPage._defaults(this);
  }

  RegionalIndexDefPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalIndexDefPage other) {
    _$v = other as _$RegionalIndexDefPage;
  }

  @override
  void update(void Function(RegionalIndexDefPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionalIndexDefPage build() => _build();

  _$RegionalIndexDefPage _build() {
    _$RegionalIndexDefPage _$result;
    try {
      _$result =
          _$v ??
          _$RegionalIndexDefPage._(
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
          r'RegionalIndexDefPage',
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
