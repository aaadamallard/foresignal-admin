// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mqtt_connections.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MqttConnections extends MqttConnections {
  @override
  final int connections;
  @override
  final int connected;
  @override
  final String? lastError;

  factory _$MqttConnections([void Function(MqttConnectionsBuilder)? updates]) =>
      (MqttConnectionsBuilder()..update(updates))._build();

  _$MqttConnections._({
    required this.connections,
    required this.connected,
    this.lastError,
  }) : super._();
  @override
  MqttConnections rebuild(void Function(MqttConnectionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MqttConnectionsBuilder toBuilder() => MqttConnectionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MqttConnections &&
        connections == other.connections &&
        connected == other.connected &&
        lastError == other.lastError;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, connections.hashCode);
    _$hash = $jc(_$hash, connected.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MqttConnections')
          ..add('connections', connections)
          ..add('connected', connected)
          ..add('lastError', lastError))
        .toString();
  }
}

class MqttConnectionsBuilder
    implements Builder<MqttConnections, MqttConnectionsBuilder> {
  _$MqttConnections? _$v;

  int? _connections;
  int? get connections => _$this._connections;
  set connections(int? connections) => _$this._connections = connections;

  int? _connected;
  int? get connected => _$this._connected;
  set connected(int? connected) => _$this._connected = connected;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  MqttConnectionsBuilder() {
    MqttConnections._defaults(this);
  }

  MqttConnectionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _connections = $v.connections;
      _connected = $v.connected;
      _lastError = $v.lastError;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MqttConnections other) {
    _$v = other as _$MqttConnections;
  }

  @override
  void update(void Function(MqttConnectionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MqttConnections build() => _build();

  _$MqttConnections _build() {
    final _$result =
        _$v ??
        _$MqttConnections._(
          connections: BuiltValueNullFieldError.checkNotNull(
            connections,
            r'MqttConnections',
            'connections',
          ),
          connected: BuiltValueNullFieldError.checkNotNull(
            connected,
            r'MqttConnections',
            'connected',
          ),
          lastError: lastError,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
