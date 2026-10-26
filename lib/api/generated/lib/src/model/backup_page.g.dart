// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupPage extends BackupPage {
  @override
  final BuiltList<Backup> items;
  @override
  final String? nextCursor;

  factory _$BackupPage([void Function(BackupPageBuilder)? updates]) =>
      (BackupPageBuilder()..update(updates))._build();

  _$BackupPage._({required this.items, this.nextCursor}) : super._();
  @override
  BackupPage rebuild(void Function(BackupPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackupPageBuilder toBuilder() => BackupPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupPage &&
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
    return (newBuiltValueToStringHelper(r'BackupPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class BackupPageBuilder implements Builder<BackupPage, BackupPageBuilder> {
  _$BackupPage? _$v;

  ListBuilder<Backup>? _items;
  ListBuilder<Backup> get items => _$this._items ??= ListBuilder<Backup>();
  set items(ListBuilder<Backup>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  BackupPageBuilder() {
    BackupPage._defaults(this);
  }

  BackupPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackupPage other) {
    _$v = other as _$BackupPage;
  }

  @override
  void update(void Function(BackupPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupPage build() => _build();

  _$BackupPage _build() {
    _$BackupPage _$result;
    try {
      _$result =
          _$v ?? _$BackupPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BackupPage',
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
