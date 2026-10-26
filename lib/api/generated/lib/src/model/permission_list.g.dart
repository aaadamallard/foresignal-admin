// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionList extends PermissionList {
  @override
  final BuiltList<Permission> items;

  factory _$PermissionList([void Function(PermissionListBuilder)? updates]) =>
      (PermissionListBuilder()..update(updates))._build();

  _$PermissionList._({required this.items}) : super._();
  @override
  PermissionList rebuild(void Function(PermissionListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionListBuilder toBuilder() => PermissionListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionList && items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'PermissionList',
    )..add('items', items)).toString();
  }
}

class PermissionListBuilder
    implements Builder<PermissionList, PermissionListBuilder> {
  _$PermissionList? _$v;

  ListBuilder<Permission>? _items;
  ListBuilder<Permission> get items =>
      _$this._items ??= ListBuilder<Permission>();
  set items(ListBuilder<Permission>? items) => _$this._items = items;

  PermissionListBuilder() {
    PermissionList._defaults(this);
  }

  PermissionListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionList other) {
    _$v = other as _$PermissionList;
  }

  @override
  void update(void Function(PermissionListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionList build() => _build();

  _$PermissionList _build() {
    _$PermissionList _$result;
    try {
      _$result = _$v ?? _$PermissionList._(items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PermissionList',
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
