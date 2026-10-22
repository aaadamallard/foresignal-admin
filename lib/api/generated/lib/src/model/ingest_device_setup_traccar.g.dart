// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_device_setup_traccar.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestDeviceSetupTraccar extends IngestDeviceSetupTraccar {
  @override
  final String? serverUrl;

  factory _$IngestDeviceSetupTraccar(
          [void Function(IngestDeviceSetupTraccarBuilder)? updates]) =>
      (IngestDeviceSetupTraccarBuilder()..update(updates))._build();

  _$IngestDeviceSetupTraccar._({this.serverUrl}) : super._();
  @override
  IngestDeviceSetupTraccar rebuild(
          void Function(IngestDeviceSetupTraccarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestDeviceSetupTraccarBuilder toBuilder() =>
      IngestDeviceSetupTraccarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestDeviceSetupTraccar && serverUrl == other.serverUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serverUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestDeviceSetupTraccar')
          ..add('serverUrl', serverUrl))
        .toString();
  }
}

class IngestDeviceSetupTraccarBuilder
    implements
        Builder<IngestDeviceSetupTraccar, IngestDeviceSetupTraccarBuilder> {
  _$IngestDeviceSetupTraccar? _$v;

  String? _serverUrl;
  String? get serverUrl => _$this._serverUrl;
  set serverUrl(String? serverUrl) => _$this._serverUrl = serverUrl;

  IngestDeviceSetupTraccarBuilder() {
    IngestDeviceSetupTraccar._defaults(this);
  }

  IngestDeviceSetupTraccarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverUrl = $v.serverUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestDeviceSetupTraccar other) {
    _$v = other as _$IngestDeviceSetupTraccar;
  }

  @override
  void update(void Function(IngestDeviceSetupTraccarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestDeviceSetupTraccar build() => _build();

  _$IngestDeviceSetupTraccar _build() {
    final _$result = _$v ??
        _$IngestDeviceSetupTraccar._(
          serverUrl: serverUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
