// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backtest_job_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BacktestJobPage extends BacktestJobPage {
  @override
  final BuiltList<BacktestJob> items;
  @override
  final String? nextCursor;

  factory _$BacktestJobPage([void Function(BacktestJobPageBuilder)? updates]) =>
      (BacktestJobPageBuilder()..update(updates))._build();

  _$BacktestJobPage._({required this.items, this.nextCursor}) : super._();
  @override
  BacktestJobPage rebuild(void Function(BacktestJobPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BacktestJobPageBuilder toBuilder() => BacktestJobPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BacktestJobPage &&
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
    return (newBuiltValueToStringHelper(r'BacktestJobPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class BacktestJobPageBuilder
    implements Builder<BacktestJobPage, BacktestJobPageBuilder> {
  _$BacktestJobPage? _$v;

  ListBuilder<BacktestJob>? _items;
  ListBuilder<BacktestJob> get items =>
      _$this._items ??= ListBuilder<BacktestJob>();
  set items(ListBuilder<BacktestJob>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  BacktestJobPageBuilder() {
    BacktestJobPage._defaults(this);
  }

  BacktestJobPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BacktestJobPage other) {
    _$v = other as _$BacktestJobPage;
  }

  @override
  void update(void Function(BacktestJobPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BacktestJobPage build() => _build();

  _$BacktestJobPage _build() {
    _$BacktestJobPage _$result;
    try {
      _$result =
          _$v ??
          _$BacktestJobPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BacktestJobPage',
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
