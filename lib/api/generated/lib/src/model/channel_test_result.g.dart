// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChannelTestResult extends ChannelTestResult {
  @override
  final bool success;
  @override
  final int? status;
  @override
  final int? durationMs;
  @override
  final String? error;

  factory _$ChannelTestResult(
          [void Function(ChannelTestResultBuilder)? updates]) =>
      (ChannelTestResultBuilder()..update(updates))._build();

  _$ChannelTestResult._(
      {required this.success, this.status, this.durationMs, this.error})
      : super._();
  @override
  ChannelTestResult rebuild(void Function(ChannelTestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChannelTestResultBuilder toBuilder() =>
      ChannelTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelTestResult &&
        success == other.success &&
        status == other.status &&
        durationMs == other.durationMs &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, durationMs.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChannelTestResult')
          ..add('success', success)
          ..add('status', status)
          ..add('durationMs', durationMs)
          ..add('error', error))
        .toString();
  }
}

class ChannelTestResultBuilder
    implements Builder<ChannelTestResult, ChannelTestResultBuilder> {
  _$ChannelTestResult? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  int? _durationMs;
  int? get durationMs => _$this._durationMs;
  set durationMs(int? durationMs) => _$this._durationMs = durationMs;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ChannelTestResultBuilder() {
    ChannelTestResult._defaults(this);
  }

  ChannelTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _status = $v.status;
      _durationMs = $v.durationMs;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelTestResult other) {
    _$v = other as _$ChannelTestResult;
  }

  @override
  void update(void Function(ChannelTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChannelTestResult build() => _build();

  _$ChannelTestResult _build() {
    final _$result = _$v ??
        _$ChannelTestResult._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ChannelTestResult', 'success'),
          status: status,
          durationMs: durationMs,
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
