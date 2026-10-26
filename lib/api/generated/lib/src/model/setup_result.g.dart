// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setup_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetupResult extends SetupResult {
  @override
  final User user;
  @override
  final SessionToken? session;

  factory _$SetupResult([void Function(SetupResultBuilder)? updates]) =>
      (SetupResultBuilder()..update(updates))._build();

  _$SetupResult._({required this.user, this.session}) : super._();
  @override
  SetupResult rebuild(void Function(SetupResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetupResultBuilder toBuilder() => SetupResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetupResult &&
        user == other.user &&
        session == other.session;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetupResult')
          ..add('user', user)
          ..add('session', session))
        .toString();
  }
}

class SetupResultBuilder implements Builder<SetupResult, SetupResultBuilder> {
  _$SetupResult? _$v;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  SessionTokenBuilder? _session;
  SessionTokenBuilder get session => _$this._session ??= SessionTokenBuilder();
  set session(SessionTokenBuilder? session) => _$this._session = session;

  SetupResultBuilder() {
    SetupResult._defaults(this);
  }

  SetupResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _session = $v.session?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetupResult other) {
    _$v = other as _$SetupResult;
  }

  @override
  void update(void Function(SetupResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetupResult build() => _build();

  _$SetupResult _build() {
    _$SetupResult _$result;
    try {
      _$result =
          _$v ??
          _$SetupResult._(user: user.build(), session: _session?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'session';
        _session?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SetupResult',
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
