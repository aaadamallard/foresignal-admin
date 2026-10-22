// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastPage extends ForecastPage {
  @override
  final BuiltList<Forecast> items;
  @override
  final String? nextCursor;

  factory _$ForecastPage([void Function(ForecastPageBuilder)? updates]) =>
      (ForecastPageBuilder()..update(updates))._build();

  _$ForecastPage._({required this.items, this.nextCursor}) : super._();
  @override
  ForecastPage rebuild(void Function(ForecastPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastPageBuilder toBuilder() => ForecastPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastPage &&
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
    return (newBuiltValueToStringHelper(r'ForecastPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ForecastPageBuilder
    implements Builder<ForecastPage, ForecastPageBuilder> {
  _$ForecastPage? _$v;

  ListBuilder<Forecast>? _items;
  ListBuilder<Forecast> get items => _$this._items ??= ListBuilder<Forecast>();
  set items(ListBuilder<Forecast>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ForecastPageBuilder() {
    ForecastPage._defaults(this);
  }

  ForecastPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastPage other) {
    _$v = other as _$ForecastPage;
  }

  @override
  void update(void Function(ForecastPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastPage build() => _build();

  _$ForecastPage _build() {
    _$ForecastPage _$result;
    try {
      _$result =
          _$v ?? _$ForecastPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecastPage',
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
