// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_mcp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoMcp extends SystemInfoMcp {
  @override
  final bool? enabled;
  @override
  final int? sessions;
  @override
  final SystemInfoMcpTransports? transports;
  @override
  final int? tools;

  factory _$SystemInfoMcp([void Function(SystemInfoMcpBuilder)? updates]) =>
      (SystemInfoMcpBuilder()..update(updates))._build();

  _$SystemInfoMcp._({this.enabled, this.sessions, this.transports, this.tools})
      : super._();
  @override
  SystemInfoMcp rebuild(void Function(SystemInfoMcpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoMcpBuilder toBuilder() => SystemInfoMcpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoMcp &&
        enabled == other.enabled &&
        sessions == other.sessions &&
        transports == other.transports &&
        tools == other.tools;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, sessions.hashCode);
    _$hash = $jc(_$hash, transports.hashCode);
    _$hash = $jc(_$hash, tools.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoMcp')
          ..add('enabled', enabled)
          ..add('sessions', sessions)
          ..add('transports', transports)
          ..add('tools', tools))
        .toString();
  }
}

class SystemInfoMcpBuilder
    implements Builder<SystemInfoMcp, SystemInfoMcpBuilder> {
  _$SystemInfoMcp? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  int? _sessions;
  int? get sessions => _$this._sessions;
  set sessions(int? sessions) => _$this._sessions = sessions;

  SystemInfoMcpTransportsBuilder? _transports;
  SystemInfoMcpTransportsBuilder get transports =>
      _$this._transports ??= SystemInfoMcpTransportsBuilder();
  set transports(SystemInfoMcpTransportsBuilder? transports) =>
      _$this._transports = transports;

  int? _tools;
  int? get tools => _$this._tools;
  set tools(int? tools) => _$this._tools = tools;

  SystemInfoMcpBuilder() {
    SystemInfoMcp._defaults(this);
  }

  SystemInfoMcpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _sessions = $v.sessions;
      _transports = $v.transports?.toBuilder();
      _tools = $v.tools;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoMcp other) {
    _$v = other as _$SystemInfoMcp;
  }

  @override
  void update(void Function(SystemInfoMcpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoMcp build() => _build();

  _$SystemInfoMcp _build() {
    _$SystemInfoMcp _$result;
    try {
      _$result = _$v ??
          _$SystemInfoMcp._(
            enabled: enabled,
            sessions: sessions,
            transports: _transports?.build(),
            tools: tools,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transports';
        _transports?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SystemInfoMcp', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
