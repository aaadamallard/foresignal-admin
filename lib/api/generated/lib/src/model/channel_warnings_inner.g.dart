// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_warnings_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChannelWarningsInner extends ChannelWarningsInner {
  @override
  final String code;
  @override
  final String message;

  factory _$ChannelWarningsInner([
    void Function(ChannelWarningsInnerBuilder)? updates,
  ]) => (ChannelWarningsInnerBuilder()..update(updates))._build();

  _$ChannelWarningsInner._({required this.code, required this.message})
    : super._();
  @override
  ChannelWarningsInner rebuild(
    void Function(ChannelWarningsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChannelWarningsInnerBuilder toBuilder() =>
      ChannelWarningsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelWarningsInner &&
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
    return (newBuiltValueToStringHelper(r'ChannelWarningsInner')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class ChannelWarningsInnerBuilder
    implements Builder<ChannelWarningsInner, ChannelWarningsInnerBuilder> {
  _$ChannelWarningsInner? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ChannelWarningsInnerBuilder() {
    ChannelWarningsInner._defaults(this);
  }

  ChannelWarningsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelWarningsInner other) {
    _$v = other as _$ChannelWarningsInner;
  }

  @override
  void update(void Function(ChannelWarningsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChannelWarningsInner build() => _build();

  _$ChannelWarningsInner _build() {
    final _$result =
        _$v ??
        _$ChannelWarningsInner._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'ChannelWarningsInner',
            'code',
          ),
          message: BuiltValueNullFieldError.checkNotNull(
            message,
            r'ChannelWarningsInner',
            'message',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
