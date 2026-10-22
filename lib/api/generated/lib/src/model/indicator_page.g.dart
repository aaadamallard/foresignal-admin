// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndicatorPage extends IndicatorPage {
  @override
  final BuiltList<Indicator> items;
  @override
  final String? nextCursor;

  factory _$IndicatorPage([void Function(IndicatorPageBuilder)? updates]) =>
      (IndicatorPageBuilder()..update(updates))._build();

  _$IndicatorPage._({required this.items, this.nextCursor}) : super._();
  @override
  IndicatorPage rebuild(void Function(IndicatorPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndicatorPageBuilder toBuilder() => IndicatorPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndicatorPage &&
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
    return (newBuiltValueToStringHelper(r'IndicatorPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class IndicatorPageBuilder
    implements Builder<IndicatorPage, IndicatorPageBuilder> {
  _$IndicatorPage? _$v;

  ListBuilder<Indicator>? _items;
  ListBuilder<Indicator> get items =>
      _$this._items ??= ListBuilder<Indicator>();
  set items(ListBuilder<Indicator>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  IndicatorPageBuilder() {
    IndicatorPage._defaults(this);
  }

  IndicatorPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndicatorPage other) {
    _$v = other as _$IndicatorPage;
  }

  @override
  void update(void Function(IndicatorPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndicatorPage build() => _build();

  _$IndicatorPage _build() {
    _$IndicatorPage _$result;
    try {
      _$result =
          _$v ??
          _$IndicatorPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IndicatorPage',
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
