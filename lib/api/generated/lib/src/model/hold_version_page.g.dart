// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hold_version_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HoldVersionPage extends HoldVersionPage {
  @override
  final BuiltList<RecordVersion> items;
  @override
  final String? nextCursor;

  factory _$HoldVersionPage([void Function(HoldVersionPageBuilder)? updates]) =>
      (HoldVersionPageBuilder()..update(updates))._build();

  _$HoldVersionPage._({required this.items, this.nextCursor}) : super._();
  @override
  HoldVersionPage rebuild(void Function(HoldVersionPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldVersionPageBuilder toBuilder() => HoldVersionPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldVersionPage &&
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
    return (newBuiltValueToStringHelper(r'HoldVersionPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class HoldVersionPageBuilder
    implements Builder<HoldVersionPage, HoldVersionPageBuilder> {
  _$HoldVersionPage? _$v;

  ListBuilder<RecordVersion>? _items;
  ListBuilder<RecordVersion> get items =>
      _$this._items ??= ListBuilder<RecordVersion>();
  set items(ListBuilder<RecordVersion>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  HoldVersionPageBuilder() {
    HoldVersionPage._defaults(this);
  }

  HoldVersionPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoldVersionPage other) {
    _$v = other as _$HoldVersionPage;
  }

  @override
  void update(void Function(HoldVersionPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldVersionPage build() => _build();

  _$HoldVersionPage _build() {
    _$HoldVersionPage _$result;
    try {
      _$result =
          _$v ??
          _$HoldVersionPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HoldVersionPage',
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
