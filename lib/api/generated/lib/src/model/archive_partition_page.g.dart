// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_partition_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArchivePartitionPage extends ArchivePartitionPage {
  @override
  final BuiltList<ArchivePartition> items;
  @override
  final String? nextCursor;

  factory _$ArchivePartitionPage(
          [void Function(ArchivePartitionPageBuilder)? updates]) =>
      (ArchivePartitionPageBuilder()..update(updates))._build();

  _$ArchivePartitionPage._({required this.items, this.nextCursor}) : super._();
  @override
  ArchivePartitionPage rebuild(
          void Function(ArchivePartitionPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchivePartitionPageBuilder toBuilder() =>
      ArchivePartitionPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchivePartitionPage &&
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
    return (newBuiltValueToStringHelper(r'ArchivePartitionPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ArchivePartitionPageBuilder
    implements Builder<ArchivePartitionPage, ArchivePartitionPageBuilder> {
  _$ArchivePartitionPage? _$v;

  ListBuilder<ArchivePartition>? _items;
  ListBuilder<ArchivePartition> get items =>
      _$this._items ??= ListBuilder<ArchivePartition>();
  set items(ListBuilder<ArchivePartition>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ArchivePartitionPageBuilder() {
    ArchivePartitionPage._defaults(this);
  }

  ArchivePartitionPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchivePartitionPage other) {
    _$v = other as _$ArchivePartitionPage;
  }

  @override
  void update(void Function(ArchivePartitionPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchivePartitionPage build() => _build();

  _$ArchivePartitionPage _build() {
    _$ArchivePartitionPage _$result;
    try {
      _$result = _$v ??
          _$ArchivePartitionPage._(
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
            r'ArchivePartitionPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
