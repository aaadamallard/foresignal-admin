// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smtp_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SmtpTestResult extends SmtpTestResult {
  @override
  final bool ok;
  @override
  final String? message;
  @override
  final DateTime? sentAt;

  factory _$SmtpTestResult([void Function(SmtpTestResultBuilder)? updates]) =>
      (SmtpTestResultBuilder()..update(updates))._build();

  _$SmtpTestResult._({required this.ok, this.message, this.sentAt}) : super._();
  @override
  SmtpTestResult rebuild(void Function(SmtpTestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SmtpTestResultBuilder toBuilder() => SmtpTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SmtpTestResult &&
        ok == other.ok &&
        message == other.message &&
        sentAt == other.sentAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ok.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, sentAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SmtpTestResult')
          ..add('ok', ok)
          ..add('message', message)
          ..add('sentAt', sentAt))
        .toString();
  }
}

class SmtpTestResultBuilder
    implements Builder<SmtpTestResult, SmtpTestResultBuilder> {
  _$SmtpTestResult? _$v;

  bool? _ok;
  bool? get ok => _$this._ok;
  set ok(bool? ok) => _$this._ok = ok;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _sentAt;
  DateTime? get sentAt => _$this._sentAt;
  set sentAt(DateTime? sentAt) => _$this._sentAt = sentAt;

  SmtpTestResultBuilder() {
    SmtpTestResult._defaults(this);
  }

  SmtpTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ok = $v.ok;
      _message = $v.message;
      _sentAt = $v.sentAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SmtpTestResult other) {
    _$v = other as _$SmtpTestResult;
  }

  @override
  void update(void Function(SmtpTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SmtpTestResult build() => _build();

  _$SmtpTestResult _build() {
    final _$result =
        _$v ??
        _$SmtpTestResult._(
          ok: BuiltValueNullFieldError.checkNotNull(
            ok,
            r'SmtpTestResult',
            'ok',
          ),
          message: message,
          sentAt: sentAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
