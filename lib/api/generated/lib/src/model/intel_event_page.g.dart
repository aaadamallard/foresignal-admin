// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_event_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelEventPage extends IntelEventPage {
  @override
  final BuiltList<IntelEventSummary> items;
  @override
  final String? nextCursor;

  factory _$IntelEventPage([void Function(IntelEventPageBuilder)? updates]) =>
      (IntelEventPageBuilder()..update(updates))._build();

  _$IntelEventPage._({required this.items, this.nextCursor}) : super._();
  @override
  IntelEventPage rebuild(void Function(IntelEventPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelEventPageBuilder toBuilder() => IntelEventPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelEventPage &&
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
    return (newBuiltValueToStringHelper(r'IntelEventPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class IntelEventPageBuilder
    implements Builder<IntelEventPage, IntelEventPageBuilder> {
  _$IntelEventPage? _$v;

  ListBuilder<IntelEventSummary>? _items;
  ListBuilder<IntelEventSummary> get items =>
      _$this._items ??= ListBuilder<IntelEventSummary>();
  set items(ListBuilder<IntelEventSummary>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  IntelEventPageBuilder() {
    IntelEventPage._defaults(this);
  }

  IntelEventPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelEventPage other) {
    _$v = other as _$IntelEventPage;
  }

  @override
  void update(void Function(IntelEventPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelEventPage build() => _build();

  _$IntelEventPage _build() {
    _$IntelEventPage _$result;
    try {
      _$result = _$v ??
          _$IntelEventPage._(
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
            r'IntelEventPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
