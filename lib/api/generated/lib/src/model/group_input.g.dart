// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupInput extends GroupInput {
  @override
  final String name;
  @override
  final String? description;
  @override
  final BuiltList<GroupMemberInput>? members;

  factory _$GroupInput([void Function(GroupInputBuilder)? updates]) =>
      (GroupInputBuilder()..update(updates))._build();

  _$GroupInput._({required this.name, this.description, this.members})
    : super._();
  @override
  GroupInput rebuild(void Function(GroupInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupInputBuilder toBuilder() => GroupInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupInput &&
        name == other.name &&
        description == other.description &&
        members == other.members;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupInput')
          ..add('name', name)
          ..add('description', description)
          ..add('members', members))
        .toString();
  }
}

class GroupInputBuilder implements Builder<GroupInput, GroupInputBuilder> {
  _$GroupInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<GroupMemberInput>? _members;
  ListBuilder<GroupMemberInput> get members =>
      _$this._members ??= ListBuilder<GroupMemberInput>();
  set members(ListBuilder<GroupMemberInput>? members) =>
      _$this._members = members;

  GroupInputBuilder() {
    GroupInput._defaults(this);
  }

  GroupInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _members = $v.members?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupInput other) {
    _$v = other as _$GroupInput;
  }

  @override
  void update(void Function(GroupInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupInput build() => _build();

  _$GroupInput _build() {
    _$GroupInput _$result;
    try {
      _$result =
          _$v ??
          _$GroupInput._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'GroupInput',
              'name',
            ),
            description: description,
            members: _members?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'members';
        _members?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GroupInput',
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
