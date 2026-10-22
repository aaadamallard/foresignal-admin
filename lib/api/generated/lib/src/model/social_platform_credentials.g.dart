// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_platform_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialPlatformCredentials extends SocialPlatformCredentials {
  @override
  final bool required_;
  @override
  final bool configured;
  @override
  final BuiltList<String>? fields;

  factory _$SocialPlatformCredentials(
          [void Function(SocialPlatformCredentialsBuilder)? updates]) =>
      (SocialPlatformCredentialsBuilder()..update(updates))._build();

  _$SocialPlatformCredentials._(
      {required this.required_, required this.configured, this.fields})
      : super._();
  @override
  SocialPlatformCredentials rebuild(
          void Function(SocialPlatformCredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialPlatformCredentialsBuilder toBuilder() =>
      SocialPlatformCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPlatformCredentials &&
        required_ == other.required_ &&
        configured == other.configured &&
        fields == other.fields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, configured.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPlatformCredentials')
          ..add('required_', required_)
          ..add('configured', configured)
          ..add('fields', fields))
        .toString();
  }
}

class SocialPlatformCredentialsBuilder
    implements
        Builder<SocialPlatformCredentials, SocialPlatformCredentialsBuilder> {
  _$SocialPlatformCredentials? _$v;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  bool? _configured;
  bool? get configured => _$this._configured;
  set configured(bool? configured) => _$this._configured = configured;

  ListBuilder<String>? _fields;
  ListBuilder<String> get fields => _$this._fields ??= ListBuilder<String>();
  set fields(ListBuilder<String>? fields) => _$this._fields = fields;

  SocialPlatformCredentialsBuilder() {
    SocialPlatformCredentials._defaults(this);
  }

  SocialPlatformCredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _required_ = $v.required_;
      _configured = $v.configured;
      _fields = $v.fields?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPlatformCredentials other) {
    _$v = other as _$SocialPlatformCredentials;
  }

  @override
  void update(void Function(SocialPlatformCredentialsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPlatformCredentials build() => _build();

  _$SocialPlatformCredentials _build() {
    _$SocialPlatformCredentials _$result;
    try {
      _$result = _$v ??
          _$SocialPlatformCredentials._(
            required_: BuiltValueNullFieldError.checkNotNull(
                required_, r'SocialPlatformCredentials', 'required_'),
            configured: BuiltValueNullFieldError.checkNotNull(
                configured, r'SocialPlatformCredentials', 'configured'),
            fields: _fields?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialPlatformCredentials', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
