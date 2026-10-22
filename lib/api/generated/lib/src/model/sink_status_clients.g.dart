// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink_status_clients.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SinkStatusClients extends SinkStatusClients {
  @override
  final int connected;
  @override
  final int max;
  @override
  final int? rejected;
  @override
  final BuiltList<SinkStatusClientsPeersInner>? peers;

  factory _$SinkStatusClients(
          [void Function(SinkStatusClientsBuilder)? updates]) =>
      (SinkStatusClientsBuilder()..update(updates))._build();

  _$SinkStatusClients._(
      {required this.connected, required this.max, this.rejected, this.peers})
      : super._();
  @override
  SinkStatusClients rebuild(void Function(SinkStatusClientsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkStatusClientsBuilder toBuilder() =>
      SinkStatusClientsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinkStatusClients &&
        connected == other.connected &&
        max == other.max &&
        rejected == other.rejected &&
        peers == other.peers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, connected.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jc(_$hash, peers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SinkStatusClients')
          ..add('connected', connected)
          ..add('max', max)
          ..add('rejected', rejected)
          ..add('peers', peers))
        .toString();
  }
}

class SinkStatusClientsBuilder
    implements Builder<SinkStatusClients, SinkStatusClientsBuilder> {
  _$SinkStatusClients? _$v;

  int? _connected;
  int? get connected => _$this._connected;
  set connected(int? connected) => _$this._connected = connected;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  int? _rejected;
  int? get rejected => _$this._rejected;
  set rejected(int? rejected) => _$this._rejected = rejected;

  ListBuilder<SinkStatusClientsPeersInner>? _peers;
  ListBuilder<SinkStatusClientsPeersInner> get peers =>
      _$this._peers ??= ListBuilder<SinkStatusClientsPeersInner>();
  set peers(ListBuilder<SinkStatusClientsPeersInner>? peers) =>
      _$this._peers = peers;

  SinkStatusClientsBuilder() {
    SinkStatusClients._defaults(this);
  }

  SinkStatusClientsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _connected = $v.connected;
      _max = $v.max;
      _rejected = $v.rejected;
      _peers = $v.peers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SinkStatusClients other) {
    _$v = other as _$SinkStatusClients;
  }

  @override
  void update(void Function(SinkStatusClientsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SinkStatusClients build() => _build();

  _$SinkStatusClients _build() {
    _$SinkStatusClients _$result;
    try {
      _$result = _$v ??
          _$SinkStatusClients._(
            connected: BuiltValueNullFieldError.checkNotNull(
                connected, r'SinkStatusClients', 'connected'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'SinkStatusClients', 'max'),
            rejected: rejected,
            peers: _peers?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'peers';
        _peers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SinkStatusClients', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
