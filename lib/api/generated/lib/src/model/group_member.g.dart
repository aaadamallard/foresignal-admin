// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GroupMemberRoleEnum _$groupMemberRoleEnum_member =
    const GroupMemberRoleEnum._('member');
const GroupMemberRoleEnum _$groupMemberRoleEnum_manager =
    const GroupMemberRoleEnum._('manager');

GroupMemberRoleEnum _$groupMemberRoleEnumValueOf(String name) {
  switch (name) {
    case 'member':
      return _$groupMemberRoleEnum_member;
    case 'manager':
      return _$groupMemberRoleEnum_manager;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GroupMemberRoleEnum> _$groupMemberRoleEnumValues =
    BuiltSet<GroupMemberRoleEnum>(const <GroupMemberRoleEnum>[
  _$groupMemberRoleEnum_member,
  _$groupMemberRoleEnum_manager,
]);

Serializer<GroupMemberRoleEnum> _$groupMemberRoleEnumSerializer =
    _$GroupMemberRoleEnumSerializer();

class _$GroupMemberRoleEnumSerializer
    implements PrimitiveSerializer<GroupMemberRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'member': 'member',
    'manager': 'manager',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'member': 'member',
    'manager': 'manager',
  };

  @override
  final Iterable<Type> types = const <Type>[GroupMemberRoleEnum];
  @override
  final String wireName = 'GroupMemberRoleEnum';

  @override
  Object serialize(Serializers serializers, GroupMemberRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GroupMemberRoleEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GroupMemberRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GroupMember extends GroupMember {
  @override
  final PrincipalSummary principal;
  @override
  final GroupMemberRoleEnum role;
  @override
  final DateTime? addedAt;
  @override
  final PrincipalSummary? addedBy;

  factory _$GroupMember([void Function(GroupMemberBuilder)? updates]) =>
      (GroupMemberBuilder()..update(updates))._build();

  _$GroupMember._(
      {required this.principal, required this.role, this.addedAt, this.addedBy})
      : super._();
  @override
  GroupMember rebuild(void Function(GroupMemberBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupMemberBuilder toBuilder() => GroupMemberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupMember &&
        principal == other.principal &&
        role == other.role &&
        addedAt == other.addedAt &&
        addedBy == other.addedBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principal.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, addedBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupMember')
          ..add('principal', principal)
          ..add('role', role)
          ..add('addedAt', addedAt)
          ..add('addedBy', addedBy))
        .toString();
  }
}

class GroupMemberBuilder implements Builder<GroupMember, GroupMemberBuilder> {
  _$GroupMember? _$v;

  PrincipalSummaryBuilder? _principal;
  PrincipalSummaryBuilder get principal =>
      _$this._principal ??= PrincipalSummaryBuilder();
  set principal(PrincipalSummaryBuilder? principal) =>
      _$this._principal = principal;

  GroupMemberRoleEnum? _role;
  GroupMemberRoleEnum? get role => _$this._role;
  set role(GroupMemberRoleEnum? role) => _$this._role = role;

  DateTime? _addedAt;
  DateTime? get addedAt => _$this._addedAt;
  set addedAt(DateTime? addedAt) => _$this._addedAt = addedAt;

  PrincipalSummaryBuilder? _addedBy;
  PrincipalSummaryBuilder get addedBy =>
      _$this._addedBy ??= PrincipalSummaryBuilder();
  set addedBy(PrincipalSummaryBuilder? addedBy) => _$this._addedBy = addedBy;

  GroupMemberBuilder() {
    GroupMember._defaults(this);
  }

  GroupMemberBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principal = $v.principal.toBuilder();
      _role = $v.role;
      _addedAt = $v.addedAt;
      _addedBy = $v.addedBy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupMember other) {
    _$v = other as _$GroupMember;
  }

  @override
  void update(void Function(GroupMemberBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupMember build() => _build();

  _$GroupMember _build() {
    _$GroupMember _$result;
    try {
      _$result = _$v ??
          _$GroupMember._(
            principal: principal.build(),
            role: BuiltValueNullFieldError.checkNotNull(
                role, r'GroupMember', 'role'),
            addedAt: addedAt,
            addedBy: _addedBy?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'principal';
        principal.build();

        _$failedField = 'addedBy';
        _addedBy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GroupMember', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
