// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_provider_test_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PushProviderTestRequest extends PushProviderTestRequest {
  @override
  final String? deviceId;

  factory _$PushProviderTestRequest(
          [void Function(PushProviderTestRequestBuilder)? updates]) =>
      (PushProviderTestRequestBuilder()..update(updates))._build();

  _$PushProviderTestRequest._({this.deviceId}) : super._();
  @override
  PushProviderTestRequest rebuild(
          void Function(PushProviderTestRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushProviderTestRequestBuilder toBuilder() =>
      PushProviderTestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushProviderTestRequest && deviceId == other.deviceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushProviderTestRequest')
          ..add('deviceId', deviceId))
        .toString();
  }
}

class PushProviderTestRequestBuilder
    implements
        Builder<PushProviderTestRequest, PushProviderTestRequestBuilder> {
  _$PushProviderTestRequest? _$v;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  PushProviderTestRequestBuilder() {
    PushProviderTestRequest._defaults(this);
  }

  PushProviderTestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceId = $v.deviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushProviderTestRequest other) {
    _$v = other as _$PushProviderTestRequest;
  }

  @override
  void update(void Function(PushProviderTestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushProviderTestRequest build() => _build();

  _$PushProviderTestRequest _build() {
    final _$result = _$v ??
        _$PushProviderTestRequest._(
          deviceId: deviceId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
