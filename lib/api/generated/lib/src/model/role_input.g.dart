// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoleInput extends RoleInput {
  @override
  final String name;
  @override
  final String? description;
  @override
  final BuiltList<String> permissions;

  factory _$RoleInput([void Function(RoleInputBuilder)? updates]) =>
      (RoleInputBuilder()..update(updates))._build();

  _$RoleInput._({
    required this.name,
    this.description,
    required this.permissions,
  }) : super._();
  @override
  RoleInput rebuild(void Function(RoleInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleInputBuilder toBuilder() => RoleInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoleInput &&
        name == other.name &&
        description == other.description &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RoleInput')
          ..add('name', name)
          ..add('description', description)
          ..add('permissions', permissions))
        .toString();
  }
}

class RoleInputBuilder implements Builder<RoleInput, RoleInputBuilder> {
  _$RoleInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  RoleInputBuilder() {
    RoleInput._defaults(this);
  }

  RoleInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _permissions = $v.permissions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoleInput other) {
    _$v = other as _$RoleInput;
  }

  @override
  void update(void Function(RoleInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoleInput build() => _build();

  _$RoleInput _build() {
    _$RoleInput _$result;
    try {
      _$result =
          _$v ??
          _$RoleInput._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'RoleInput',
              'name',
            ),
            description: description,
            permissions: permissions.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RoleInput',
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
