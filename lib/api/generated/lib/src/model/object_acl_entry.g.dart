// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_acl_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ObjectAclEntryRoleEnum _$objectAclEntryRoleEnum_viewer =
    const ObjectAclEntryRoleEnum._('viewer');
const ObjectAclEntryRoleEnum _$objectAclEntryRoleEnum_commenter =
    const ObjectAclEntryRoleEnum._('commenter');
const ObjectAclEntryRoleEnum _$objectAclEntryRoleEnum_editor =
    const ObjectAclEntryRoleEnum._('editor');
const ObjectAclEntryRoleEnum _$objectAclEntryRoleEnum_owner =
    const ObjectAclEntryRoleEnum._('owner');
const ObjectAclEntryRoleEnum _$objectAclEntryRoleEnum_unknownDefaultOpenApi =
    const ObjectAclEntryRoleEnum._('unknownDefaultOpenApi');

ObjectAclEntryRoleEnum _$objectAclEntryRoleEnumValueOf(String name) {
  switch (name) {
    case 'viewer':
      return _$objectAclEntryRoleEnum_viewer;
    case 'commenter':
      return _$objectAclEntryRoleEnum_commenter;
    case 'editor':
      return _$objectAclEntryRoleEnum_editor;
    case 'owner':
      return _$objectAclEntryRoleEnum_owner;
    case 'unknownDefaultOpenApi':
      return _$objectAclEntryRoleEnum_unknownDefaultOpenApi;
    default:
      return _$objectAclEntryRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ObjectAclEntryRoleEnum> _$objectAclEntryRoleEnumValues =
    BuiltSet<ObjectAclEntryRoleEnum>(const <ObjectAclEntryRoleEnum>[
      _$objectAclEntryRoleEnum_viewer,
      _$objectAclEntryRoleEnum_commenter,
      _$objectAclEntryRoleEnum_editor,
      _$objectAclEntryRoleEnum_owner,
      _$objectAclEntryRoleEnum_unknownDefaultOpenApi,
    ]);

Serializer<ObjectAclEntryRoleEnum> _$objectAclEntryRoleEnumSerializer =
    _$ObjectAclEntryRoleEnumSerializer();

class _$ObjectAclEntryRoleEnumSerializer
    implements PrimitiveSerializer<ObjectAclEntryRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'viewer': 'viewer',
    'commenter': 'commenter',
    'editor': 'editor',
    'owner': 'owner',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'viewer': 'viewer',
    'commenter': 'commenter',
    'editor': 'editor',
    'owner': 'owner',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ObjectAclEntryRoleEnum];
  @override
  final String wireName = 'ObjectAclEntryRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    ObjectAclEntryRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ObjectAclEntryRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ObjectAclEntryRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ObjectAclEntry extends ObjectAclEntry {
  @override
  final String grantee;
  @override
  final String? granteeDisplay;
  @override
  final ObjectAclEntryRoleEnum role;
  @override
  final PrincipalSummary? grantedBy;
  @override
  final DateTime grantedAt;
  @override
  final DateTime? expiresAt;

  factory _$ObjectAclEntry([void Function(ObjectAclEntryBuilder)? updates]) =>
      (ObjectAclEntryBuilder()..update(updates))._build();

  _$ObjectAclEntry._({
    required this.grantee,
    this.granteeDisplay,
    required this.role,
    this.grantedBy,
    required this.grantedAt,
    this.expiresAt,
  }) : super._();
  @override
  ObjectAclEntry rebuild(void Function(ObjectAclEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectAclEntryBuilder toBuilder() => ObjectAclEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectAclEntry &&
        grantee == other.grantee &&
        granteeDisplay == other.granteeDisplay &&
        role == other.role &&
        grantedBy == other.grantedBy &&
        grantedAt == other.grantedAt &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, grantee.hashCode);
    _$hash = $jc(_$hash, granteeDisplay.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, grantedBy.hashCode);
    _$hash = $jc(_$hash, grantedAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectAclEntry')
          ..add('grantee', grantee)
          ..add('granteeDisplay', granteeDisplay)
          ..add('role', role)
          ..add('grantedBy', grantedBy)
          ..add('grantedAt', grantedAt)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class ObjectAclEntryBuilder
    implements Builder<ObjectAclEntry, ObjectAclEntryBuilder> {
  _$ObjectAclEntry? _$v;

  String? _grantee;
  String? get grantee => _$this._grantee;
  set grantee(String? grantee) => _$this._grantee = grantee;

  String? _granteeDisplay;
  String? get granteeDisplay => _$this._granteeDisplay;
  set granteeDisplay(String? granteeDisplay) =>
      _$this._granteeDisplay = granteeDisplay;

  ObjectAclEntryRoleEnum? _role;
  ObjectAclEntryRoleEnum? get role => _$this._role;
  set role(ObjectAclEntryRoleEnum? role) => _$this._role = role;

  PrincipalSummaryBuilder? _grantedBy;
  PrincipalSummaryBuilder get grantedBy =>
      _$this._grantedBy ??= PrincipalSummaryBuilder();
  set grantedBy(PrincipalSummaryBuilder? grantedBy) =>
      _$this._grantedBy = grantedBy;

  DateTime? _grantedAt;
  DateTime? get grantedAt => _$this._grantedAt;
  set grantedAt(DateTime? grantedAt) => _$this._grantedAt = grantedAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ObjectAclEntryBuilder() {
    ObjectAclEntry._defaults(this);
  }

  ObjectAclEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grantee = $v.grantee;
      _granteeDisplay = $v.granteeDisplay;
      _role = $v.role;
      _grantedBy = $v.grantedBy?.toBuilder();
      _grantedAt = $v.grantedAt;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectAclEntry other) {
    _$v = other as _$ObjectAclEntry;
  }

  @override
  void update(void Function(ObjectAclEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectAclEntry build() => _build();

  _$ObjectAclEntry _build() {
    _$ObjectAclEntry _$result;
    try {
      _$result =
          _$v ??
          _$ObjectAclEntry._(
            grantee: BuiltValueNullFieldError.checkNotNull(
              grantee,
              r'ObjectAclEntry',
              'grantee',
            ),
            granteeDisplay: granteeDisplay,
            role: BuiltValueNullFieldError.checkNotNull(
              role,
              r'ObjectAclEntry',
              'role',
            ),
            grantedBy: _grantedBy?.build(),
            grantedAt: BuiltValueNullFieldError.checkNotNull(
              grantedAt,
              r'ObjectAclEntry',
              'grantedAt',
            ),
            expiresAt: expiresAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'grantedBy';
        _grantedBy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ObjectAclEntry',
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
