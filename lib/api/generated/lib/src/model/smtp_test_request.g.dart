// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smtp_test_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SmtpTestRequest extends SmtpTestRequest {
  @override
  final String to;

  factory _$SmtpTestRequest([void Function(SmtpTestRequestBuilder)? updates]) =>
      (SmtpTestRequestBuilder()..update(updates))._build();

  _$SmtpTestRequest._({required this.to}) : super._();
  @override
  SmtpTestRequest rebuild(void Function(SmtpTestRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SmtpTestRequestBuilder toBuilder() => SmtpTestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SmtpTestRequest && to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'SmtpTestRequest',
    )..add('to', to)).toString();
  }
}

class SmtpTestRequestBuilder
    implements Builder<SmtpTestRequest, SmtpTestRequestBuilder> {
  _$SmtpTestRequest? _$v;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  SmtpTestRequestBuilder() {
    SmtpTestRequest._defaults(this);
  }

  SmtpTestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SmtpTestRequest other) {
    _$v = other as _$SmtpTestRequest;
  }

  @override
  void update(void Function(SmtpTestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SmtpTestRequest build() => _build();

  _$SmtpTestRequest _build() {
    final _$result =
        _$v ??
        _$SmtpTestRequest._(
          to: BuiltValueNullFieldError.checkNotNull(
            to,
            r'SmtpTestRequest',
            'to',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
