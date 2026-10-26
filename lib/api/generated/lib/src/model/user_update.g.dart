// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserUpdate extends UserUpdate {
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final UserDataRestriction? dataRestriction;

  factory _$UserUpdate([void Function(UserUpdateBuilder)? updates]) =>
      (UserUpdateBuilder()..update(updates))._build();

  _$UserUpdate._({this.fullName, this.email, this.dataRestriction}) : super._();
  @override
  UserUpdate rebuild(void Function(UserUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserUpdateBuilder toBuilder() => UserUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserUpdate &&
        fullName == other.fullName &&
        email == other.email &&
        dataRestriction == other.dataRestriction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, dataRestriction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserUpdate')
          ..add('fullName', fullName)
          ..add('email', email)
          ..add('dataRestriction', dataRestriction))
        .toString();
  }
}

class UserUpdateBuilder implements Builder<UserUpdate, UserUpdateBuilder> {
  _$UserUpdate? _$v;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  UserDataRestrictionBuilder? _dataRestriction;
  UserDataRestrictionBuilder get dataRestriction =>
      _$this._dataRestriction ??= UserDataRestrictionBuilder();
  set dataRestriction(UserDataRestrictionBuilder? dataRestriction) =>
      _$this._dataRestriction = dataRestriction;

  UserUpdateBuilder() {
    UserUpdate._defaults(this);
  }

  UserUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fullName = $v.fullName;
      _email = $v.email;
      _dataRestriction = $v.dataRestriction?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserUpdate other) {
    _$v = other as _$UserUpdate;
  }

  @override
  void update(void Function(UserUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserUpdate build() => _build();

  _$UserUpdate _build() {
    _$UserUpdate _$result;
    try {
      _$result =
          _$v ??
          _$UserUpdate._(
            fullName: fullName,
            email: email,
            dataRestriction: _dataRestriction?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dataRestriction';
        _dataRestriction?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserUpdate',
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
