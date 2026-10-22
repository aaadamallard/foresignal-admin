// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialAuthor extends SocialAuthor {
  @override
  final String handle;
  @override
  final String? displayName;
  @override
  final String accountId;
  @override
  final DateTime? accountCreatedAt;
  @override
  final int? followers;
  @override
  final bool? verified;

  factory _$SocialAuthor([void Function(SocialAuthorBuilder)? updates]) =>
      (SocialAuthorBuilder()..update(updates))._build();

  _$SocialAuthor._(
      {required this.handle,
      this.displayName,
      required this.accountId,
      this.accountCreatedAt,
      this.followers,
      this.verified})
      : super._();
  @override
  SocialAuthor rebuild(void Function(SocialAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialAuthorBuilder toBuilder() => SocialAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialAuthor &&
        handle == other.handle &&
        displayName == other.displayName &&
        accountId == other.accountId &&
        accountCreatedAt == other.accountCreatedAt &&
        followers == other.followers &&
        verified == other.verified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, handle.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, accountCreatedAt.hashCode);
    _$hash = $jc(_$hash, followers.hashCode);
    _$hash = $jc(_$hash, verified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialAuthor')
          ..add('handle', handle)
          ..add('displayName', displayName)
          ..add('accountId', accountId)
          ..add('accountCreatedAt', accountCreatedAt)
          ..add('followers', followers)
          ..add('verified', verified))
        .toString();
  }
}

class SocialAuthorBuilder
    implements Builder<SocialAuthor, SocialAuthorBuilder> {
  _$SocialAuthor? _$v;

  String? _handle;
  String? get handle => _$this._handle;
  set handle(String? handle) => _$this._handle = handle;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  DateTime? _accountCreatedAt;
  DateTime? get accountCreatedAt => _$this._accountCreatedAt;
  set accountCreatedAt(DateTime? accountCreatedAt) =>
      _$this._accountCreatedAt = accountCreatedAt;

  int? _followers;
  int? get followers => _$this._followers;
  set followers(int? followers) => _$this._followers = followers;

  bool? _verified;
  bool? get verified => _$this._verified;
  set verified(bool? verified) => _$this._verified = verified;

  SocialAuthorBuilder() {
    SocialAuthor._defaults(this);
  }

  SocialAuthorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _handle = $v.handle;
      _displayName = $v.displayName;
      _accountId = $v.accountId;
      _accountCreatedAt = $v.accountCreatedAt;
      _followers = $v.followers;
      _verified = $v.verified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialAuthor other) {
    _$v = other as _$SocialAuthor;
  }

  @override
  void update(void Function(SocialAuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialAuthor build() => _build();

  _$SocialAuthor _build() {
    final _$result = _$v ??
        _$SocialAuthor._(
          handle: BuiltValueNullFieldError.checkNotNull(
              handle, r'SocialAuthor', 'handle'),
          displayName: displayName,
          accountId: BuiltValueNullFieldError.checkNotNull(
              accountId, r'SocialAuthor', 'accountId'),
          accountCreatedAt: accountCreatedAt,
          followers: followers,
          verified: verified,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
