// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final String id;
  @override
  final String email;
  @override
  final String fullName;
  @override
  final String status;
  @override
  final BuiltList<RoleRef> roles;
  @override
  final bool? mfaEnabled;
  @override
  final String? createdBy;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? lastLoginAt;
  @override
  final UserLinkIssued? activation;
  @override
  final UserDataRestriction? dataRestriction;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (UserBuilder()..update(updates))._build();

  _$User._({
    required this.id,
    required this.email,
    required this.fullName,
    required this.status,
    required this.roles,
    this.mfaEnabled,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
    this.lastLoginAt,
    this.activation,
    this.dataRestriction,
  }) : super._();
  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        email == other.email &&
        fullName == other.fullName &&
        status == other.status &&
        roles == other.roles &&
        mfaEnabled == other.mfaEnabled &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        lastLoginAt == other.lastLoginAt &&
        activation == other.activation &&
        dataRestriction == other.dataRestriction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, mfaEnabled.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, lastLoginAt.hashCode);
    _$hash = $jc(_$hash, activation.hashCode);
    _$hash = $jc(_$hash, dataRestriction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('id', id)
          ..add('email', email)
          ..add('fullName', fullName)
          ..add('status', status)
          ..add('roles', roles)
          ..add('mfaEnabled', mfaEnabled)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('lastLoginAt', lastLoginAt)
          ..add('activation', activation)
          ..add('dataRestriction', dataRestriction))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<RoleRef>? _roles;
  ListBuilder<RoleRef> get roles => _$this._roles ??= ListBuilder<RoleRef>();
  set roles(ListBuilder<RoleRef>? roles) => _$this._roles = roles;

  bool? _mfaEnabled;
  bool? get mfaEnabled => _$this._mfaEnabled;
  set mfaEnabled(bool? mfaEnabled) => _$this._mfaEnabled = mfaEnabled;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _lastLoginAt;
  DateTime? get lastLoginAt => _$this._lastLoginAt;
  set lastLoginAt(DateTime? lastLoginAt) => _$this._lastLoginAt = lastLoginAt;

  UserLinkIssuedBuilder? _activation;
  UserLinkIssuedBuilder get activation =>
      _$this._activation ??= UserLinkIssuedBuilder();
  set activation(UserLinkIssuedBuilder? activation) =>
      _$this._activation = activation;

  UserDataRestrictionBuilder? _dataRestriction;
  UserDataRestrictionBuilder get dataRestriction =>
      _$this._dataRestriction ??= UserDataRestrictionBuilder();
  set dataRestriction(UserDataRestrictionBuilder? dataRestriction) =>
      _$this._dataRestriction = dataRestriction;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _fullName = $v.fullName;
      _status = $v.status;
      _roles = $v.roles.toBuilder();
      _mfaEnabled = $v.mfaEnabled;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _lastLoginAt = $v.lastLoginAt;
      _activation = $v.activation?.toBuilder();
      _dataRestriction = $v.dataRestriction?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    _$User _$result;
    try {
      _$result =
          _$v ??
          _$User._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'User', 'id'),
            email: BuiltValueNullFieldError.checkNotNull(
              email,
              r'User',
              'email',
            ),
            fullName: BuiltValueNullFieldError.checkNotNull(
              fullName,
              r'User',
              'fullName',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'User',
              'status',
            ),
            roles: roles.build(),
            mfaEnabled: mfaEnabled,
            createdBy: createdBy,
            createdAt: createdAt,
            updatedAt: updatedAt,
            lastLoginAt: lastLoginAt,
            activation: _activation?.build(),
            dataRestriction: _dataRestriction?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        roles.build();

        _$failedField = 'activation';
        _activation?.build();
        _$failedField = 'dataRestriction';
        _dataRestriction?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
