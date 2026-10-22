// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_run_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CycleRunPage extends CycleRunPage {
  @override
  final BuiltList<CycleRun> items;
  @override
  final String? nextCursor;

  factory _$CycleRunPage([void Function(CycleRunPageBuilder)? updates]) =>
      (CycleRunPageBuilder()..update(updates))._build();

  _$CycleRunPage._({required this.items, this.nextCursor}) : super._();
  @override
  CycleRunPage rebuild(void Function(CycleRunPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CycleRunPageBuilder toBuilder() => CycleRunPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CycleRunPage &&
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
    return (newBuiltValueToStringHelper(r'CycleRunPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class CycleRunPageBuilder
    implements Builder<CycleRunPage, CycleRunPageBuilder> {
  _$CycleRunPage? _$v;

  ListBuilder<CycleRun>? _items;
  ListBuilder<CycleRun> get items => _$this._items ??= ListBuilder<CycleRun>();
  set items(ListBuilder<CycleRun>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  CycleRunPageBuilder() {
    CycleRunPage._defaults(this);
  }

  CycleRunPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CycleRunPage other) {
    _$v = other as _$CycleRunPage;
  }

  @override
  void update(void Function(CycleRunPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CycleRunPage build() => _build();

  _$CycleRunPage _build() {
    _$CycleRunPage _$result;
    try {
      _$result = _$v ??
          _$CycleRunPage._(
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
            r'CycleRunPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
