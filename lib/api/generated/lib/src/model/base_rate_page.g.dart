// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_rate_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseRatePage extends BaseRatePage {
  @override
  final BuiltList<BaseRate> items;
  @override
  final String? nextCursor;

  factory _$BaseRatePage([void Function(BaseRatePageBuilder)? updates]) =>
      (BaseRatePageBuilder()..update(updates))._build();

  _$BaseRatePage._({required this.items, this.nextCursor}) : super._();
  @override
  BaseRatePage rebuild(void Function(BaseRatePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseRatePageBuilder toBuilder() => BaseRatePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseRatePage &&
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
    return (newBuiltValueToStringHelper(r'BaseRatePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class BaseRatePageBuilder
    implements Builder<BaseRatePage, BaseRatePageBuilder> {
  _$BaseRatePage? _$v;

  ListBuilder<BaseRate>? _items;
  ListBuilder<BaseRate> get items => _$this._items ??= ListBuilder<BaseRate>();
  set items(ListBuilder<BaseRate>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  BaseRatePageBuilder() {
    BaseRatePage._defaults(this);
  }

  BaseRatePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseRatePage other) {
    _$v = other as _$BaseRatePage;
  }

  @override
  void update(void Function(BaseRatePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseRatePage build() => _build();

  _$BaseRatePage _build() {
    _$BaseRatePage _$result;
    try {
      _$result =
          _$v ?? _$BaseRatePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BaseRatePage',
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
