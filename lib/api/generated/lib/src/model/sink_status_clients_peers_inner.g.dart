// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink_status_clients_peers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SinkStatusClientsPeersInner extends SinkStatusClientsPeersInner {
  @override
  final String address;
  @override
  final DateTime connectedAt;

  factory _$SinkStatusClientsPeersInner(
          [void Function(SinkStatusClientsPeersInnerBuilder)? updates]) =>
      (SinkStatusClientsPeersInnerBuilder()..update(updates))._build();

  _$SinkStatusClientsPeersInner._(
      {required this.address, required this.connectedAt})
      : super._();
  @override
  SinkStatusClientsPeersInner rebuild(
          void Function(SinkStatusClientsPeersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkStatusClientsPeersInnerBuilder toBuilder() =>
      SinkStatusClientsPeersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinkStatusClientsPeersInner &&
        address == other.address &&
        connectedAt == other.connectedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, connectedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SinkStatusClientsPeersInner')
          ..add('address', address)
          ..add('connectedAt', connectedAt))
        .toString();
  }
}

class SinkStatusClientsPeersInnerBuilder
    implements
        Builder<SinkStatusClientsPeersInner,
            SinkStatusClientsPeersInnerBuilder> {
  _$SinkStatusClientsPeersInner? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  DateTime? _connectedAt;
  DateTime? get connectedAt => _$this._connectedAt;
  set connectedAt(DateTime? connectedAt) => _$this._connectedAt = connectedAt;

  SinkStatusClientsPeersInnerBuilder() {
    SinkStatusClientsPeersInner._defaults(this);
  }

  SinkStatusClientsPeersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _connectedAt = $v.connectedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SinkStatusClientsPeersInner other) {
    _$v = other as _$SinkStatusClientsPeersInner;
  }

  @override
  void update(void Function(SinkStatusClientsPeersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SinkStatusClientsPeersInner build() => _build();

  _$SinkStatusClientsPeersInner _build() {
    final _$result = _$v ??
        _$SinkStatusClientsPeersInner._(
          address: BuiltValueNullFieldError.checkNotNull(
              address, r'SinkStatusClientsPeersInner', 'address'),
          connectedAt: BuiltValueNullFieldError.checkNotNull(
              connectedAt, r'SinkStatusClientsPeersInner', 'connectedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
