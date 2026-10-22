// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GroupMemberInputRoleEnum _$groupMemberInputRoleEnum_member =
    const GroupMemberInputRoleEnum._('member');
const GroupMemberInputRoleEnum _$groupMemberInputRoleEnum_manager =
    const GroupMemberInputRoleEnum._('manager');

GroupMemberInputRoleEnum _$groupMemberInputRoleEnumValueOf(String name) {
  switch (name) {
    case 'member':
      return _$groupMemberInputRoleEnum_member;
    case 'manager':
      return _$groupMemberInputRoleEnum_manager;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GroupMemberInputRoleEnum> _$groupMemberInputRoleEnumValues =
    BuiltSet<GroupMemberInputRoleEnum>(const <GroupMemberInputRoleEnum>[
      _$groupMemberInputRoleEnum_member,
      _$groupMemberInputRoleEnum_manager,
    ]);

Serializer<GroupMemberInputRoleEnum> _$groupMemberInputRoleEnumSerializer =
    _$GroupMemberInputRoleEnumSerializer();

class _$GroupMemberInputRoleEnumSerializer
    implements PrimitiveSerializer<GroupMemberInputRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'member': 'member',
    'manager': 'manager',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'member': 'member',
    'manager': 'manager',
  };

  @override
  final Iterable<Type> types = const <Type>[GroupMemberInputRoleEnum];
  @override
  final String wireName = 'GroupMemberInputRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    GroupMemberInputRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  GroupMemberInputRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => GroupMemberInputRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$GroupMemberInput extends GroupMemberInput {
  @override
  final String principalId;
  @override
  final GroupMemberInputRoleEnum? role;

  factory _$GroupMemberInput([
    void Function(GroupMemberInputBuilder)? updates,
  ]) => (GroupMemberInputBuilder()..update(updates))._build();

  _$GroupMemberInput._({required this.principalId, this.role}) : super._();
  @override
  GroupMemberInput rebuild(void Function(GroupMemberInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupMemberInputBuilder toBuilder() =>
      GroupMemberInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupMemberInput &&
        principalId == other.principalId &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupMemberInput')
          ..add('principalId', principalId)
          ..add('role', role))
        .toString();
  }
}

class GroupMemberInputBuilder
    implements Builder<GroupMemberInput, GroupMemberInputBuilder> {
  _$GroupMemberInput? _$v;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  GroupMemberInputRoleEnum? _role;
  GroupMemberInputRoleEnum? get role => _$this._role;
  set role(GroupMemberInputRoleEnum? role) => _$this._role = role;

  GroupMemberInputBuilder() {
    GroupMemberInput._defaults(this);
  }

  GroupMemberInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principalId = $v.principalId;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupMemberInput other) {
    _$v = other as _$GroupMemberInput;
  }

  @override
  void update(void Function(GroupMemberInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupMemberInput build() => _build();

  _$GroupMemberInput _build() {
    final _$result =
        _$v ??
        _$GroupMemberInput._(
          principalId: BuiltValueNullFieldError.checkNotNull(
            principalId,
            r'GroupMemberInput',
            'principalId',
          ),
          role: role,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
