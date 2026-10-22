// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_acl_entry_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ObjectAclEntryInputRoleEnum _$objectAclEntryInputRoleEnum_viewer =
    const ObjectAclEntryInputRoleEnum._('viewer');
const ObjectAclEntryInputRoleEnum _$objectAclEntryInputRoleEnum_commenter =
    const ObjectAclEntryInputRoleEnum._('commenter');
const ObjectAclEntryInputRoleEnum _$objectAclEntryInputRoleEnum_editor =
    const ObjectAclEntryInputRoleEnum._('editor');
const ObjectAclEntryInputRoleEnum _$objectAclEntryInputRoleEnum_owner =
    const ObjectAclEntryInputRoleEnum._('owner');

ObjectAclEntryInputRoleEnum _$objectAclEntryInputRoleEnumValueOf(String name) {
  switch (name) {
    case 'viewer':
      return _$objectAclEntryInputRoleEnum_viewer;
    case 'commenter':
      return _$objectAclEntryInputRoleEnum_commenter;
    case 'editor':
      return _$objectAclEntryInputRoleEnum_editor;
    case 'owner':
      return _$objectAclEntryInputRoleEnum_owner;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ObjectAclEntryInputRoleEnum>
    _$objectAclEntryInputRoleEnumValues =
    BuiltSet<ObjectAclEntryInputRoleEnum>(const <ObjectAclEntryInputRoleEnum>[
  _$objectAclEntryInputRoleEnum_viewer,
  _$objectAclEntryInputRoleEnum_commenter,
  _$objectAclEntryInputRoleEnum_editor,
  _$objectAclEntryInputRoleEnum_owner,
]);

Serializer<ObjectAclEntryInputRoleEnum>
    _$objectAclEntryInputRoleEnumSerializer =
    _$ObjectAclEntryInputRoleEnumSerializer();

class _$ObjectAclEntryInputRoleEnumSerializer
    implements PrimitiveSerializer<ObjectAclEntryInputRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'viewer': 'viewer',
    'commenter': 'commenter',
    'editor': 'editor',
    'owner': 'owner',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'viewer': 'viewer',
    'commenter': 'commenter',
    'editor': 'editor',
    'owner': 'owner',
  };

  @override
  final Iterable<Type> types = const <Type>[ObjectAclEntryInputRoleEnum];
  @override
  final String wireName = 'ObjectAclEntryInputRoleEnum';

  @override
  Object serialize(Serializers serializers, ObjectAclEntryInputRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ObjectAclEntryInputRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ObjectAclEntryInputRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ObjectAclEntryInput extends ObjectAclEntryInput {
  @override
  final String grantee;
  @override
  final ObjectAclEntryInputRoleEnum role;
  @override
  final DateTime? expiresAt;

  factory _$ObjectAclEntryInput(
          [void Function(ObjectAclEntryInputBuilder)? updates]) =>
      (ObjectAclEntryInputBuilder()..update(updates))._build();

  _$ObjectAclEntryInput._(
      {required this.grantee, required this.role, this.expiresAt})
      : super._();
  @override
  ObjectAclEntryInput rebuild(
          void Function(ObjectAclEntryInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectAclEntryInputBuilder toBuilder() =>
      ObjectAclEntryInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectAclEntryInput &&
        grantee == other.grantee &&
        role == other.role &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, grantee.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectAclEntryInput')
          ..add('grantee', grantee)
          ..add('role', role)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class ObjectAclEntryInputBuilder
    implements Builder<ObjectAclEntryInput, ObjectAclEntryInputBuilder> {
  _$ObjectAclEntryInput? _$v;

  String? _grantee;
  String? get grantee => _$this._grantee;
  set grantee(String? grantee) => _$this._grantee = grantee;

  ObjectAclEntryInputRoleEnum? _role;
  ObjectAclEntryInputRoleEnum? get role => _$this._role;
  set role(ObjectAclEntryInputRoleEnum? role) => _$this._role = role;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ObjectAclEntryInputBuilder() {
    ObjectAclEntryInput._defaults(this);
  }

  ObjectAclEntryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grantee = $v.grantee;
      _role = $v.role;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectAclEntryInput other) {
    _$v = other as _$ObjectAclEntryInput;
  }

  @override
  void update(void Function(ObjectAclEntryInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectAclEntryInput build() => _build();

  _$ObjectAclEntryInput _build() {
    final _$result = _$v ??
        _$ObjectAclEntryInput._(
          grantee: BuiltValueNullFieldError.checkNotNull(
              grantee, r'ObjectAclEntryInput', 'grantee'),
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'ObjectAclEntryInput', 'role'),
          expiresAt: expiresAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
