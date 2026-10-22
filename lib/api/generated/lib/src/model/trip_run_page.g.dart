// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_run_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TripRunPage extends TripRunPage {
  @override
  final BuiltList<TripRun> items;
  @override
  final String? nextCursor;

  factory _$TripRunPage([void Function(TripRunPageBuilder)? updates]) =>
      (TripRunPageBuilder()..update(updates))._build();

  _$TripRunPage._({required this.items, this.nextCursor}) : super._();
  @override
  TripRunPage rebuild(void Function(TripRunPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripRunPageBuilder toBuilder() => TripRunPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TripRunPage &&
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
    return (newBuiltValueToStringHelper(r'TripRunPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class TripRunPageBuilder implements Builder<TripRunPage, TripRunPageBuilder> {
  _$TripRunPage? _$v;

  ListBuilder<TripRun>? _items;
  ListBuilder<TripRun> get items => _$this._items ??= ListBuilder<TripRun>();
  set items(ListBuilder<TripRun>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  TripRunPageBuilder() {
    TripRunPage._defaults(this);
  }

  TripRunPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TripRunPage other) {
    _$v = other as _$TripRunPage;
  }

  @override
  void update(void Function(TripRunPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TripRunPage build() => _build();

  _$TripRunPage _build() {
    _$TripRunPage _$result;
    try {
      _$result = _$v ??
          _$TripRunPage._(
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
            r'TripRunPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
