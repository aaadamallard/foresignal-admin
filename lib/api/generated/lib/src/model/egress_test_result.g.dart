// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'egress_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EgressTestResult extends EgressTestResult {
  @override
  final bool ok;
  @override
  final String? exitIp;
  @override
  final num? latencyMs;
  @override
  final String? message;
  @override
  final DateTime? checkedAt;

  factory _$EgressTestResult([
    void Function(EgressTestResultBuilder)? updates,
  ]) => (EgressTestResultBuilder()..update(updates))._build();

  _$EgressTestResult._({
    required this.ok,
    this.exitIp,
    this.latencyMs,
    this.message,
    this.checkedAt,
  }) : super._();
  @override
  EgressTestResult rebuild(void Function(EgressTestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EgressTestResultBuilder toBuilder() =>
      EgressTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EgressTestResult &&
        ok == other.ok &&
        exitIp == other.exitIp &&
        latencyMs == other.latencyMs &&
        message == other.message &&
        checkedAt == other.checkedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ok.hashCode);
    _$hash = $jc(_$hash, exitIp.hashCode);
    _$hash = $jc(_$hash, latencyMs.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, checkedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EgressTestResult')
          ..add('ok', ok)
          ..add('exitIp', exitIp)
          ..add('latencyMs', latencyMs)
          ..add('message', message)
          ..add('checkedAt', checkedAt))
        .toString();
  }
}

class EgressTestResultBuilder
    implements Builder<EgressTestResult, EgressTestResultBuilder> {
  _$EgressTestResult? _$v;

  bool? _ok;
  bool? get ok => _$this._ok;
  set ok(bool? ok) => _$this._ok = ok;

  String? _exitIp;
  String? get exitIp => _$this._exitIp;
  set exitIp(String? exitIp) => _$this._exitIp = exitIp;

  num? _latencyMs;
  num? get latencyMs => _$this._latencyMs;
  set latencyMs(num? latencyMs) => _$this._latencyMs = latencyMs;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _checkedAt;
  DateTime? get checkedAt => _$this._checkedAt;
  set checkedAt(DateTime? checkedAt) => _$this._checkedAt = checkedAt;

  EgressTestResultBuilder() {
    EgressTestResult._defaults(this);
  }

  EgressTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ok = $v.ok;
      _exitIp = $v.exitIp;
      _latencyMs = $v.latencyMs;
      _message = $v.message;
      _checkedAt = $v.checkedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EgressTestResult other) {
    _$v = other as _$EgressTestResult;
  }

  @override
  void update(void Function(EgressTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EgressTestResult build() => _build();

  _$EgressTestResult _build() {
    final _$result =
        _$v ??
        _$EgressTestResult._(
          ok: BuiltValueNullFieldError.checkNotNull(
            ok,
            r'EgressTestResult',
            'ok',
          ),
          exitIp: exitIp,
          latencyMs: latencyMs,
          message: message,
          checkedAt: checkedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
