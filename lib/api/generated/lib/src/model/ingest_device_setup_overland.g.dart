// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_device_setup_overland.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestDeviceSetupOverland extends IngestDeviceSetupOverland {
  @override
  final String? endpoint;
  @override
  final String? token;

  factory _$IngestDeviceSetupOverland([
    void Function(IngestDeviceSetupOverlandBuilder)? updates,
  ]) => (IngestDeviceSetupOverlandBuilder()..update(updates))._build();

  _$IngestDeviceSetupOverland._({this.endpoint, this.token}) : super._();
  @override
  IngestDeviceSetupOverland rebuild(
    void Function(IngestDeviceSetupOverlandBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IngestDeviceSetupOverlandBuilder toBuilder() =>
      IngestDeviceSetupOverlandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestDeviceSetupOverland &&
        endpoint == other.endpoint &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestDeviceSetupOverland')
          ..add('endpoint', endpoint)
          ..add('token', token))
        .toString();
  }
}

class IngestDeviceSetupOverlandBuilder
    implements
        Builder<IngestDeviceSetupOverland, IngestDeviceSetupOverlandBuilder> {
  _$IngestDeviceSetupOverland? _$v;

  String? _endpoint;
  String? get endpoint => _$this._endpoint;
  set endpoint(String? endpoint) => _$this._endpoint = endpoint;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  IngestDeviceSetupOverlandBuilder() {
    IngestDeviceSetupOverland._defaults(this);
  }

  IngestDeviceSetupOverlandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoint = $v.endpoint;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestDeviceSetupOverland other) {
    _$v = other as _$IngestDeviceSetupOverland;
  }

  @override
  void update(void Function(IngestDeviceSetupOverlandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestDeviceSetupOverland build() => _build();

  _$IngestDeviceSetupOverland _build() {
    final _$result =
        _$v ?? _$IngestDeviceSetupOverland._(endpoint: endpoint, token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
