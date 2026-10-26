// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_assignment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoleAssignment extends RoleAssignment {
  @override
  final BuiltList<String> roles;

  factory _$RoleAssignment([void Function(RoleAssignmentBuilder)? updates]) =>
      (RoleAssignmentBuilder()..update(updates))._build();

  _$RoleAssignment._({required this.roles}) : super._();
  @override
  RoleAssignment rebuild(void Function(RoleAssignmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleAssignmentBuilder toBuilder() => RoleAssignmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoleAssignment && roles == other.roles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'RoleAssignment',
    )..add('roles', roles)).toString();
  }
}

class RoleAssignmentBuilder
    implements Builder<RoleAssignment, RoleAssignmentBuilder> {
  _$RoleAssignment? _$v;

  ListBuilder<String>? _roles;
  ListBuilder<String> get roles => _$this._roles ??= ListBuilder<String>();
  set roles(ListBuilder<String>? roles) => _$this._roles = roles;

  RoleAssignmentBuilder() {
    RoleAssignment._defaults(this);
  }

  RoleAssignmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roles = $v.roles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoleAssignment other) {
    _$v = other as _$RoleAssignment;
  }

  @override
  void update(void Function(RoleAssignmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoleAssignment build() => _build();

  _$RoleAssignment _build() {
    _$RoleAssignment _$result;
    try {
      _$result = _$v ?? _$RoleAssignment._(roles: roles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        roles.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RoleAssignment',
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
