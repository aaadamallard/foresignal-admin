// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principal_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrincipalPatch extends PrincipalPatch {
  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final String? avatarMediaId;
  @override
  final String? timezone;
  @override
  final String? organization;
  @override
  final bool? disabled;

  factory _$PrincipalPatch([void Function(PrincipalPatchBuilder)? updates]) =>
      (PrincipalPatchBuilder()..update(updates))._build();

  _$PrincipalPatch._({
    this.displayName,
    this.email,
    this.avatarMediaId,
    this.timezone,
    this.organization,
    this.disabled,
  }) : super._();
  @override
  PrincipalPatch rebuild(void Function(PrincipalPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrincipalPatchBuilder toBuilder() => PrincipalPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrincipalPatch &&
        displayName == other.displayName &&
        email == other.email &&
        avatarMediaId == other.avatarMediaId &&
        timezone == other.timezone &&
        organization == other.organization &&
        disabled == other.disabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, avatarMediaId.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, organization.hashCode);
    _$hash = $jc(_$hash, disabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrincipalPatch')
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('avatarMediaId', avatarMediaId)
          ..add('timezone', timezone)
          ..add('organization', organization)
          ..add('disabled', disabled))
        .toString();
  }
}

class PrincipalPatchBuilder
    implements Builder<PrincipalPatch, PrincipalPatchBuilder> {
  _$PrincipalPatch? _$v;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _avatarMediaId;
  String? get avatarMediaId => _$this._avatarMediaId;
  set avatarMediaId(String? avatarMediaId) =>
      _$this._avatarMediaId = avatarMediaId;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _organization;
  String? get organization => _$this._organization;
  set organization(String? organization) => _$this._organization = organization;

  bool? _disabled;
  bool? get disabled => _$this._disabled;
  set disabled(bool? disabled) => _$this._disabled = disabled;

  PrincipalPatchBuilder() {
    PrincipalPatch._defaults(this);
  }

  PrincipalPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _email = $v.email;
      _avatarMediaId = $v.avatarMediaId;
      _timezone = $v.timezone;
      _organization = $v.organization;
      _disabled = $v.disabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrincipalPatch other) {
    _$v = other as _$PrincipalPatch;
  }

  @override
  void update(void Function(PrincipalPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrincipalPatch build() => _build();

  _$PrincipalPatch _build() {
    final _$result =
        _$v ??
        _$PrincipalPatch._(
          displayName: displayName,
          email: email,
          avatarMediaId: avatarMediaId,
          timezone: timezone,
          organization: organization,
          disabled: disabled,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
