// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_verify_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MfaVerifyRequest extends MfaVerifyRequest {
  @override
  final String code;

  factory _$MfaVerifyRequest([
    void Function(MfaVerifyRequestBuilder)? updates,
  ]) => (MfaVerifyRequestBuilder()..update(updates))._build();

  _$MfaVerifyRequest._({required this.code}) : super._();
  @override
  MfaVerifyRequest rebuild(void Function(MfaVerifyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MfaVerifyRequestBuilder toBuilder() =>
      MfaVerifyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MfaVerifyRequest && code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'MfaVerifyRequest',
    )..add('code', code)).toString();
  }
}

class MfaVerifyRequestBuilder
    implements Builder<MfaVerifyRequest, MfaVerifyRequestBuilder> {
  _$MfaVerifyRequest? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  MfaVerifyRequestBuilder() {
    MfaVerifyRequest._defaults(this);
  }

  MfaVerifyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MfaVerifyRequest other) {
    _$v = other as _$MfaVerifyRequest;
  }

  @override
  void update(void Function(MfaVerifyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MfaVerifyRequest build() => _build();

  _$MfaVerifyRequest _build() {
    final _$result =
        _$v ??
        _$MfaVerifyRequest._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'MfaVerifyRequest',
            'code',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
