// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canonical_event_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CanonicalEventPage extends CanonicalEventPage {
  @override
  final BuiltList<CanonicalEvent> items;
  @override
  final String? nextCursor;

  factory _$CanonicalEventPage([
    void Function(CanonicalEventPageBuilder)? updates,
  ]) => (CanonicalEventPageBuilder()..update(updates))._build();

  _$CanonicalEventPage._({required this.items, this.nextCursor}) : super._();
  @override
  CanonicalEventPage rebuild(
    void Function(CanonicalEventPageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CanonicalEventPageBuilder toBuilder() =>
      CanonicalEventPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CanonicalEventPage &&
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
    return (newBuiltValueToStringHelper(r'CanonicalEventPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class CanonicalEventPageBuilder
    implements Builder<CanonicalEventPage, CanonicalEventPageBuilder> {
  _$CanonicalEventPage? _$v;

  ListBuilder<CanonicalEvent>? _items;
  ListBuilder<CanonicalEvent> get items =>
      _$this._items ??= ListBuilder<CanonicalEvent>();
  set items(ListBuilder<CanonicalEvent>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  CanonicalEventPageBuilder() {
    CanonicalEventPage._defaults(this);
  }

  CanonicalEventPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CanonicalEventPage other) {
    _$v = other as _$CanonicalEventPage;
  }

  @override
  void update(void Function(CanonicalEventPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CanonicalEventPage build() => _build();

  _$CanonicalEventPage _build() {
    _$CanonicalEventPage _$result;
    try {
      _$result =
          _$v ??
          _$CanonicalEventPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CanonicalEventPage',
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
