// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trigger_test_result_warnings_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TriggerTestResultWarningsInner extends TriggerTestResultWarningsInner {
  @override
  final String code;
  @override
  final String message;

  factory _$TriggerTestResultWarningsInner([
    void Function(TriggerTestResultWarningsInnerBuilder)? updates,
  ]) => (TriggerTestResultWarningsInnerBuilder()..update(updates))._build();

  _$TriggerTestResultWarningsInner._({
    required this.code,
    required this.message,
  }) : super._();
  @override
  TriggerTestResultWarningsInner rebuild(
    void Function(TriggerTestResultWarningsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TriggerTestResultWarningsInnerBuilder toBuilder() =>
      TriggerTestResultWarningsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TriggerTestResultWarningsInner &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TriggerTestResultWarningsInner')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class TriggerTestResultWarningsInnerBuilder
    implements
        Builder<
          TriggerTestResultWarningsInner,
          TriggerTestResultWarningsInnerBuilder
        > {
  _$TriggerTestResultWarningsInner? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  TriggerTestResultWarningsInnerBuilder() {
    TriggerTestResultWarningsInner._defaults(this);
  }

  TriggerTestResultWarningsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TriggerTestResultWarningsInner other) {
    _$v = other as _$TriggerTestResultWarningsInner;
  }

  @override
  void update(void Function(TriggerTestResultWarningsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TriggerTestResultWarningsInner build() => _build();

  _$TriggerTestResultWarningsInner _build() {
    final _$result =
        _$v ??
        _$TriggerTestResultWarningsInner._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'TriggerTestResultWarningsInner',
            'code',
          ),
          message: BuiltValueNullFieldError.checkNotNull(
            message,
            r'TriggerTestResultWarningsInner',
            'message',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
