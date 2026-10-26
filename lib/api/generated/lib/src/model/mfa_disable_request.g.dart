// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_disable_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MfaDisableRequest extends MfaDisableRequest {
  @override
  final String? code;
  @override
  final String? password;

  factory _$MfaDisableRequest([
    void Function(MfaDisableRequestBuilder)? updates,
  ]) => (MfaDisableRequestBuilder()..update(updates))._build();

  _$MfaDisableRequest._({this.code, this.password}) : super._();
  @override
  MfaDisableRequest rebuild(void Function(MfaDisableRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MfaDisableRequestBuilder toBuilder() =>
      MfaDisableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MfaDisableRequest &&
        code == other.code &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MfaDisableRequest')
          ..add('code', code)
          ..add('password', password))
        .toString();
  }
}

class MfaDisableRequestBuilder
    implements Builder<MfaDisableRequest, MfaDisableRequestBuilder> {
  _$MfaDisableRequest? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  MfaDisableRequestBuilder() {
    MfaDisableRequest._defaults(this);
  }

  MfaDisableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MfaDisableRequest other) {
    _$v = other as _$MfaDisableRequest;
  }

  @override
  void update(void Function(MfaDisableRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MfaDisableRequest build() => _build();

  _$MfaDisableRequest _build() {
    final _$result =
        _$v ?? _$MfaDisableRequest._(code: code, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
