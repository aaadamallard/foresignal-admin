// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_note_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalystNotePage extends AnalystNotePage {
  @override
  final BuiltList<AnalystNote> items;
  @override
  final String? nextCursor;

  factory _$AnalystNotePage([void Function(AnalystNotePageBuilder)? updates]) =>
      (AnalystNotePageBuilder()..update(updates))._build();

  _$AnalystNotePage._({required this.items, this.nextCursor}) : super._();
  @override
  AnalystNotePage rebuild(void Function(AnalystNotePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystNotePageBuilder toBuilder() => AnalystNotePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystNotePage &&
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
    return (newBuiltValueToStringHelper(r'AnalystNotePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class AnalystNotePageBuilder
    implements Builder<AnalystNotePage, AnalystNotePageBuilder> {
  _$AnalystNotePage? _$v;

  ListBuilder<AnalystNote>? _items;
  ListBuilder<AnalystNote> get items =>
      _$this._items ??= ListBuilder<AnalystNote>();
  set items(ListBuilder<AnalystNote>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  AnalystNotePageBuilder() {
    AnalystNotePage._defaults(this);
  }

  AnalystNotePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystNotePage other) {
    _$v = other as _$AnalystNotePage;
  }

  @override
  void update(void Function(AnalystNotePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystNotePage build() => _build();

  _$AnalystNotePage _build() {
    _$AnalystNotePage _$result;
    try {
      _$result = _$v ??
          _$AnalystNotePage._(
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
            r'AnalystNotePage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
