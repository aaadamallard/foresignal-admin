// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_groups_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MeGroupsInnerRoleEnum _$meGroupsInnerRoleEnum_member =
    const MeGroupsInnerRoleEnum._('member');
const MeGroupsInnerRoleEnum _$meGroupsInnerRoleEnum_manager =
    const MeGroupsInnerRoleEnum._('manager');

MeGroupsInnerRoleEnum _$meGroupsInnerRoleEnumValueOf(String name) {
  switch (name) {
    case 'member':
      return _$meGroupsInnerRoleEnum_member;
    case 'manager':
      return _$meGroupsInnerRoleEnum_manager;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MeGroupsInnerRoleEnum> _$meGroupsInnerRoleEnumValues =
    BuiltSet<MeGroupsInnerRoleEnum>(const <MeGroupsInnerRoleEnum>[
      _$meGroupsInnerRoleEnum_member,
      _$meGroupsInnerRoleEnum_manager,
    ]);

Serializer<MeGroupsInnerRoleEnum> _$meGroupsInnerRoleEnumSerializer =
    _$MeGroupsInnerRoleEnumSerializer();

class _$MeGroupsInnerRoleEnumSerializer
    implements PrimitiveSerializer<MeGroupsInnerRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'member': 'member',
    'manager': 'manager',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'member': 'member',
    'manager': 'manager',
  };

  @override
  final Iterable<Type> types = const <Type>[MeGroupsInnerRoleEnum];
  @override
  final String wireName = 'MeGroupsInnerRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    MeGroupsInnerRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MeGroupsInnerRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MeGroupsInnerRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MeGroupsInner extends MeGroupsInner {
  @override
  final String id;
  @override
  final String name;
  @override
  final MeGroupsInnerRoleEnum role;

  factory _$MeGroupsInner([void Function(MeGroupsInnerBuilder)? updates]) =>
      (MeGroupsInnerBuilder()..update(updates))._build();

  _$MeGroupsInner._({required this.id, required this.name, required this.role})
    : super._();
  @override
  MeGroupsInner rebuild(void Function(MeGroupsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeGroupsInnerBuilder toBuilder() => MeGroupsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeGroupsInner &&
        id == other.id &&
        name == other.name &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeGroupsInner')
          ..add('id', id)
          ..add('name', name)
          ..add('role', role))
        .toString();
  }
}

class MeGroupsInnerBuilder
    implements Builder<MeGroupsInner, MeGroupsInnerBuilder> {
  _$MeGroupsInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MeGroupsInnerRoleEnum? _role;
  MeGroupsInnerRoleEnum? get role => _$this._role;
  set role(MeGroupsInnerRoleEnum? role) => _$this._role = role;

  MeGroupsInnerBuilder() {
    MeGroupsInner._defaults(this);
  }

  MeGroupsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeGroupsInner other) {
    _$v = other as _$MeGroupsInner;
  }

  @override
  void update(void Function(MeGroupsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeGroupsInner build() => _build();

  _$MeGroupsInner _build() {
    final _$result =
        _$v ??
        _$MeGroupsInner._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'MeGroupsInner', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'MeGroupsInner',
            'name',
          ),
          role: BuiltValueNullFieldError.checkNotNull(
            role,
            r'MeGroupsInner',
            'role',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
