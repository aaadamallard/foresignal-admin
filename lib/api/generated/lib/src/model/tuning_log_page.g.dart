// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuning_log_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TuningLogPage extends TuningLogPage {
  @override
  final BuiltList<TuningLogEntry> items;
  @override
  final String? nextCursor;

  factory _$TuningLogPage([void Function(TuningLogPageBuilder)? updates]) =>
      (TuningLogPageBuilder()..update(updates))._build();

  _$TuningLogPage._({required this.items, this.nextCursor}) : super._();
  @override
  TuningLogPage rebuild(void Function(TuningLogPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TuningLogPageBuilder toBuilder() => TuningLogPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TuningLogPage &&
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
    return (newBuiltValueToStringHelper(r'TuningLogPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class TuningLogPageBuilder
    implements Builder<TuningLogPage, TuningLogPageBuilder> {
  _$TuningLogPage? _$v;

  ListBuilder<TuningLogEntry>? _items;
  ListBuilder<TuningLogEntry> get items =>
      _$this._items ??= ListBuilder<TuningLogEntry>();
  set items(ListBuilder<TuningLogEntry>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  TuningLogPageBuilder() {
    TuningLogPage._defaults(this);
  }

  TuningLogPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TuningLogPage other) {
    _$v = other as _$TuningLogPage;
  }

  @override
  void update(void Function(TuningLogPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TuningLogPage build() => _build();

  _$TuningLogPage _build() {
    _$TuningLogPage _$result;
    try {
      _$result =
          _$v ??
          _$TuningLogPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TuningLogPage',
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
