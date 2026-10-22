// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_run_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalystRunPage extends AnalystRunPage {
  @override
  final BuiltList<AnalystRun> items;
  @override
  final String? nextCursor;

  factory _$AnalystRunPage([void Function(AnalystRunPageBuilder)? updates]) =>
      (AnalystRunPageBuilder()..update(updates))._build();

  _$AnalystRunPage._({required this.items, this.nextCursor}) : super._();
  @override
  AnalystRunPage rebuild(void Function(AnalystRunPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystRunPageBuilder toBuilder() => AnalystRunPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystRunPage &&
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
    return (newBuiltValueToStringHelper(r'AnalystRunPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class AnalystRunPageBuilder
    implements Builder<AnalystRunPage, AnalystRunPageBuilder> {
  _$AnalystRunPage? _$v;

  ListBuilder<AnalystRun>? _items;
  ListBuilder<AnalystRun> get items =>
      _$this._items ??= ListBuilder<AnalystRun>();
  set items(ListBuilder<AnalystRun>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  AnalystRunPageBuilder() {
    AnalystRunPage._defaults(this);
  }

  AnalystRunPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystRunPage other) {
    _$v = other as _$AnalystRunPage;
  }

  @override
  void update(void Function(AnalystRunPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystRunPage build() => _build();

  _$AnalystRunPage _build() {
    _$AnalystRunPage _$result;
    try {
      _$result =
          _$v ??
          _$AnalystRunPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalystRunPage',
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
