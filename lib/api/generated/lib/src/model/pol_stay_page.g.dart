// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pol_stay_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolStayPage extends PolStayPage {
  @override
  final BuiltList<PolStay> items;
  @override
  final String? nextCursor;

  factory _$PolStayPage([void Function(PolStayPageBuilder)? updates]) =>
      (PolStayPageBuilder()..update(updates))._build();

  _$PolStayPage._({required this.items, this.nextCursor}) : super._();
  @override
  PolStayPage rebuild(void Function(PolStayPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolStayPageBuilder toBuilder() => PolStayPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolStayPage &&
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
    return (newBuiltValueToStringHelper(r'PolStayPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class PolStayPageBuilder implements Builder<PolStayPage, PolStayPageBuilder> {
  _$PolStayPage? _$v;

  ListBuilder<PolStay>? _items;
  ListBuilder<PolStay> get items => _$this._items ??= ListBuilder<PolStay>();
  set items(ListBuilder<PolStay>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  PolStayPageBuilder() {
    PolStayPage._defaults(this);
  }

  PolStayPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolStayPage other) {
    _$v = other as _$PolStayPage;
  }

  @override
  void update(void Function(PolStayPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolStayPage build() => _build();

  _$PolStayPage _build() {
    _$PolStayPage _$result;
    try {
      _$result =
          _$v ?? _$PolStayPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PolStayPage',
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
