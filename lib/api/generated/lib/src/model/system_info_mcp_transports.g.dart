// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_mcp_transports.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoMcpTransports extends SystemInfoMcpTransports {
  @override
  final bool? streamable;
  @override
  final bool? legacySse;

  factory _$SystemInfoMcpTransports([
    void Function(SystemInfoMcpTransportsBuilder)? updates,
  ]) => (SystemInfoMcpTransportsBuilder()..update(updates))._build();

  _$SystemInfoMcpTransports._({this.streamable, this.legacySse}) : super._();
  @override
  SystemInfoMcpTransports rebuild(
    void Function(SystemInfoMcpTransportsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SystemInfoMcpTransportsBuilder toBuilder() =>
      SystemInfoMcpTransportsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoMcpTransports &&
        streamable == other.streamable &&
        legacySse == other.legacySse;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamable.hashCode);
    _$hash = $jc(_$hash, legacySse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoMcpTransports')
          ..add('streamable', streamable)
          ..add('legacySse', legacySse))
        .toString();
  }
}

class SystemInfoMcpTransportsBuilder
    implements
        Builder<SystemInfoMcpTransports, SystemInfoMcpTransportsBuilder> {
  _$SystemInfoMcpTransports? _$v;

  bool? _streamable;
  bool? get streamable => _$this._streamable;
  set streamable(bool? streamable) => _$this._streamable = streamable;

  bool? _legacySse;
  bool? get legacySse => _$this._legacySse;
  set legacySse(bool? legacySse) => _$this._legacySse = legacySse;

  SystemInfoMcpTransportsBuilder() {
    SystemInfoMcpTransports._defaults(this);
  }

  SystemInfoMcpTransportsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamable = $v.streamable;
      _legacySse = $v.legacySse;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoMcpTransports other) {
    _$v = other as _$SystemInfoMcpTransports;
  }

  @override
  void update(void Function(SystemInfoMcpTransportsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoMcpTransports build() => _build();

  _$SystemInfoMcpTransports _build() {
    final _$result =
        _$v ??
        _$SystemInfoMcpTransports._(
          streamable: streamable,
          legacySse: legacySse,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
