// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_push_payload_fcm_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NativePushPayloadFcmMessage extends NativePushPayloadFcmMessage {
  @override
  final String token;
  @override
  final NativePushPayloadFcmMessageData data;
  @override
  final NativePushPayloadFcmMessageAndroid? android;
  @override
  final BuiltMap<String, JsonObject?>? apns;

  factory _$NativePushPayloadFcmMessage([
    void Function(NativePushPayloadFcmMessageBuilder)? updates,
  ]) => (NativePushPayloadFcmMessageBuilder()..update(updates))._build();

  _$NativePushPayloadFcmMessage._({
    required this.token,
    required this.data,
    this.android,
    this.apns,
  }) : super._();
  @override
  NativePushPayloadFcmMessage rebuild(
    void Function(NativePushPayloadFcmMessageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NativePushPayloadFcmMessageBuilder toBuilder() =>
      NativePushPayloadFcmMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NativePushPayloadFcmMessage &&
        token == other.token &&
        data == other.data &&
        android == other.android &&
        apns == other.apns;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, android.hashCode);
    _$hash = $jc(_$hash, apns.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NativePushPayloadFcmMessage')
          ..add('token', token)
          ..add('data', data)
          ..add('android', android)
          ..add('apns', apns))
        .toString();
  }
}

class NativePushPayloadFcmMessageBuilder
    implements
        Builder<
          NativePushPayloadFcmMessage,
          NativePushPayloadFcmMessageBuilder
        > {
  _$NativePushPayloadFcmMessage? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  NativePushPayloadFcmMessageDataBuilder? _data;
  NativePushPayloadFcmMessageDataBuilder get data =>
      _$this._data ??= NativePushPayloadFcmMessageDataBuilder();
  set data(NativePushPayloadFcmMessageDataBuilder? data) => _$this._data = data;

  NativePushPayloadFcmMessageAndroidBuilder? _android;
  NativePushPayloadFcmMessageAndroidBuilder get android =>
      _$this._android ??= NativePushPayloadFcmMessageAndroidBuilder();
  set android(NativePushPayloadFcmMessageAndroidBuilder? android) =>
      _$this._android = android;

  MapBuilder<String, JsonObject?>? _apns;
  MapBuilder<String, JsonObject?> get apns =>
      _$this._apns ??= MapBuilder<String, JsonObject?>();
  set apns(MapBuilder<String, JsonObject?>? apns) => _$this._apns = apns;

  NativePushPayloadFcmMessageBuilder() {
    NativePushPayloadFcmMessage._defaults(this);
  }

  NativePushPayloadFcmMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _data = $v.data.toBuilder();
      _android = $v.android?.toBuilder();
      _apns = $v.apns?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NativePushPayloadFcmMessage other) {
    _$v = other as _$NativePushPayloadFcmMessage;
  }

  @override
  void update(void Function(NativePushPayloadFcmMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NativePushPayloadFcmMessage build() => _build();

  _$NativePushPayloadFcmMessage _build() {
    _$NativePushPayloadFcmMessage _$result;
    try {
      _$result =
          _$v ??
          _$NativePushPayloadFcmMessage._(
            token: BuiltValueNullFieldError.checkNotNull(
              token,
              r'NativePushPayloadFcmMessage',
              'token',
            ),
            data: data.build(),
            android: _android?.build(),
            apns: _apns?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
        _$failedField = 'android';
        _android?.build();
        _$failedField = 'apns';
        _apns?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NativePushPayloadFcmMessage',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
