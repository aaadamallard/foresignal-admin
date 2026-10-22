// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminTokenResponse extends AdminTokenResponse {
  @override
  final String token;

  factory _$AdminTokenResponse(
          [void Function(AdminTokenResponseBuilder)? updates]) =>
      (AdminTokenResponseBuilder()..update(updates))._build();

  _$AdminTokenResponse._({required this.token}) : super._();
  @override
  AdminTokenResponse rebuild(
          void Function(AdminTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminTokenResponseBuilder toBuilder() =>
      AdminTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminTokenResponse && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminTokenResponse')
          ..add('token', token))
        .toString();
  }
}

class AdminTokenResponseBuilder
    implements Builder<AdminTokenResponse, AdminTokenResponseBuilder> {
  _$AdminTokenResponse? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  AdminTokenResponseBuilder() {
    AdminTokenResponse._defaults(this);
  }

  AdminTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminTokenResponse other) {
    _$v = other as _$AdminTokenResponse;
  }

  @override
  void update(void Function(AdminTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminTokenResponse build() => _build();

  _$AdminTokenResponse _build() {
    final _$result = _$v ??
        _$AdminTokenResponse._(
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'AdminTokenResponse', 'token'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
