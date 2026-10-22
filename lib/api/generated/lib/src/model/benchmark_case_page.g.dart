// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_case_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BenchmarkCasePage extends BenchmarkCasePage {
  @override
  final BuiltList<BenchmarkCase> items;
  @override
  final String? nextCursor;

  factory _$BenchmarkCasePage(
          [void Function(BenchmarkCasePageBuilder)? updates]) =>
      (BenchmarkCasePageBuilder()..update(updates))._build();

  _$BenchmarkCasePage._({required this.items, this.nextCursor}) : super._();
  @override
  BenchmarkCasePage rebuild(void Function(BenchmarkCasePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BenchmarkCasePageBuilder toBuilder() =>
      BenchmarkCasePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkCasePage &&
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
    return (newBuiltValueToStringHelper(r'BenchmarkCasePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class BenchmarkCasePageBuilder
    implements Builder<BenchmarkCasePage, BenchmarkCasePageBuilder> {
  _$BenchmarkCasePage? _$v;

  ListBuilder<BenchmarkCase>? _items;
  ListBuilder<BenchmarkCase> get items =>
      _$this._items ??= ListBuilder<BenchmarkCase>();
  set items(ListBuilder<BenchmarkCase>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  BenchmarkCasePageBuilder() {
    BenchmarkCasePage._defaults(this);
  }

  BenchmarkCasePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkCasePage other) {
    _$v = other as _$BenchmarkCasePage;
  }

  @override
  void update(void Function(BenchmarkCasePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkCasePage build() => _build();

  _$BenchmarkCasePage _build() {
    _$BenchmarkCasePage _$result;
    try {
      _$result = _$v ??
          _$BenchmarkCasePage._(
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
            r'BenchmarkCasePage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
