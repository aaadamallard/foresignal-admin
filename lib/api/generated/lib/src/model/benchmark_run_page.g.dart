// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_run_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BenchmarkRunPage extends BenchmarkRunPage {
  @override
  final BuiltList<BenchmarkRun> items;
  @override
  final String? nextCursor;

  factory _$BenchmarkRunPage([
    void Function(BenchmarkRunPageBuilder)? updates,
  ]) => (BenchmarkRunPageBuilder()..update(updates))._build();

  _$BenchmarkRunPage._({required this.items, this.nextCursor}) : super._();
  @override
  BenchmarkRunPage rebuild(void Function(BenchmarkRunPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BenchmarkRunPageBuilder toBuilder() =>
      BenchmarkRunPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkRunPage &&
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
    return (newBuiltValueToStringHelper(r'BenchmarkRunPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class BenchmarkRunPageBuilder
    implements Builder<BenchmarkRunPage, BenchmarkRunPageBuilder> {
  _$BenchmarkRunPage? _$v;

  ListBuilder<BenchmarkRun>? _items;
  ListBuilder<BenchmarkRun> get items =>
      _$this._items ??= ListBuilder<BenchmarkRun>();
  set items(ListBuilder<BenchmarkRun>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  BenchmarkRunPageBuilder() {
    BenchmarkRunPage._defaults(this);
  }

  BenchmarkRunPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkRunPage other) {
    _$v = other as _$BenchmarkRunPage;
  }

  @override
  void update(void Function(BenchmarkRunPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkRunPage build() => _build();

  _$BenchmarkRunPage _build() {
    _$BenchmarkRunPage _$result;
    try {
      _$result =
          _$v ??
          _$BenchmarkRunPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BenchmarkRunPage',
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
