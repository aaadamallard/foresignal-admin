// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Permission extends Permission {
  @override
  final String key;
  @override
  final String group;
  @override
  final String? description;

  factory _$Permission([void Function(PermissionBuilder)? updates]) =>
      (PermissionBuilder()..update(updates))._build();

  _$Permission._({required this.key, required this.group, this.description})
    : super._();
  @override
  Permission rebuild(void Function(PermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionBuilder toBuilder() => PermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Permission &&
        key == other.key &&
        group == other.group &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Permission')
          ..add('key', key)
          ..add('group', group)
          ..add('description', description))
        .toString();
  }
}

class PermissionBuilder implements Builder<Permission, PermissionBuilder> {
  _$Permission? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _group;
  String? get group => _$this._group;
  set group(String? group) => _$this._group = group;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  PermissionBuilder() {
    Permission._defaults(this);
  }

  PermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _group = $v.group;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Permission other) {
    _$v = other as _$Permission;
  }

  @override
  void update(void Function(PermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Permission build() => _build();

  _$Permission _build() {
    final _$result =
        _$v ??
        _$Permission._(
          key: BuiltValueNullFieldError.checkNotNull(key, r'Permission', 'key'),
          group: BuiltValueNullFieldError.checkNotNull(
            group,
            r'Permission',
            'group',
          ),
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
