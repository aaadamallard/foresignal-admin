// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_push_payload_fcm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NativePushPayloadFcm extends NativePushPayloadFcm {
  @override
  final NativePushPayloadFcmMessage? message;

  factory _$NativePushPayloadFcm(
          [void Function(NativePushPayloadFcmBuilder)? updates]) =>
      (NativePushPayloadFcmBuilder()..update(updates))._build();

  _$NativePushPayloadFcm._({this.message}) : super._();
  @override
  NativePushPayloadFcm rebuild(
          void Function(NativePushPayloadFcmBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NativePushPayloadFcmBuilder toBuilder() =>
      NativePushPayloadFcmBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NativePushPayloadFcm && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NativePushPayloadFcm')
          ..add('message', message))
        .toString();
  }
}

class NativePushPayloadFcmBuilder
    implements Builder<NativePushPayloadFcm, NativePushPayloadFcmBuilder> {
  _$NativePushPayloadFcm? _$v;

  NativePushPayloadFcmMessageBuilder? _message;
  NativePushPayloadFcmMessageBuilder get message =>
      _$this._message ??= NativePushPayloadFcmMessageBuilder();
  set message(NativePushPayloadFcmMessageBuilder? message) =>
      _$this._message = message;

  NativePushPayloadFcmBuilder() {
    NativePushPayloadFcm._defaults(this);
  }

  NativePushPayloadFcmBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NativePushPayloadFcm other) {
    _$v = other as _$NativePushPayloadFcm;
  }

  @override
  void update(void Function(NativePushPayloadFcmBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NativePushPayloadFcm build() => _build();

  _$NativePushPayloadFcm _build() {
    _$NativePushPayloadFcm _$result;
    try {
      _$result = _$v ??
          _$NativePushPayloadFcm._(
            message: _message?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'message';
        _message?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NativePushPayloadFcm', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
