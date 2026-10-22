// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TripPage extends TripPage {
  @override
  final BuiltList<Trip> items;
  @override
  final String? nextCursor;

  factory _$TripPage([void Function(TripPageBuilder)? updates]) =>
      (TripPageBuilder()..update(updates))._build();

  _$TripPage._({required this.items, this.nextCursor}) : super._();
  @override
  TripPage rebuild(void Function(TripPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripPageBuilder toBuilder() => TripPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TripPage &&
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
    return (newBuiltValueToStringHelper(r'TripPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class TripPageBuilder implements Builder<TripPage, TripPageBuilder> {
  _$TripPage? _$v;

  ListBuilder<Trip>? _items;
  ListBuilder<Trip> get items => _$this._items ??= ListBuilder<Trip>();
  set items(ListBuilder<Trip>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  TripPageBuilder() {
    TripPage._defaults(this);
  }

  TripPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TripPage other) {
    _$v = other as _$TripPage;
  }

  @override
  void update(void Function(TripPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TripPage build() => _build();

  _$TripPage _build() {
    _$TripPage _$result;
    try {
      _$result = _$v ??
          _$TripPage._(
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
            r'TripPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
