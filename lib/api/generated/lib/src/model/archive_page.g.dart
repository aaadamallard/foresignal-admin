// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArchivePage extends ArchivePage {
  @override
  final BuiltList<Archive> items;
  @override
  final String? nextCursor;

  factory _$ArchivePage([void Function(ArchivePageBuilder)? updates]) =>
      (ArchivePageBuilder()..update(updates))._build();

  _$ArchivePage._({required this.items, this.nextCursor}) : super._();
  @override
  ArchivePage rebuild(void Function(ArchivePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchivePageBuilder toBuilder() => ArchivePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchivePage &&
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
    return (newBuiltValueToStringHelper(r'ArchivePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ArchivePageBuilder implements Builder<ArchivePage, ArchivePageBuilder> {
  _$ArchivePage? _$v;

  ListBuilder<Archive>? _items;
  ListBuilder<Archive> get items => _$this._items ??= ListBuilder<Archive>();
  set items(ListBuilder<Archive>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ArchivePageBuilder() {
    ArchivePage._defaults(this);
  }

  ArchivePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchivePage other) {
    _$v = other as _$ArchivePage;
  }

  @override
  void update(void Function(ArchivePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchivePage build() => _build();

  _$ArchivePage _build() {
    _$ArchivePage _$result;
    try {
      _$result =
          _$v ?? _$ArchivePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ArchivePage',
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
