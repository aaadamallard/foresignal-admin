// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SinkPage extends SinkPage {
  @override
  final BuiltList<Sink> items;
  @override
  final String? nextCursor;

  factory _$SinkPage([void Function(SinkPageBuilder)? updates]) =>
      (SinkPageBuilder()..update(updates))._build();

  _$SinkPage._({required this.items, this.nextCursor}) : super._();
  @override
  SinkPage rebuild(void Function(SinkPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkPageBuilder toBuilder() => SinkPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinkPage &&
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
    return (newBuiltValueToStringHelper(r'SinkPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class SinkPageBuilder implements Builder<SinkPage, SinkPageBuilder> {
  _$SinkPage? _$v;

  ListBuilder<Sink>? _items;
  ListBuilder<Sink> get items => _$this._items ??= ListBuilder<Sink>();
  set items(ListBuilder<Sink>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  SinkPageBuilder() {
    SinkPage._defaults(this);
  }

  SinkPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SinkPage other) {
    _$v = other as _$SinkPage;
  }

  @override
  void update(void Function(SinkPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SinkPage build() => _build();

  _$SinkPage _build() {
    _$SinkPage _$result;
    try {
      _$result =
          _$v ?? _$SinkPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SinkPage',
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
