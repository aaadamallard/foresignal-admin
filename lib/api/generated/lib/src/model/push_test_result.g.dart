// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PushTestResult extends PushTestResult {
  @override
  final bool success;
  @override
  final bool? credentialMinted;
  @override
  final bool? sent;
  @override
  final int? status;
  @override
  final String? reason;
  @override
  final String? error;

  factory _$PushTestResult([void Function(PushTestResultBuilder)? updates]) =>
      (PushTestResultBuilder()..update(updates))._build();

  _$PushTestResult._({
    required this.success,
    this.credentialMinted,
    this.sent,
    this.status,
    this.reason,
    this.error,
  }) : super._();
  @override
  PushTestResult rebuild(void Function(PushTestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushTestResultBuilder toBuilder() => PushTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushTestResult &&
        success == other.success &&
        credentialMinted == other.credentialMinted &&
        sent == other.sent &&
        status == other.status &&
        reason == other.reason &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, credentialMinted.hashCode);
    _$hash = $jc(_$hash, sent.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushTestResult')
          ..add('success', success)
          ..add('credentialMinted', credentialMinted)
          ..add('sent', sent)
          ..add('status', status)
          ..add('reason', reason)
          ..add('error', error))
        .toString();
  }
}

class PushTestResultBuilder
    implements Builder<PushTestResult, PushTestResultBuilder> {
  _$PushTestResult? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _credentialMinted;
  bool? get credentialMinted => _$this._credentialMinted;
  set credentialMinted(bool? credentialMinted) =>
      _$this._credentialMinted = credentialMinted;

  bool? _sent;
  bool? get sent => _$this._sent;
  set sent(bool? sent) => _$this._sent = sent;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  PushTestResultBuilder() {
    PushTestResult._defaults(this);
  }

  PushTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _credentialMinted = $v.credentialMinted;
      _sent = $v.sent;
      _status = $v.status;
      _reason = $v.reason;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushTestResult other) {
    _$v = other as _$PushTestResult;
  }

  @override
  void update(void Function(PushTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushTestResult build() => _build();

  _$PushTestResult _build() {
    final _$result =
        _$v ??
        _$PushTestResult._(
          success: BuiltValueNullFieldError.checkNotNull(
            success,
            r'PushTestResult',
            'success',
          ),
          credentialMinted: credentialMinted,
          sent: sent,
          status: status,
          reason: reason,
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
