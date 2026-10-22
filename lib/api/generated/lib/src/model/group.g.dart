// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Group extends Group {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final PrincipalSummary createdBy;
  @override
  final int memberCount;
  @override
  final BuiltList<GroupMember>? members;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Group([void Function(GroupBuilder)? updates]) =>
      (GroupBuilder()..update(updates))._build();

  _$Group._({
    required this.id,
    required this.name,
    this.description,
    required this.createdBy,
    required this.memberCount,
    this.members,
    required this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  Group rebuild(void Function(GroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupBuilder toBuilder() => GroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Group &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        createdBy == other.createdBy &&
        memberCount == other.memberCount &&
        members == other.members &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, memberCount.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Group')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('createdBy', createdBy)
          ..add('memberCount', memberCount)
          ..add('members', members)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GroupBuilder implements Builder<Group, GroupBuilder> {
  _$Group? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  PrincipalSummaryBuilder? _createdBy;
  PrincipalSummaryBuilder get createdBy =>
      _$this._createdBy ??= PrincipalSummaryBuilder();
  set createdBy(PrincipalSummaryBuilder? createdBy) =>
      _$this._createdBy = createdBy;

  int? _memberCount;
  int? get memberCount => _$this._memberCount;
  set memberCount(int? memberCount) => _$this._memberCount = memberCount;

  ListBuilder<GroupMember>? _members;
  ListBuilder<GroupMember> get members =>
      _$this._members ??= ListBuilder<GroupMember>();
  set members(ListBuilder<GroupMember>? members) => _$this._members = members;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  GroupBuilder() {
    Group._defaults(this);
  }

  GroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _createdBy = $v.createdBy.toBuilder();
      _memberCount = $v.memberCount;
      _members = $v.members?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Group other) {
    _$v = other as _$Group;
  }

  @override
  void update(void Function(GroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Group build() => _build();

  _$Group _build() {
    _$Group _$result;
    try {
      _$result =
          _$v ??
          _$Group._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Group', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Group', 'name'),
            description: description,
            createdBy: createdBy.build(),
            memberCount: BuiltValueNullFieldError.checkNotNull(
              memberCount,
              r'Group',
              'memberCount',
            ),
            members: _members?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Group',
              'createdAt',
            ),
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdBy';
        createdBy.build();

        _$failedField = 'members';
        _members?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Group', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
