// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_package_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExchangePackagePage extends ExchangePackagePage {
  @override
  final BuiltList<ExchangePackage> items;
  @override
  final String? nextCursor;

  factory _$ExchangePackagePage(
          [void Function(ExchangePackagePageBuilder)? updates]) =>
      (ExchangePackagePageBuilder()..update(updates))._build();

  _$ExchangePackagePage._({required this.items, this.nextCursor}) : super._();
  @override
  ExchangePackagePage rebuild(
          void Function(ExchangePackagePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExchangePackagePageBuilder toBuilder() =>
      ExchangePackagePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExchangePackagePage &&
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
    return (newBuiltValueToStringHelper(r'ExchangePackagePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ExchangePackagePageBuilder
    implements Builder<ExchangePackagePage, ExchangePackagePageBuilder> {
  _$ExchangePackagePage? _$v;

  ListBuilder<ExchangePackage>? _items;
  ListBuilder<ExchangePackage> get items =>
      _$this._items ??= ListBuilder<ExchangePackage>();
  set items(ListBuilder<ExchangePackage>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ExchangePackagePageBuilder() {
    ExchangePackagePage._defaults(this);
  }

  ExchangePackagePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExchangePackagePage other) {
    _$v = other as _$ExchangePackagePage;
  }

  @override
  void update(void Function(ExchangePackagePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExchangePackagePage build() => _build();

  _$ExchangePackagePage _build() {
    _$ExchangePackagePage _$result;
    try {
      _$result = _$v ??
          _$ExchangePackagePage._(
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
            r'ExchangePackagePage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
