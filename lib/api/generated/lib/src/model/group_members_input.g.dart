// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_members_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupMembersInput extends GroupMembersInput {
  @override
  final BuiltList<GroupMemberInput> members;

  factory _$GroupMembersInput([
    void Function(GroupMembersInputBuilder)? updates,
  ]) => (GroupMembersInputBuilder()..update(updates))._build();

  _$GroupMembersInput._({required this.members}) : super._();
  @override
  GroupMembersInput rebuild(void Function(GroupMembersInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupMembersInputBuilder toBuilder() =>
      GroupMembersInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupMembersInput && members == other.members;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GroupMembersInput',
    )..add('members', members)).toString();
  }
}

class GroupMembersInputBuilder
    implements Builder<GroupMembersInput, GroupMembersInputBuilder> {
  _$GroupMembersInput? _$v;

  ListBuilder<GroupMemberInput>? _members;
  ListBuilder<GroupMemberInput> get members =>
      _$this._members ??= ListBuilder<GroupMemberInput>();
  set members(ListBuilder<GroupMemberInput>? members) =>
      _$this._members = members;

  GroupMembersInputBuilder() {
    GroupMembersInput._defaults(this);
  }

  GroupMembersInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _members = $v.members.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupMembersInput other) {
    _$v = other as _$GroupMembersInput;
  }

  @override
  void update(void Function(GroupMembersInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupMembersInput build() => _build();

  _$GroupMembersInput _build() {
    _$GroupMembersInput _$result;
    try {
      _$result = _$v ?? _$GroupMembersInput._(members: members.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'members';
        members.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GroupMembersInput',
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
